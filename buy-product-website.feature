Feature: Buying product

  Scenario Outline: user can see success and failed due to buying process
    Given user already login
    And user aready on the homepage
    When user click a product
    And user click Saya tertarik dan ingin nego button
    And user input "<Price>"
    And user click Kirim button
    Then user can see "<Result>" notification

    Examples: 
      | Case ID | Price            | Result  |
      | WB01    | Valid price      | Success |
      | WB04    | zero price       | Failed  |
      | WB05    | String character | Failed  |

  @Negative_case
  Scenario: user want to buy a product with incomplete data
    Given user already login
    And user aready on the homepage
    When user click a product
    And user click Saya tertarik dan ingin nego button
    And user input price
    And user click Kirim button
    Then user can see failed notification

  @Negative_case
  Scenario: user want to buy a product twice
    Given user already login
    And user aready on the homepage
    When user click a product
    And user click Saya tertarik dan ingin nego button
    And user input price
    And user click kirim button
    And user click again Saya tertarik dan ingin nego button
    And user input price
    And user click kirim button
    Then user can see failed notification