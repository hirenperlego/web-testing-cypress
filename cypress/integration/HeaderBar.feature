Feature: Header Bar

    Scenario: Desktop and Tablet header bar elements for the user who is not registerd or logged in
        When user looks at the header bar on the desktop
        Then user should see the header bar elements
            | elements         |
            | Perlego logo     |
            | Search Bar       |
            | Discover         |
            | Pricing          |
            | Login            |
            | Start Free Trial |


    Scenario: Mobile header bar elements for the user who is logged in and not logged in
        When user looks at the header bar on mobile and tablet
        Then user should see elements like Perlego logo, search  and hamburger menu
            | elements       |
            | Perlego logo   |
            | Search Bar     |
            | Hamburger menu |


    Scenario: Mobile Hamburger menu elements for the user who is not registered or logged in
        When user clicks on the hamburger menu
        Then user should see the list of elements
            | elements         |
            | Perlego Logo     |
            | Cancel           |
            | START FREE TRIAL |
            | Search Books     |
            | Discover         |
            | Pricing          |
            | Login            |
            | Help & FAQs      |
            | Contact Us       |


    Scenario: Desktop and Tablet header bar elements for the user who is logged in
        When user looks at the header bar on the desktop
        Then user should see the header bar elements
            | elements     |
            | Perlego logo |
            | Search Bar   |
            | Discover     |
            | My Library   |
            | User Icon    |


    Scenario: Mobile Hamburger menu elements for the user who is logged in
        When user clicks on the hamburger menu
        Then user should see the list of elements
            | elements     |
            | Perlego Logo |
            | Cancel       |
            | User Icon    |
            | User Details |
            | Logout       |
            | Search Books |
            | Discover     |
            | My Library   |
            | Settings     |
            | Help & FAQs  |
            | Contact Us   |


    Scenario: search icon on the left, default placeholder text (Search for books by title,author, ISBN, topics & keyword) colour & shadows to match design
        When user looks at the search bar
        Then user should see magnifier glass icon in search bar
        And  user should see placeholder texts "Search for books by title, author, ISBN, topics & keywords"


    Scenario: blue cursor visibility in search bar
        When user clicks on search bar
        Then user should see blue flashing cursor


    Scenario: placeholder text disappears,blue input cursor to follow text,"x" icon appears (when clicking on it,search bar is emptied and goes back to focused state)
        When user starts typing first letter of texts
        Then user should not see placeholder texts "Search for books by title, author, ISBN, topics & keywords" in search bar
        Then user should see cancel "X"  in search bar
        When user clicks on cancel "X"
        Then search bar should be cleared
        And  user should see default placeholder texts "Search for books by title, author, ISBN, topics & keywords" in search bar


    Scenario: Search bar stays in focus until user clicks outside. If the user scrolls only, the search bar continues to be in focus (so that the user can type with no extra clicks)
        When user types in search bar
        And clears the search bar by clicking on "x" icon
        When scrolls up or down in the page
        Then user should see the search bar is still focused
        When user clicks anywhere outside the seacrh bar
        Then user should see the search bar is out of focous


    Scenario: On mobile, when touch the search bar in order to open it (and type in),the navigation bar(logo & menu icon) slides up, and the search bar slides up as well.
        Given user is on mobile device
        When user clicks on search bar
        Then  user should not see Perlego logo and Hamburger menu icon
        When  user clicks on cancel "X"
        Then  user should see Perlego logo and Hamburger menu icon


    Scenario: Search bar must be in focus when user hit the enter key after typing search key
        Given user is on main landing page
        When user types in search bar
        And user press the  enter key
        Then user should see the search bar in foucus and a flashing blue cursor


Scenario Outline: The user must be able to use keyboard shortcuts in the search bar,such as select all, select word by word, delete, enter.
        When user types any "keyword" in search bar
        Then user should see that he is able to do some "<actions>" via keyboard shortcut
        Examples:
            | actions             |
            | select all          |
            | select word by word |
            | delete              |
            | enter               |
            | copy                |
            | paste               |
