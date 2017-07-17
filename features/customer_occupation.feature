Feature: Customer Occupation

  @wip
  Scenario: A Customer edits their industry and occupation
    Given they are registered
      And they are logged in
      And there are some industries
      And they have an industry
    When they visit the edit profile page
      And they select a different industry
      And they submit changes
    Then their industry and occupation is updated