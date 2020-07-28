Given(/^I am on the veggie box details page$/) do
puts $BASE_URL                 
@app = App.new                 
@app.boxpage_v_details_page.load
expect(@app.boxpage_v_details_page).to be_displayed
post_to_slack(":rabbit:vbox")
end

Then(/^I click on the button add to card on the v box product page$/) do
@app.boxpage_v_details_page.details_page_product_form.button_product_form.click
end
