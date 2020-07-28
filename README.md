## Getting Started
Work in progress

These instructions will describe the test automation process & maintenance for a fictional box service.

The test are based on a page object model DSL for capybara called site prism.
Capybara simulates how a real user would interact with the site under test.
The page object model is a test automation pattern to create an abstraction that wraps each page in a class.
Each element of the page is represented by a method that can then be acted upon. (is it enabled? visible?).

SitePrism allows modelling of repeated sections that appear on multiple pages. 

## page model examples
#####The page definitions are located at: /features/support/pages/main.rb

#####  The App class that represents the entire site:
-  
```Ruby 
class App
  def home
    Home.new
  end
  
  def box_o_details_page
    Boxoriginaldetailspage.new
  end
end

#### Class implementation:

```Ruby
class BoxoDetailspage < SitePrism::Page
  target_site = $BASE_URL + $data['local_box_o_page']
  set_url target_site
  section :header_top, HeaderbarTop, :xpath, "html/body/header/div[1]"
  section :header_main, HeaderbarMain, ".header__main"
  section :social_media, SocialMedia, ".social-media"
  section :footer, Footer, ".footer"
  section :footer_products, FooterProducts, ".footer__nav-item"
  section :footer_payment_info, FooterPaymentInfo, ".footer__payment-info"
  section :details_page_product_form, DetailsPageProductForm, ".product-form"
  element :re_intro_text, ".recipes__intro"
  element :re__slider, ".re_slider"
  element :navigation_re__slider, ".re __slider-nav"
  element :product_info_title, ".product-info__title"
  element :product_info_navigation_slider_arrow, ".product-info__slider-arrow"
  element :product_info_navigation_slider_arrow_next, ".product-info__slider-arrow--next"
  element :product_slider_info_text, ".product-info__text"
end
```
-  step definition implementation 

```Ruby
Given(/^the obox details page header section is visible$/) do
  expect(@app.box_o_details_page).to have_header_top
  expect(@app.box_o_details_page).to have_header_main
end

Given(/^the box details page navigation has "([^"]*)" items$/) do |products|
expect(@app.box_o_details_page).to have_selector('.nav-boxes__link', count: products)   
end  
```
- feature steps
```Ruby
 the obox details page header section is visible
 
 the box details page navigation has "4" items
```
## Internatilization I18n
Internationalization and localization are means of adapting a product to countries and there respective language needs. Internationalization ("I18N "I - eighteen letters -N")
``
### Execution
Testing against localization is executed by adding a locale parameter. For German, de=true. English,    en=true.
### Example
polter=true bundle exec cucumber -p localization  TEST_ENV=production de=true
``
### Location of translation files
  /features/support/locale/
### Implemetation details
Country specific translation files are written in yaml. YAML (/ˈjæməl/, rhymes with camel) is a human-readable data serialization concept.
### Format:
```Ruby
de:  
  text:   
    imprint_address: 'bla bla'

      imprint_manager: 'Geschäftsführer xy'

      imprint_contact: 'Kostenlose Hotline: 0800 - 123456 E-Mail: kontakt@apiman.de'

      imprint_register_entry: 'USt.-ID-Nr.: DE123456'

### Sample feature steps implementation:
- Feature: Evaluation of text translation
- @localization
- Scenario: I evaluate the correctness of the imprint page 

 Given I am on the imprint page
    *  I see the imprint address 
    *  I see the imprint manager    
    *  I see the imprint contact    
    *  I see the imprint registry entry
    *  I see the imprint disclaimer 
    *  I see the imprint copyright  

###  Sample step definition implementation: 

```Ruby
Then(/^I am on the imprint page$/) do
@app = App.new
@app.imprint_page.load
expect(@app.imprint_page).to be_displayed
end

Given(/^I see the imprint manager$/) do
  page_imprint_manager_text = I18n.translate 'text.page_imprint.imprint_manager'
  expect(page).to have_content "#{page_imprint_manager_text}"
end

Given(/^I see the imprint contact$/) do
  page_imprint_contact_text = I18n.translate 'text.page_imprint.imprint_contact'
  expect(page).to have_content "#{page_imprint_contact_text}"
end
 
```

## Prerequisities

