@javascript
Feature: RSC Can See List of Jobs
    As an RSC,
    In order to know what live jobs I have,
    I would like to be able to see a list of jobs in my region.

    Background: Jobs
        Given the following jobs exist in the database
            | name              |
            | Doctor            |
            | Nurse             |
            | Assistant Nurse   |
        Given the following registered RSC exist
            | email            | password   |
            | email@email.com  | mypassword |
        And the user is logged in as "email@email.com"

    Scenario: RSC Can See List of Jobs on the dashboard
        Given I am on the staffing companies page
        And I click on "Jobs" within the "#sidebar" section
        And I should see "Doctor" within the ".list-card" section
        And I should see "Nurse" within the ".list-card" section
        And I should see "Assistant Nurse" within the ".list-card" section
       