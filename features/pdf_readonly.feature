# Feature files that end with "_readonly.feature" should be read only, so they could be run at en.wikipedia.org
@en.wikipedia.beta.wmflabs.org @en.wikipedia.org @test2.wikipedia.org
Feature: PDF

  Scenario: Check for Download as PDF link
    Given I am at random page
    Then Download as PDF should be present

  Scenario: Click on Download as PDF link
    Given I am at random page
    When I click on Download as PDF
    Then Download the file link should be present
  
  Scenario: Check Print/Export option on different tabs
   Given User loads a MediaWiki/WikiPedia page
   When User is on Read tab
   Then Print/Export option is present

  Scenario: Check for Download the file option
  Given User loads a MediaWiki/WikiPedia page
  When When User clicks Print/Export option
  Then Then Download the file option is present

 Scenario: PDF file downloads fine
  Given User clicks on Print/Export option on MediaWiki/WikiPedia page
  When User clicks on Download the file link
  Then PDF file is downloaded

 Scenario: Hyperlinks on the pdf works fine
  Given User downloads a pdf file using Print/Export option on MediaWiki page
  When Open the pdf file and click on hyperlinks
  Then The hyperlinks work fine

Scenario: Images in the pdf do not overlap
  Given User downloads a pdf file using Print/Export option on MediaWiki page
  When Open the pdf file and notice the images
  Then The images are not overlapped to each other

Scenario: Numbering of notes displayed fine in the pdf
  Given User downloads a pdf file using Print/Export option on WikiPedia page which has many notes(http://en.wikipedia.org/wiki/Barack_Obama
  When Open the pdf file and notice the numbering of notes
  Then Numbering should match with the web page

