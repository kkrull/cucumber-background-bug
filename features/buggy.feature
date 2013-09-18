Feature: Background steps are running out of sync with steps in scenarios
  Both scenarios fail when running `bundle exec cucumber features/buggy.feature --format html --out cucumber.html --format pretty`.
  In that case, the Background step executes twice before the first step in the first Scenario.

  Making any one of the following changes causes both scenarios to pass:
  - Running without HTML output: `bundle exec cucumber features/buggy.feature`.
  - Move the Given step from Background and into each Scenario.
  - Changing the Scenario Outline to a regular Scenario.

  Background:
    Given I do some initialization in background

  Scenario: A regular scenario that does some scenario-specific setup
    Given I do some initialization in regular_scenario
    Then the completed initialization steps should be background and regular_scenario

  Scenario Outline: A scenario outline that does some scenario-specific setup
    Given I do some initialization in <initialization_step>
    Then the completed initialization steps should be background and <initialization_step>

  Examples:
    | initialization_step |
    | scenario_outline    |
