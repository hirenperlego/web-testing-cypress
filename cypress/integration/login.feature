Feature: Login Page
  As a user, I want to login to Perlego
  so that I can read the books.

  Background:
    Given user is on Login page

    @Regression  
    Scenario: User should able to view the main header on login page
    When user sees the main header bar
    Then user should see all the elements of main header like Search bar Browse Pricing Login and Start free trial
    
    @Regression @Smoke
    Scenario Outline: Login with valid credentials
    When user enters "<email>" and "<password>"
    And user select remember me option
    And user clicks on Login
    Then user should see the home page
    Examples:
      | email                 | password |
      | winmobile@perlego.com | password |

    @Regression
    Scenario Outline: Login errors validations for invalid credentials
    When user enters "<email>" and "<password>"
    And user clicks on Login
    Then user should see the "<error message>" for the invalid credentials
    Examples:
      | email                    | password     | error message                                  |
      | pertesting@hotmail       | perlego123   | Incorrect email or password. Please try again. |
      | pertesting12@hotmail.com | perlego123   | Incorrect email or password. Please try again. |
      | pertesting@hotmail.com   | perlego123** | Incorrect email or password. Please try again. |
    
    @Regression
    Scenario: Forgot password
    When user clicks on forgot password link
    Then user should be navigated to password reset page

    @Regression
    Scenario: Don't have an account
    When user don't have a perlego account
    And user clicks on don't have an account link
    Then user should be navigated to signup page

    @Regression
    Scenario Outline: Error validations for blank email and password field
    When user leaves email and password field blank
    And user clicks on Login 
    Then user should see the "<error message>" for the invalid credentials
    Examples:
     | email                    | password     | error message                                  |
     |                          |              | Please enter valid email and password          |

   @Regression 
   Scenario Outline: Error validation for blank email field
   When user leaves email field blank
   And  user enters "<password>" 
   And user clicks on Login 
   Then user should see the "<error message>" for the invalid credentials 
   Examples:
     | email                    | password     | error message                                  | 
     |                          | perlego123   | Please enter your email                        |

   @Regression 
   Scenario Outline: Error validation for blank password field
   When user enter "<email>"
   And user leaves password field blank
   And user clicks on Login 
   Then user should see the "<error message>" for the invalid credentials
   Examples:
     | email                    | password     | error message                                  | 
     | pertesting@hotmail.com   |              | Please enter your password                     | 