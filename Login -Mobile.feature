Feature: Login

@Positive_case
Scenario: Login with correct email and password
    Given User has launched Apps Second Hand
    And User has registed account
    And User at Homepage
    When User click on the "Akun" button
    And User click on the "Masuk" button
    And User input Email
    And User input Password
    And User click on the "Masuk" button
    Then User can be login
    And System should be displayed profile page


@Negative_case
Scenario: Login with unregister email
    Given User has launched Apps Second Hand
    And User at Homepage
    When User click on the "Akun" button
    And User click on the "Masuk" button
    And User input unregister Email
    And User input Password
    And User click on the "Masuk" button
    Then User can't be login
    And System should be appeared popup notification "Email belum terdaftar"
     

@Negative_case
Scenario: Login without email format
    Given User has launched Apps Second Hand
    And User has registed account
    And User at Homepage
    When User click on the "Akun" button
    And User click on the "Masuk" button
    And User input Email without email format
    And User input Password
    And User click on the "Masuk" button
    Then User can't be login 
    And System should be appeared alert notification "email tidak valid" in email section


@Negative_case
Scenario: Login with correct email and empty password
    Given User has launched Apps Second Hand
    And User has registed account
    And User at Homepage
    When User click on the "Akun" button
    And User click on the "Masuk" button
    And User input correct Email
    And User doesn't input Password
    And User click on the "Masuk" button
    Then User can't be login
    And User should be able to see empty Password field
    And System should be appeared popup notification "password tidak boleh kosong" in password section


@Negative_case
Scenario: Login with empty email and password
    Given User has launched Apps Second Hand
    And User has registed account
    And User at Homepage
    When User click on the "Akun" button
    And User click on the "Masuk" button
    And User doesn't input Email
    And User doesn't input Password
    And User click on the "Masuk" button
    Then User can't be login
    And System should be displayed popup notification only appeared ini email section