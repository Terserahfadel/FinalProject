Feature: Buying product

  @Positive_case
  Scenario: user want to buy a product
    Given user already login on the website
    And user aready on the homepage
    When user tap a product
    And user tap Saya tertarik dan ingin nego button
    And user input price
    And user tap Kirim button
    Then user can see success notification

  @Negative_case
  Scenario: user want to buy a product without input price
    Given user already login on the website
    And user aready on the homepage
    When user tap a product
    And user tap Saya tertarik dan ingin nego button
    And user left input price empty
    And user tap Kirim button
    Then user can see failed notification

  @Negative_case
  Scenario: user want to buy a product with twice
    Given user already login on the website
    And user aready on the homepage
    When user tap a product
    And user tap Saya tertarik dan ingin nego button
    And user input price
    And user tap Kirim button
    And user tap again Saya tertarik dan ingin nego button
    And user input price
    And user tap kirim button
    Then user can see failed notification

  @Negative_case
  Scenario: user want to buy a product with add zero price
    Given user already login on the website
    And user aready on the homepage
    When user tap a product
    And user tap Saya tertarik dan ingin nego button
    And user input "0" price
    And user tap Kirim button
    Then user can see failed notification

  @Negative_case
  Scenario: user want to buy a product with add string character price
    Given user already login on the website
    And user aready on the homepage
    When user tap a product
    And user tap Saya tertarik dan ingin nego button
    And user input "ffff" price
    And user tap Kirim button
    Then user can see failed notification
