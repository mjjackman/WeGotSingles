Feature: A customer edits images
  @wip
  Scenario: A customer uploads a profile image
    Given they are registered
      And they are logged in
      And they have a profile gallery
      And they have a profile image
    When they visit the edit profile page
      And they add an image
      And they submit changes
    Then their profile image is added to profile gallery
      And their image is set to be the new profile image
      And they are redirected to their profile page
      And their profile image is shown on their profile page