class LoginPageObjects{

getYourEmail(){
    return cy.get('input[type="email"]');
}

getYourPassword(){
    return cy.get('input[type="password"]');
}

getRememberMe(){
    return cy.get('#remember-me-checkbox');
}

getLoginButton(){
    return cy.get('button[class*="text__bl--bold"]');
}

getErrorMessage(){
    return cy.get('div[class="undefined"]>span').text();
}

getPasswordResetLink(){
    return cy.get('a[href="/password-reset"]');
}

getDoNotHaveAccount(){
    return cy.get('a[class$="text__bm"][href="/sign-up"]');
}
}

export default LoginPageObjects;