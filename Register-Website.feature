Feature: Register

  Scenario Outline: User can success and failed do the register process
    Given user already open the website and is in the homepage
    When user click on Login menu
    And user click on Register here option
    And user "Kristi" into Name fields 
    And user input data into Email fields with "<Email>"
    And user input data into Password fields with "<Password>"
    And user click on Register button 
    Then user can see "<Result>" notification
    And the page should be "<Page>"

    Examples:
    | Case_ID | Email                | Password       | Result          | Page                  |
    | WR01    | Valid email          | Valid password | Success massage | Stay in register page |
    | WR02    | Registered email     | Valid password | Failed massage  | Stay in register page |
    | WR03    | Invalid email format | Valid password | Failed massage  | Stay in register page |
    | WR04    | Valid email          | Empty password | Failed massage  | Stay in register page |
    | WR05    | Special character    | Valid password | Failed massage  | Stay in register page |
