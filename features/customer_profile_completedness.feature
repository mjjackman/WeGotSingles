Feature: Customer profile completed-ness 

  @wip
  Scenario: A customer sees profile completed-ness
    Given they are registered
      And they are logged in
      And they have a bio
    When they visit the edit profile page
      Then they see how much they have completed