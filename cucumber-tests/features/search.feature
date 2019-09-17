Feature: Search

  Scenario Outline: search
    Given I clear and fill in searchbox "XCUIElementTypeSearchField" with "<SearchWords>"
    Then I should see class_name "<Thumbnail>"
    When I tap thumbnail 0
    Then I should see class_name "XCUIElementTypeScrollView"
    Then I tap button "btn back"
    Then I should see class_name "<Thumbnail>"

    @ios
    Scenarios:
      | SearchWords | Thumbnail           |
      | cats        | XCUIElementTypeCell |
      | dogs        | XCUIElementTypeCell |
