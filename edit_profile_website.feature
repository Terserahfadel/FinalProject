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
    Scenario Outline: User want to empty Name
        Given User already Login on Secondhand Web App
        And User already in homepage Secondhand Web App
        When User click the Profile icon
        And User click Profile menu
        And User can see Profile form
        And User empty Name 
        And User input City
        And User input Address
        And User input Mobile Number
        And User click Submit button
        Then User can see the failed validation

    @negative_case
    Scenario Outline: User want to change Mobile Number
        Given User already Login on Secondhand Web App
        And User already in homepage Secondhand Web App
        When User click the Profile icon
        And User click Profile menu
        And User can see Profile form
        And User input Name 
        And User input City
        And User input Address
        And User input Mobile Number with "<condition>"
        And User click Submit button
        Then User can see the failed validation

        Examples:

        |      case_id     |                condition               |
        | WEP03            | empty field                            |
        | WEP04            | input one number                       |
        | WEP05            | input alphabets and special character  |