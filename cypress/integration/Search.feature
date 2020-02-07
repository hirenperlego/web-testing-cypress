
Feature: New search UI & horizontal navigation
  As a user, I want the search bar to be easy to find and to use,
  so that I can have a good search experience.
    #1    # PD- 4639
  # Top navigation changes:
  Scenario: user avatar stays the same
    When user looks at user avatar icon
    Then user notice that there is no change in user avatar
    And  user avatar stays the same
    #2
  Scenario: user dropdown makes us of new shadows and rounded corners
    # get design from Tiph
    When user looks at user dropdown
    Then user notice that user dropdown has round corners and new shadows
    #3
  Scenario: user dropdown must appear always below the user avatar
  (instead of sticking to the right side of the browser)
    # issue mainly happens upon zoom-in/zoom-out of screen
    When user clicks on user dropdown
    Then user notice that the dropdown menu opens up right below the user avatar
    And  not opening on left or right side of the avatar
    #4
  Scenario: remove language filter (it will be part of the filter feature)
    When user looks at the header bar
    Then user notice that there is no more language filter option available
    #5
  Scenario: "browse" title changes to "discover"
    When user looks at the header bar
    Then user notice that "browse" title has been replaced now with "discover" texts
    #6
  Scenario: all fonts need to be replaced with new fonts
    # get fonts name and size from Tiph (oos)
    When user looks at the fonts on header bar
    Then user notice that all fonts have been replaced with new fonts
    #7
  Scenario: nav bar buttons behaviour (hover, selected etc.) stays the same
    When user hover or select any buttons on header bar
    Then user notice that hover and select actions remains same as previous
    #8
  Scenario: logo needs to be replaced with DS logo, no hover status
    When user looks at the logo
    Then user notice that logo is replaced with DS logo
    And  there is no changes or actions on hovering over the logo
    #9
  Scenario: search bar must be replaced with new search bar
    When user looks at the search bar
    Then user notice that search bar is replaced with new search bar in style
    #10
  Scenario: in logged out version, "start free trial" button makes use of the
  secondary button style in DS, whilst "log in" button uses the tertiary button style
    Given user is logged out and on desktop, tablet or mobile
    When  user looks at the header bar
    Then  user notice that "Start Free Trial" button makes use of the secondary button style
    And   "Login" button uses the tertiary button style
    #11
    # Search bar by status: default
  Scenario Outline : search icon on the left, placeholder text (Search for books by title,
  author, ISBN, topics & keyword)
  colour & shadows to match design
    When user looks at the search bar
    And  search bar is in default mode
    Then user notice that search icon (magnifier glass) is displayed on left side of the search bar
    And  placeholder is visible with pre-defined "<texts>"
    And  search bar is grey in colour by default
    Examples:
      | texts                     |
      | Search for books by title |
      | author                    |
      | ISBN                      |
      | topics & keyword          |
    #12
    # Search bar by status: focused
  Scenario: colour & shadows change to match design,blue input cursor flashing,
  colour of placeholder text changes
    When user looks at the search bar
    And  search bar is in focused mode
    Then user notice the blue input cursor flashing
    And  colour of placeholder texts has been changed to white background
    #13
    # Search bar by status: when user inputs text
  Scenario: placeholder text disappears,blue input cursor to follow text,"x" icon appears (when clicking on it,
  search bar is emptied and goes back to focused state)
    When user starts typing first letter of texts
    Then user notice that placeholder texts disappears
    And  "x" icon appears on right side of the search bar
    When user clicks on "x" icon
    Then search bar is emptied again
    And  goes back to focused state
    #14
  Scenario: Search bar stays in focus until user clicks outside. If the user scrolls only, the search bar continues
  to be in focus (so that the user can type with no extra clicks)
    Given user has started typing in search bar
    And   user clicks on "x" icon
    And   search bar is emptied
    When  user clicks outside
    Then  user notice that search bar is still in focus mode
    When  user scrolls up or down in page
    Then  user notice that search bar continues to be in focus
    And   user can start typing with no extra clicks
    #15
  Scenario: The search bar width changes accordingly to the elements in the top
  navigation and the screen width. It makes use of all available space minus
  the left and right padding which are fixed.
    When user looks search bar in header bar
    Then user notice that width of search bar changes accordingly to the elements in the top navigation and the screen width
     #16
  Scenario: On mobile,  when the user scrolls down, the search bar slides bellow the
  navigation. It re-appear when the user scrolls up.
    Given user is using mobile
    When  user scrolls down on the page
    Then  user notice that the search bar slides bellow the navigation
    And   it re-appears when the user scrolls up
     #17
  Scenario: On mobile, when touch the search bar in order to open it (and type in),
  the navigation bar(logo & menu icon) slides up, and the search bar slides up as well.
    Given user is using mobile
    When  user touch the search bar and starts typing in
    Then  user notice that "Perlego logo", "Hamburger menu icon" and "Search bar" slides up
    When  user clicks on "x" icon
    Then  user notice that "Perlego logo", "Hamburger menu icon" and "Search bar" slides back in visibility
     #18
  Scenario Outline: The user must be able to use keyboard shortcut in the search bar,
  such as select all, select word by word, delete, enter.
    When user searches "history" in search bar
    Then user is also able to use "<keyboard shortcut>" in the search bar
    Examples:
      | keyboard shortcut   |
      | select all          |
      | select word by word |
      | delete              |
      | enter               |
      | copy                |
      | paste               |
     #19
  Scenario: If the user presses enter, the bar does not go out of focus
    Given user has started typing in search bar
    When  user presses enter
    Then  user notice that the bar does not go out of focus
    #20 End To End
  Scenario: End to End :when user opens a book to read via search functionality
    Given user is on main landing page
    And   user clicks on search bar
    And   user type in "Marketing" in search bar
    And   user lands on search result page
    And   user selects any book from search result page
    Then  user will be navigated to that book page
    When  user clicks on start free trial button
    Then  user is navigated to Login page
    And   user clicks on "Don't have an account?" link
    Then  user will be navigated to sign-up page
    When  user successfully signs up
    Then  user should be navigated to book page he was interested in
    When  user clicks on read button
    Then  user will notice that eReader is opening
    Then  user should be able to read that book
    