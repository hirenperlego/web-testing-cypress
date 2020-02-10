import ConfirmationPageObjects from '../pageObjects/ConfirmationPageObjects';

const confirmationPageObjects=new ConfirmationPageObjects();


Given('User is on confirmation page', () => {});

When('user looks on the confirmation page', () => {});

Then('user should see the heading {string}', (heading) => {});

And('user should see the subheading {string}', (subHeading) => {});

Then('user should find that by default {string} radio button is selected', (radioStudent) => {});

When('ser is a student', () => {});

Then('user select {string} radio button', (radioStudent) => {});

And('user should be able to select the {string} and {course} fields', (university,course) => {});

When('user clicks on next button', () => {});

Then('user should be redirected to the {string}', (welcomePage) => {});

When('user is a professional', () => {});

And('user selects {string} radio button', (radioProfessional) => {});

Then('user should be able to select the {string} and {string}', (industry,jobFunction) => {});

When('user clicks on Perlego logo', () => {});

Then('user should be redirected to the {string}', (homePage) => {});

When('user select {string} radio button', (radioStudent) => {});

But('user changes its selection from {string} to {string}', (radioStudent,radioProfessional) => {});

Then('user should see the {string} and {string} fields has been reset', (university,course) => {}); 

And('user should see the {string} and {string} fields', (industry,jobFunction) => {});

And('user select the {string} and {string}', (industry,jobFunction) => {});

But('user changes its selection from {string} to {string}',(professional,student) => {});

Then('user should see the {string} and {string} fields has been reset', (industry,jobFunction) => {});

And('user should see the {string} and {string} fields', (university,course) => {});