Feature: indicating education level
  @wip
  Scenario: A customer indicates their level of education 
    Given they are registered
      And they are logged in 
    When they visit the edit profile page
      And there are some education levels
      And they select a education level
      And they submit changes
    Then their education in updated

