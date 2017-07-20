Feature: Customer enters their weight in kg

  Scenario: A customer enters their weight in kg
    Given they are registered
      And they are logged in
    When they visit the edit profile page
      And they edit their weight in kg
      And they submit changes
    Then they have a weight in kg