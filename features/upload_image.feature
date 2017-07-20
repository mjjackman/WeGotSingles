Feature: A customer edits images

  Background:
    Given they are registered
      And they are logged in
 
  Scenario: A customer uploads an image
    Given they have a profile gallery
    When they visit the edit profile page
      And they add an image
      And they submit changes
    Then the new image is added to their profile gallery

  Scenario: A customer uploads a profile image
    Given they have a profile gallery
      And they have a profile image
    When they visit the edit profile page
      And they add an image
      And they submit changes
    Then their profile image is added to profile gallery
      And their image is set to be the new profile image
      And they are redirected to their profile page
      And their profile image is shown on their profile page

    Scenario: A customer adds image to gallery
      Given they have a profile gallery
        And they have a profile image
        And they have another gallery
      When they visit their edit gallery page
        And they add a gallery image
        And they submit changes
      Then the new image is added to their new gallery
        And they are redirected to their profile page
        And the new image is visible on their profile