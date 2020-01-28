Feature: Confirmation Page

Background: 
    Given User is on confirmation page

Scenario: Confirmation page heading and subheading
When user looks on the confirmation page
Then user should see the heading "Welcome aboard!"
And user should see the subheading "Enjoy your free trial, on us."    


Scenario: Default I am a student radio button should be selected
When user looks on the confirmation page
Then user should find that by default "I am a student" radio button is selected


Scenario: Want to know a bit more about you for student
When user is a student
Then user select "I am a student" radio button
And user select the "University name" and "Course name"


Scenario: Want to know a bit more about you for professional
When user is a professional
Then user select "I am a professional" radio button
And user select the "Job industry" and "Job function"


Scenario: Click Perlego logo
When user clicks on Perlego logo
Then user should be redirected to the "Home Page"


Scenario: Reset know a bit more about you fields for student and professional
When user select "I am a student" radio button
And user select the "University name" and "Course name"
But user changes its selection from "I am a student" to "I am a professional"
Then user should see the "University name" and "Course name" fields has been reset 
And user should see the "Job industry" and "Job function" fields
When user select "I am a professional" radio button
And user select the "Job industry" and "Job function"
But user changes its selection from "I am a professional" to "I am a student"
Then user should see the "Job industry" and "Job function" fields has been reset
And user should see the "University name" and "Course name" fields