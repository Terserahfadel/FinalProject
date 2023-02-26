Feature: Register

@Positive_case
  Scenario: user want to register
    Given user already open the website and is in the homepage
    When user click on Login menu
    And user click on Register here option
    And user input data into Name fields 
    And user input data into Email fields 
    And user input data into Password fields 
    And user click on Register button 
    Then user can see account created successfully 
    And a confirm email should be send to the registered email address

@Negative_case
  Scenario Outline: User want to register using account that have been registered
    Given user already open the website and is in the homepage
    When user click on Login menu
    And user click on Register here option
    And user input data into Name fields 
    And user input data into Email fields with "<Email>"
    And user input data into Password fields with "<Password>"
    And user click on Register button 
    Then user can see account should not be created, warning message should be displayed

    Examples:
        | Case ID |  Email                     | Password       |
        | WR02    |  That have been registered | Valid password |
        | WR03    |  Invalid email parameter   | Valid password |
        | WR04    |  Valid email               | Empty password |
        | WR05    |  Special character         | Valid password |
