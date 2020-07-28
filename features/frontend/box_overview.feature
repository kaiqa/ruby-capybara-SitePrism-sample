# @javascript
#  @select_chrome
#  @select_firefox
#  @select_webkit


Feature:  I want to make sure that all
	  elements are visible and
	  links to external site are working

Background:
Given I am on the box overview page

Scenario: all elements are visible
  # header section
  * I see the box overview page has a title
  * the box overview page logo is visible
  * the box overview page logo link is visible
  * the box overview page header section is visible
  # middle section
  * the box overview page headline title text is visible
  * the unique selling point propositions are visible
  * the box overview page obox is visible
  # social media
  * the social media section is visible 
  * the box overview page social media headline is visible
  *  the box overview page facebook is visible
  *  the box overview page instagram is visible
  *  the box overview page pinterest is visible
  *  the box overview page gplus is visible
  *  the box overview page apiman blog is visible
  # the footer
  *  the box overview page footer is visible 
  *  the box overview page footer links are visible
  *  the box overview page footer copyright is visible
  *  the box overview page footer delivery info is visible
  *  the box overview page footer payment is visible
  *  the box overview page footer trust seals is visible
  *  the box overview page footer navigation has "16" items 
  *  the box overview page footer trusted shops is visible
  *  the box overview page footer trusted seal bio is visible
  *  the box overview page footer trusted seal test sieger is visible
  *  the box overview page footer payment visa is visible
  *  the box overview page footer payment american is visible
  *  the box overview page footer payment klarna is visible
  *  the box overview page footer payment mastercard is visible
  *  the box overview page footer payment paypal is visible
  *  the box overview page footer payment sepa is visible
  *  the box overview page footer delivery service dhl is visible
  *  the box overview page footer delivery service ups is visible
  *  the box overview page footer delivery service lockbox is visible
