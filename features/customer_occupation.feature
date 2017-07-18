Feature: Customer Occupation
  
  Background:
    Given they are registered
      And they are logged in
      And there are some industries
      And they have an industry
      And there are some occupations
      And they have an occupation

  Scenario: A Customer edits their industry
    When they visit the edit profile page
      And they select a different industry
      And they submit changes
    Then their industry is updated

  Scenario: A Customer edits their occupation
    When they visit the edit profile page
      And they select a different occupation
      And they submit changes
    Then their occupation is updated
