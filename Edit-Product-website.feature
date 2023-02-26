Feature: Edit Product

    @positive_case
    Scenario: user wants to change product name
    Given user already login on website
    And user already on homepage
    When user click daftar jual saya icon on the top right
    And select a product that  has been published
    And user click edit button
    And user input a new name for product
    And user click terbitkan button
    Then user can see success notification

    @positive_case
    Scenario: user want to change price product
    Given user already login on website
    And user already in homepage
    When user click daftar jual saya icon on the top right
    And select a product that  has been published
    And user click edit button
    And user input a new price for product
    And user click terbitkan button
    Then user can see success notification

    @negative_case
    Scenario: user wants to change the product name with special character only
    Given user already login on website
    And user already on homepage
    When user click daftar jual saya icon on the top right
    And select a product that  has been published
    And user click edit button
    And user input a new name for product with only special character
    And user click terbitkan button
    Then user can see failed notification

    @negative_case
    Scenario: user want to change product category to uncategorized
    Given user already login on website
    And user already in homepage
    When user click daftar jual saya icon on the top right
    And select a product that  has been published
    And user click edit button
    And user selects product category pilih kategori
    And user click terbitkan button
    Then user can see failed notification

    @negative_case
    Scenario: user want to change price producct with letters
    Given user already login on website
    And user already on homepage
    When user click daftar jual saya icon on the top right
    And select a product that  has been published
    And user click edit button
    And user input a new product price with letters
    And user click terbitkan button
    Then user can see failed notification