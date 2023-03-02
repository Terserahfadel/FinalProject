Feature: Login

    Scenario Outline: : User can or can't login
        Given User has open the website
        And User at Website Homepage without login
        And User has "<Condition1>" account 
        And User has "<Condition2>" profile
        When User click on the Login button
        And User input "<Email>" in email field
        And User input "<Password>" in password field
        And User click on the Login button
        Then User "<Expected>"
        And User redirected to the "<Page Location>" 
        Examples:
            | Case ID | Condition1  | Condition2 | Email               | Password        | Expected    | Page Location    |
            | WL01    | Registered  | Completed  | Valid email         | Valid Password  | Can login   | Homepage         |
            | WL02    | Registered  | Incomplete | Valid email         | Valid Password  | Can login   | Profile form page|
            | WL03    | Registered  | Completed  | Without email format| Valid Password  | Can't login | Login form page  |
            | WL04    | Unregister  | Completed  | Invalid email       | Invalid Password| Can't login | Login form page  |
            | WL05    | Registered  | Completed  | Empty               | Empty           | Can't login | Login form page  |


