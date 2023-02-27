Feature: Login


    Scenario Outline: : User can or can't login
        Given User has launched website link
        And User has "<Condition1>" account 
        And User at Website Homepage no login condition
        And User has "<Condition2>" profile
        When User click on the Login button
        And User input "<Email>"
        And User input "<Password>"
        And User click on the Login button
        Then User "<Expected>" login
        And User redirected to the "<Page Location>" 

        Examples:
            | Case ID | Condition1  | Condition2 | Email               | Password        | Expected | Page Location    |
            | WL01    | Registered  | Completed  | Valid email         | Valid Password  | Can      | Logged in page   |
            | WL02    | Registered  | Uncomplete | Valid email         | Valid Password  | Can      | Profile form page|
            | WL03    | Registered  | Completed  | Without email format| Valid Password  | Can't    | Login form page  |
            | WL04    | Unregister  | Completed  | Invalid email       | Invalid Password| Can't    | Login form page  |
            | WL05    | Registered  | Completed  | Empty               | Empty           | Can't    | Login form page  |


