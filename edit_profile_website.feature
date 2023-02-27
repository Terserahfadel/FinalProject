Feature: Edit Profile Website App Secondhand

    Scenario Outline: User can success and failed do the Edit Profile process
        Given User already Login on Secondhand Web App
        And User already in homepage Secondhand Web App
        When User click the Profile icon
        And User click Profile menu
        And User can see Profile form
        And User input Name with "<Name>"
        And User input "Samarinda" into City field
        And User input "Highway" into Address field
        And User input Mobile Number with "<Mobile_Number>"
        And User click Submit button
        Then User can see the notification "<Notification>"

        Examples:

        |      case_id     |     Name     |           Mobile_Number             |    Notification   |
        | WEP01            | valid name   | valid mobile number                 | success           |
        | WEP02            | empty name   | valid mobile number                 | failed            |
        | WEP03            | valid name   | empty mobile number                 | failed            |
        | WEP04            | valid name   | one number                          | failed            |
        | WEP05            | valid name   | alphabets and special character     | failed            |