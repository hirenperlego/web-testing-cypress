// ***********************************************
// This example commands.js shows you how to
// create various custom commands and overwrite
// existing commands.
//
// For more comprehensive examples of custom
// commands please read more here:
// https://on.cypress.io/custom-commands
// ***********************************************
//
//
// -- This is a parent command --
// Cypress.Commands.add("login", (email, password) => { ... })
//
//
// -- This is a child command --
// Cypress.Commands.add("drag", { prevSubject: 'element'}, (subject, options) => { ... })
//
//
// -- This is a dual command --
// Cypress.Commands.add("dismiss", { prevSubject: 'optional'}, (subject, options) => { ... })
//
//
// -- This is will overwrite an existing command --
// Cypress.Commands.overwrite("visit", (originalFn, url, options) => { ... })

//This function will click random book or topic and will grab title and will assert with actual book or topic title
Cypress.Commands.add('randomSelectAndAssert', (expectedElement,actualElement) => {
    cy.get(expectedElement).then((elem) => {
        let index=Math.floor(Math.random()*elem.length);
        let expectedTitle=elem.eq(index).text();
          cy.get(elem).eq(index).click();
          cy.get(actualElement).text().should('eq',expectedTitle);
        });
});

//This function will check if the element is not in viewport, usage: cy.isNotInViewport('[data-cy=some-invisible-element]');
Cypress.Commands.add('isNotInViewport', element => {
  cy.get(element).then($el => {
    const bottom = Cypress.$(cy.state('window')).height();
    const rect = $el[0].getBoundingClientRect();
    expect(rect.top).to.be.greaterThan(bottom);
    expect(rect.bottom).to.be.greaterThan(bottom);
    expect(rect.top).to.be.greaterThan(bottom);
    expect(rect.bottom).to.be.greaterThan(bottom);
  });
});

//This function will check if the element is in viewprot, usage: cy.isInViewport('[data-cy=some-visible-element]');
Cypress.Commands.add('isInViewport', element => {
  cy.get(element).then($el => {
    const bottom = Cypress.$(cy.state('window')).height();
    const rect = $el[0].getBoundingClientRect();
    expect(rect.top).not.to.be.greaterThan(bottom);
    expect(rect.bottom).not.to.be.greaterThan(bottom);
    expect(rect.top).not.to.be.greaterThan(bottom);
    expect(rect.bottom).not.to.be.greaterThan(bottom);
  });
});

//This function will check for the element is out of viewport after scroll, usage: cy.isNotInViewportAfterScroll('[data-cy=some-invisible-element]');
Cypress.Commands.add('isNotInViewportAfterScroll', element => {
  cy.get(element).should($el => {
    const bottom = Cypress.$(cy.state('window')).height();
    const rect = $el[0].getBoundingClientRect();
    expect(rect.top).to.be.greaterThan(bottom);
    expect(rect.bottom).to.be.greaterThan(bottom);
    expect(rect.top).to.be.greaterThan(bottom);
    expect(rect.bottom).to.be.greaterThan(bottom);
  });
});

//This function will check for the element is in viewport after scroll, usage: cy.isInViewportAfterScroll('[data-cy=some-visible-element]');
Cypress.Commands.add('isInViewportAfterScroll', element => {
  cy.get(element).should($el => {
    const bottom = Cypress.$(cy.state('window')).height();
    const rect = $el[0].getBoundingClientRect();
    expect(rect.top).not.to.be.greaterThan(bottom);
    expect(rect.bottom).not.to.be.greaterThan(bottom);
    expect(rect.top).not.to.be.greaterThan(bottom);
    expect(rect.bottom).not.to.be.greaterThan(bottom);
  });
});
