Feature: view someone's profile

  @wip
  Scenario: A customer views someone's profile
    Given they are registered
      And they are logged in
      And there is someone else's profile
    When they visit someone else's profile
    Then they can see the persons profile page