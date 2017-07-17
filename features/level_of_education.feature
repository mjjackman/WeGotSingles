Feature: indecating education level
  
  Scenario: A customer indecates their level of education 
    Given they are registered
      And they are logged in 
      And there are some education levels
    When they visit the edit profile page
      And they select a education level
      And they submit changes
    Then their education in updated

