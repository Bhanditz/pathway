Feature: Setting targets for future assessments

  Scenario: Navigating to set targets
    Given I am logged in as a user
    Given the test survey has been loaded
    Given I have completed an assessment
    When I go to "/assessments"
    Then I should see "Set goals for the next assessment"

  Scenario: Changing targets
    Given I am logged in as a user
    Given the test survey has been loaded
    Given I have completed an assessment
    When I go to "/assessments"
    And I click on "Set goals for the next assessment"
    Then I should see "Goal"
    When I fill in "targets_1" with "4"
    And I press "submit-bottom"
    Then I should see "Successfully saved goals"
