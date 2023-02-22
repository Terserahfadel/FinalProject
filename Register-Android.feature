Feature: Register

@Positive_case
  Scenario: user want to register
    Given user already launch the app and is in the homepage
    When user taps on "Akun" menu
    And user taps on "Login" button
    And user taps on "Register" option
    And user input data into Name fields
    And user input data into E-mail fields
    And user input data into Password fields
    And user input data into Phone Number fields
    And user input data into City fields
    And user input fata into Address fields
    And user taps on "Register" button
    Then user can see account created successfully
    And user redirected to account page

@Negative_case
  Scenario Outline: User want to register using account data that have been registered
    Given user already launch the app and is in the homepage
    When user taps on "Akun" menu
    And user taps on "Login" button
    And user taps on "Register" option
    And user input data into Name fields
    And user input data into E-mail fields with "<Email>"
    And user input data into Password fields with "<Password>"
    And user input data into Phone Number fields with "<Phone_Number>"
    And user input data into City fields
    And user input fata into Address fields
    And user taps on "Register" button
    Then user can see account should not be created, instead a proper warning message should be displayed
   
    Examples:
        | Case ID |  Email                     | Password        | Phone_Number          |
        | AR02    |  That have been registered | Valid password  | Valid phone number    |
        | AR03    |  Invalid email parameter   | Valid password  | Valid phone number    |
        | AR04    |  Valid email               | Empty password  | Valid phone number    |
        | AR05    |  Valid email               | Valid password  | Special characters    |