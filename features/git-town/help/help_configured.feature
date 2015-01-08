Feature: show help screen when Git Town is configured

  Background:
    Given I have configured the main branch name as "main"
    And my non-feature branches are "qa" and "staging"


  Scenario: git town with no flags
    When I run `git town`
    Then I see the git-town man page


  Scenario: git town, configured, with "help" subcommand
    When I run `git town help`
    Then I see the git-town man page