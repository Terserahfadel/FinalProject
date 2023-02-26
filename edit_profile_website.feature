Feature: Edit Profile Website App Secondhand

    @positive_case
    Scenario: User want to change Profile data
        Given User already Login on Secondhand Web App
        And User already in homepage Secondhand Web App
        When User click the Profile icon
        And User click Profile menu
        And User can see Profile form
        And User input Name 
        And User input City
        And User input Address
        And User input Mobile Number
        And User click Submit button
        Then User can see the success notification

    @negative_case
    Scenario Outline: User want to empty Name and change Mobile Number
        Given User already Login on Secondhand Web App
        And User already in homepage Secondhand Web App
        When User click the Profile icon
        And User click Profile menu
        And User can see Profile form
        And User input Name "<Name>"
        And User input City
        And User input Address
        And User input Mobile Number with "<Mobile_Number>"
        And User click Submit button
        Then User can see the failed validation

        Examples:

        |      case_id     |     Name     |               Mobile_Number            |
        | WEP02            | empty name   | correct mobile number                  |
        | WEP03            | valid name   | empty field                            |
        | WEP04            | valid name   | one number                             |
        | WEP05            | valid name   | alphabets and special character        |