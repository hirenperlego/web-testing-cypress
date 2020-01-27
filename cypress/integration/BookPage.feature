Feature: Book Page
  As a user, I want to be able to see the book title, subtitle and authors
  so that I can make sure I am looking at the correct book.
  PD 3130 Book Title, Sub Title And Author

  
  Scenario: Main header bar elements for the book page when user is not logged in.
    Given user is on any book page
    When user sees the main header bar
    Then user should see all the elements of main header like Search bar,Browse, Pricing, Login, language and Start free trial

  
  Scenario: The top section of the book page
    Given user is on any book page
    When user looks on the top section of the book page
    Then user should see headings like book title book subtitle and authors


     #PD 3131
#   Breadcrumbs and navigation
#  As a user, after opening the book page,
#  I want to be able to go back to the previous page,
#  so that I don’t lose my navigation history.

  
  Scenario: Breadcrumbs should be displayed above the book cover
    Given user is on any book page
    When user looks  above the book cover
    Then user should see the navigation link/breadcrumbs

  
  Scenario: Breadcrumbs should be displayed when user navigates to book page from main landing page
    Given user is on main landing page
    When user click on any book on landing page
    Then user should  navigate to the book page
    Then user should see the navigation link/breadcrumbs

  
  Scenario Outline:  Navigate to book page from search result
    Given user is on main landing page
    When user enters a valid "<search>"
    Then user should see the search result
    When user select any book from search result
    Then user should see the selected book page
    Examples:
      | search |
      | java   |

  
  Scenario: Navigate to book page from or browse by, topics
    Given user is on main landing page
    When user clicks on browse
    Then user should see browse by subject and or browse by
    When user select topic from browse by
    Then user will be navigated to subtopics page
    When user select any topic from topics page
    Then user should see the selected topic page
    When user select any book from topic page
    Then user should see selected book page

  
  Scenario: Navigate to book page from or browse by, Reading lists
    Given user is on main landing page
    When user clicks on browse
    Then user should see browse by subject and or browse by
    When user clicks on reading list
    Then user will be navigated to reading list page
    When user select any reading list
    Then user will be navigated to selected reading list page
    When user select any book from reading list page
    Then user should be navigated to book page

  
  Scenario: Navigate to book page from or browse by, Publisher
    Given user is on main landing page
    When user clicks on browse
    Then user should see browse by subject and or browse by
    When user clicks on publishers link
    Then user should see lists of publisher
    When user select any publisher
    Then user will be navigated to selected publisher page
    When user select any book from publisher page
    Then user should see selected book page

  
  Scenario Outline: Sequence of breadcrumbs above book cover for search result
    Given user is on main landing page
    When user enters a valid "<search>"
    Then user should see the search result
    When user select any book from search result
    Then user should see the selected book page
    When  user see above book cover on book page
    Then  user should see breadcrumb link to "Search Results"
    Examples:
      | search |
      | java   |

  
  Scenario: On breadcrumbs topic link is clickable
    Given user is on any book page
    When  user click on topic link
    Then  user should be navigated to topic page

  
  Scenario: On breadcrumbs subject link is clickable
    Given user is on any book page
    When  user click on subject link
    Then  user should be navigated to subject page

  
  Scenario Outline: On breadcrumbs search results link is clickable
    Given user is on main landing page
    When user enters a valid "<search>"
    Then user should see the search result
    When user select any book from search result
    Then user should see the selected book page
    When user clicks on search result link on breadcrumb
    Then user should be navigated back to search result page
    Examples:
      | search |
      | java   |

  
  Scenario Outline: Only subject and book title shown on breadcrumbs link if landed from URL
    Given user enters any book page "<url>"
    Then  user should land directly on book page
    Then  user should only see subject and book title on breadcrumb
    Examples:
      | url                                                                                             |
      | https://www.perlego.com/book/811055/trigonometry-pearson-new-international-edition-pdf?tab=book |

#  Scenario: Back button to go back to library
#    Given user is on my library page
#    When  user select back button
#    Then  user should be navigated back to library

  
  Scenario: Back to Reading List breadcrumb link
    Given user is landed on book page from any reading list
    When  user select breadcrumb link back to reading list
    Then  user should be navigated back to reading list

#  Scenario: Back button to go back to book
#    Given user is landed on book page from book
#    When  user select back button
#    Then  user should be navigated back to that book

