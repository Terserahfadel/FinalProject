Feature: Edit Product

    Scenario Outline: user can success and failed edit product
    Given user already login on app
    And user already on homepage
    When user tap daftar jual saya icon on the top right
    And select a product that  has been published
    And user tap edit button
    And user input product name with "<product-name>"
    And user input product price with "<product-price>"
    And user select product category with "<category>"
    And user tap terbitkan button
    Then user can see "<Result>" notification
    Examples:
        | case_id  | product-name              | product-price     | category               | Result  |
        | WEP01    | baju koko                 | valid price       | valid category         | success |
        | WEP02    | valid name                | "0"               | valid category         | failed  |
        | WEP03    | special character         | valid price       | valid category         | failed  |
        | WEP04    | valid name                | spring            | valid category         | failed  |
        | WEP05    | valid name                | valid price       | uncategorized          | failed  |