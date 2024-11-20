Feature: Search Employees

  Background:
    #Given user is able to access HRMS application
    When user enters admin username and admin password
    And user clicks on login button
    Then user is navigated to dashboard page
    When user clicks on PIM option
    And user clicks on the employee list option

  @batch21 @regression
  Scenario: Search employee by employee ID
    And user enters employee ID
    When user clicks on search button
    Then user is able to see searched employee on screen

  @test
  Scenario: Search employee by employee name
    And user enters employee name
    When user clicks on search button
    Then user is able to see searched employee on screen






