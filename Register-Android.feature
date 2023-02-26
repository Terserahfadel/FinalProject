Feature: Register

  Scenario Outline: User can success and failed do the register process  
    Given user already launch the app and is in the homepage
    When user taps on Akun menu
    And user taps on Login button
    And user taps on Register option
    And user input data into Name fields
    And user input data into E-mail fields with "<Email>"
    And user input data into Password fields with "<Password>"
    And user input data into Phone Number fields with "<Phone_Number>"
    And user input data into City fields
    And user input fata into Address fields
    And user taps on Register button
    Then user can see the "<Result>" Notification

    Examples:
    | Case_ID | Email                     | Password         | Phone_Number         | Result     |
    | AR01    | Correct email             | Correct password | Correct phone number | Register success | 
    | AR02    | Registered email          | Correct password | Correct phone number | Register failed  | 
    | AR03    | Incorrect email parameter | Correct password | Correct phone number | Register failed  |
    | AR04    | Correct email             | Empty password   | Correct phone number | Register failed  |
    | AR05    | Correct email             | Correct password | Special characters   | Register failed  |