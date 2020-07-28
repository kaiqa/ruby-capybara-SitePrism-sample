
Given(/^I am on the box overview page$/) do
@app = App.new
@app.box_overview_page.load
expect(@app.box_overview_page).to be_displayed
end

Given(/^I see the box overview page has a title$/) do
expect(@app.box_overview_page.title).not_to be_empty
end
Given(/^the box overview page logo is visible$/) do
  expect(@app.box_overview_page.header_main).to have_header_logo_link
end

Given(/^the box overview page logo link is visible$/) do
  expect(@app.box_overview_page.header_main).to have_header_logo_link
end

Given(/^the box overview page header section is visible$/) do
  expect(@app.box_overview_page).to have_header_top
  expect(@app.box_overview_page).to have_header_main
end

Given(/^the box overview page headline title text is visible$/) do
  expect(@app.box_overview_page).to have_header_top
  expect(@app.box_overview_page).to have_header_main
end

Given(/^the unique selling point propositions are visible$/) do
  expect(@app.box_overview_page).to have_unique_selling_points
end

Given(/^the box overview page obox is visible$/) do
  expect(@app.box_overview_page).to have_box_o
end

Given(/^the box overview page social media headline is visible$/) do
expect(@app.box_overview_page.social_media).to have_social_media_headline
end

Given(/^the social media section is visible$/) do
expect(@app.box_overview_page).to have_social_media
end

Given(/^the box overview page facebook is visible$/) do
expect(@app.box_overview_page.social_media).to have_facebook_icon
# expect(@app.box_overview_page).social_media.to have_googleplus_icon
# expect(@app.box_overview_page).social_media.to have_blog_icon
end

Given(/^the box overview page instagram is visible$/) do
expect(@app.box_overview_page.social_media).to have_instagram_icon
end

Given(/^the box overview page pinterest is visible$/) do
expect(@app.box_overview_page.social_media).to have_pinterest_icon
end

Given(/^the box overview page gplus is visible$/) do
expect(@app.box_overview_page.social_media).to have_pinterest_icon
end

Given(/^the box overview page apiman blog is visible$/) do
expect(@app.box_overview_page.social_media).to have_blog_icon
end

Given(/^the box overview page footer is visible$/) do
expect(@app.box_overview_page).to have_footer
end

Given(/^the box overview page footer links are visible$/) do
expect(@app.box_overview_page.footer).to have_footer_links
end

Given(/^the box overview page footer copyright is visible$/) do
expect(@app.box_overview_page.footer).to have_footer_copyright
end

Given(/^the box overview page footer delivery info is visible$/) do
expect(@app.box_overview_page.footer).to have_footer_delivery_info
end

Given(/^the box overview page footer payment is visible$/) do
expect(@app.box_overview_page.footer).to have_footer_payment_info
end

Given(/^the box overview page footer trust seals is visible$/) do
expect(@app.box_overview_page.footer).to have_footer_trust_seals
end

Given(/^the box overview page footer newsletter is visible$/) do
expect(@app.box_overview_page.footer).to have_footer_newsletter
end

Given(/^the box overview page footer navigation has "([^"]*)" items$/) do |products|
# expect(@app.box_overview_page).to have_selector('.footer__nav-item', count: 16)
expect(@app.box_overview_page).to have_selector('.footer__nav-item', count: products)
end

Given(/^the box overview page footer trusted shops is visible$/) do
expect(@app.box_overview_page.footer).to have_footer_trusted_shops
end

Given(/^the box overview page footer trusted seal bio is visible$/) do
expect(@app.box_overview_page.footer).to have_footer_trusted_shops
end

Given(/^the box overview page footer trusted seal test sieger is visible$/) do
expect(@app.box_overview_page.footer).to have_footer_trusted_seal_testsieger
end

Given(/^the box overview page footer payment visa is visible$/) do
expect(@app.box_overview_page.footer_payment_info).to have_footer_payment_service_visa
end

Given(/^the box overview page footer payment american is visible$/) do
expect(@app.box_overview_page.footer_payment_info).to have_footer_payment_service_american
end


Given(/^the box overview page footer payment klarna is visible$/) do
expect(@app.box_overview_page.footer_payment_info).to have_footer_payment_service_klarna
end

Given(/^the box overview page footer payment mastercard is visible$/) do
expect(@app.box_overview_page.footer_payment_info).to have_footer_payment_service_mastercard
end

Given(/^the box overview page footer payment paypal is visible$/) do
expect(@app.box_overview_page.footer_payment_info).to have_footer_payment_service_paypal
end

Given(/^the box overview page footer payment sepa is visible$/) do
expect(@app.box_overview_page.footer_payment_info).to have_footer_payment_service_sepa
end

Given(/^the box overview page footer delivery service dhl is visible$/) do
expect(@app.box_overview_page.footer_delivery_services).to have_footer_delivery_service_dhl
end
Given(/^the box overview page footer delivery service ups is visible$/) do
expect(@app.box_overview_page.footer_delivery_services).to have_footer_delivery_service_ups
end

Given(/^the box overview page footer delivery service lockbox is visible$/) do
expect(@app.box_overview_page.footer_delivery_services).to have_footer_delivery_service_lockbox
end

Given(/^the box overview page footer winner list is visible$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^the box overview page footer payment list is visible$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^the box overview page visa is visible$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^the box overview page mastercard is visible$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^the box overview page american express is visible$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^the box overview page paypal is visible$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^the box overview page sepa is visible$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^the box overview page klarna is visible$/) do
  pending # Write code here that turns the phrase above into concrete actions
end
