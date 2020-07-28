
Feature: As a customer I want to pay and use a voucher
  
  Scenario: I buy an obox with sepa and use a voucher
  When I am on the obox details page
  Then I select a box for "2" people 
  And  I see the price per box of "30,00 €" Euro
  Then I click on the button add to card on the obox product page
  And  I fill in the voucher entry field with "584B1"
  Then I click on redeem
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
  And  I see the price per box of "10,00 €" Euro
