class PricingPageObjects{

getPlanHeading(){
    return cy.get('');
}  

getMonthlyPlanText(){
    return cy.contains('MONTHLY').text();
}

getYearlyPlanText(){
    return cy.contains('YEARLY').text();
}

getMonthlyPlanValue(){
    return cy.get('').text();
}

getYearlyPlanValue(){
    return cy.get('').text();
}

getStart14DayFreeTrialTab(){
    return cy.get('');
}

getCancelAnyTimeLink(){
    return cy.contains('cancel anytime').text();
}

getTrustPilot(){
    return cy.get('');
}

getAllTheFeaturesYouNeedHeading(){
    return cy.get('').text();
}

getAllFeaturesYouNeed(){
    return cy.get('');
}

getFrequentlyAskedQuestionsHeading(){
    return cy.contains('Frequently Asked Questions').text();
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
    return cy.get('');
}

getGetInTouchLink(){
    return cy.contains('get in touch');
}



}
export default PricingPageObjects;