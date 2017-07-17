Feature: Customer Occupation

  Scenario: A Customer edits their industry and occupation
    Given they are registered
      And they are logged in
      And they have an industry and occupation
    When they visit the edit profile page
      And they select a different industry
      And they select a different occupation
    Then their industry and occupation is updated