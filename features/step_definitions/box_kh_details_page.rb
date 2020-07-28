Given(/^I am on the kleine helden box details page$/) do
puts $BASE_URL                 
@app = App.new                 
@app.box_boxpage_h_details_page.load
post_to_slack(":weight_lifter:kleine-helden")
expect(@app.box_boxpage_h_details_page).to be_displayed
end

Then(/^I click on the button add to card on the kleine helden box product page$/) do
@app.boxpage_v_details_page.details_page_product_form.button_product_form.click
end

