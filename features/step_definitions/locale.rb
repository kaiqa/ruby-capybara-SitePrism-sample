Then(/^I should see the product info slider text$/) do
# puts  I18n.translate :home_title, :scope => 'text.page_main'
  product_info_slider_text = I18n.translate 'text.page_original_box.product_info_slider'
  expect(page).to have_content "#{product_info_slider_text}"
  puts product_info_slider_text
end

Given(/^I am on the general terms and conditions page$/) do
@app = App.new
@app.gtc_page.load
expect(@app.gtc_page).to be_displayed
end

Given(/^I see the general terms and conditions$/) do
  gtc_text = I18n.translate 'text.page_gtc.gtc_text'
  expect(page).to have_content "#{gtc_text}"
end

Then(/^I am on the imprint page$/) do
@app = App.new
@app.imprint_page.load
expect(@app.imprint_page).to be_displayed
end

Then(/^I see the imprint address$/) do
  page_imprint_address_text = I18n.translate 'text.page_imprint.imprint_address'
  expect(page).to have_content "#{page_imprint_address_text}"
end

Given(/^I see the imprint manager$/) do
  page_imprint_manager_text = I18n.translate 'text.page_imprint.imprint_manager'
  expect(page).to have_content "#{page_imprint_manager_text}"
end

Given(/^I see the imprint contact$/) do
  page_imprint_contact_text = I18n.translate 'text.page_imprint.imprint_contact'
  expect(page).to have_content "#{page_imprint_contact_text}"
end

Given(/^I see the imprint registry entry$/) do
  page_imprint_registry_entry_text = I18n.translate 'text.page_imprint.imprint_registry_entry'
  expect(page).to have_content "#{page_imprint_registry_entry_text}"
end

Given(/^I see the imprint disclaimer$/) do
  page_imprint_disclaimer_text = I18n.translate 'text.page_imprint.imprint_disclaimer'
  expect(page).to have_content "#{page_imprint_disclaimer_text}"
end

Given(/^I see the imprint copyright$/) do
  page_imprint_copyright_text = I18n.translate 'text.copyright'
  expect(page).to have_content "#{page_imprint_copyright_text}"
end
