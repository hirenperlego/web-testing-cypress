Feature: Payment Information Page

   
Background: 
    Given User is on PaymentInfo page

Scenario: First payment on for Monthly and Annual plan
When user looks at the first payment on section
Then user should see the first payment date 
And followed by local currency symbol and payment amount


Scenario: Today's total
When user looks at Todays total section
Then user should see total amount in local currency and its currency symbol

Scenario: Default currency and its symbol
When user is not from Uk, Eu and USA
Then by default user should see the payment in "GBP £"
