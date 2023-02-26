Feature: Edit Product

    @positive_case
    Scenario Outline: user can edit product
    Given user already login on app
    And user already on homepage
    When user tap daftar jual saya icon on the top right
    And select a product that  has been published
    And user tap edit button
    And user input product name with "<product-name>"
    And user input product price with "<product-price>"
    And user tap terbitkan button
    Then user can see success notification
    Examples:
        | case_id  | product-name      | product-price     |
        | Value 1  | new product name  | keep price        |
        |          | keep product name | new product price |


    @negative_case
    Scenario Outline: user cannot edit product
    Given user already login on app
    And user already on homepage
    When user tap daftar jual saya icon on the top right
    And select a product that  has been published
    And user tap edit button
    And user input product name with "<product-name>"
    And user select product category with "<select-categori>"
    And user input product price with "<product-price>"
    And user tap terbitkan button
    Then user can see failed notification
    Examples:
        | case_id  | product-name       | select-category     | product-price  |
        | Value 1  | special character  | keep category       | keep price     |
        |          | keep product name  | uncategorized       | keep price     |
        |          | keep product name  | keep category       | letters        |