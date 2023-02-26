Feature: Buying product

  @Positive_case
  Scenario: user want to buy a product
    Given user already login
    And user aready on the homepage
    When user click a product
    And user click Saya tertarik dan ingin nego button
    And user input price
    And user click Kirim button
    Then user can see success notification

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

  @Negative_case
  Scenario: user want to buy a product with zero price
    Given user already login
    And user aready on the homepage
    When user click a product
    And user click Saya tertarik dan ingin nego button
    And user input "0" price
    And user click Kirim button
    Then user can see failed notification

  @Negative_case
  Scenario: user want to buy a product with string character on price
    Given user already login
    And user aready on the homepage
    When user click a product
    And user click Saya tertarik dan ingin nego button
    And user input "ffff" price
    And user click kirim button
    Then user can see failed notification