#  Scenario: Back button to go back to other pages
#    Given user is landed on book page from any other pages
#    When  user select back button
#    Then  user should be navigated back to that same page

    # 3128
#    As a user, I want to be able to open the book or save it to my library quickly,
#    so that I can start reading as soon as possible.

  
  Scenario: Save the book to reading list for the user who is not logged in should be redirected to login page
    Given user is on any book page
    When user clicks on add to reading list
    Then user should be redirected to login page

#  Scenario:  Save the book to favourite list for the user who is logged in
#    Given user is on any book page
#    When  user clicks on add to favourite list
#    Then  user should see that book is added to favourite list
#
#  Scenario: Save the book to favourite list for the user who is not logged in
#    Given user is on any book page
#    When user clicks on add to reading list
#    Then user should be redirected to login page
#    When user logs into the account
#    Then  user should see the selected book page
#    When  user add the book to favourite list
#    Then user should see the book added to the favourite list

  
  Scenario:  Save the book to reading list for the user who is logged in
    Given user is logged in and is on any book page
    When  user clicks on add to reading list drop down menu
    And user select any reading list from the drop down menu
    Then  user should see the visual confirmation "Added to list"

   
  Scenario: Save the book to reading list for the user who is not logged in
    Given user is on any book page
    When user clicks on add to reading list
    Then user should be redirected to login page
    When  user logs in with correct credentials
    Then  user is redirected selected book page
    When  user clicks on add to reading list drop down menu
    And user select any reading list from the drop down menu
    Then  user should see the visual confirmation "Added to list"

  
  Scenario: clicking on book cover on book page, user should see the signup page for user who is not subscribed or logged in
    Given user is on any book page
    When  user hover to book cover
    And   user notice the book cover is clickable
    When user click on book cover
    Then user should be navigated to signup page

    
  Scenario: click on book cover will open in eReader for logged in user
    Given user is logged in and is on any book page
    When  user click on book cover
    Then  user notice that book is opened in eReader

    
  Scenario: sign up journey as a unsubscribed user for book page
    Given user is on any book page
    And  user click on start free trial tab under book cover
    Then user should be navigated to sign-up page
    When user successfully signed up
    Then user should be navigated back to that selected book page

#  Scenario Outline: % of book read (progress bar + text)
#    Given user is on book page
#    When  user has previously read the book
#    Then  user should see the read progress "<bar>" under the book cover
#    Examples:
#      | bar                |
#      | % of the book read |

#  Scenario: Progress bar and text are hidden for users with no read records for that title
#    Given user is book page
#    When  user has not read that book
#    Then  user should not see the read progress bar

  
  Scenario: Subscribers with no read records ---> Read button
    Given user is logged in and is on any book page
    When  user has not read the book previously
    Then  user should see read button

#  Scenario: Subscribers with read records ---> Continue button
#    Given user is on book page
#    When  user has read the book previously
#    Then  user should see the continue button

  
  Scenario: Unsubscribed or not logged in users ---> Start free trial button
    Given user is on any book page
    When  user is non-subscriber or not logged in
    Then  user should see the start free trial button under the book cover

   
  Scenario: Users who already had their free trial ---> Reactivate
    Given user is logged in and has invalid subscription
    When  user is on any book page
    Then  user should see reactivate button under the book cover
#Pending

#  Scenario: add to reading list --> hover status (purple text)
#    Given user is on any book page
#    When  user hover at add to reading list at bottom of the book cover
#    Then  user should see reading list text are displayed in purple colour

  
  Scenario: add to reading list ---> click shows dropdown list when user is signed in
    Given user is logged in and is on any book page
    When  user clicks on add to reading list
    Then  user should see dropdown list
 #Requires locator id for added visual confirmation
  
  Scenario: if user saves book to reading list, button changes to “added to reading list”. Icons changes as well
    Given user is logged in and is on any book page
    When  user clicks on add to reading list drop down menu
    And user select any reading list from the drop down menu
    Then  user should see changes from add to "Added"

  
  Scenario: basic sharing when clicked on share book
    Given user is on any book page
    When  user clicks on share book menu dropdown
    Then  user should see sharing options

  
  Scenario: book info ---> number of pages
    Given user is on any book page
    When  user looks at the bottom of book cover
    Then  user should see number of pages of that book

  
  Scenario: book info ---> language
    Given user is on any book page
    When  user looks at the bottom of book cover
    Then  user should see language of that book

  
  Scenario: book info ---> format of the book (pdf/ePUB)
    Given user is on any book page
    When  user looks at the bottom of book cover
    Then  user should see format of that book is available in pdf and ePUB(Mobile friendly)

  
  Scenario: book info ---> available on mobile app
    Given user is on any book page
    When  user looks at the bottom of book cover
    Then  user should see that the book is also available on mobile application or not

      #PD 3126 - Book details tab
