@sandbox.translatewiki.net
Feature: Universal Language Selector input method engine

  Scenario: User can see input method keyboard icon
    Given I am at random page
    When I click on an input box
    Then I should see the input method keyboard icon at the bottom right

  Scenario: User can see input method keyboard icon even on Display settings
    Given I am at random page
    When I click on an input box
    Then I click on Display Settings
    Then I should see the input method keyboard icon on LHS below Display

  Scenario: User can see input method keyboard icon even on Display settings -> Font
    Given I am at random page
    When I click on an input box
    Then I click on Display Settings -> Font
    Then I should see the input method keyboard icon on LHS below Display
  
 Scenario : User can see input method keyboard icon even after changing language
    Give I am at random page on <languagefrom>
    When I change language to <languageto>
    Then I click on input box
    Then I should see the input menthos keyboard icon at the bottom right
 Examples:
    | languagefrom | languageto          |
    | de           | sr    |
    | sr           | sr-ec |
    | sr-ec        | sr-el |
    | sr-el        | de    |
