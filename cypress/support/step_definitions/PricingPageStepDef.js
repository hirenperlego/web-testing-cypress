import PricingPageObjects from '../pageObjects/PricingPageObjects';
import { Given, When, Then, But, And } from 'cypress-cucumber-preprocessor/steps';


const pricingPageObjects = new PricingPageObjects();

Given('User is on a Pricing page', () => {
    cy.visit(Cypress.env('qaPricing'));
    cy.location('pathname').should('include', 'pricing');
    cy.title().should('include', 'Pricing');
});

When('user looks at the pricing plan page', () => { });

Then('user finds page has been divided into three sections: plans, features, and FAQs', () => {
    pricingPageObjects.getPlanHeading().text().should('eq', 'Choose your plan');
    pricingPageObjects.getAllTheFeaturesYouNeedHeading().text().should('eq', 'All you need, in every plan');
    pricingPageObjects.getFrequentlyAskedQuestionsHeading().text().should('eq', 'Frequently asked questions');

});

When('user looks under {string} heading', (heading) => {
    pricingPageObjects.getPlanHeading().text().should('eq', heading);
});

Then('user should see the  {string} and {string} plans', (monthly, yearly) => {
    //  if(Cypress.env('isDesktop')|| Cypress.env('isTablet')){
    pricingPageObjects.getMonthlyPlanText().text().should('eq', 'Monthly');
    pricingPageObjects.getYearlyPlanText().text().should('eq', 'Yearly');
    //  }else{
    //      cy.log('User is on Desktop Mode or Tablet Mode');
    //  }
});

But('If user is on mobile devices', () => { });

Then('user should see the tab  to change the {string} and {string} plans', (monthly, yearly) => {
    // if(Cypress.env('isMobile')){
    cy.viewport(736, 414)
    pricingPageObjects.getMonthlyTab().should('be.visible');
    pricingPageObjects.getMonthlyPlanText().text().should('eq', 'Monthly');
    pricingPageObjects.getYearlyTab().should('be.visible');
    pricingPageObjects.getYearlyPlanText().text().should('eq', 'Yearly');
    // }else{
    //     cy.log('User is on Mobile Mode');
    // }
});

When('user looks at the plan\'s sections', () => {

});

Then('user should see by default {string} plan is selected', (yearly) => {
    if (Cypress.env('isMobile')) {
        cy.viewport(736, 414)
        pricingPageObjects.getYearlyPlanText().text().should('eq', 'Yearly');
        pricingPageObjects.getYearlyPlanText().should('have.css', 'color', 'rgb(0, 96, 255)');
    } else {
        cy.log('User is on Desktop Mode or Tablet Mode');
    }
});

Then('user should see {string} on yearly plan', (toolTip) => {
    pricingPageObjects.getBestValueText().text().should('eq', toolTip);
});

Then('user finds subscription value is displayed in local currency and its symbols', () => {
    if (Cypress.env('isMobile')) {
        //cy.viewport(736,414)
        pricingPageObjects.getCurrencySymbol().eq(0).should('be.visible');
        pricingPageObjects.getLocalCurrency().eq(0).should('be.visible');
        pricingPageObjects.getMonthlyTab().click({ force: true });
        pricingPageObjects.getCurrencySymbol().eq(0).should('be.visible');
        pricingPageObjects.getLocalCurrency().eq(0).should('be.visible');
    } else {
        pricingPageObjects.getCurrencySymbol().eq(1).should('be.visible');
        pricingPageObjects.getLocalCurrency().eq(1).should('be.visible');
        pricingPageObjects.getCurrencySymbol().eq(2).should('be.visible');
        pricingPageObjects.getLocalCurrency().eq(2).should('be.visible');
    }

});

When('user looks under the {string} and {string} plans', (monthly, yearly) => {

});

Then('user should see the {string} button', (button) => {
    if (Cypress.env('isMobile')) {
        pricingPageObjects.getStart14DayFreeTrialTab().eq(0).should('be.visible');

    } else {
        pricingPageObjects.getStart14DayFreeTrialTab().eq(1).should('be.visible');
        pricingPageObjects.getStart14DayFreeTrialTab().eq(2).should('be.visible');
    }
});

When('user clicks on Cancel anytime link', () => {
   // cy.viewport(736,414)
    
    pricingPageObjects.getCancelAnyTimeLink().click({force:true});
    cy.log('******')
});

Then('user should be scrolled down to {string} of FAQs section', (cancelAnyTime) => {
    cy.isInViewportAfterScroll(pricingPageObjects.getSubFaq().eq(7));// check this issue if functionality fails https://github.com/cypress-io/cypress/issues/877

});

Then('user should see the users rating from Trustpilot', () => {
    pricingPageObjects.getTrustPilot().should('be.visible');
});

When('user looks at the {string} section', (featuresSection) => {
    pricingPageObjects.getAllTheFeaturesYouNeedHeading().should('be.visible');
});

Then('user should see the list of features', datatable => {
    datatable.hashes().forEach(features => {
        features.should('be.visible');
    });
});

When('user looks under the FAQs section', () => {
    pricingPageObjects.getFrequentlyAskedQuestionsHeading().should('be.visible');
});

Then('user should see the list of Headings', datatable => {
    datatable.hashes().forEach(faqHeadings => {
        faqHeadings.should('be.visible');
    });
});

When('user clicks on settings', () => {
    pricingPageObjects.getSettingsLink().should('be.visible').click();
});

Then('user should be redirected to {string}', (loginPage) => {
    cy.location('pathname').should('include', loginPage);
    cy.title().should('include', loginPage);
});

When('user clicks on {string} link', (iOS) => {
    pricingPageObjects.getIosLink().should('be.visible').and('eq', iOS).click();
});

Then('user should be redirected to the ios App store', () => {
    cy.title().should('include', 'App Store');
    pricingPageObjects.getAppStoreText().text().should('eq', 'App Store');
});

When('user clicks on {string} link', (android) => {
    pricingPageObjects.getAndroidLink().should('be.visible').and('eq', android).click();
});

Then('user should be redirected to android Play store', () => {
    cy.title().should('include', 'Google Play');
});

When('user clicks {string} link', (sales) => {
    pricingPageObjects.getSalesPerlegoLink().should('be.visible').and('have.attr', 'href', 'mailto:sales@perlego.com');
});

Then('user should be redirected to email client', () => {

});

And('user should notice email {string} and subject has been created automatically', (email) => { });

When('user clicks on the  Get in touch link', () => {
    pricingPageObjects.getGetInTouchLink().should('be.visible').and('have.attr', 'href', 'mailto:help@perlego.com');
});

When('user select the  {string} or {string} plans', (monthly, yearly) => {
});

And('user clicks on {string} button', (button) => { });

Then('user should be redirected to the {string}', (signupPage) => { });

