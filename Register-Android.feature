Feature: Register
  Scenario Outline: User can success or failed due the register process  
    Given user already open the website 
    And user already in the homepage
    When user tap on Account menu
    And user tap on Login button
    And user tap on Register option
    And user input data into Name field
    And user input "<Email>" into Email field
    And user input "<Password>" into Password field
    And user input "<Phone_Number>" into Phone Number field
    And user input data into City field
    And user input data into Address field
    And user tap on Register button
    Then user can see the "<Result>" notification
    And the page should be "<Page>"
    Examples:
      | Case_ID | Email                | Password       | Phone_Number       | Result          | Page                       |
      |  AR01   | Valid email         | Valid password | Valid phone number | Success massage | Redirected to account page |
      | AR02    | Registered email     | Valid password | Valid phone number | Failed massage  | Stay in register page      |
      | AR03    | Invalid email format | Valid password | Valid phone number | Failed massage  | Stay in register page      |
      | AR04    | Valid email          | Empty password | Valid phone number | Failed massage  | Stay in register page      |
      | AR05    | Valid email          | Valid password | Special characters | Failed massage  | Stay in register page      |