Given(/^I am on the obox details page$/) do
puts $BASE_URL
@app = App.new
@app.box_o_details_page.load
expect(@app.box_o_details_page).to be_displayed
post_to_slack(":pig:o-box")
end

Given(/^I see the obox details page has a title$/) do
expect(@app.box_o_details_page.title).not_to be_empty
end

Given(/^the obox details page logo is visible$/) do
  expect(@app.box_o_details_page.header_main).to have_header_logo_link
end

Given(/^the obox details page logo link is visible$/) do
  expect(@app.box_o_details_page.header_main).to have_header_logo_link
end

Given(/^the obox details page header section is visible$/) do
  expect(@app.box_o_details_page).to have_header_top
  expect(@app.box_o_details_page).to have_header_main
end

Given(/^the obox details page headline title text is visible$/) do
  expect(@app.box_o_details_page).to have_header_top
  expect(@app.box_o_details_page).to have_header_main
end

Given(/^the box details page navigation has "([^"]*)" items$/) do |products|
expect(@app.box_o_details_page).to have_selector('.nav-boxes__link', count: products)
end

Given(/^the obox details page recipe intro text is visible$/) do
expect(@app.box_o_details_page).to have_recipe_intro_text
end

Given(/^the obox details page recipe slider is visible$/) do
expect(@app.box_o_details_page).to have_recipe_slider
end

Given(/^the obox details page recipe slider navigation is visible$/) do
expect(@app.box_o_details_page).to have_navigation_recipe_slider
end

Given(/^the obox details page product form usps are visible$/) do
expect(@app.box_o_details_page.details_page_product_form).to have_usps_product_form
end

Given(/^the box details page product form has "([^"]*)" text labels$/) do |labels|
expect(@app.box_o_details_page).to have_selector('.product-form__label', count: labels)
end

Given(/^the box details page product form has "([^"]*)" choice fields$/) do |fields|
expect(@app.box_o_details_page).to have_selector('.product-form__field--choice', count: fields)
end

Given(/^the box details page product form field drop down is visible$/) do
  expect(@app.box_o_details_page.details_page_product_form).to have_field_select_product_form
end

Given(/^the box details page product form availability is visible$/) do
  expect(@app.box_o_details_page.details_page_product_form).to have_availability_product_form
end

Given(/^the box details page product form prices are visible$/) do
  expect(@app.box_o_details_page.details_page_product_form).to have_prices_product_form
end

Given(/^the box details page product form price is visible$/) do
  expect(@app.box_o_details_page.details_page_product_form).to have_price_product_form
end
Given(/^the box details page product form button is visible$/) do
  expect(@app.box_o_details_page.details_page_product_form).to have_button_product_form
end

Given(/^the obox details page product info title is visible$/) do
  expect(@app.box_o_details_page.details_page_product_form).to have_button_product_form
end

Given(/^the obox details page product info navigation arrow is visible$/) do
  expect(@app.box_o_details_page).to have_product_info_navigation_slider_arrow
end

Given(/^the obox details page product info navigation next arrow is visible$/) do
expect(@app.box_o_details_page).to have_product_info_navigation_slider_arrow_next
end

Given(/^the obox details page product info slider has "([^"]*)" items$/) do |items|
expect(@app.box_o_details_page).to have_selector('.product-info__slider-nav-item', count: items)
end

Given(/^the obox details page product info slider has info text$/) do
expect(@app.box_o_details_page).to have_product_slider_info_text
end

Given(/^the obox details page product info slider text is correct$/) do

product_slider_info_text= $data['local_box_o_box_product_slider_info_text_source']
expect(@app.box_o_details_page).to have_selector('.product-info__text', text: product_slider_info_text)
end

#####################old####################################

Given(/^the obox details page obox is visible$/) do
  expect(@app.box_o_details_page).to have_box_o
end

Given(/^the obox details page kleine helden is visible$/) do
  expect(@app.box_o_details_page).to have_box_boxpage_h
end

Given(/^the obox details page weight watchers is visible$/) do
expect(@app.box_o_details_page).to have_box_ww
end

Given(/^the obox details page social media headline is visible$/) do
expect(@app.box_o_details_page.social_media).to have_social_media_headline
end

