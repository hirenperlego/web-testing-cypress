class MainHeaderObjects {

    getMainHeader(){
        return cy.get('#root>div>div:first-child').eq(0);
    }
   
    getPerlegoLogo(){
     return cy.get('svg[viewBox="0 0 711 200"]');    
    }

    getSearchBar(){
     return cy.get('#searchInput');   
    }

    getBrowse(){
      return cy.get('#headerBrowse');  
    }

    getPricing(){
        return cy.get('a[href="/pricing"]');
    }

    getLogin(){
        return cy.get('a[href="/login"]'); 
    }

    getLanguage(){
       return cy.get('div[role="combobox"]').eq(2); 
    }

    getStartFreeTrial(){
       return cy.get('a[class*="searchInput"][href="/sign-up"]'); 
    }

    getHamBurgerMenuOpenClose(){
        return cy.get('a+div>div').eq(0);
    }

    getSearchBarMobile(){
        return cy.get('#searchInput+div>i');
    }

    getStartFreeTrialMobile(){
        return cy.get('button[style="width: 60%;"]>div');
    }

    getBrowseMobile(){
        return cy.get('.text__mobileMenuNavigation').contains('Browse');
    }

    getPricingMobile(){
        return cy.get('.text__mobileMenuNavigation').contains('Pricing');
    }

    getSearchBooksMobile(){
        return cy.get('.text__mobileMenuNavigation').contains('Search Books');
    }

    getLoginMobile(){
        return cy.get('.text__mobileMenuSubNavigation').contains('Login');
    }

    getHelpAndFaqsMobile(){
        return cy.get('.text__mobileMenuSubNavigation').contains('Help & FAQs');
    }

    getContactUsMobile(){
        return cy.get('.text__mobileMenuSubNavigation').contains('Contact Us');
    }
}

export default MainHeaderObjects;