# PD- 4632
Feature: Tabs,book results and pagination
    As a user, I want to be able to see the most relevant book results for my query,
    so that I can find relevant content for me and start reading as soon as possible.
    Background:
        Given user is on main landing page

    #1 - Tabs interactive behaviour :
    Scenario: Default behaviour of Tabs
        When user search for "Java"
        Then user should see tabs below search bar
        And  user should see by default first Tab is selected 

    #2
    Scenario: pressed behaviour of Tabs
        When user clicks on any tab
        Then tab should be selected
    #3
    Scenario: disabled behaviour of Tabs
        When user looks at any tabs that are disabled
        Then user should see grey colour on tabs
        Then user should not be able to click them
    #4
    Scenario Outline: the tabs are displayed in a fixed order
        When user looks at the tabs below search bar
        Then user should see them in "<fixed order>"
        Examples:
            | fixed order       |
            | top results       |
            | books             |
            | reading lists     |
            | subjects & topics |
            | publishers        |
    #5
    Scenario: if the user focuses in the search bar, without typing anything, the tabs stay hidden
        When user doesn't type anything in search bar
        Then user should not see tabs
    #6
    Scenario: if the results for a tab are 0, the tab element hides (dynamically as the user types)
        When user types in search bar
        And results for a tab are "0"
        Then user should not see that tab in the page
    #7
    Scenario: if the space occupied by the tabs is wider than the grid width, it must be possible to scroll left and right to view the overflowing tab elements
        When the tabs don't fit into the width of the grid
        Then user should see some tabs are not visible
        And user should see right arrow next to tabs
        When user clicks on right arrow
        Then user should see hidden tabs
    #8
    Scenario: if the space occupied by the tabs is wider than the grid width, it must be possible to scroll left and right to view the overflowing tab elements
        When the tabs don't fit into the width of the grid
        And user see all tabs on right side by clicking on right arrow
        Then user should not see all tabs on left side
        And user should see left arrow next to tabs
        When user clicks on left arrow
        Then user should be back to default position
    #9 : Mobile & Tablet behaviours
    Scenario: on mobile and tablet, tabs are overflowing on the right side and it must be possible to swipe left and right to access the hidden tab elements
        When the tabs don't fit into the width of the grid
        Then user should be able to swipe left and right to see hidden tabs
    #10
    Scenario: when clicking on the tab, the related set of content must be displayed in the page
        When user clicks on the tab
        Then user should see related results
    #11 - Number of results information (within the tab element)
    Scenario: the number of results for that type of content is displaying within the tab element
        When user types in search bar
        And  user see tabs below search bar
        Then user should see number of results information is visible on each tabs
    #12
    Scenario: Display the exact number of results up to 99
        When user types in search bar
        And  user see tabs below search bar
        Then user should see exact number of results in tabs
    #13
    Scenario: More than 99 search results found  display 99+
        When user types in search bar
        And  user see tabs below search bar
        Then user should see exact number of results in tabs
        When search result is over "99"
        Then user should see "99+" in tabs
    #14
    Scenario: More than 1000 search results found display 1k+
        When user types in search bar
        And  user see tabs below search bar
        Then user should see exact number of results in tabs
        When user see the results are over "999"
        Then user should see "1k+" in tabs
    #15 - Pagination behaviour :  Desktop, tablet and mobile
    Scenario: each page contains 36 books (6 rows on desktop, 9 rows on tablet and 18 on mobile)
        Given user is on desktop
        When user types in search bar
        Then user should see "36" books on the page
        And user should see "6" books in one row
    #16
    Scenario: each page contains 36 books (6 rows on desktop, 9 rows on tablet and 18 on mobile)
        Given user is on tablet
        When user types in search bar
        Then user should see "36" books on the page
        And user should see "4" books in one row
    #17
    Scenario: each page contains 36 books (6 rows on desktop, 9 rows on tablet and 18 on mobile)
        Given user is on mobile
        When user types in search bar
        Then user should see "36" books on the page
        And user should see "18" books in one row
    #18
    Scenario: the pagination element appears only if the search result per tab contains more than 36 books
        When there are minimum "36" books present in search result
        Then user should see pagination bar in the page
        When there are less than "36" books present for search result
        Then user should not see pagination bar in the page
    #19
    Scenario: default behaviour of pagination
        When user looks at the pagination bar
        Then user should see page "1" is enabled by default
    #20
    Scenario: the pagination element displays a maximum of 8 pages - above that number the first and last pages are displayed with an ellipsis in the middle
        When there are "8" pages to display in pagination bar
        Then should see ellipses in the middle of the pagination bar
    #21
    Scenario: it is possible to go to the next/previous page by clicking on the arrows
        When user notice that left and right arrows are enabled and clickable
        When user clicks on left arrow
        Then user will be navigated to "previous" page
        When user clicks on right arrow
        Then user will be navigated to "next" page
    #22
    Scenario: when on first or last page, previous or next arrows are disabled.
        When user is on page "1"
        Then user should not be able to click on left arrow
        When user is on page "28"
        Then user should not be able to click on right arrow
    #23 - Go to page pagination behaviour
    Scenario: it is also possible to skip to a page, by entering your desired number in the skip to page element
        When user types in page numbers in Go to Page box
        And clicks on Go button
        Then user should be navigated to that selected page
    #24
    Scenario Outline: No letter or special characters are allowed in Go to page box
        When user "<types>" in any alphabets or specialCharacters in go to page box
        Then user should not be able to type in
        Examples:
            | types |
            | a     |
            | C     |
            | ^     |
            | &     |
            | 0     |
    #25
    Scenario: Page number input field Focus states & Go button default behaviour
        When user clicks in input field in Go to page element
        Then user should see flashing blue cursor inside go to page box
    #26
    Scenario: when clicking on a book, the book page must open in the same browser tab, and it must be possible to go back to the correct search result tab and page
        Given user is on search result page
        When  user clicks on any book
        Then  user should be navigated to that book page
        And   book page is opened in same browser tab
        When  user clicks on back button
        Then  user should be navigated back to the same page he was originally landed from
    #27
    Scenario: page contains text/title of search result
        When user types in search bar
        Then user should see the search results
        Then user should see "text" of searched keyword under subheadig
    #28
    Scenario: total number of results for that tab and for the current search keyword
        When user types in search bar
        Then user should see the search results
        Then user should see the total number of results displayed along with searched keyword under the subheading
    #29
    Scenario: Apply geofiltering to book search results
        Given user is in different country than UK
        When  user types in search bar
        Then  user should see books available for that specific country only
#  Manual Testing :
# Distance between main header bar and tabs : 30px
# Distance between tabs : 14px
# Scenario: hover behaviour of Tabs
#   When user hover over any other tabs apart from enabled tab
#   Then user will notice the shadow with dark blue colour on that tab
# get validations from Tiph/Matt on behaviour when user types special characters, numbers or an empty space bar?
# Scenario: the tabs are displayed only when the user starts typing a query in the search bar
#   When user starts typing a query/keyword in search bar
#   Then user will notice the tabs are displayed below search bar
#
# Scenario: hover status on pagination
#   When user is on any page on the pagination
#   And  user hover over any other page number
#   Then user should see the shadow with dark blue colour on that page number
#
# Scenario: pressed/clicked status on pagination
#   When user is on any page on the pagination
#   And  user clicks on any other page number
#   Then user won't notice any shadow on that page number
#
# Scenario: Page number input field typing in states & Go button hover behaviour
#   When user clicks in input field in Go to page element
#   And  starts typing in page number
#   Then user notice that field input is centered
#   When user hover over Go button
#   Then user notice the shadow applied to Go button and colour changes to dark blue