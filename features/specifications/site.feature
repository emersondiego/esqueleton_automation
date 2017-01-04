Feature: Account

  Scenario: Access login Account

    Given I access the shopping site
    When I close the email signup popup
    And I access the link Login to the site
    Then I valid access the login screen
