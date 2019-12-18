Feature: nCino Test

Scenario: Add two Todo items and Edit the content of the second to-do item
  Given I launch todoMVC
  When I click on Polymer
  Then I should be on polymer page
  When I add the first todo item
  And I add the second todo item
  Then I should see two todo items
  When I double click on the second todo item
  And I edit the content of the second todo item
  Then I should see the updated second todo item