Feature: Login

@Positive_case
Scenario: Login with correct email and password (when profile is complete)
    Given User has launched website link
    And User has registed account
    And User at Website Homepage no login condition
    And User has completed profile
    When User click on the "Login" button
    And User input Email
    And User input Password
    And User click on the "Login" button
    Then System should be displayed wording popup "Login Berhasil"
    And System should be navigated user to home page in logged in codition


@Positive_case
Scenario: Login with correct email and password (when profile is't complete)
    Given User has launched website link
    And User has registed account
    And User at Website Homepage no login condition
    When User click on the "Login" button
    And User input Email
    And User input Password
    And User click on the "Login" button
    Then System should display a successful login popup
    And System should be navigated user to Profile Form page


@Negative_case
Scenario: Login without email format
    Given User has launched website link
    And User has registed account
    And User at Website Homepage no login condition
    When User click on the "Login" button
    And User input email without email format 
    And User input Password
    And User click on the "Login" button
    Then User can't login
    And System should be displayed alert notification

@Negative_case
Scenario: Login with unregister email
    Given User has launched website link
    And User at Website Homepage no login condition
    When User click on the "Login" button
    And User input unregister email
    And User input Password
    And User click on the "Login" button
    Then User can't login
    And System should be displayed not found account notification

@Negative_case
Scenario: Login without fill Email and Password field
    Given User has launched website link
    And User has registed account
    And User at Website Homepage no login condition
    When User click on the "Login" button
    And User doesn't input Email
    And User doesn't input Password
    And User click on the "Login" button
    Then User can't login 
    And System should be appeared popup notification empty email and password 

