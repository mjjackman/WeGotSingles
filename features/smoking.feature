Feature: Customer smoking preferences
  Scenario: A customer indicates whether they smoke on their profile
    Given they are registered
      And they are logged in
    When they visit the edit profile page
      And they select a smoking preference
    Then their smoking preference is updated
      And they are redirected to their profile page
      And their smoking preference is visible on their page 