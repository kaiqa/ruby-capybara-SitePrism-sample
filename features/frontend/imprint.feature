Feature: Evaluation of text translation
@localization
 Scenario: I evaluate the correctness of the imprint page

 Given I am on the imprint page
    *  I see the imprint address
    *  I see the imprint manager
    *  I see the imprint contact
    *  I see the imprint registry entry
    *  I see the imprint disclaimer
    *  I see the imprint copyright 
@localization
  Scenario: I evaluate the correctness of the GTC page

  Given I am on the general terms and conditions page
    *  I see the general terms and conditions
