Feature: Edit Profile Website App Secondhand

    @positive_case
    Scenario: User want to change Profile data
        Given User already Login on Secondhand Web App
        And User already in homepage Secondhand Web App
        When User click the Profile icon
        And User click Profile menu
        And User can see Profile form
        And User add the Profile Photo
        And User fill Nama field
        And User fill Kota field
        And User fill Alamat field
        And User fill No. Handphone field
        And User click Submit button
        Then User can see the success toast message

    @negative_case
    Scenario Outline: User want to change Profile data by not add Profile Photo
        Given User already Login on Secondhand Web App
        And User already in homepage Secondhand Web App
        When User click the Profile icon
        And User click Profile menu
        And User can see Profile form
        And User doesn't add Profile Photo
        And User fill Edit Profile form with "<condition>"
        And User click Submit button
        Then User can see the failed validation

        Examples:
        |      case_id     |     condition      |
        |TC.Edpro.003.002  | fill all fields    |
        |TC.Edpro.003.003  | empty all fields   |

    @negative_case
    Scenario Outline: User want to change Profile data by not add Profile Photo
        Given User already Login on Secondhand Web App
        And User already in homepage Secondhand Web App
        When User click the Profile icon
        And User click Profile menu
        And User can see Profile form
        And User add the Profile Photo
        And User fill Edit Profile form with "<condition>"
        And User click Submit button
        Then User can see the failed validation

        Examples:

        |      case_id     |                          condition                              |
        |TC.Edpro.003.004  | fill No. Handphone field with one number                        |
        |TC.Edpro.003.005  | fill No. Handphone field with alphabets and special character   |