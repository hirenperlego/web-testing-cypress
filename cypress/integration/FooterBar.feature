Feature: Footer Bar

   
Background:
    Given user is on main landing page


Scenario: Footer bar links for the users who is not registered or logged in
When  user scrolls down to the page
Then user should see the list of footer bark links
    | ABOUT      |BROWSE     |LEARN                             |
    | FAQs       |Subjects   |Architecture & Design             |
    | Contact us |Topics     |Business & Management             |
    | Pricing    |Expert list|Economics                         |
    | Students   |Publishers |History                           |
    | Business   |           |IT & Computer Science             |
    |            |           |Law                               |
    |            |           |Literature & Linguistics          |
    |            |           |Mathematics                       |
    |            |           |Medicine                          |
    |            |           |Philosophy & Theology             |
    |            |           |Politics & International Relations|
    |            |           |Psychology                        |
    |            |           |Science                           |
    |            |           |Social Sciences                   |
    |            |           |Technology & Engineering          |
    |            |           |The Arts                          |


Scenario: Footer bar links for the logged in users
When  user scrolls down to the page
Then user should see the list of footer bark links
    | ABOUT      |BROWSE     |LEARN                             |
    | FAQs       |Subjects   |Architecture & Design             |
    | Contact us |Topics     |Business & Management             |
    |            |Expert list|Economics                         |
    |            |Publishers |History                           |
    |            |           |IT & Computer Science             |
    |            |           |Law                               |
    |            |           |Literature & Linguistics          |
    |            |           |Mathematics                       |
    |            |           |Medicine                          |
    |            |           |Philosophy & Theology             |
    |            |           |Politics & International Relations|
    |            |           |Psychology                        |
    |            |           |Science                           |
    |            |           |Social Sciences                   |
    |            |           |Technology & Engineering          |
    |            |           |The Arts                          |


Scenario Outline: Footer bar links
When  user scroll down to the main landing page
Then user should see all the list of "<links>" of footer bar
Examples:
    |links         |
    |GET IN TOUCH  |
    |FAQs          |
    |Privacy Policy|
    |T&Cs          |


Scenario: Footer bar social icons
When user scroll down to the main landing page
Then user should see the social icons like instagram facebook linkedin twitter are displayed


Scenario: FAQs Page
When user clicks on FAQs link
Then user should be navigated to FAQs page


Scenario: Privacy policy page
When user clicks on privacy policy link
Then user should be navigated to Privacy policy page


Scenario: T&Cs Page
When user clicks on T&Cs link
Then user should be navigated to T&Cs page   