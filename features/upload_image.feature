Feature: A customer edits images
  Scenario: A customer uploads an image
    Given they are registered
      And they are logged in
      And they have a profile gallery
    When they visit the edit profile page
      And they add an image
      And they submit changes
    Then their profile image is added to profile gallery
      And they are redirected to their profile page
      And their profile image is shown on their profile page