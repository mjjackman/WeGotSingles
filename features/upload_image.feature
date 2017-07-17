Feature: A customer edits images
  @wip
  Scenario: A customer uploads an image
    Given they are registered
      And they are logged in
    When they visit the edit profile page
      And they add an image
      And they submit changes
    Then their profile image is updated
      And they are redirected to their profile page
      And their profile image is shown on their profile page