cucumber-background-bug
=======================

Bug report for Cucumber when running separate Given steps in Background and in each Scenario.

When writing HTML output, cucumber is executing the Given step in the
Background section twice before the first scenario and not at all
before the second scenario.

See `features/buggy.feature` for details on the conditions the cause
these scenarios to pass and to fail.

See `results` for actual working/failing output, and `config` for the configuration
under which this was run.
