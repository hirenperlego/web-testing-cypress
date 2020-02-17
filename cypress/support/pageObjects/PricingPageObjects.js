class PricingPageObjects{

getPlanHeading(){
    return cy.get('div>h1').eq(0);
}  

getBestValueText(){
    return cy.get('div[data-test-locator="choose-plan-card-bubble"]');
}

getMonthlyPlanText(){
    return cy.get('div[data-test-locator="choose-plan-card-title"]').eq(1);
}

getYearlyPlanText(){
    return cy.get('div[data-test-locator="choose-plan-card-title"]').eq(2);
}

getMonthlyPlanValue(){
    return cy.get('div[data-test-locator="choose-plan-card-price-value"]');
}

getYearlyPlanValue(){
    return cy.get('div[data-test-locator="choose-plan-card-price-value"]');
}

getCurrencySymbol(){
    return cy.get('div[data-test-locator="choose-plan-card-currency-symbol"]');
}

getLocalCurrency(){
    return cy.get('div[data-test-locator="choose-plan-card-currency"]');
}

getMonthlyTab(){
    return cy.get('div[data-test-locator="toggle-left-button"]');
}

getYearlyTab(){
    return cy.get('div[data-test-locator="toggle-right-button"]');
}
getStart14DayFreeTrialTab(){
    return cy.get('span.MuiButton-label');
}

getCancelAnyTimeLink(){
    return cy.get('div[style*="flex: 0 0 83.3333%; "]>div.text__bm>a');
}

getTrustPilot(){
    return cy.get('div[style*="flex: 0 0 83.3333%; "]>div.text__bm+div>div>div>img');
}

getAllTheFeaturesYouNeedHeading(){
    return cy.contains('All you need, in every plan');
}

getAllFeaturesYouNeed(){
    return cy.get('div.text__bxl');
}

getFrequentlyAskedQuestionsHeading(){
    return cy.get('div>h1').eq(1);
}

getSubFaq(){
    return cy.get('div.text__h6--bold');
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