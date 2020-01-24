Feature: Header Bar
   
Scenario: Desktop header bar elements for the user who is not registerd or logged in
When user looks at the header bar on the desktop
Then user should see the header bar elements  
|elements         |
|Perlego logo     |
|Search Bar       |
|Discover         |
|Pricing          |
|Login            |
|Start Free Trial | 


Scenario: Mobile and Tablet header bar elements for the user who is logged in and not logged in
When user looks at the header bar on mobile and tablet
Then user should see elements like Perlego logo, search  and hamburger menu
|elements       |
|Perlego logo   |
|Search Bar     |
|Hamburger menu |


Scenario: Mobile and Tablet Hamburger menu elements for the user who is not registered or logged in
When user clicks on the hamburger menu
Then user should see the list of elements
|elements        |
|Perlego Logo    |
|Cancel          |
|START FREE TRIAL|
|Search Books    |
|Discover        |
|Pricing         |
|Login           |
|Help & FAQs     |
|Contact Us      |
  

Scenario: Desktop header bar elements for the user who is logged in
When user looks at the header bar on the desktop
Then user should see the header bar elements  
|elements         |
|Perlego logo     |
|Search Bar       |
|Discover         |
|My Library       |
|User Icon        |


Scenario: Mobile and Tablet Hamburger menu elements for the user who is logged in
When user clicks on the hamburger menu
Then user should see the list of elements
|elements        |
|Perlego Logo    |
|Cancel          |
|User Icon       |
|User Details    |
|Logout          |
|Search Books    |
|Discover        |
|My Library      |
|Settings        |
|Help & FAQs     |
|Contact Us      |
