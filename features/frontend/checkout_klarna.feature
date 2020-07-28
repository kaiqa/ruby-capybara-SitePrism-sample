#  @javascript
#  @select_chrome
 Feature: As a customer I want to buy the kochbox original and pay with klarna

    @klarna  
  Scenario: I buy an obox pay with klarna for 2 people
      When I am on the obox details page
      Then I select a box for "2" people
      And  I see the price per box of "30,00 €" Euro
      Then I click on the button add to card on the obox product page
      And  I click on the button checkout on the shopping cart page
      When I am on the registration page
      Then I fill in the form with valid klarna credentials
      And  I click on the registration page button next
      When I am on the delivery page
      Then I click on the delivery page button next
      When I am on the checkout payment page
      Then I select klarna as a payment method
      When I agree with the klarna terms
      Then I click on the button submit
      When I am on the checkout confirmation overview page
      Then I see my order for "2 Personen"
      And  I see the price per box of "30,00 €" Euro
      Then I accept the terms and conditions on the checkout confirmation page
      And  I click on the button buy now on the checkout confirmation page

      Then I should not see "Order creation failed" 
      Then I should not see "Internal Server Error"
      When I am on the order succes page
      Then I see my order listed
      And  I see my order for "2 Personen"
      Then I should not see "Order creation failed"

@klarna   
  Scenario: I buy an obox and pay with klarna for 4 people
      When I am on the obox details page
      Then I select a box for "4" people
      And  I see the price per box of "60,00 €" Euro
      Then I click on the button add to card on the obox product page
      And  I click on the button checkout on the shopping cart page
      When I am on the registration page
      Then I fill in the form with valid klarna credentials
      And  I click on the registration page button next
      When I am on the delivery page
      Then I click on the delivery page button next
      When I am on the checkout payment page
      Then I select klarna as a payment method
      And  I agree with the klarna terms
      Then I click on the button submit
      When I am on the checkout confirmation overview page
      Then I see my order for "4 Personen"
      And  I see the price per box of "60,00 €" Euro
      Then I accept the terms and conditions on the checkout confirmation page
      And  I click on the button buy now on the checkout confirmation page
      Then I should not see "Order creation failed" 
      Then I should not see "Internal Server Error"
      When I am on the order succes page
      Then I see my order listed
      And  I see my order for "4 Personen"
      Then I should not see "Order creation failed"

@klarna  
  Scenario: I  buy an obox,
    and I pay with klarna then I buy another obox
    and I use a new account address

      When I am on the obox details page
      Then I select a box for "2" people
      And  I see the price per box of "30,00 €" Euro
      Then I click on the button add to card on the obox product page
      And  I click on the button checkout on the shopping cart page
      When I am on the registration page
      Then I fill in the form with valid klarna credentials
      And  I click on the registration page button next
      When I am on the delivery page
      Then I click on the delivery page button next
      When I am on the checkout payment page
      Then I select klarna as a payment method
      When I agree with the klarna terms
      And  I click on the button submit
      Then I should not see "Order creation failed" 
      Then I should not see "Internal Server Error"
      When I am on the checkout confirmation overview page
      Then I see my order for "2 Personen"
      And  I see the price per box of "30,00 €" Euro
      Then I accept the terms and conditions on the checkout confirmation page
      And  I click on the button buy now on the checkout confirmation page
      When I am on the order success page
      Then I see my order listed
      And  I see my order for "2 Personen"
      Then I should not see "Order creation failed"
      Then I should not see "Internal Server Error"
      When I am on the obox details page
      Then I select a box for "2" people
      And  I see the price per box of "30,00 €" Euro
      Then I click on the button add to card on the obox product page
      And  I click on the button checkout on the shopping cart page
      When I am on the registration page
      Then I fill in the form with valid credentials while logged in with klarna
      When I click on the registration page button next
      And  I click on the button next
      Then I select klarna as a payment method
      When I agree with the klarna terms
      And  I click on the button submit
      Then I should not see "Internal Server Error"
      Then I should not see "Order creation failed"
      When I am on the checkout confirmation overview page
      And  I see the price per box of "30,00 €" Euro
      Then I accept the terms and conditions on the checkout confirmation page
      And  I click on the button buy now on the checkout confirmation page
      Then I should not see "Internal Server Error"
      Then I should not see "Order creation failed"
      When I am on the order success page
      Then I see my order listed
      And  I see my order for "2 Personen"
