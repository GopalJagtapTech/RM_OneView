package stepDefinitions;

import PageObjects.*;
import base.ApplicationKeywords;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;


public class EmiDebitConsentSteps  extends ApplicationKeywords{
    LoginPage login;
    HomePage home;

    LoginFieldPage loginfieldsPage;

    public EmiDebitConsentSteps() {
        login = new LoginPage();
        home = new HomePage();
        loginfieldsPage=new LoginFieldPage();
    }

    @When("Verify Sub List menu {string}")
    public void verify_sub_list_menu(String string) {
        loginfieldsPage.verifyHamburgerSubMenus("Mandate and documents",string);
    }
    @Then("verify EMI Debit Consent Option is displayed")
    public void verify_emi_debit_consent_option_is_displayed() {
        String locator =  "EMI Debit Consent #xpath=//div[@class='BFLmenu_listbox']//a[normalize-space(text())='EMI Debit Consent']";
        verifyFieldsDisplayedUsingLocator(locator);
    }

    @Then("User should be redirected to EMI Debit Consent details page")
    public void user_should_be_redirected_to_emi_debit_consent_details_page() {
        verifyRedirectionURLIfContains("https://uat-oneweb.bajajfinserv.in/MyAccountPayments/CollectionPay/EMIDebitConsen");
    }


    @Then("User should be redirected to No Consent details page")
    public void user_should_be_redirected_to_no_consent_details_page() {
        verifyFieldsDisplayedUsingText("No pending consents");
    }



    @Then("User should be redirected to EMI details consent page with No Consent Details Validation  message")
    public void user_should_be_redirected_to_emi_details_consent_page_with_no_consent_details_validation_message() {
        verifyFieldsDisplayedUsingText("No pending consents");
    }



    @Then("customer should be redirected to EMI consent details page and below content should be displayed")
    public void customer_should_be_redirected_to_emi_consent_details_page_and_below_content_should_be_displayed() {


        verifyFieldsDisplayedUsingText("Give consent to clear your overdue EMI");
        verifyFieldsDisplayedUsingText("Keep sufficient balance in your registered bank account as your overdue payment will get deducted in the next one to three days");
         verifyFieldsDisplayedUsingText("Clear your overdue EMIs now");
         verifyFieldsDisplayedUsingText("DIGITAL PRODUCT FINANCE");
         verifyFieldsDisplayedUsingText("Loan Account Number: 418DPFFM862608");
         verifyFieldsDisplayedUsingText("What is the overdue EMI debit consent facility?");
        verifyFieldsDisplayedUsingText("View details of your registered bank account");
        verifyFieldsDisplayedUsingText("Always keep sufficient balance in your bank account before your EMI due date to avoid bounce.");
         verifyFieldsDisplayedUsingLocator(loginfieldsPage.radioTickButton);
        verifyFieldsDisplayedUsingLocator(loginfieldsPage.payOnline);
        verifyFieldsDisplayedUsingLocator(loginfieldsPage.checkMandate);
        verifyFieldsDisplayedUsingLocator(loginfieldsPage.quickActionsFaq);


    }

    @Then("Verify active loans with overdue are displayed")
    public void verify_active_loans_with_overdue_are_displayed() {
      verifyFieldsDisplayedUsingText("Select your loan account with overdue EMIs");
      verifyFieldsDisplayedUsingLocator(loginfieldsPage.radioTickButton);
    }



    @When("User unselects the selected {string}")
    public void user_unselects_the_selected(String string) {
       loginfieldsPage.clickOnLanTick(string);
       testStepInfo("Unselecting the Lan Box");
        loginfieldsPage.clickOnLanTick(string);

    }
    @Then("Accept CTA should be disabled")
    public void accept_cta_should_be_disabled() {
      verifyFieldsDisplayedUsingLocator(loginfieldsPage.disabledAccept);
    }


    @When("User Pay Online CTA")
    public void user_pay_online_cta() {
        clickOn(loginfieldsPage.payOnline);
    }
    @Then("User should be redirected to Multiple Overdue Payment Page")
    public void user_should_be_redirected_to_multiple_overdue_payment_page() {
       verifyFieldsDisplayedUsingText("Loans with overdue payments");
    }


