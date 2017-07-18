Feature: A customer edits star sign
  
  Background:
    Given they are registered
      And they are logged in

  Scenario: A customer edits their star sign
    When they visit the edit profile page
      And they edit their star sign
      And they submit changes
    Then their star sign is changed