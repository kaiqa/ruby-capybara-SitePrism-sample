Feature: As a customer I want to pay with sepa
@sepa  
Scenario: I buy an obox pay with sepa for 2 people
When I am on the obox details page
#  And I visit all links found
  Then I select a box for "2" people
  And  I see the price per box of "30,00 €" Euro
  Then I click on the button add to card on the obox product page
  And  I click on the button checkout on the shopping cart page
  When I am on the registration page
  Then I fill in the form with valid sepa credentials
  And  I click on the registration page button next
  When I am on the delivery page
  Then I should not see "Preferred neighbour"
  And  I should not see "Preferred location"
  Then I select the DHL delivery service dropdown 18 20
  And  I should not see "Preferred neighbour"
  And  I should not see "Preferred location"
  Then I select the DHL delivery service dropdown 20 22
  And  I should not see "Preferred neighbour"
  And  I should not see "Preferred location"
  Then I select the lockbox delivery service dropdown
  And  I should not see "Preferred neighbour"
  And  I should not see "Preferred location"
  Then I select the ups delivery service dropdown
  And  I should see "Preferred neighbour"
  And  I should see "Preferred location"
  Then I fill in the preferred naighbour form
  And  I fill in the preferred location form
  Then I click on the delivery page button next
  When I am on the checkout payment page
  Then I select sepa as a payment method
  And  I click on the button submit
  When I am on the checkout confirmation overview page
  Then I see my order for "2 Personen"
  And  I see the price per box of "30,00 €" Euro
  Then I accept the terms and conditions on the checkout confirmation page
  And I pry
  And  I click on the button buy now on the checkout confirmation page
  Then I should not see "Order creation failed" 
  Then I should not see "Internal Server Error"
  When I am on the order succes page
  Then I see my order listed
  And  I see my order for "2 Personen"

@sepa 
Scenario: I buy an obox pay with sepa for 4 people
  When I am on the obox details page
  Then I select a box for "4" people
  And  I see the price per box of "60,00 €" Euro
  Then I click on the button add to card on the obox product page
  And  I click on the button checkout on the shopping cart page
  When I am on the registration page
  Then I fill in the form with valid sepa credentials
  And  I click on the registration page button next
  When I am on the delivery page
  Then I should not see "Preferred neighbour"
  And  I should not see "Preferred location"
  Then I select the DHL delivery service dropdown 18 20
  And  I should not see "Preferred neighbour"
  And  I should not see "Preferred location"
  Then I select the DHL delivery service dropdown 20 22
  And  I should not see "Preferred neighbour"
  And  I should not see "Preferred location"
  Then I select the lockbox delivery service dropdown
  And  I should not see "Preferred neighbour"
  And  I should not see "Preferred location"
  Then I select the ups delivery service dropdown
  And  I should see "Preferred neighbour"
  And  I should see "Preferred location"
  Then I fill in the preferred naighbour form
  And  I fill in the preferred location form
  Then I click on the delivery page button next
  When I am on the checkout payment page
  Then I select sepa as a payment method
  And  I click on the button submit
  When I am on the checkout confirmation overview page
  Then I see my order for "4 Personen"
  And  I see the price per box of "60,00 €" Euro
  Then I accept the terms and conditions on the checkout confirmation page
  And  I click on the button buy now on the checkout confirmation page
  Then I should not see "Order creation failed" 
  Then I should not see "Internal Server Error"
  When I am on the order success page
  Then I see my order listed
  And  I see my order for "4 Personen"

@sepa 
Scenario: I buy a second time and can use the account address
  When I am on the obox details page
  Then I select a box for "2" people
  And  I see the price per box of "30,00 €" Euro
  Then I click on the button add to card on the obox product page
  And  I click on the button checkout on the shopping cart page
  When I am on the registration page
  Then I fill in the form with valid sepa credentials
  And  I click on the registration page button next
  When I am on the delivery page
  And  I should not see "Preferred neighbour"
  And  I should not see "Preferred location"
  Then I select the DHL delivery service dropdown 18 20
  And  I should not see "Preferred neighbour"
  And  I should not see "Preferred location"
  Then I select the DHL delivery service dropdown 20 22
  And  I should not see "Preferred neighbour"
  And  I should not see "Preferred location"
  Then I select the lockbox delivery service dropdown
  And  I should not see "Preferred neighbour"
  And  I should not see "Preferred location"
  Then I select the ups delivery service dropdown
  And  I should see "Preferred neighbour"
  And  I should see "Preferred location"
  Then I click on the delivery page button next
  When I am on the checkout payment page
  Then I select sepa as a payment method
  And  I click on the button submit
  When I am on the checkout confirmation overview page
  Then I see my order for "2 Personen"
  And  I see the price per box of "30,00 €" Euro
  Then I accept the terms and conditions on the checkout confirmation page
  And  I click on the button buy now on the checkout confirmation page
  When I am on the order succes page
  Then I see my order listed
  And  I see my order for "2 Personen"
  When I am on the obox details page
  Then I select a box for "2" people
  And  I see the price per box of "30,00 €" Euro
  Then I click on the button add to card on the obox product page
  And  I click on the button checkout on the shopping cart page
  When I am on the registration page
  And  I click the billing address dropdown on the registration page
  Then I click on the registration page button next

@sepa 
Scenario: I buy an obox, and I pay with sepa and buy again as the same user with a new address 

  When I am on the obox details page
  Then I select a box for "2" people
  And  I see the price per box of "30,00 €" Euro
  Then I click on the button add to card on the obox product page
  And  I click on the button checkout on the shopping cart page
  When I am on the registration page
  Then I fill in the form with valid sepa credentials
  And  I click on the registration page button next
  When I am on the delivery page
  Then I click on the delivery page button next
  When I am on the checkout payment page
  Then I select sepa as a payment method
  And  I click on the button submit
  When I am on the checkout confirmation overview page
  Then I see my order for "2 Personen"
  And  I see the price per box of "30,00 €" Euro
  Then I accept the terms and conditions on the checkout confirmation page
  And  I click on the button buy now on the checkout confirmation page
  When I am on the order succes page
  Then I see my order listed
  And  I see my order for "2 Personen"
  Then I should not see "Order creation failed"

  When I am on the obox details page
  Then I select a box for "2" people
  And  I see the price per box of "30,00 €" Euro
  Then I click on the button add to card on the obox product page
  And  I click on the button checkout on the shopping cart page
  When I am on the registration page
  Then I fill in the form with valid credentials while logged in
  When I click on the registration page button next
  And  I click on the button next
  Then I select sepa as a payment method
  And  I click on the button submit
  When I am on the checkout confirmation overview page
  And  I see the price per box of "30,00 €" Euro
  Then I accept the terms and conditions on the checkout confirmation page
  And  I click on the button buy now on the checkout confirmation page
  Then I should not see "Order creation failed"
  When I am on the order succes page
  Then I see my order listed
  And  I see my order for "2 Personen"
