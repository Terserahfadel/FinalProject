Feature: Login

@Positive_case
Scenario: Login with correct email and password
    Given User has launched Apps Second Hand
    And User has registed account
    And User at Homepage
    When User click on the Account button
    And User click on the Login button
    And User input Email
    And User input Password
    And User click on the Login button
    Then User can be login
    And User redirected to the profile page


@Negative_case
Scenario: Login with unregister email
    Given User has launched Apps Second Hand
    And User at Homepage
    When User click on the Account button
    And User click on the Login button
    And User input unregister Email
    And User input Password
    And User click on the Login button
    Then User can't be login
    And User can see failed popup notification
     

@Negative_case
Scenario: Login without email format
    Given User has launched Apps Second Hand
    And User has registed account
    And User at Homepage
    When User click on the Account button
    And User click on the Login button
    And User input Email without email format
    And User input Password
    And User click on the Login button
    Then User can't be login 
    And User can see failed notification in email section


@Negative_case
Scenario: Login with correct email and empty password
    Given User has launched Apps Second Hand
    And User has registed account
    And User at Homepage
    When User click on the Account button
    And User click on the Login button
    And User input correct Email
    And User doesn't input Password
    And User click on the Login button
    Then User can't be login
    And User should be able to see empty Password field
    And User can see failed notification 


@Negative_case
Scenario: Login with empty email and password
    Given User has launched Apps Second Hand
    And User has registed account
    And User at Homepage
    When User click on the Account button
    And User click on the Login button
    And User doesn't input Email
    And User doesn't input Password
    And User click on the Login button
    Then User can't be login
    And User can see failed notification