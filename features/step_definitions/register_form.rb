Given(/^I am on the registration page$/) do
  expect(@app.customer_register_page).to have_registration_forms
end
And(/^I fill in the new customer form$/) do
  fake_address_default
end

Then(/^I fill in the form with valid klarna credentials$/) do
 fake_address_klarna
end

Then(/^I fill in the form with valid sepa credentials$/) do
  fake_address_default
end

Then(/^I fill in the form with valid credentials$/) do
 fake_address_default
end

Then(/^I fill in the form with valid credit card credentials$/) do
  fake_address_default
end

Then(/^I fill in the form with valid credentials while logged in with klarna$/) do
  fake_address_while_logged_in
end

Then(/^I click the billing address dropdown on the registration page$/) do
  find('#address-form_billingAddressId').find(:xpath, 'option[2]').select_option
end

Then(/^I select the DHL delivery service dropdown 18 20$/) do
#  find('#checkout-details_items_dummy-variant-226_deliveryService').find(:xpath, 'option[1]').select_option
  find('select[id$="deliveryService"]').find(:xpath, 'option[1]').select_option

end

Then(/^I select the DHL delivery service dropdown 20 22$/) do
  # find('#checkout-details_items_dummy-variant-229_deliveryService').find(:xpath, 'option[3]').select_option
  find('select[id$="deliveryService"]').find(:xpath, 'option[2]').select_option

end

Then(/^I select the ups delivery service dropdown$/) do
  # find('#checkout-details_items_dummy-variant-226_deliveryService').find(:xpath, 'option[3]').select_option
  find('select[id$="deliveryService"]').find(:xpath, 'option[3]').select_option
end

Then(/^I select the lockbox delivery service dropdown$/) do
 #  find('#checkout-details_items_dummy-variant-226_deliveryService').find(:xpath, 'option[4]').select_option
  find('select[id$="deliveryService"]').find(:xpath, 'option[4]').select_option
end

Then(/^I fill in the preferred naighbour form$/) do
fill_in 'Preferred neighbour', :with => 'Charles'
end

Then(/^I fill in the preferred location form$/) do
fill_in 'Preferred location', :with => 'under the bushes'
end

Then(/^I fill in the voucher entry field with "([^"]*)"$/) do |arg1|
fill_in 'Gutscheincode', :with => arg1
end

