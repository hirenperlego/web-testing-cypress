/* global Given, When, Then */
import SignupPageObjects from '../pageObjects/SignupPageObjects';

const signupPageObjects=new SignupPageObjects();

Given('user is on Signup page', () => {
    cy.visit(Cypress.env('qaSignUp'));
});

When('user enters {string} and {string}', (email, passowrd) => {
    signupPageObjects.getYourEmail().type(email);
    signupPageObjects.getYourPassword().type(passowrd);
})

And('user select perlego\'s terms and conditions', () =>{
    signupPageObjects.getPolicyCheckBox().should('be.visible').click();
})

And('user click on next button', () => {
    signupPageObjects.getNextButton().should('be.visible').click();
})

Then('user should see the {string} as per the input credentiels', (errorMessage) => {
    signupPageObjects.getErrorMessage().text().should('eq',errorMessage);
})