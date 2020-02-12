class PricingPageObjects{

getPlanHeading(){
    return cy.get('');
}  

getBestValueText(){
    return cy.get('div[data-test-locator="choose-plan-card-bubble"]');
}

getMonthlyPlanText(){
    return cy.contains('MONTHLY');
}

getYearlyPlanText(){
    return cy.contains('YEARLY');
}

getMonthlyPlanValue(){
    return cy.get('div[data-test-locator="choose-plan-card-price-value"]');
}

getYearlyPlanValue(){
    return cy.get('div[data-test-locator="choose-plan-card-price-value"]');
}

getMonthlyPlanSymbol(){
    return cy.get('div[data-test-locator="choose-plan-card-currency-symbol"]');
}

getYearlyPlanSymbol(){
    return cy.get('div[data-test-locator="choose-plan-card-currency-symbol"]');
}

getMonthlyTab(){
    return cy.get('');
}

getStart14DayFreeTrialTab(){
    return cy.get('');
}

getCancelAnyTimeLink(){
    return cy.contains('cancel anytime');
}

getTrustPilot(){
    return cy.get('');
}

getAllTheFeaturesYouNeedHeading(){
    return cy.get('');
}

getAllFeaturesYouNeed(){
    return cy.get('');
}

getFrequentlyAskedQuestionsHeading(){
    return cy.contains('Frequently Asked Questions');
}

getSubFaq(){
    return cy.get('');
}

getSettingsLink(){
    return cy.contains('settings');
}

getIosLink(){
    return cy.contains('iOS');
}

getAndroidLink(){
    return cy.contains('Android');
}

getSalesPerlegoLink(){
    return cy.get('div[class$="text__bm--light"]>div>a[href*="sales"]');
}

getGetInTouchLink(){
    return cy.get('div>a[href="mailto:help@perlego.com"]');
}

getAppStoreText(){
    cy.get('we-localnav__title__product');
}


}
export default PricingPageObjects;