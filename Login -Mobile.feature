Feature: Login


    Scenario Outline: User can or can't login 
        Given User has launched Apps Second Hand
        And User has "<Condition>" Account
        And User at Homepage
        When User click on the Account button
        And User click on the Login button
        And User input "<Email>"
        And User input "<Password>"
        And User click on the Login button
        Then User "<Expected>" login
        And User can see login "<Notification>" 


        Examples:
            | Case ID    | Condition  | Email                | Password        | Expected     | Notification         |
            | AL01       | Registered | Valid email          | Valid password  | Can Logged in| Success Notification |
            | AL02       | Unregister | Unregister email     | Valid password  | Can't login  | Failed Notification  |
            | AL03       | Registered | Without email format | Valid password  | Can't login  | Failed Notification  |
            | AL04       | Registered | Valid email          | Empty password  | Can't login  | Failed Notification  |
            | AL05       | Registered | Empty email          | Empty password  | Can't login  | Failed Notification  |