#      As a user, I want to be able to see the book details and summary,
#      so that I can confirm this is the book I’m looking for.

  
  Scenario: book details tabs
    Given user is on any book page
    When  user looks next to book
    Then  user should see headings "About This Book","Information","Similar books" and "Popular in"

#  Scenario: Publishers summary
#    Given user is on book page
#    When  user select publishers summary tab
#    Then  user should see first 10 lines are written summary from publisher

 #      Scenario: Publishers summary section in tablet
 #       Given user is on book page using tablet
 #       When  user select publishers summary tab
 #       Then  user should see first 15 lines are written summary from publisher

 #      Scenario: Publishers summary section in mobile phone
 #       Given user is on book page using mobile phone
 #       When  user select publishers summary tab
 #       Then  user should see first 15 lines are written summary from publisher

#  Scenario: read more link for lines greater than 10 under publishers summary section
#    Given user is on book page
#    When  user select publishers summary tab
#    Then  user should see first 10 lines are written summary from publisher
#    And   user notice that if lines are more than 10 then there is read more link available at the bottom of summary

#    Scenario: read more link for lines greater than 15 under publishers summary section in tablet
#      Given user is on book page
#      When  user select publishers summary tab
#      Then  user should see first 15 lines are written summary from publisher
#       And   user notice that if lines are more than 15 then there is read more link available at the bottom of summary

#     Scenario: read more link for lines greater than 15 under publishers summary section in mobile phone
#      Given user is on book page
#      When  user select publishers summary tab
#      Then  user should see first 15 lines are written summary from publisher
#      And   user notice that if lines are more than 15 then there is read more link available at the bottom of summary

  
  Scenario: read more link is clickable and expandable
    Given user is on any book page
    When  user looks at  publishers summary tab
    Then user should see read more button link
    When  user hover over read more link
    Then  user should see that read more link is clickable to continue reading more summary from publisher

  
  Scenario: read less link in publishers summary section
    Given user is on any book page
    When  user looks at  publishers summary tab
    Then user should see read more button link
    When user clicks on read more link
    And user scrolls end of publisher summery
    Then  user should see read less link at the bottom of publisher summary

#  Scenario: read less link clickable
#    Given user is on book page
#    When  user hover over read less link under publishers summary section
#    Then  user notice that read less link is clickable

  
  Scenario: read less link to partially hide summary
    Given user is on any book page
    When  user looks at  publishers summary tab
    Then user should see read more button link
    When user clicks on read more link
    And user scrolls end of publisher summery
    Then  user should see read less link at the bottom of publisher summary
    When  user clicks on read less link under publishers summary section
    Then  user notice that summary is partially hidden and should see read more link

  
  Scenario: Information section details
    Given user is on any book page
    When  user looks at information section
    Then  user should see details on information section

  
  Scenario: year of publication under book information section
    Given user is on any book page
    When  user looks at information section
    Then  user should see year of publication of that book

       # edition section OOS
  
  Scenario: navigate to subject page from subject link  under information section
    Given user is on any book page
    When  user looks at information section
    And   user hover over to subject link
    Then  user notice that subject link is clickable and should be navigate to subject page

  
  Scenario: navigate to topic page from topic link under information section
    Given user is on any book page
    When  user looks at information section
    And   user hover over to topic link
    Then  user notice that topic link is clickable and user should be navigate to topic page

#  Scenario Outline: information available on two columns three items per column
#    Given user is on book page
#    When  user looks at the information section
#    Then  user notice that informations are divided into two "<column>" and three items are displayed in each column
#    Examples:
#      | column    | column  |
#      | Publisher | ISBN    |
#      | Year      | Subject |
#      | Edition   | Topic   |

