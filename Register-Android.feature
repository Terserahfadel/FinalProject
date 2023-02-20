Feature: Register

@Positive_case
  Scenario: user want to register
    Given user already launch the app and is in the homepage
    When user taps on 'Akun' menu
    And user taps on 'Login' button
    And user taps on 'Register' option
    And user input "Kristi" into Name fields
    And user input "kristyulia07@gmail.com" into E-mail fields
    And user input "Password*1" into Password fields
    And user input "085335266640" into Phone Number fields
    And user input "Jakarta" into City fields
    And user input "Tebet" into Address fields
    And user taps on 'Register' button
    Then user can see notification "Account created successfully" 
    And user redirected to account page

@Negative_case
  Scenario Outline: User want to register using account data that have been registered
    Given user already launch the app and is in the homepage
    When user taps on 'Akun' menu
    And user taps on 'Login' button
    And user taps on 'Register' option
    And user input data into Name fields
    And user input data into E-mail fields with "<Email>"
    And user input data into Password fields with "<Password>"
    And user input data into Phone Number fields with "<Phone_number>"
    And user input data into City fields
    And user input fata into Address fields
    And user taps on 'Register' button
    Then user can see Account should not be created again, instead the warning messsage -  'Warning: E-Mail Address is already registered!' should be displayed
    Examples:
        | Case ID |  Email                     | Password        | Phone_number          |
        | AR02    |  That have been registered | Valid password  | Valid Phone Number    |
        | AR03    |  Invalid email parameter   | Valid password  | Valid Phone Number    |
        | AR04    |  Valid email               | Empty password  | Valid Phone Number    |
        | AR05    |  Valid email               | Valid password  | special characters    |