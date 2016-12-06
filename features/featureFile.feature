Feature: Add University

  Scenario Outline: University does not exist
    Given User is logged in
    And Unsiversity does not exist
    Then University had been added

  Scenario: University does exist
    Given User is logged in
    And University does exist
    When User pushes the add university
    And fills out the form
    And pushes the commit button
    Then add university should fail