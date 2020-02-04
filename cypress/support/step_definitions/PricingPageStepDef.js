import PricingPageObjects from '../pageObjects/PricingPageObjects';
import { Given, When, Then, But, And } from 'cypress-cucumber-preprocessor/steps';


const pricingPageObjects=new PricingPageObjects();

Given('User is on a Pricing page', () => {});

When('user looks at the pricing plan page', () => {});

Then('user finds page has been divided into three sections: plans, features, and FAQs', () => {});

When('user looks under {string} heading', (heading) => {});

Then('user should see the  {string} and {string} plans', (monthly,yearly) => {});

But('If user is on mobile devices', () => {});

Then('user should see the tab  to change the {string} and {string} plans', (monthly,yearly) => {});

When('user looks at the plan\'s sections', () => {});

Then('user should see by default {string} plan is selected', (yearly) => {});

Then('user should see "<Tooltip>" on yearly plan', () => {});

Then('user finds subscription value is displayed in local currency and its symbols', () => {});

When('user looks under the {string} and {string} plans', (monthly,yearly) => {});

Then('user should see the {string} button', (button) => {});

When('user clicks on Cancel anytime link', () => {});

Then('user should be scrolled down to {string} of FAQs section', (cancelAnyTime) => {});

Then('user should see the users rating from Trustpilot', () => {});

When('user looks at the {string} section', (featuresSection) => {});

Then('user should see the list of features', () => {});

When('user looks under the FAQs section', () => {});

Then('user should see the list of Headings', () => {});

When('user clicks on settings', () => {});

Then('user should be redirected to {string}', (loginPage) => {});

When('user clicks on {string} link', (iOS) => {});

Then('user should be redirected to the ios App store', () => {});

When('user clicks on {string} link', (android) => {});

Then('user should be redirected to android Play store', () => {});

When('user clicks on {string} link', (sales) => {});

Then('user should be redirected to email client', () => {});

And('user should notice email {string} and subject has been created automatically', (email) => {});

When('user clicks on {string}', (getInTouch) => {});

When('user select the  {string} or {string} plans', (monthly,yearly) => {});

And('user clicks on {string} button', (button) => {});

Then('user should be redirected to the {string}', (signupPage) => {});

