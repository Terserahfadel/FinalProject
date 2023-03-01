Feature: Buying product

  Scenario Outline: user can see success and failed due to buying process
    Given user already login
    And user aready on the homepage
    When user tap a product
    And user tap Saya tertarik dan ingin nego button
    And user input "<Price>"
    And user tap Kirim button
    Then user can see "<Result>" notification

    Examples: 
      | Case ID | Price            | Result          |
      | AB01    | Valid price      | Success message |
      | AB02    | empty            | Failed message  |
      | AB04    | zero price       | Failed message  |
      | AB05    | string character | Failed message  |

  @Negative_case
  Scenario: user want to buy same product twice
    Given user already login
    And user aready on the homepage
    When user tap a product
    And user tap Saya tertarik dan ingin nego button
    And user input price on price field
    And user tap Kirim button
    And user can see success notification
    And user tap again same product
    And user input price on price field
    And user tap kirim button
    Then user can see failed notification
