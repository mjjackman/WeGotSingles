Feature: metric height

  Scenario: A customer enters their height in metric
    Given they are registered
      And they are logged in 
    When they visit the edit profile page
      And they enter their height in centimeters
      And they submit changes
    Then their height is saved
      And they are redirected to their profile page
    Then they will see their height in centimeters  