    @When("User Check Mandate CTA")
    public void user_check_mandate_cta() {
        clickOn(loginfieldsPage.checkMandate);
    }
    @Then("User should be redirected to Mandate Management Page")
    public void user_should_be_redirected_to_mandate_management_page() {
       verifyRedirectionURLIfContains("https://uat-oneweb.bajajfinserv.in/MyAccountService/Emandate/");
    }

    @Then("Verify {string} section")
    public void verify_section(String string) {
       verifyFieldsDisplayedUsingText("Always keep sufficient balance in your bank account before your EMI due date to avoid bounce.");
    }

    @When("User selects {string}")
    public void user_selects(String string) {
        loginfieldsPage.clickOnLanTick(string);
    }

    @When("User clicks on Reject CTA")
    public void user_clicks_on_reject_cta() {
        clickOn(loginfieldsPage.rejectButton);
    }

    @Then("Tell us why do you want to reject? Popup should be displayed")
    public void tell_us_why_do_you_want_to_reject_popup_should_be_displayed() {
        verifyFieldsDisplayedUsingText("Select a reason for your rejection");
    }

    @Then("Verify below options on {string} Popup")
    public void verify_below_options_on_popup(String string) {
        verifyFieldsDisplayedUsingText("I want to change my registered bank account details");
        verifyFieldsDisplayedUsingText("I have a query regarding overdue EMI debit consent feature");
        verifyFieldsDisplayedUsingText("My reason is not listed");
    }

    @Then("User clicks on  close cross button")
    public void user_clicks_on_close_cross_button() {
        clickOn(loginfieldsPage.crossButton);
    }

    @Then("Proceed CTA should be disabled on {string} Pop up")
    public void proceed_cta_should_be_disabled_on_pop_up(String string) {
        verifyFieldsDisplayedUsingLocator(loginfieldsPage.disabledProceed);
    }

    @Then("User selects  Rejection {string}")
    public void user_selects_rejection(String string) {
        loginfieldsPage.clickOnRejectionLabel(string);
    }
    @Then("User clicks on  Proceed CTA")
    public void user_clicks_on_proceed_cta() {
        clickOn(loginfieldsPage.enabledProceed);
    }
    @Then("User should be redirected to Uh-OH Page")
    public void user_should_be_redirected_to_uh_oh_page() {
       verifyFieldsDisplayedUsingText("Uh, oh!");
        verifyFieldsDisplayedUsingText("You have rejected the consent. Pay your EMI overdues immediately.");
    }


    @When("User clicks on FAQ CTA")
    public void user_clicks_on_faq_cta() {
        clickOn(loginfieldsPage.quickActionsFaq);
    }
    @Then("User should be redirected to FAQ details Page")
    public void user_should_be_redirected_to_faq_details_page() {
       verifyFieldsDisplayedUsingText("Choose a category you need help with");
    }

    @When("User clicks on Done CTA")
    public void user_clicks_on_done_cta() {
       clickOn(loginfieldsPage.doneButton);
    }
    @Then("User should be redirected to Home Page")
    public void user_should_be_redirected_to_home_page() {
       verifyRedirectionURLIfContains("https://uat-oneweb.bajajfinserv.in/MyAccountCustomer/Home/Index");
    }


    @When("User clicks on Accept CTA")
    public void user_clicks_on_accept_cta() {
     clickOn(loginfieldsPage.acceptButton);
       }
    @Then("User should be redirected to Acknowledgement screen")
    public void user_should_be_redirected_to_acknowledgement_screen() {
   verifyRedirectionURLIfContains("https://uat-oneweb.bajajfinserv.in/MyAccountPayments/CollectionPay/EMIDebitConsent_Receipt");
    }


    @When("User clicks on RAR CTA")
    public void user_clicks_on_rar_cta() {

    }
    @Then("User should be redirected to RAR details Page")
    public void user_should_be_redirected_to_rar_details_page() {

    }



}
