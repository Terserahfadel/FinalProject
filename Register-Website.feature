Feature: Register

  Scenario Outline: User can success or failed due the register process
    Given user already open the website 
    And user already in the homepage
    When user click on Masuk menu
    And user click on Daftar disini option
    And user input data into Name field
    And user input "<Email>" into Email field
    And user input "<Password>" into Password field
    And user click on Daftar button 
    Then user can see "<Result>" notification
    And the page should be stay in register page
    Examples:
      | Case_ID | Email                | Password       | Result          |
      | WR01    | Valid email          | Valid password | Success message |
      | WR02    | Registered email     | Valid password | Failed message  |
      | WR03    | Invalid email format | Valid password | Failed message  |
      | WR04    | Valid email          | Empty password | Failed message  |
      | WR05    | Special character    | Valid password | Failed message  |
