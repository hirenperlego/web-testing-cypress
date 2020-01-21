Feature: Reactivation Page

   
Background: 
Given User is on reactivation page

Scenario: Unlimited reading for monthly or annual plan
When user looks at Unlimited reading section
Then user should see the monthly or annual plan amount in local currency symbol and amount

Scenario: Today's total
When user looks at Todays total section
Then user should see total amount in local currency and its currency symbol

Scenario: Default currency and its symbol
When user is not from Uk, Eu and USA
Then by default user should see the payment in "GBP £"