#        Scenario Outline: information available on single column in tablet and mobile
#         Given user is book page
#         When  user looks at the information section
#         Then  user notice that informations are available in one "<column>"
#          Examples:
#          |column       |
#          |Publisher    |
#          |Year         |
#          |Edition      |
#          |ISBN         |
#          |Subject      |
#          |Topic        |

#        Scenario: lengthy words are aligned in multiple lines
#          Given user is on book page
#          When  user looks at information section
#          Then  user notice that lengthy words are divided into two lines
#          And   user notice that second line is also aligned with first line

#        Scenario: year and subject aligned if ISBN occupies whole line
#          Given user is on book page
#          When  user looks at information section
#          Then  user notice that year and subject links are aligned same even when ISBN occupies whole line

        #Scenario: When user selects a new tab, URL needs to change for tracking reason.


        #PD 3375 Remove book pop-up
#        As a designer on Perlego, I want all the current book pop up to be replaced with the new book page,
#        so that we can improve consistency and user experience.

#        Scenario: book pop-up replaced with new page
#          Given designer is on home page
#          When  designer select any book
#          Then  user notice that there is no pop-up opens with book details
#          And   user notice that book details are opening in new book page


#          #PD 3377 Unavailable book
#        As a Perlego content manager,
#        I want to make sure users are not able to read or save a book that is not available in their country.
#
#  Scenario: book not available to read or save if not available for that particular country
#    Given user is on book page
#    When  user wants to read or save a book
#    Then  user only see partial loaded book cover
#    And   user notice that read and add to reading list buttons are disabled
#    And   user also notice a message below title and author "THIS BOOK IS UNAVAILABLE IN YOUR COUNTRY"

#  Scenario: start free trial button available while book not available to read or save in some countries
#    Given user is on book page
#    When user wants to read or save a book
#    And  user see message that "THIS BOOK IS UNAVAILABLE IN YOUR COUNTRY"
#    But  user see start free trial button is active
#    When user clicks on start free trial button
#    Then user should be navigated to sign up page

#         #PD 3372 - Related tab
#         As a user, I want to be able to see other books related to the one I’m viewing,
#         so that I can expand my selection.

  
  Scenario: Expand selection in similar books section
    Given user is on any book page
    When  user clicks on view all for similar books section
    Then  user should see lists of similar books for topic

#################################################################################################################

         #PD 3373 - Recommendations
         # As a user, I want to be able to see other books related to the one I’m viewing,
         # so that I can expand my selection.
  
  Scenario: Expand selection in popular in section
    Given user is on any book page
    When  user clicks on view all for popular in section
    Then user should see lists of popular books for subject


#  Scenario: view all link is not displayed
#    Given user is on book page
#    When  user select any recommended section from the list
#    And   user notice view all link is not displayed
#    Then  user notice no more items are available to view on that section
#
#  Scenario: click on a book from view all will be opened in the same tab
#    Given user is on book page
#    When  user clicks on any new book from view all section
#    Then  user notice that new book is opened in same tab

  
  Scenario: Same title isn’t displayed twice in the recommendations
    Given user is on any book page
    When  user looks under recommendations section
    Then  user should not see same title of book twice in recommendations section


         # 3359
         #As a user, I want to be able to see which chapters of a book I have read,
         #so that I can easily understand my progress.

#  Scenario: If a chapter has been read, a “completed” icon must appear next to the chapter
#    Given user is on book page
#    When  user has read book
#    Then  user should see highlighted tick on icon next to that chapter
#
#  Scenario: If a chapter has not been read, the icon next to the chapter will be empty
#    Given user is on book page
#    When  user has not read that book
#    Then  user should see empty icon next to that chapter

      #edge case
#  Scenario: Book opened but not read
#    Given user is on any book page
#    When user click on read button
#    Then user will see the book has been open in ereader
#    When user does not read any single page
#    And user clicks on back arrow of the ereader
#    Then user should be navigated back to the  book page
#    And user should see none of the chapters has been marked as read

        #3443
        #As a user on Perlego, I want to be able to see my reading progress on the book page,
        # so that I can continue reading with a click.

