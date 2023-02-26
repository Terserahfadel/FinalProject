Feature: Add Product

    @positive_case
    Scenario: User want to add product to their product list
        Given user already login
        And user already in home page
        When user click jual button
        And user input product name
        And user input product price
        And user input product description
        And user input product category
        And user input product image
        And user click terbitkan button
        Then user can see success toast message appear
        And User redirected to product list page
        And user successfully add product

    @negative_case
    
    Scenario Outline: User can successfully or failed upload product due to the process
        Given user already login
        And user already in home page
        When user click jual button
        And user input product name with "<product_name>"
        And user input product price with "<product_price>"
        And user input product description
        And user input product category
        And user input product image
        And user click terbitkan button
        Then user can see "<toast>" toast message appear 
        And the page should be "<page>"
        And user can see "<warning>" appear above the input field
        Examples:
        | case ID | product_name          | product_price         | toast   | page                      | warning           |
        | WAP01   | valid product name    | valid price           | success | redirected to home page   | no warning        |
        | WAP02   | special character     | valid price           | failed  | stay in add product page  | warning           |
        | WAP03   | valid product name    | negative number       | failed  | stay in add product page  | warning           |
        | WAP04   | empty                 | valid price           | failed  | stay in add product page  | warning           |
        | WAP05   | valid product name    | 0                     | failed  | stay in add product page  | warning           |