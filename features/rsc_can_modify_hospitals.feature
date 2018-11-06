@javascript

Feature: RSC modifies existing hospitals 
    As a RSC,
    In order to modify hospitals,
    I would like to access the dashboard, click on the “edit” button and edit the hospital name.

    Background: 
        Given the following hospitals exists
            | name     | 
            | cliniiic |
        Given I am on the landing page
        And I click on "Hospitals"

    Scenario: RSC can successfully modify hospitals
        And I see "Cliniiic"
        Then I click on "Edit"
        And I fill in "Clinic"
        And I click on "Save"
        Then I should see "Hospital modified"


