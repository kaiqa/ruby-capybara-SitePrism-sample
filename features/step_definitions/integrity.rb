When(/^I select a box for (\d+) people$/) do |people|
  if people == "2"
    choose('product-form_personCount_0')
    post_to_slack(":couple: 2 people")
   else 
    choose('product-form_personCount_1')
    post_to_slack(":couple::couple:4 people")
  end
end

Then(/^I see the price per box of (\d+)\,(\d+) € Euro$/) do |arg1, arg2|
  price = arg1 + "," + arg2
  expect(page).to have_content "#{price}"
  post_to_slack(":euro:#{price}€ Euro")
end

Then(/^I see my order for (\d+) "([^"]*)"$/) do |amount, people|
  result = amount + " " + people
  expect(page).to have_content result
end
