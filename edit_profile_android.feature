Feature: Edit Profile Mobile App Secondhand

    Scenario Outline: User can success and failed do the Edit Profile process
        Given User already Login on Secondhand Mobile App
        And User already in Akun Saya page
        When User taps the Pencil icon
        And User can see detail information of Profile User
        And User input Name with "<Name>"
        And User input Mobile Number "<Mobile_Number>"
        And User taps Simpan button
        Then User can see the notification "<Notification>"

        Examples:

        |      case_id     |        Name       |           Mobile_Number           |    Notification   |
        | AEP01            | valid name        | valid mobile number               | success           |
        | AEP02            | empty name        | valid mobile number               | failed            |
        | AEP03            | valid name        | one number                        | failed            |
        | AEP04            | valid name        | alphabets and special character   | failed            |

    Scenario: User want to change Password with input wrong Old Password
        Given User already Login on Secondhand Mobile App
        And User already in Akun Saya page
        When User click the Pencil icon
        And User can see detail information of Profile User
        And User input wrong Old Password "vidyavira123" into Old Password field
        And User input "akuanakgembala123" into New Password field
        And User input "akuanakgembala123" into New Password for Confirmation field
        And User taps Simpan button
        Then User can see the failed notification
