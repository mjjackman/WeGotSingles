Feature: A customer edit their bio

  Scenario: A customer edits their bio
    Given they are registered
      And they are logged in
      And they have a bio
    When they visit the edit profile page
      And they edit the bio field
      And they submit changes
    Then their bio is updated