/* global Given, When, Then */
import MainHeaderObjects from '../pageObjects/MainHeaderObjects';
import LoginPageObjects from '../pageObjects/LoginPageObjects';
import SignupPageObjects from '../pageObjects/SignupPageObjects';

const mainHeaderObjects=new MainHeaderObjects();
const loginPageObjects=new LoginPageObjects() ;
const signupPageObjects=new SignupPageObjects();


Given('user is on Login page', () => {
   // cy.viewport(1200, 660);
    cy.visit(Cypress.env('qaLogin'));
});

When('user sees the main header bar', () => {
    mainHeaderObjects.getMainHeader().should('be.visible');
});

Then('user should see all the elements of main header like Search bar Browse Pricing Login and Start free trial', () => {
    mainHeaderObjects.getPerlegoLogo().should('be.visible');
    if(Cypress.env('isMobile') || Cypress.env('isTablet')){
        mainHeaderObjects.getSearchBarMobile().should('be.visible');
        mainHeaderObjects.getHamBurgerMenuOpenClose().should('be.visible').click();
        mainHeaderObjects.getStartFreeTrialMobile().should('be.visible');
        mainHeaderObjects.getSearchBooksMobile().should('be.visible');
        mainHeaderObjects.getBrowseMobile().should('be.visible');
        mainHeaderObjects.getPricingMobile().should('be.visible');
        mainHeaderObjects.getLoginMobile().should('be.visible');
        mainHeaderObjects.getHelpAndFaqsMobile().should('be.visible');
        mainHeaderObjects.getContactUsMobile().should('be.visible');
        mainHeaderObjects.getHamBurgerMenuOpenClose().should('be.visible').click();
    }else{
        mainHeaderObjects.getSearchBar().should('be.visible');
        mainHeaderObjects.getBrowse().should('be.visible');
        mainHeaderObjects.getPricing().should('be.visible');
        mainHeaderObjects.getLogin().should('be.visible');
        mainHeaderObjects.getLanguage().should('be.visible');
        mainHeaderObjects.getStartFreeTrial().should('be.visible');
    }  
});

When('user enters {string} and {string}', (email, passowrd) => {
    
    loginPageObjects.getYourEmail().type(email);
    loginPageObjects.getYourPassword().type(passowrd);
})

And('user select remember me option', () => {
    loginPageObjects.getRememberMe().should('be.checked');
   // loginPageObjects.getRememberMe().check()
})

And('user clicks on Login', () => {
    loginPageObjects.getLoginButton().click();
})

Then('user should see the home page', () => {
    cy.title().should('eq','Home | Perlego');
    cy.location('pathname').should('include','home');
})

Then('user should see the {string} for the invalid credentials', (errorMessage) => {
    loginPageObjects.getErrorMessage().should('eq',errorMessage);

})

And('user clicks on forgot password link', () => {
    loginPageObjects.getPasswordResetLink().click();
})

Then('user should be navigated to password reset page', () => {
    cy.location('pathname').should('include','password-reset');
})

When('user don\'t have a perlego account', () => {

})

And('user clicks on don\'t have an account link', () => {
    loginPageObjects.getDoNotHaveAccount().click();
})

Then('user should be navigated to signup page', () => {
    cy.location('pathname').should('include','sign-up');
    signupPageObjects.getHeading().then(($link) =>{
        const heading=$link.text();
        expect(heading).is.equal('Sign up to start your free trial.');
    })
})
    
