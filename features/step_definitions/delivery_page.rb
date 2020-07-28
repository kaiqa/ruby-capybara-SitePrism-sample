When(/^I am on the delivery page$/) do
expect(@app.delivery_page).to have_checkout_details
end

Then(/^I click on the delivery page button next$/) do
@app.delivery_page.delivery_page_form_button.click
end
