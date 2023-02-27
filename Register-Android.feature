Feature: Register

  Scenario Outline: User can success and failed do the register process  
    Given user already launch the app and is in the homepage
    When user taps on Account menu
    And user taps on Login button
    And user taps on Register option
    And user "Yulia" into Name fields
    And user input data into E-mail fields with "<Email>"
    And user input data into Password fields with "<Password>"
    And user input data into Phone Number fields with "<Phone_Number>"
    And user "Jakarta" into City fields
    And user "Tebet" into Address fields
    And user taps on Register button
    Then user can see the "<Result>" notification
    And the page should be "<Page>"

    Examples:
    | Case_ID | Email                | Password       | Phone_Number       | Result          | Page                       |
    | AR01    | Valid email          | Valid password | Valid phone number | Success massage | Redirected to account page |
    | AR02    | Registered email     | Valid password | Valid phone number | Failed massage  | Stay in register page      |
    | AR03    | Invalid email format | Valid password | Valid phone number | Failed massage  | Stay in register page      |
    | AR04    | Valid email          | Empty password | Valid phone number | Failed massage  | Stay in register page      |
    | AR05    | Valid email          | Valid password | Special characters | Failed massage  | Stay in register page      |