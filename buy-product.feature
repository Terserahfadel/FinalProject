Feature: Buying product

  @Positive_case
  Scenario: user want to buy a product
    Given user already login on the website
    And user aready on the homepage
    When user click a product
    And user click "Saya tertarik dan ingin nego" button
    And user input price
    And user click "Kirim" button
    Then user can see success notification

  @Negative_case
  Scenario: user want to buy a product with incomplete data
    Given user already login on the website
    And user aready on the homepage
    When user click a product
    And user click "Saya tertarik dan ingin nego" button
    And user input price
    And user click "Kirim" button
    Then user can see failed notification

  @Negative_case
  Scenario: user want to buy a product with twice
    Given user already login on the website
    And user aready on the homepage
    When user click a product
    And user click "Saya tertarik dan ingin nego" button
    And user input price
    And user click "Kirim" button
    And user click again "Saya tertarik dan ingin nego" button
    And user input price
    And user click "kirim" button
    Then user can see failed notification

  @Negative_case
  Scenario: user want to buy a product with add zero price
    Given user already login on the website
    And user aready on the homepage
    When user click a product
    And user click "Saya tertarik dan ingin nego" button
    And user input "0" price
    And user click "Kirim" button
    Then user can see failed notification

  @Negative_case
  Scenario: user want to buy a product with add string character price
    Given user already login on the website
    And user aready on the homepage
    When user click a product
    And user click "Saya tertarik dan ingin nego" button
    And user input "ffff" price
    And user click "Kirim" button
    Then user can see failed notification
