@US322 @US310
Feature: Pay for summary of register

As the Land Registry
I want users pay for the service
So that Land Registry can stay in business

Acceptance Criteria:
    User is able to pay for Summary
    Summary is displayed to user after payment
    - User can view the summary only after purchase
    - User cannot see another user's results
    - User cannot view a summary after running a title number search without being first directed to WorldPay
    - User should have an alternative route supplied which means they wont be charged (known as a freebie)


Business Rules:
BRL-FAP-006   Payment of the fee and VAT has been authorised by WorldPay where a transaction Id exists for the WorldPay transaction

Background:
    Given I have searched for a title
    And I select the title information that I wish to purchase

Scenario: Pay for and View Summary
    When I choose to buy the Summary
    And I have paid for the Summary
    Then I am shown the title summary page

Scenario: Cannot view summary that has already been viewed
    When I have bought and viewed a summary
    And I choose to view it again
    Then I am prevented from doing so

Scenario: Freebie mode is active and user can access summary without paying
    When I choose to buy the summary
    Then I am redirected to the summary
    And I have not been charged
