Feature: A customer has a religion
  
  Scenario: A customer indicates their religious beliefs on their profile
    Given they are registered
      And they are logged in
      And there are some religions
    When they visit the edit profile page
      And they select a religion
    Then their religious belief is updated
      And they are redirected to their profile page
      And their religious belief is shown on their profile page