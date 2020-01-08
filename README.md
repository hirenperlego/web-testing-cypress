# cypress-cucumber
End-to-End Automation Test Framework with BDD

## Installation
Clone the directory and run
```shell
npm install
```
```shell
npm run test
```

## Step definitions

put your step definitions in cypress/support/step_definitions

Examples:
cypress/support/step_definitions/facebook.js
```javascript
/* global Given, When, Then */
const url = 'https://www.facebok.com';

Given('I open Facebook page', () => {
    cy.visit(url);
});

Then('I see {string} in the title', (title) => {
    cy.title().should('include', title)
});
```

Since, Given/When/Then are on global scope. Please use 
```javascript
/* global Given, When, Then */
```

For more information please visit: https://docs.cypress.io/api/commands/as.html

## Spec/Feature files
Your feature files in cypress/integration:

Example: cypress/integration/facebook.feature
```gherkin
Feature: The Facebook Page
I want to open a social network Page

Scenario: Opening a social network page
    Given I open Facebook page
    Then I see "Facebook" in the title
```
## Cucumber Expressions

We use https://docs.cucumber.io/cucumber/cucumber-expressions/ to parse your .feature file, please use that document as your reference

## Credits

This is based on the framework https://cypress.io and https://cucumber.io. The preprocessor to integrate both the frameworks are from https://github.com/TheBrainFamily/cypress-cucumber-preprocessor. Many thanks to the TheBrainFamily for the wonderful job.

## Testing mobile, tablet and desktop devices with Cypress

Below tutorial is based on the information provided on this url :https://maximilianschmitt.me/posts/cypress-testing-mobile-tablet-desktop/

We created a simple CLI tool as a thin wrapper around Cypress using the Cypress module API. The module API lets you launch Cypress programmatically from any node.js script.

And came up with the following command line interface for our little Cypress wrapper:

$ node integration-tests.js
    --mobile         Run in mobile mode
    --tablet         Run in tablet mode
    --open           Open Cypress

When you look at the script under the hood, you can see that it's not doing much more than parsing a few command line arguments. Check it out on: integration-tests.js    

Now in our testing code we are able to easily check which device is being emulated with Cypress.env:
Example:
describe('Homepage', function() {
    it('shows authenticated user', function() {
        if (Cypress.env('isMobile')) {
            cy.get('.hamburger-menu-button').click()
            cy.get('.mobile-menu').should('contain', 'Logged in as Max')
        } else {
            cy.get('.app-header').should('contain', 'Logged in as Max')
        }
    })
})


