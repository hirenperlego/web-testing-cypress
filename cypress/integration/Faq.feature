Feature: Faq Page

   As a customer-facing Perlego employee, I would like to ensure that customers understand why they have utilise 3D secure,
   why they might have to add it a later date to their existing subscriptions and what will happen if they don’t so that they 
   understand why they are being asked for more information.

   Background: 
   Given User is on FAQ page

   Scenario: Display local currency symbols and pricing as per the user current location
   Given User is on FAQ page
   When user looks under the heading "How much does Perlego cost?"
   Then user should find the pricing is displayed in local currency and its currency symbols
   When user is outside EU, Uk and USA
   Then user should see the plan details in default currency "GBP £"