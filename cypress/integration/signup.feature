Feature: Signup Page

  Background:
    Given user is on Signup page

 @regression 
 Scenario Outline: Signup errors validations for invalid credentials
    When user enters "<email>" and "<password>"
    And user select perlego's terms and conditions
    And  user click on next button
    Then user should see the "<error message>" as per the input credentiels
    Examples:
      | email                  | password   | error message                                 |
      | pertesting@hotmail     | perlego123 | Please enter a valid email address            |
      | pertesting@hotmail.com | perlego    | Please choose a stronger password             |

@regression 
Scenario Outline: Error validations for blank email and password field
    When user leaves email and password field blank
    And  user click on next button 
    Then user should see the "<error message>" for the invalid credentials
    Examples:
     | email                    | password     | error message                                  |
     |                          |              | Please enter your email and choose a password  |      

@regression 
Scenario Outline: Error validation for blank email field
   When user leaves email field blank
   And  user enters "<password>" 
   And  user click on next button 
   Then user should see the "<error message>" for the invalid credentials 
   Examples:
     | email                    | password     | error message                                  | 
     |                          | perlego123   | Please enter your email                        |

@regression 
Scenario Outline: Error validation for blank password field
   When user enter "<email>"
   And user leaves password field blank
   And  user click on next button
   Then user should see the "<error message>" for the invalid credentials
   Examples:
     | email                    | password     | error message                                | 
     | pertesting@hotmail.com   |              | Please choose a password                     |   

@regression 
Scenario Outline: Signup errors for not accepting the Perlego's terms and conditions
    When user enters "<email>" and "<password>"
    And user click on next button
    Then user gets "<error message>"
    Examples:
      | email                  | password   | error message                             |
      | pertesting@hotmail.com | perlego123 | You must accept Perlego's T&Cs to sign up |             

@regression 
Scenario Outline: Signup error validation for Email address already in use
    When user enters "<email>" and "<password>"
    And user select perlego's terms and conditions
    And user click on next button
    Then user gets "<error message>"
    Examples:
      | email                 | password   | error message                         |
      | mobilewin@perlego.com | perlego123 | The e-mail address is already in use. |

@regression 
Scenario Outline: Suggestions for stronger password
    When user enters "<email>" and "<password>"
    Then user sees suggestions for stronger password "<message>"
    Examples:
      | email                  | password    | message               |
      | pertesting@hotmail.com | per         | At least 8 characters |
      | pertesting@hotmail.com | perlego123  | YES, getting there!   |
      | pertesting@hotmail.com | perlego123* | Strong password       |      

@regression 
Scenario: Already have an account
    When user click on Already have an account
    Then user should be navigated to login page      

@regression @smoke
Scenario Outline: Signup for valid credentials
    When user enters "<email>" and "<password>"
    And user select perlego's terms and conditions
    And user select I want to receive news about new books and features
    And user click on next button
    Then user should be navigated to choose plan page
    Examples:
      | email                  | password   |
      | mevih44650@clsn.top    | perlego123 |    