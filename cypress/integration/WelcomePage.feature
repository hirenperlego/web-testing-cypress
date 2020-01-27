Feature: Welcome Page

Background: 
    Given User is on Welcome Page


Scenario: Pick at least one topic of interest
And user pick atleast one topic of interest
And user clicks on next button
Then user should be navigated to the home page