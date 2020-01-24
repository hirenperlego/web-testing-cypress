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


Scenario: Mobile and Tablet header bar elements for the user who is not registerd or logged in
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
|START FREE TRIAL|
|Search Books    |
|Browse          |
|Pricing         |
|Login           |
|Help & FAQs     |
|Contact Us      |
  