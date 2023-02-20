Feature: Edit Profile Mobile App Secondhand

    @positive_case
    Scenario: User want to change Profile data
        Given User already Login on Secondhand Mobile App
        And User already in Akun Saya page
        When User click the Pencil icon
        And User can see detail information of Profile User
        And User add the Profile Photo
        And User fill Nama field
        And User fill No. Handphone field
        And User fill Kota field
        And User fill Alamat field
        And User fill Email field
        And User changes Password
        And User click Simpan button
        Then User can see the success toast message

    @negative_case
    Scenario Outline: User want to change Profile data by empty all fields
        Given User already Login on Secondhand Mobile App
        And User already in Akun Saya page
        When User click the Pencil icon
        And User add the Profile Photo
        And User fill the Profil form with "<condition>"
        And User click Simpan button
        Then User can see the failed validation

        Examples:

        |      case_id    |         condition          |
        |TC.Prof.003.002  | empty all fields           |
        |TC.Prof.003.003  | input wrong old password   |

    @negative_case
    Scenario Outline: User want to change Mobile Number 
        Given User already Login on Secondhand Mobile App
        And User already in Akun Saya page
        When User click the Pencil icon
        And User add the Profile Photo
        And User fill the Profil form with "<condition>"
        And User click Simpan button
        Then User can see the failed validation

        Examples:

        |      case_id    |                          condition                              |
        |TC.Prof.003.004  | fill No. Handphone field with one number                        |
        |TC.Prof.003.005  | fill No. Handphone field with alphabets and special character   |
