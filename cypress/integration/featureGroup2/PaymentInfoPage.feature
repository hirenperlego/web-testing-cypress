Feature: Payment Information Page

   
Background: 
    Given User is on PaymentInfo page


Scenario: Change plan
When user clicks on Change plan
Then user should be navigated to choosePlan page    


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


Scenario Outline: Invalid Discount code error message
When user clicks on Have a discount code
And user enters "<discount code>"
And user clicks on apply
Then user should see "<error message>"
Examples:
    | discount code | error message                      |
    | STUDENT100    | Please enter a valid discount code |


Scenario Outline: Empty discount code box error message
When user clicks on Have a discount code
And user clicks on apply
Then user should see "<error message>"
Examples:
    | discount code | error message                      |
    |               | Please enter a valid discount code |


Scenario Outline: Valid discount code
When user clicks on Have a discount code
And user enters "<discount code>"
Then user should see the "<discount code>" applied on the payment amount
Examples:
    | discount code  |
    | test-coupon-50 |    


Scenario Outline:Invalid credentials error message for Set up your card details and Add your billing address
When user enters "<name>""<surname>"
And user enters "<card number>""<expiry date>""<cvc>"
And user enters "<address>""<postcode>""<city>""<country>"
And user select I accept Perlego's T&Cs
And user clicks on start free trial
Then user should see the notification "<message>"
Examples:
    | name | surname | card number      | expiry date | cvc | address | postcode | city   | country        | message                                                                                                                |
    |      | smith   | 4242424242424242 | 0925        | 123 | 50      | EC1N 2SW | london | United Kingdom | Some required information is missing! Make sure all fields are completed and the Terms and Conditions box is ticked. |
      | John |         | 4242424242424242 | 0925        | 123 | 50      | EC1N 2SW | london | United Kingdom | Some required information is missing! Make sure all fields are completed and the Terms and Conditions box is ticked. |
      | John | smith   |                  | 0925        | 123 | 50      | EC1N 2SW | london | United Kingdom | Some required information is missing! Make sure all fields are completed and the Terms and Conditions box is ticked. |
      | John | smith   | 4242424242424242 |             | 123 | 50      | EC1N 2SW | london | United Kingdom | Some required information is missing! Make sure all fields are completed and the Terms and Conditions box is ticked. |
      | John | smith   | 4242424242424242 | 0925        |     | 50      | EC1N 2SW | london | United Kingdom | Some required information is missing! Make sure all fields are completed and the Terms and Conditions box is ticked. |
      | John | smith   | 4242424242424242 | 0925        | 123 |         | EC1N 2SW | london | United Kingdom | Some required information is missing! Make sure all fields are completed and the Terms and Conditions box is ticked. |
      | John | smith   | 4242424242424242 | 0925        | 123 | 50      |          | london | United Kingdom | Some required information is missing! Make sure all fields are completed and the Terms and Conditions box is ticked. |
      | John | smith   | 4242424242424242 | 0925        | 123 | 50      | EC1N 2SW |        | United Kingdom | Some required information is missing! Make sure all fields are completed and the Terms and Conditions box is ticked. |
      | John | smith   | 4242424242424242 | 0925        | 123 | 50      | EC1N 2SW | london |                | Some required information is missing! Make sure all fields are completed and the Terms and Conditions box is ticked. |
      | John | smith   | 4242424242424659 | 0925        | 123 | 50      | EC1N 2SW | london | United Kingdom | Some required information is missing! Make sure all fields are completed and the Terms and Conditions box is ticked. |   


Scenario Outline: Card validation error message for card number
When user enters incomplete or invalid information for  "<card number>"
Then user should see the "<error message>"
Examples:
    | card number      | error message                   |
    | 4242424242424789 | Your card number is invalid.    |
    | 42424242424247   | Your card number is incomplete. |   


Scenario Outline: Card validation error message for expiry date
When user enters invalid information for  "<expiry date>"
Then user should see the date "<error message>"
Examples:
    | expiry date | error message                               |
    | 0973        | Your card's expiration year is invalid.     |
    | 0917        | Your card's expiration year is in the past. |
    | 092         | Your card's expiration date is incomplete.  |       


Scenario Outline: Card validation error message for cvc
When user enters  invalid cvc information "<cvc>"
Then user should see the cvc "<error message>"
Examples:
    | cvc | error message                            |
    | 12  | Your card's security code is incomplete. |


Scenario Outline: Valid credentials to set up billing details
When user enters "<name>""<surname>"
And user enters "<card number>""<expiry date>""<cvc>"
And user enters "<address>""<postcode>""<city>""<country>"
And user select I accept Perlego's T&Cs
And user clicks on start free trial
Then user should be navigated to Confirmation Page
Examples:
    | name | surname | card number      | expiry date | cvc | address | postcode | city   | country        |
    | John | smith   | 4242424242424242 | 0925        | 123 | 50      | EC1N 2SW | london | United Kingdom |    


Scenario Outline: User needs to be able to verify their payment using their banks chosen authentication method and be returned to Perlego.
When user enters "<name>""<surname>"
And user enters "<card number>""<expiry date>""<cvc>"
And user enters "<address>""<postcode>""<city>""<country>"
And user select I accept Perlego's T&Cs
And user clicks on start free trial
Then user notice that a 3D secure payment method set by user's bank has been opened
When user clicks on complete authentication
Then user should be navigated to Confirmation Page
Examples:
    |name|surname|card number     |expiry date|cvc|address|postcode|city  |country        |
    |John|smith  |4000002500003155|0925       |123|50     |EC1N 2SW|london|United Kingdom |

    
Scenario Outline: In the event that card verification fails, User needs to be alerted to the failure and given the option to try again.
When user enters "<name>""<surname>"
And user enters "<card number>""<expiry date>""<cvc>"
And user enters "<address>""<postcode>""<city>""<country>"
And user select I accept Perlego's T&Cs
And user clicks on start free trial
Then user notice that a 3D secure payment method set by user's bank has been opened
And  clicks on fail authentication
Then user should see "<error message>" on payment info page
Examples:
    |name|surname|card number     |expiry date|cvc|address|postcode|city  |country        |error message|
    |John|smith  |4000002500003155|0925       |123|50     |EC1N 2SW|london|United Kingdom |Your card verification failed. Please try again or use a different card.                                                          |

    
Scenario Outline: In the event that card verification fails, Learn more link to direct user to FAQ article on intercom
When user enters "<name>""<surname>"
And user enters "<card number>""<expiry date>""<cvc>"
And user enters "<address>""<postcode>""<city>""<country>"
And user select I accept Perlego's T&Cs
And user clicks on start free trial
Then user notice that a 3D secure payment method set by user's bank has been opened
And  clicks on fail authentication
Then user should see "<error message>" on payment info page
And  user should also see "Learn more" link in that error message
When user clicks on "Learn more" link
Then user should be navigated to FAQ article on intercom
Examples:
    |name|surname|card number     |expiry date|cvc|address|postcode|city  |country        |error message|
    |John|smith  |4000002500003155|0925       |123|50     |EC1N 2SW|london|United Kingdom |Your card verification failed. Please try again or use a different card.|    