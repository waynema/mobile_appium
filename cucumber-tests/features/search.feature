Feature: Search

  Scenario Outline: search
    Given I clear and fill in searchbox "XCUIElementTypeSearchField" with "<SearchWords>"
    Then I should see "<Result>"

    @ios
    Scenarios:
      | SearchWords  | Result         |
      | Taylor       | Taylor Swift   |
      | Camilla      | Camila Cabello |
      | Chopin       | Classical      |
