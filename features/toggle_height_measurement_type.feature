Feature: Toggling between metric and imperial height
  @javascript
  Scenario: A User toggles between seeing metric and imperial heights
    Given they are registered
      And they are logged in
      And they are on a profile page
      And the label shows metric
    When they click on the height measurement change button
    Then they see the height in inches
      And the label changes
