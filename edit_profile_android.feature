Feature: Edit Profile Mobile App Secondhand

    @positive_case
    Scenario: User want to change Name
        Given User already Login on Secondhand Mobile App
        And User already in Akun Saya page
        When User taps the Pencil icon
        And User can see detail information of Profile User
        And User input Name
        And User taps Simpan button
        Then User can see the success message

    @negative_case
    Scenario: User want to empty Nama fields
        Given User already Login on Secondhand Mobile App
        And User already in Akun Saya page
        When User taps the Pencil icon
        And User can see detail information of Profile User
        And User empty Name field
        And User taps Simpan button
        Then User can see the failed validation


    @negative_case
    Scenario Outline: User want to change Mobile Number 
        Given User already Login on Secondhand Mobile App
        And User already in Akun Saya page
        When User taps the Pencil icon
        And User can see detail information of Profile User
        And User input Mobile Number with "<condition>"
        And User taps Simpan button
        Then User can see the failed validation

        Examples:

        |      case_id    |              condition                  |
        |TC.Prof.003.003  | input one number                        |
        |TC.Prof.003.004  | input alphabets and special character   |

    @negative_case
    Scenario: User want to change Password with input the Wrong Old Password
        Given User already Login on Secondhand Mobile App
        And User already in Akun Saya page
        When User click the Pencil icon
        And User can see detail information of Profile User
        And User input old password with wrong Password
        And User input new password
        And User input new password for confirmation
        And User taps Simpan button
        Then User can see the failed message
