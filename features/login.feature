Feature: Login

    Scenario: Successfully log in with valid username and password
        Given I am on Login page
        When I enter a "tomsmith" username
        And I enter a "SuperSecretPassword!" password
        And I press on Login button
        Then I see a message "You logged into a secure area!"
        And I see the Logout button

    Scenario: Cannot log in with invalid username and password
        Given I am on Login page
        When I enter a "mklsc" username
        And I enter a "mklsc" password
        And I press on Login button
        Then I see a message "Your username is invalid!"
        And I dont see the Logout button