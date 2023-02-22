Feature: Edit Profile Mobile App Secondhand

    @positive_case
    Scenario: User want to change Name
        Given User already Login on Secondhand Mobile App
        And User already in Akun Saya page
        When User click the Pencil icon
        And User can see detail information of Profile User
        And User fill Nama field
        And User click Simpan button
        Then User can see the success message

    @negative_case
    Scenario: User want to empty Nama fields
        Given User already Login on Secondhand Mobile App
        And User already in Akun Saya page
        When User click the Pencil icon
        And User can see detail information of Profile User
        And User empty Nama field
        And User click Simpan button
        Then User can see the failed validation


    @negative_case
    Scenario Outline: User want to change Mobile Number 
        Given User already Login on Secondhand Mobile App
        And User already in Akun Saya page
        When User click the Pencil icon
        And User can see detail information of Profile User
        And User fill the No. Handphone field with "<condition>"
        And User click Simpan button
        Then User can see the failed validation

        Examples:

        |      case_id    |                          condition                         |
        |TC.Prof.003.003  | fill Nomor HP field with one number                        |
        |TC.Prof.003.004  | fill Nomor HP field with alphabets and special character   |

    @negative_case
    Scenario: User want to change Password with input the Wrong Old Password
        Given User already Login on Secondhand Mobile App
        And User already in Akun Saya page
        When User click the Pencil icon
        And User can see detail information of Profile User
        And User fill the Kata Sandi Lama field with wrong Password
        And User fill the Kata Sandi Baru field
        And User fill the Konfirmasi Kata Sandi field according to the new password that has been entered
        And User click Simpan button
        Then User can see the failed message
