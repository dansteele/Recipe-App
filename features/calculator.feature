Feature: My Amazing Calculator

  Scenario: Addition
    Given a calculator object exists
    When I input 2
      And I press "+"
      And I input 2
      And I press "="
    Then I should get 4

  Scenario: Subtraction
    Given a calculator object exists
    When I input 10
      And I press "-"
      And I input 4
      And I press "="
    Then I should get 6

  Scenario: Multiply
    Given a calculator object exists
    When I input 10
      And I press "*"
      And I input 4
      And I press "="
    Then I should get 40

    Scenario: Divide
    Given a calculator object exists
    When I input 10
      And I press "/"
      And I input 2
      And I press "="
    Then I should get 5