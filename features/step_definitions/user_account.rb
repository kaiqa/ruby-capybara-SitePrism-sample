When(/^I am on the customer log in page$/) do
puts $BASE_URL                 
@app = App.new                 
@app.customer_login_page.load
post_to_slack(":bust_in_silhouette:customer login")

page.has_content?('Bitte logge Dich ein, um in den Kundenbereich Deines apiman-Kontos zu gelangen.')

end

Then(/^I fill in the customer login form with valid credentials$/) do
  fill_in 'customer-login_email', :with => 'test'
  fill_in 'customer-login_password', :with => 'vgfgs'
  click_button('Login')
  binding.pry
end

