Feature: Add Product

    Scenario Outline: User can successfully or failed upload product depends on the process
        Given user already login
        And user already in home page
        When user tap jual button
        And user input product name with "<product_name>" into nama produk field
        And user input product price with "<product_price>" into harga produk field
        And user input product description into deskripsi field
        And user select product category in kategori drop down
        And user insert product image in foto produk button
        And user input product location into lokasi field
        And user tap terbitkan button
        Then user can see "<toast>" appear 
        And user redirected to "<page>"
        Examples:
        | case ID | product_name          | product_price         | toast           |  page              |
        | AAP01   | valid product name    | valid price           | success message |  home page         |
        | AAP02   | special character     | valid price           | failed  message |  add product page  |
        | AAP03   | valid product name    | negative number       | failed  message |  add product page  |
        | AAP04   | empty                 | valid price           | failed  message |  add product page  |
        | AAP05   | valid product name    | zero price            | failed  message |  add product page  |