And(/^I am on the checkout payment page$/) do
  expect(@app.checkout_payment_page).to have_checkout_payment_form
end

Then(/^I select paypal as a payment method$/) do
  @app.checkout_payment_page.checkout_select_paypal.click
end

And(/^I click on the button next on the checkout payment page$/) do
  @app.checkout_payment_page.checkout_payment_page__button.click
end

When(/^I am on the checkout confirmation overview page$/) do
  expect(@app.checkout_confirmation_overview_page).to have_checkout_confirmation_overview_page
end

And(/^I accept the terms and conditions on the checkout confirmation page$/) do
  @app.checkout_confirmation_overview_page.checkout_accept_conditions_tickbox.click
end

Then(/^I click on the button buy now on the checkout confirmation page$/) do
  buy_now = I18n.translate 'text.buy_now'
  click_on("#{buy_now}")
#  @app.checkout_confirmation_overview_page.checkout_confirmation_overview_button.click
end

Then(/^I am on the paypal login page$/) do
  page.has_content?('Bei PayPal einloggen')
end

Then(/^I log into my paypal account$/) do
  paypal_login_sandbox
end

Then(/^I pay with paypal$/) do
  paypal_execute_payment
end

When(/^I am on the order success page$/) do
  page.has_content?('Vielen Dank für Deine Bestellung! Wir senden Dir zusätzlich eine Bestellbestätigung per Email zu.')  
post_to_slack "SUCCESS :+1:"
end


Then(/^I select credit card as a payment method$/) do
  post_to_slack "credit card"
  @app.checkout_payment_page.checkout_select_creditcard.click
  fill_in 'checkout-payment_creditcard_number', :with => '4111111111111111'
  # depricated
  # fill_in 'checkout-payment_creditcard_expiry_year', :with => '20'
  # fill_in 'checkout-payment_creditcard_expiry_month', :with => '03'
  fill_in 'checkout-payment_creditcard_verification', :with => '123'

end

And(/^I fill in the credit card information$/) do
  fill_in 'checkout-payment_creditcard_number', :with => '4111111111111111'
  fill_in 'checkout-payment_creditcard_expiry_year', :with => '20'
  fill_in 'checkout-payment_creditcard_expiry_month', :with => '03'
  fill_in 'checkout-payment_creditcard_verification', :with => '123'
end

Then(/^I click on the button submit$/) do
  sleep 5 
  btn_next = I18n.translate 'text.btn_next'
  find_button("#{btn_next}").click
  # find_button('Weiter').click
  # find_button('Submit').click
  # find_button("Submit").trigger('click')
  sleep 5
end
Then(/^I see my order listed$/) do

  order_overview = I18n.translate 'text.order_overview'
  page.has_content?("#{order_overview}")  
  expect(page).to have_content "#{order_overview}"
  post_to_slack "order overview"
end
Then(/^I see my order for "([^"]*)"$/) do |arg1|  
  expect(page).to have_content "#{arg1}"
end

Then(/^I click on the registration page button next$/) do
  sleep 3 
  btn_next = I18n.translate 'text.btn_next'
  find_button("#{btn_next}").click
  sleep 3
end

Then(/^I select klarna as a payment method$/) do
  post_to_slack "Klarna" 
  choose_direct_debit = I18n.translate 'text.direct_debit'
  choose("#{choose_direct_debit}")
  sleep 3
   find('#checkout-payment_klarna_acceptKlarnaTerms').click
end

And(/^I agree with the klarna terms$/) do
  find('#checkout-payment_klarna_acceptKlarnaTerms').click
end

Then(/^I select a box for "([^"]*)" people$/) do |people|
  sleep 2
  if people == "2"
    choose('product-form_personCount_0')
  else 
    choose('product-form_personCount_1')
  end
end

Then(/^I see the price per box of "([^"]*)" Euro$/) do |price|
  expect(page).to have_content "#{price}"
end

Then(/^I select sepa as a payment method$/) do
  post_to_slack "sepa"
  #choose('Sepa')
  choose_sepa = I18n.translate 'text.choose_sepa'
  choose("#{choose_sepa}") 
  fill_in 'IBAN', :with => 'DE5123456'
  fill_in 'BIC', :with => 'TESTTEST'
end
Then(/^I pry$/) do
  binding.pry
end

When(/^I click on the button next$/) do
  sleep 3
  btn_next = I18n.translate 'text.btn_next'
  find_button("#{btn_next}").click
end

Then(/^I should not see "(.*?)"$/) do |arg1|
  expect(page).to have_no_content(arg1)
end
Then(/^I should see "([^"]*)"$/) do |arg1|
  expect(page).to have_content(arg1)
end

Then(/^I click on redeem$/) do
  btn_redeem = I18n.translate 'text.btn_redeem'
  click_on("#{btn_redeem}")
end
Then(/^I see the price total sum of "([^"]*)" Euro$/) do |price|
  expect(page).to have_content "#{price}"
end
When(/^I see the price total sum of (\d+)$/) do |price|
  expect(page).to have_content "#{price}"
end

Then(/^I see the box type "([^"]*)"$/) do |arg1|
   expect(page).to have_content(arg1)
end

Then(/^I see the payment type "([^"]*)"$/) do |arg1|
   expect(page).to have_content(arg1)
end

Then(/^I see the box type obox$/) do
   expect(page).to have_content("Oh box")
end

Then(/^I see the box type veggie box$/) do
   expect(page).to have_content("Vbox")
end

Then(/^I see the payment type sepa$/) do
   expect(page).to have_content("SEPA")
end

When(/^I see the price total of (\d+),(\d+) € Euro$/) do |arg1, arg2|
  total_sum = arg1  + ',' + arg2  
  expect(page).to have_content(total_sum)
end

Then(/^I see the payment type klarna$/) do
   expect(page).to have_content("Klarna")
end

Then(/^I see the payment type credit card$/) do
  credit_card = I18n.translate 'text.creditcard'
  btn_next = I18n.translate 'text.buy_now'
  find_button("#{btn_next}").click
  expect(page).to have_content("#{credit_card}")
end
