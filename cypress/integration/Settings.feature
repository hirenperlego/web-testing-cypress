Feature: Settings Page


Background: 
   Given User is on settings page

Scenario: Receipts
Given User is on the settings page
When user clicks on Account tab
Then user should see the receipts section
When user looks under Discount and Full price section
Then user should see the amount is displayed in local currency and its symbol
When user is not from Uk, EU and USA
Then by default user should see the payment in "GBP £"