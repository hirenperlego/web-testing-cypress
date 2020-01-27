Feature: Choose Plan Page

   As a user, I want to be able to see the pricing in the currency of the country that
   I am in so that I am more likely to sign up without the fear of currency conversion fees.

Background: 
    Given User is on Choose plan page

Scenario: Pricing page sections
When user looks at the choose plan page
Then user finds page has been divided in three sections: plans, features and FAQs


Scenario: Monthly and Annual plans 
When user looks under "Choose how to pay" heading
Then user should see the  "Monthly" and "1 Year" plans
But If user is on mobile devices
Then user should see the tab  to change the Monthly and 1 Year plan


Scenario: Default plan 
When  user looks at the plans sections
Then user should see by default Monthly plan is selected


Scenario Outline: Best value save 30%
When user looks at the plans section 
Then user should see "<Tool tip>" on 1 Year plan
Examples:
| Tool tip               | 
| Best value - save 30%  |


Scenario: Display local currency and its symbol
When user looks the plan section
Then user finds subscription value is displayed in local currency and its symbols


Scenario: Start Free Trial Button
When user looks at the monthley or 1 year plan
Then user should see the Start Free Trial button


Scenario: Cancel anytime link under Monthly and Annual plan
When user clicks on Cancel anytime link 
Then user should be scrolled down to "Can I cancel at any time?" of FAQs section 


Scenario: Annual and Monthly plan features
When user looks at the features section of Annual or Monthly
Then user should see the list of features for Annual and Monthly


Scenario: User ratings from Trustpilot 
When user looks under the Monthly and 1 year plans
Then user should see the users rating from Trustpilot


Scenario: FAQs "How much does Perlego cost?"
When When user looks under the heading "How much does Perlego cost?"
Then user should find the pricing is displayed in local currency and its currency symbol 
When user is outside EU, Uk and USA
Then user should see the plan details in default currency "GBP £"


Scenario: Browse by subject link
When user clicks on browse by subject link
Then user should see subjects page


Scenario: FAQs headings
When user looks under the FAQs section
Then user should see the list of Headings
|Headings                                    |
|Why Perlego?                                |
|Can I try Perlego for free?                 |
|How much does Perlego cost?                 |
|Can I cancel at any time?                   |
|Do subscriptions auto-renew?                |
|Can I read a book as many times as I want?  |
|What subjects do you cover?                 |
|Where is Perlego available?                 |
|Can I read on my tablet or smartphone?      |
|Can I read offline?                         |
|How can I reference eBooks?                 |


Scenario: Select Monthly or 1 Year plan
When user select Monthly or 1 Year plan
And user clicks on Start Free Trial button
Then user should be redirected to the  Payment info page