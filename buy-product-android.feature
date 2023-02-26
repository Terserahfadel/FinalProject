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
      | Case ID | price            | Result  |
      | AB01    | Valid price      | Success |
      | AB02    | empty            | Failed  |
      | AB04    | "0"              | Failed  |
      | AB05    | string character | Failed  |

  @Negative_case
  Scenario: user want to buy a product without input price
    Given user already login
    And user aready on the homepage
    When user tap a product
    And user tap Saya tertarik dan ingin nego button
    And user left input price empty
    And user tap Kirim button
    Then user can see failed notification
