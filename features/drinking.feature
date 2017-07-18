Feature: Customer drinking preferences
  
  Scenario: A customer indicates whether they drink on their profile
    Given they are registered
      And they are logged in
    When they visit the edit profile page
      And they select a drinking preference
    Then their drinking preference is updated
      And they are redirected to their profile page
      And their drinking preference is visible on their page 