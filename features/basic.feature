Feature: Basic element match

  @selenium
  Scenario: test text field
    Given I go to basic page
    Then I should see "Basic Web Page" in the page title
