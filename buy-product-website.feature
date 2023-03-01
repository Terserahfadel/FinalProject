Feature: Buying product

  Scenario Outline: user can see success and failed due to buying process
    Given user already login with "<Profile>"
    And user aready on the homepage
    When user click a product
    And user click Saya tertarik dan ingin nego button
    And user input "<Price>"
    And user click Kirim button
    Then user can see "<Result>" notification

    Examples: 
      | Case ID | Profile                 | Price            | Result          |
      | WB01    | Profile data complete   | Valid price      | Success message |
      | WB02    | Profile data incomplete | Valid price      | Failed message  |
      | WB04    | Profile data complete   | zero price       | Failed message  |
      | WB05    | Profile data complete   | String character | Failed message  |

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
    Then user can see failed message notification
