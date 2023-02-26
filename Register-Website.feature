Feature: Register

  Scenario Outline: User can success and failed do the register provess
    Given user already open the website and is in the homepage
    When user click on Login menu
    And user click on Register here option
    And user input data into Name fields 
    And user input data into Email fields with "<Email>"
    And user input data into Password fields with "<Password>"
    And user click on Register button 
    Then user can see "<Notification>"

    Examples:
    | Case ID | Email                     | Password           | Notification     |
    | WR01    | Correct email             | Correct password | Register success |
    | WR02    | Registered email          | Correct password | Register failed  |
    | WR03    | Incorrect email parameter | Correct password | Register failed  |
    | WR04    | Correct email             | Empty password   | Register failed  |
    | WR05    | Special character         | Correct password | Register failed  |
