#   @javascript
#  @select_chrome
#  @select_firefox
#  @select_webkit
# @smoke
Feature:  I want to make sure that all elements are visible 

Background:
  Given I am on the obox details page

Scenario: all elements are visible
  # header section
  * I see the obox details page has a title
  * the obox details page logo is visible
  * the obox details page logo link is visible
  * the obox details page header section is visible
  # middle section
  * the box details page navigation has "4" items
  * the obox details page product info navigation arrow is visible
  * the obox details page product info navigation next arrow is visible
  * the obox details page product info slider has "8" items
  * the obox details page product info slider has info text
  * the obox details page product info slider text is correct
  # social media
  * the obox details page social media section is visible
  * the obox details page social media headline is visible
  * the obox details page facebook is visible
  * the obox details page instagram is visible
  * the obox details page pinterest is visible
  * the obox details page gplus is visible
  * the obox details page apiman blog is visible
  # the footer
  * the obox details page footer is visible
  * the obox details page footer links are visible
  * the obox details page footer copyright is visible
  * the obox details page footer delivery info is visible
  * the obox details page footer payment is visible
  * the obox details page footer trust seals is visible
  * the obox details page footer navigation has "16" items
  * the obox details page footer trusted shops is visible
  * the obox details page footer trusted seal bio is visible
  * the obox details page footer trusted seal test sieger is visible
  * the obox details page footer payment visa is visible
  * the obox details page footer payment american is visible
  * the obox details page footer payment klarna is visible
  * the obox details page footer payment mastercard is visible
  * the obox details page footer payment paypal is visible
  * the obox details page footer payment sepa is visible
  * the obox details page footer delivery service dhl is visible
  * the obox details page footer delivery service ups is visible
