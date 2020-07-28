Feature: As a customer I want to buy twoboxes
@payment 
Scenario Outline: I buy twoboxes in combination
    
  When I am on the <box> details page
  Then I select a box for <amount> people
  And  I see the price per box of <box price> Euro
  Then I click on the button add to card on the obox product page
  And  I am on the <second box> details page
  Then I select a box for <amount> people
  Then I click on the button add to card on the obox product page
  And  I click on the button checkout on the shopping cart page
  When I am on the registration page
  Then I fill in the form with valid <payment> credentials 
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
  Then I select <payment> as a payment method
  And  I click on the button submit
  When I am on the checkout confirmation overview page
  And  I see the price total of <box total> Euro
  Then I accept the terms and conditions on the checkout confirmation page
  And  I click on the button buy now on the checkout confirmation page
  Then I should not see "Order creation failed" 
  Then I should not see "Internal Server Error"
  When I am on the order success page
  Then I see my order listed
  And  I see the box type <box>
  And  I see the box type <second box>
  And  I see the payment type <payment>
    Examples:
     |box          |second box    |amount |box price |box total  |payment|
     |obox          |vbox         |2      |30,00 €   |60,00 €    |sepa   |
     |obox          |vbox         |2      |30,00 €   |60,00 €    |klarna |
     |vbox          |obox         |4      |60,00 €   |120,00 €   |klarna |
     |obox          |vbox         |2      |30,00 €   |60,00 €    |credit card|
     |vbox          |obox         |4      |60,00 €   |120,00 €   |credit card|
