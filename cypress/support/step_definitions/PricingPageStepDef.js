import PricingPageObjects from '../pageObjects/PricingPageObjects';
import { Given, When, Then, But, And } from 'cypress-cucumber-preprocessor/steps';


const pricingPageObjects=new PricingPageObjects();

Given('User is on a Pricing page', () => {
    cy.visit(Cypress.env('qaPricing'));
    cy.location('pathname').should('include','pricing');
    cy.title().should('include','Pricing');
});

When('user looks at the pricing plan page', () => {});

Then('user finds page has been divided into three sections: plans, features, and FAQs', () => {
    pricingPageObjects.getPlanHeading().text().should('be.visible').should('eq','Choose your plan');
    pricingPageObjects.getAllTheFeaturesYouNeedHeading().text().should('be.visible').and('eq','All the features you need');
    pricingPageObjects.getFrequentlyAskedQuestionsHeading().text().should('be.visible').and('eq','Frequently Asked Questions');

});

When('user looks under {string} heading', (heading) => {
    pricingPageObjects.getPlanHeading().text().should('be.visible').and('eq',heading);
});

Then('user should see the  {string} and {string} plans', (monthly,yearly) => {
    pricingPageObjects.getMonthlyPlanText().text().should('eq',monthly);
    pricingPageObjects.getYearlyPlanText().text().should('eq',yearly);
});

But('If user is on mobile devices', () => {});

Then('user should see the tab  to change the {string} and {string} plans', (monthly,yearly) => {
});

When('user looks at the plan\'s sections', () => {
    pricingPageObjects.getPlanHeading().text().should('be.visible').and('eq',heading);
});

Then('user should see by default {string} plan is selected', (yearly) => {
    pricingPageObjects.getYearlyPlanText().should('have.css', 'background-color').and('eq', 'rgb(242, 228, 125)');
});

Then('user should see {string} on yearly plan', (toolTip) => {
    pricingPageObjects.getBestValueText().text().should('eq',toolTip);
});

Then('user finds subscription value is displayed in local currency and its symbols', () => {
    pricingPageObjects.getYearlyPlanSymbol().should('be.visible');
    if(Cypress.env('isMobile')){
        pricingPageObjects.getMonthlyTab().click();
        pricingPageObjects.getMonthlyPlanSymbol().should('be.visible');
    }else{
        pricingPageObjects.getMonthlyPlanSymbol().should('be.visible');
    }
});

When('user looks under the {string} and {string} plans', (monthly,yearly) => {
    pricingPageObjects.getMonthlyPlanText().text().should('eq',monthly);
    pricingPageObjects.getYearlyPlanText().text().should('eq',yearly);
});

Then('user should see the {string} button', (button) => {
    pricingPageObjects.getStart14DayFreeTrialTab().forEach(freeTrialButton => {
         freeTrialButton.should('be.visible');   
    });
});

When('user clicks on Cancel anytime link', () => {
    pricingPageObjects.getCancelAnyTimeLink().should('be.visible').click();
});

Then('user should be scrolled down to {string} of FAQs section', (cancelAnyTime) => {
    cy.isInViewportAfterScroll(cy.contains(cancelAnyTime));// check this issue if functionality fails https://github.com/cypress-io/cypress/issues/877
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
    cy.location('pathname').should('include',loginPage);
    cy.title().should('include',loginPage);
});

When('user clicks on {string} link', (iOS) => {
    pricingPageObjects.getIosLink().should('be.visible').and('eq',iOS).click();
});

Then('user should be redirected to the ios App store', () => {
    cy.title().should('include','App Store');
    pricingPageObjects.getAppStoreText().text().should('eq','App Store');
});

When('user clicks on {string} link', (android) => {
    pricingPageObjects.getAndroidLink().should('be.visible').and('eq',android).click();
});

Then('user should be redirected to android Play store', () => {
    cy.title().should('include','Google Play');
});

When('user clicks {string} link', (sales) => {
    pricingPageObjects.getSalesPerlegoLink().should('be.visible').and('have.attr','href','mailto:sales@perlego.com');
});

Then('user should be redirected to email client', () => {

});

And('user should notice email {string} and subject has been created automatically', (email) => {});

When('user clicks on the  Get in touch link', () => {
    pricingPageObjects.getGetInTouchLink().should('be.visible').and('have.attr','href','mailto:help@perlego.com');
});

When('user select the  {string} or {string} plans', (monthly,yearly) => {
});

And('user clicks on {string} button', (button) => {});

Then('user should be redirected to the {string}', (signupPage) => {});

