Feature: Add employee in HRMS

  Background:
  //Given user is able to access HRMS application
    When user enters admin username and admin password
    And user clicks on login button
    Then user is navigated to dashboard page
    When user clicks on PIM option
    And user clicks on add employee option

  @batch20 @regression
  Scenario: Add Employee
    #Given user is able to access HRMS application
    When user enters firstname and lastname in the name fields
    And user clicks on save button
    Then user added successfully

  @params
  Scenario: Add employee using parameter
    When user enters "LED" and "ms" and "rahim" in the name fields
    And user clicks on save button
    Then user added successfully

  @ddt
  Scenario Outline: Adding multiple employees
    When user enters "<firstname>" and "<middlename>" and "<lastname>"
    And user clicks on save button
    Then user added successfully
    Examples:
      | firstname | middlename | lastname |
      |beria      |ms          |juli      |
      |jack       |ms          |sparrow   |
      |regina     |ms          |filanji   |

  @datatable
  Scenario: Adding employees using data table
    When user enters employee using data table and save them
      |firstname  |middlename  |lastname  |
      |beria      |ms          |juli      |
      |jack       |ms          |sparrow   |
      |regina     |ms          |filanji   |

  @excel
  Scenario: Adding employees using excel file
    When user adds multiple employees using excel file

