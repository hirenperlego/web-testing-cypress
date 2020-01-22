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

Then('user gets {string}', (errorMessage) => {
    signupPageObjects.getTermsAndCondErrorMessage().text().should('eq',errorMessage);
})

Then('user sees suggestions for stronger password {string}', (message) => {
    signupPageObjects.getStrongPasswordMessage().text().should('eq',message);
})

When('user click on Already have an account', () => {
    signupPageObjects.gethaveAccountLink().click();
})

Then('user should be navigated to login page', () => {
    cy.location('pathname').should('include','login');
    cy.title().should('include','Login');
})

And('user select I want to receive news about new books and features', () => {
    signupPageObjects.getMarketingCheckBox().should('be.visible').click();
})

Then('user should be navigated to choose plan page', () => {
    cy.location('pathname').should('include','choose-plan')
    cy.title().should('include','Choose Plan')
})