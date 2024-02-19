Feature: Dynamic Loading

    @dyn
    Scenario: Waiting for a dynamic element
        Given I am on dynamic_loading/1 page
        When I press the Start button
        Then I see a "Hello World!" message