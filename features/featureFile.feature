Feature: Add University

  Scenario: University does not exist
    Given User is logged in
    And Unsiversity does not exist
    When User pushes the add university button
    And fills out the form
    And pushes the commit button
    Then University had been added

  Scenario: University does exist
    Given User is logged in
    And University does exist
    When User pushes the add university
    And fills out the form
    And pushes the commit button
    Then add university should fail