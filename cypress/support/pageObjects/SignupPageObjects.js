class SignupPageObjects{

getHeading(){
    return cy.get('div>h1');
}

getYourEmail(){
    return cy.get('input[type="email"]');
}

getYourPassword(){
    return cy.get('input[type="password"]');
}

getPolicyCheckBox(){
    return cy.get('#policy-checkbox+label');
}

getMarketingCheckBox(){
    return cy.get('#marketing-checkbox+label');
}

getNextButton(){
    return cy.get('button[class^="text__bl--bold"]');
}

getHaveAccountLink(){
    return cy.contains('Already have an account?');
}

getStrongPasswordMessage(){
    return cy.get('div[class*="text__detail--grey"]');
}

getErrorMessage(){
    return cy.get('div[class="undefined"]>span');
}

getTermsAndCondErrorMessage(){
    return cy.get('div>span[class^="text__detail"]');
}

getStrongPasswordMessage(){
    return cy.get('div[class*="text__detail--grey"]');
}

gethaveAccountLink(){
    return cy.contains('Already have an account?');
}
}


export default SignupPageObjects;