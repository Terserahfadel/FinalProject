Feature: Edit Profile Website App Secondhand

    Scenario Outline: User can success and failed do the Edit Profile process
        Given User already Login on Secondhand Web App
        And User already in homepage Secondhand Web App
        When User click the Profile icon
        And User click Profile menu
        And User can see Profile form
        And User input "<Name>" Name field
        And User input "Samarinda" into City field
        And User input "Highway" into Address field
        And User input "<Mobile_Number>" field
        And User click Submit button
        Then User can see the Message "<Message>"
        Examples:
        |      case_id     |     Name     |           Mobile_Number             |    Message        | 
        | WEP01            | valid name   | valid mobile number                 | success message   |
        | WEP02            | empty name   | valid mobile number                 | failed message    |
        | WEP03            | valid name   | empty mobile number                 | failed message    |
        | WEP04            | valid name   | one number                          | failed message    |
        | WEP05            | valid name   | alphabets and special character     | failed message    |
