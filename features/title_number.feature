@US026
Feature: Title Number is displayed in the summary box in the digital register

Acceptance Criteria:
  - The title number associated with the property description is
    displayed in the summary box

Scenario: Title number of property title is displayed correctly
  Given I am an initial private beta user
  And I have logged in
  And I have a title
  When I view the title summary page
  Then I see the title number for the selected title
