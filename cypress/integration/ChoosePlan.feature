Feature: Choose Plan Page

   As a user, I want to be able to see the pricing in the currency of the country that
   I am in so that I am more likely to sign up without the fear of currency conversion fees.

Background: 
    Given User is on Choose plan page

Scenario: Faq "How much does Perlego cost?"
Given User is on Choose plan page
When When user looks under the heading "How much does Perlego cost?"
Then user should find the pricing is displayed in local currency and its currency symbols 
When user is outside EU, Uk and USA
Then user should see the plan details in default currency "GBP £"