#  Scenario: Subscribers with read records ---> Continue reading button
#    Given user is on book page
#    When  user has read the book previously
#    Then  user should see the continue reading button under book cover
#
#  Scenario: Subscribers with read records ---> Progress bar on book cover
#    Given user is on book page
#    When  user has read the book previously
#    Then  user should see the progress bar on book cover
#
#  Scenario: Subscribers with read records ---> % of book read information
#    Given user is on book page
#    When  user has read the book previously
#    Then  user should see the percentage of that read book on book cover
#
#  Scenario: Book opened but not read
#    Given user is on any book page
#    When user click on read button
#    Then user will see the book has been open in ereader
#    When user does not read any single page
#    And user clicks on back arrow of the ereader
#    Then user should be navigated back to the book page
#    And user sould not see the progress bar and percentage of the book read


        #3092
        #As a user I would like to be able to see the table of contents of a book within the book page
        # so that I don’t have to open the book in the eReader to check what it actually covers.
  
  Scenario: Table of Contents tab
    Given user is on any book page
    When  user looks below book title
    Then  user should see "Table of contents" for the selected book

#  Scenario: List of all chapters and sub-chapters of a pdf book
#    Given user is on book page
#    And   that book is in pdf format
#    When  user clicks on "Table of Contents" tab
#    Then  user should see list of all chapters and sub-chapters of that book
#
#  Scenario: List of all chapters of a ePUB book
#    Given user is on book page
#    And   that book is in ePUB format
#    When  user clicks on "Table of Contents" tab
#    Then  user should see list of all chapters of that book
#
#  Scenario: click to chapter will navigate to correct location of a book
#    Given user is on book page
#    When  user clicks on any chapter from table of contents
#    Then  user should be navigated to correct location of that book

  
  Scenario: If there is no TOC information, the tab must be hidden
    Given user is on any book page
    When  user looks below book title
    And if there is no data available for Table of Contents
    Then  user should not see "Table of contents" tab in information section and should be hidden

  
  Scenario: URL updated and shows that the user is on TOC tab
    Given user is on any book page
    When  user clicks on "Table of contents" tab
    Then  user notice that URL has been updated with "tab=toc" section

       #3053 Add marketing banner
       #As a marketeer, I want to be able to ensure that non-users that land on the platform (through Google or because they have had something shared with them) are able to understand what Perlego is about
       # so that I can persuade them to sign up.

  
  Scenario: The marketing banner appears for all logged out users
    Given user is non-subscriber or not logged in
    When  user lands on any book page
    Then  user should see a Perlego's banner on book page

  
  Scenario: The marketing banner must not appears for all logged in users
    Given user is logged in and is on any book page
    When  user looks on top of the book page
    Then  user should not see a Perlego add banner on book page

  
  Scenario: The marketing banner must not appears for all logged in users when user is not subscribed to perlego
    Given user is logged in but has not subscribed to perlego
    When  user is on any book page
    Then  user should not see a Perlego's banner on book page

  
  Scenario: Marketing banner start free trial button
    Given user is on any book page
    When user clicks on start free trial button on marketing banner
    Then user should be navigated to signup page

  
  Scenario:  The marketing banner must appear on all the following pages
    Given user is non-subscriber or not logged in
    When  user lands on one of the page like book, subject, topic, reading list page
    Then  user should see a Perlego's banner

  
  Scenario:  The marketing banner must not appear on all the following pages
    Given user is logged in
    When  user lands on one of the page like book, subject, topic, reading list page
    Then  user should not see a Perlego's banner

  
  Scenario:  The banner must contain the following details on book page
    Given user is non-subscriber or not logged in
    When  user is on any book page
    Then  user should see a Perlego's banner on book page and its contents

#  Scenario: The banner must be above the page and below the header
#    Given user is non-subscriber or not logged in
#    When  user is on book page
#    Then  user should see a Perlego's banner on book page
#    And   user notice that banner is displayed between page and header

  
  Scenario: Click on hide button on banner will not be shown to user again
    Given user is on any book page
    When  user clicks on Hide button on banner
    And   user notice that banner slides up to the top of the page
    Then   user should not see that banner and its contents again
    When user navigates to any book page again
    Then user should not see the banner again

    #3483
  # As head of sales, I would like all B2B users to have access to the books that are available in the country of the organisation
  # that they are employed by and not their geo-location (as is the case for b2c users)
  # so that the catalogue that is advertised to them is the same for all employees.
#  Scenario: Geo-filtering restrictions - available to see in employers country
#    Given  user is on main landing page
#    When   user clicks on any book
#    Then   user should see all books available in the country of his employer
#    And    not the country of user