Ruby:
https://www.ruby-lang.org/en/

Bundler:
http://bundler.io/

ChromeDriver - WebDriver for Chrome
https://sites.google.com/a/chromium.org/chromedriver/downloads

Capybara-webkit:

Capybara-webkit depends on a WebKit implementation from Qt, a cross-platform development toolkit. You'll need to download the Qt libraries to build and install the gem.

https://github.com/thoughtbot/capybara-webkit/wiki/Installing-Qt-and-compiling-capybara-webkit



## Intergration test execution:

browser=true bundle exec cucumber - p profile TEST_ENV=target_site de=true

###Configuration: 

TEST_ENV: /features/config/config.yml

PROFILE:  /config/cucumber.yml


###Environment:

     Headless: poltergeist
     Production: https://user:password@www.apimanprod.de
     Staging:  http://www.apiman.dev

###Examples:   

     Terminal execution:
     Headless: Poltergeist, profile wip, target production
     polter=true bundle exec cucumber -p wip TEST_ENV=production

     Webdriver: Chrome, profile payment, target staging 
     chrome=true bundle exec cucumber -p payment TEST_ENV=staging



### Integration tests

    checkout_integrated.feature
    Feature: I buy all boxes and pay with all currencies (no paypal) 
    Scenario Outline: I buy for 2 and 4 people. I use preferred neighbour, and check delivery services                  

    checkout_variety.feature
    Feature: As a customer I want to buy two boxes     
    Scenario Outline: I buy two  boxes in combination

    checkout_voucher.feature
    Feature: As a customer I want to pay and use a voucher 
    Scenario: I buy an obox with sepa and use a voucher 

    checkout_klarna.feature
    Feature: As a customer I want to buy the obox and pay with klarna
    Scenario: I buy an obox pay with klarna for 2 people
  
    checkout_paypal.feature
    Feature: As a customer I want to buy the obox and pay with paypal
    Scenario: I buy an obox pay with klarna for 2 people
     
    checkout_sepa.feature
    Feature: As a customer I want to buy the oboxl and pay with sepa
    Scenario: I buy an obox pay with klarna for 2 people
  
    checkout_creditcard.feature
    Feature: As a customer I want to buy the obox and pay with creditcard
    Scenario: I buy an obox pay with klarna for 2 people
    
## Helper functions
    fake_address.rb
      generation and validation of customer address and email. (Also including klarna address handling)   
    slack_notifier.rb
      posting test progress into dedicated slack channel
    checkout_paypal.rb 
      paypal sandbox handling
      
      
## Manual Execution
1. Open Terminal window
2. Navigate to the root of the project. One hirachy above the /feature folder
3. Execute: polter=true bundle exec cucumber -p localization  TEST_ENV=production de=true
 
#####Result: The cucumber tests parametarized "@localization" will be executed headless on the test production environment, asserting the German language definitions. 

## Deployment Jenkins
    Execution: local machine: java -jar jenkins.war

###Configuration:

    Build: Execute shell.
    cd /Users/kai/Documents/qa/main
    de=true polter=true TEST_ENV=production bundle exec cucumber -p creditcard -f json -o creditcard.json 
    cp creditcard.json /Users/kai/.jenkins/workspace/creditcard_checkout


###Post-build Actions: 
    Cucumber-JVM reports. 
    Generate Cucumber performance reports.

## References
Capybara simulates how a real user would interact with the site under test with Selenium support built in.
Capybara supports Selenium 2.0 (Webdriver) and requires Ruby 1.9.3 or later. 

Chromedriver:

ChromeDriver is a standalone server which implements WebDriver's wire protocol for Chromium. ChromeDriver is available for Chrome on Android and Chrome on Desktop (Mac, Linux, Windows and ChromeOS)

Poltergeist:

Poltergeist is headless driver which integrates Capybara with PhantomJS. It doesn't require Xvfb to run on your CI server.

## Limitation
Currently Chrome is downgraded to Version google-chrome-51-0-2704-106 since it breaks otherwise

## Links
 https://cucumber.io/
 https://github.com/natritmeyer/site_prism  
 http://jnicklas.github.io/capybara/ 
 http://bundler.io/groups.html
  
## Authors
  kai@apiman.de
