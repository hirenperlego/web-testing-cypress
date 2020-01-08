Feature: Signup Page

  Background:
    Given user is on Signup page

 Scenario Outline: Signup errors validations for invalid credentials
    When user enters "<email>" and "<password>"
    And user select perlego's terms and conditions
    And  user click on next button
    Then user should see the "<error message>" as per the input credentiels
    Examples:
      | email                  | password   | error message                                 |
      # |                        |            | Please enter your email and choose a password |
      # | pertesting@hotmail.com |            | Please choose a password                      |
      # |                        | perlego123 | Please enter your email                       |
      | pertesting@hotmail     | perlego123 | Please enter a valid email address            |
      | pertesting@hotmail.com | perlego    | Please choose a stronger password             |