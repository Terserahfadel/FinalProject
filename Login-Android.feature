Feature: Login

    Scenario Outline: User can or can't login 
        Given User has launched Apps
        And User at Homepage
        And User has "<Condition>" Account
        When User click on the Account button
        And User click on the Login button
        And User input "<Email>" in email field
        And User input "<Password>" in password field
        And User click on the Login button
        Then User can see login "<Notification>"
        And User "<Expected>" 
        Examples:
            | Case ID    | Condition  | Email                | Password        | Expected     | Notification         |
            | AL01       | Registered | Valid email          | Valid password  | Can Login    | Success Notification |
            | AL02       | Unregister | Unregister email     | Valid password  | Can't login  | Failed Notification  |
            | AL03       | Registered | Without email format | Valid password  | Can't login  | Failed Notification  |
            | AL04       | Registered | Valid email          | Empty password  | Can't login  | Failed Notification  |
            | AL05       | Registered | Empty email          | Empty password  | Can't login  | Failed Notification  |