Given(/^the obox details page social media section is visible$/) do
expect(@app.box_o_details_page).to have_social_media
end

Given(/^the obox details page facebook is visible$/) do
expect(@app.box_o_details_page.social_media).to have_facebook_icon
# expect(@app.box_o_details_page).social_media.to have_googleplus_icon
# expect(@app.box_o_details_page).social_media.to have_blog_icon
end

Given(/^the obox details page instagram is visible$/) do
expect(@app.box_o_details_page.social_media).to have_instagram_icon
end

Given(/^the obox details page pinterest is visible$/) do
expect(@app.box_o_details_page.social_media).to have_pinterest_icon
end

Given(/^the obox details page gplus is visible$/) do
expect(@app.box_o_details_page.social_media).to have_pinterest_icon
end

Given(/^the obox details page apiman blog is visible$/) do
expect(@app.box_o_details_page.social_media).to have_blog_icon
end

Given(/^the obox details page footer is visible$/) do
expect(@app.box_o_details_page).to have_footer
end

Given(/^the obox details page footer links are visible$/) do
expect(@app.box_o_details_page.footer).to have_footer_links
end

Given(/^the obox details page footer copyright is visible$/) do
expect(@app.box_o_details_page.footer).to have_footer_copyright
end

Given(/^the obox details page footer delivery info is visible$/) do
expect(@app.box_o_details_page.footer).to have_footer_delivery_info
end

Given(/^the obox details page footer payment is visible$/) do
expect(@app.box_o_details_page.footer).to have_footer_payment_info
end

Given(/^the obox details page footer trust seals is visible$/) do
expect(@app.box_o_details_page.footer).to have_footer_trust_seals
end

Given(/^the obox details page footer newsletter is visible$/) do
expect(@app.box_o_details_page.footer).to have_footer_newsletter
end

Given(/^the obox details page footer navigation has "([^"]*)" items$/) do |products|
# expect(@app.box_o_details_page).to have_selector('.footer__nav-item', count: 16)
expect(@app.box_o_details_page).to have_selector('.footer__nav-item', count: products)
end

Given(/^the obox details page footer trusted shops is visible$/) do
expect(@app.box_o_details_page.footer).to have_footer_trusted_shops
end

Given(/^the obox details page footer trusted seal bio is visible$/) do
expect(@app.box_o_details_page.footer).to have_footer_trusted_shops
end

Given(/^the obox details page footer trusted seal test sieger is visible$/) do
expect(@app.box_o_details_page.footer).to have_footer_trusted_seal_testsieger
end

Given(/^the obox details page footer payment visa is visible$/) do
expect(@app.box_o_details_page.footer_payment_info).to have_footer_payment_service_visa
end

Given(/^the obox details page footer payment american is visible$/) do
expect(@app.box_o_details_page.footer_payment_info).to have_footer_payment_service_american
end

Given(/^the obox details page footer payment klarna is visible$/) do
expect(@app.box_o_details_page.footer_payment_info).to have_footer_payment_service_klarna
end

Given(/^the obox details page footer payment mastercard is visible$/) do
expect(@app.box_o_details_page.footer_payment_info).to have_footer_payment_service_mastercard
end

Given(/^the obox details page footer payment paypal is visible$/) do
expect(@app.box_o_details_page.footer_payment_info).to have_footer_payment_service_paypal
end

Given(/^the obox details page footer payment sepa is visible$/) do
expect(@app.box_o_details_page.footer_payment_info).to have_footer_payment_service_sepa
end

Given(/^the obox details page footer delivery service dhl is visible$/) do
expect(@app.box_o_details_page.footer_delivery_services).to have_footer_delivery_service_dhl
end
Given(/^the obox details page footer delivery service ups is visible$/) do
expect(@app.box_o_details_page.footer_delivery_services).to have_footer_delivery_service_ups
end

Given(/^the obox details page footer delivery service lockbox is visible$/) do
expect(@app.box_o_details_page.footer_delivery_services).to have_footer_delivery_service_lockbox
end
# shopping
Then(/^I click on the button add to card on the obox product page$/) do
	@app.box_o_details_page.details_page_product_form.button_product_form.click
end

Then(/^I click on the button checkout on the shopping cart page$/) do
	@app.shopping_card_page.shopping_cart_checkout_button.click
end
