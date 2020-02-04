Feature: Pricing Page

   As a user, I want to be able to see the pricing in the currency of the country that
   I am in so that I am more likely to sign up without the fear of currency conversion fees.

Background: 
   Given User is on a Pricing page


Scenario: Pricing page sections
When user looks at the pricing plan page
Then user finds page has been divided into three sections: plans, features, and FAQs


Scenario: Monthly and Annual plans 
When user looks under "Choose your plan" heading
Then user should see the  "MONTHLY" and "YEARLY" plans
But If user is on mobile devices
Then user should see the tab  to change the "MONTHLY" and "YEARLY" plans


Scenario: Default plan for Mobile
When user looks at the plan's sections
Then user should see by default "YEARLY" plan is selected


Scenario Outline: Best value save 30%
When user looks at the plan's section 
Then user should see "<Tooltip>" on yearly plan
Examples:
| Tooltip               | 
| Best value - save 30% |


Scenario: Display local currency and its symbol
When user looks the plan's section
Then user finds subscription value is displayed in local currency and its symbols


Scenario: Start Free Trial Button
When user looks under the "MONTHLY" and "YEARLY" plans
Then user should see the "Start 14-Day Free Trial" button


Scenario: Cancel anytime link under Monthly and Annual plan cards
When user clicks on Cancel anytime link 
Then user should be scrolled down to "Can I cancel at any time?" of FAQs section 


Scenario: User ratings from Trustpilot 
When user looks under the "MONTHLY" and "YEARLY" plans
Then user should see the users rating from Trustpilot


Scenario: All the features you need
When user looks at the "All the features you need" section
Then user should see the list of features 
|features                                             |
|Best-selling books and expert-curated reading lists  |
|200,000+ titles from leading publishers              |
|Unlimited access to any book on the platform         |
|Highlight, bookmark and annotate                     |
|Expand your knowledge across thousands of topics     |
|Read on the go on your favourite device              |


Scenario: FAQs headings
When user looks under the FAQs section
Then user should see the list of Headings
|Headings                                       |
|Do subscriptions auto-renew?                   |
|Can I try Perlego for free?                    |
|Can I read a book as many times as I want?     |
|Can I cancel at any time?                      |
|What's the difference between the plans?       |
|Do I have to pay for individual books?         |
|Where is Perlego available?                    |
|Can I read on my tablet or smartphone?         |
|How can I reference eBooks?                     |
|Can I read offline?                            |
|Do you offer bulk discounts or business rates? |
|What subjects do you cover?                    |


Scenario: Clicking on "settings" under Can I cancel at anytime 
When user clicks on settings
Then user should be redirected to "Login Page"


# Scenario: Clicking on "Sign up here" under Where is Perlego available?
# When user click on "Sign up here"
# Then user should be redirected to "U.S Waiting List" page


Scenario: Can I read offline?
When user clicks on "iOS" link 
Then user should be redirected to the ios App store
When user clicks on "Android" link
Then user should be redirected to android Play store


Scenario: Do you bulk discounts or business rates?
When user clicks on "sales@perlego.com" link
Then user should be redirected to email client
And user should notice email "sales@perlego.com" and subject has been created automatically


Scenario: Get in touch link
When user clicks on "Get in touch link"
Then user should be redirected to email client
And user should notice email "help@perlego.com" and subject has been created automatically


Scenario: Select Monthly or Yearly plans
When user select the  "MONTHLY" or "YEARLY" plans
And user clicks on "Start 14-Day Free Trial" button
Then user should be redirected to the "Signup Page"


Scenario: Signup journey from the Pricing page
When user selects the "MONTHLY" or "YEARLY" plan
And user clicks on "Start 14-Day Free Trial" button
Then user should be redirected to the "Signup Page"
When user successfully enters details on the signup page 
Then user should be redirected to the Payment info page
When user successfully enters details on the payment info page 
Then user should be redirected to a confirmation page
When user completes the formalities on the confirmation page
Then user should be redirected to the Home Page
When user selects the subjects and proceeds further 
Then user should be redirected to the Home page