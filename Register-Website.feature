Feature: Register

@Positive_case
  Scenario: user want to register
    Given user already open the website and is in the homepage
    When user click on 'Login' menu
    And user click on 'Register here' option
    And user input "Kristi" on Name fields
    And user input "hi.julea@gmail.com" on Email fields
    And user input "Password*1" on Password fields
    And user click on 'Register' button 
    Then user can see notification "Account created successfully" 
    And a confirm email should be send to the registered email address

@Negative_case
  Scenario: User want to register using account that have been registered
    Given user already open the website and is in the homepage
    When user click on 'Login' menu
    And user click on 'Register here' option
    And user input data into Name fields 
    And user input data into Email fields "<Email>"
    And input data into Password fields "<Password>"
    And user click on 'Register' button 
    Then user can see Account should not be created, instead a proper field  warning message to provide valid email address should be displayed

    Examples:
        | Case ID |  Email                     | Password       |
        | WR02    |  That have been registered | Valid password |
        | WR03    |  Invalid email parameter   | Valid password |
        | WR04    |  Valid Email               | Empty password |
        | WR05    |  Special character         | Valid password |