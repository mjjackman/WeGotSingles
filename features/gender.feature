Feature: Customer gender
  Background:
    Given they are registered
      And they are logged in
      And there are some male customers
      And there are some female customers
  
  Scenario: A customer searches by gender
    When they visit the search page
      And they select a gender
      And they click search
    Then they are redirected to the index page
      And they see only customers of the gender they selected