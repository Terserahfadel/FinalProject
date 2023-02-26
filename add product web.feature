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
        Then user can see success or failed toast message appear due to the process
        And user stay in add product page or redirect to home page due to the process
        And user can see warning above the wrong input field or not due to the process
        Examples:
        | case ID | product_name          | product_price         |
        | WAP01   | valid product name    | valid price           |
        | WAP02   | special character     | valid price           |
        | WAP03   | valid product name    | negative number       |
        | WAP04   | empty                 | valid price           |
        | WAP05   | valid product name    | 0                     |