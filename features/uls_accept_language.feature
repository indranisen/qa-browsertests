@language @sandbox.translatewiki.net
Feature: Universal Language Selector Accept-Language

  Scenario Outline: Accept-Language
    Given that my browser's accept language is <language>
    When I visit a random page
    Then link to the main page has text <text>

  Examples:
    | language | text          |
    | de       | Hauptseite    |
    | sr       | Главна страна |
    | sr-ec    | Главна страна |
    | sr-el    | Glavna strana |

  Scenario : Accepted Language tooltip displays previous language
    Given that my browser's accept language is <languagefrom>
    When I visit a random page
    Then I select a different language <languageto>
    Then selected language tooltip shows previous language <languagefrom>

  Examples:
    | languagefrom | languageto |
    | English      | Deitsch    |
    | Deitsch      | English    |
