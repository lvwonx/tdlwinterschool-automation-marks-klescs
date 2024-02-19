Feature: Login

    @log
    Scenario Outline: Log in user username and password
        Given I am on login page
        When I enter a <username> username
        And I enter a <password> password
        And I press on Login button
        Then I see a message <message>
        And I <visibility> see the Logout button

    Examples: 
        | username   | password               | message                          | visibility |
        | "tomsmith" | "SuperSecretPassword!" | "You logged into a secure area!" | do         |
        | "mklsc"    | "mklsc"                | "Your username is invalid!"      | don't      |

#   Background:
#     Given I am on Login page

#   Scenario: Successfully log in with valid username and password
#     When I enter a "tomsmith" username
#     And I enter a "SuperSecretPassword!" password
#     And I press on Login button
#     Then I see a message "You logged into a secure area!"
#     And I do see the Logout button

#   Scenario: Cannot log in with invalid username and password
#     When I enter a "mklsc" username
#     And I enter a "mklsc" password
#     And I press on Login button
#     Then I see a message "Your username is invalid!"
#     And I don't see the Logout button
