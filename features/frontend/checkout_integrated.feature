
Feature: I buy all boxes and pay with all currencies (no paypal) 
@payment @wip 
  Scenario Outline: I buy for 2 and 4 people. I use preferred neighbour, and check delivery services  
    Given I am on the <box> details page
    When  I select a box for <amount> people
    Then  I see the price per box of <box price> Euro
    And   I click on the button add to card on the <box> product page
    Then  I click on the button checkout on the shopping cart page
    When  I am on the registration page
    Then  I fill in the form with valid <payment> credentials 
    And   I click on the registration page button next
    Then  I should not see "Preferred neighbour" 
    And   I should not see "Preferred location"
    Then  I select the DHL delivery service dropdown 18 20
    And   I should not see "Preferred location"
    Then  I select the DHL delivery service dropdown 20 22 
    And   I should not see "Preferred neighbour"
    And   I should not see "Preferred location"
    Then  I select the lockbox delivery service dropdown
    And   I should not see "Preferred neighbour"
    And   I should not see "Preferred location"
    Then  I select the ups delivery service dropdown
    And   I should see "Preferred neighbour"
    And   I should see "Preferred location" 
    Then  I fill in the preferred naighbour form
    And   I fill in the preferred location form
    Then  I click on the delivery page button next 
    When  I am on the checkout payment page 
    Then  I select <payment> as a payment method 
    And   I click on the button submit
    When  I am on the checkout confirmation overview page
    And  I see the price per box of <box price> Euro
    Then I accept the terms and conditions on the checkout confirmation page
    And  I click on the button buy now on the checkout confirmation page
    Then I should not see "Order creation failed"
    Then I should not see "Internal Server Error"
    When I am on the order success page
    Then I see my order listed
    When I am on the customer log in page

    Examples:
    |box           |amount |box price |payment|
     |obox         |2      |30,00 €   |klarna |
     |obox         |4      |60,00 €   |klarna|
     |obox         |2      |30,00 €   |sepa|
     |obox         |4      |60,00 €   |sepa|
     |obox         |2      |30,00 €   |credit card|
     |obox         |4      |60,00 €   |credit card|
     |v box        |2      |30,00 €   |klarna |
     |v box        |4      |60,00 €   |klarna|
     |v box        |2      |30,00 €   |sepa|
     |v box        |4      |60,00 €   |sepa|
     |v box        |2      |30,00 €   |credit card|
     |v box        |4      |60,00 €   |credit card|
