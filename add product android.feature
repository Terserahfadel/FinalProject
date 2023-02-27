Feature: Add Product

    Scenario Outline: User can successfully or failed upload product due to the process
        Given user already login
        And user already in home page
        When user tap jual button
        And user input product name with "<product_name>"
        And user input product price with "<product_price>"
        And user input product description
        And user input product category
        And user input product image
        And user input product location
        And user tap terbitkan button
        Then user can see "<toast>" appear 
        And the page should be "<page>"
        Examples:
        | case ID | product_name          | product_price         | toast           | page                      |
        | AAP01   | valid product name    | valid price           | success message | redirected to home page   |
        | AAP02   | special character     | valid price           | failed  message | stay in add product page  |
        | AAP03   | valid product name    | negative number       | failed  message | stay in add product page  |
        | AAP04   | empty                 | valid price           | failed  message | stay in add product page  |
        | AAP05   | valid product name    | zero price            | failed  message | stay in add product page  |