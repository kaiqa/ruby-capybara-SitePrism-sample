Feature: As a customer I want to pay with paypal

 @paypal 
Scenario: I buy an obox and pay with paypal for 2 people
     Then I delete all cookies
     When I am on the obox details page
     Then I select a box for "2" people
     And  I see the price per box of "30,00 €" Euro
     Then I click on the button add to card on the obox product page
     And  I click on the button checkout on the shopping cart page
     Then I am on the registration page
     And  I fill in the new customer form
     Then I click on the registration page button next
     When I am on the delivery page
     Then I click on the delivery page button next
     When I am on the checkout payment page
     Then I select paypal as a payment method
     And  I click on the button next on the checkout payment page
     When I am on the checkout confirmation overview page
     And  I accept the terms and conditions on the checkout confirmation page
     Then I click on the button buy now on the checkout confirmation page
     When I am on the paypal login page
     Then I log into my paypal account
     And  I pay with paypal
     When I am on the order succes page
     Then I see my order listed
     Then I should not see "Order creation failed"

 @paypal 
Scenario: I buy an obox and pay with paypal for 4 people
     When I am on the obox details page
     Then I delete all cookies
     Then I select a box for "4" people
     And  I see the price per box of "60,00 €" Euro
     Then I click on the button add to card on the obox product page
     And  I click on the button checkout on the shopping cart page
     Then I am on the registration page
     And  I fill in the new customer form
     Then I click on the registration page button next
     When I am on the delivery page
     Then I click on the delivery page button next
     When I am on the checkout payment page
     Then I select paypal as a payment method
     And  I click on the button next on the checkout payment page
     When I am on the checkout confirmation overview page
     And  I accept the terms and conditions on the checkout confirmation page
     Then I click on the button buy now on the checkout confirmation page
     When I am on the paypal login page
     # Then I log into my paypal account
     And  I pay with paypal
     # These steps break because of url auth when redirecting to api.kochsauber
     When I am on the order success page
     Then I see my order listed
     Then I should not see "Order creation failed"
