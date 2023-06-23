package stepDefinitions;

import PageObjects.*;
import base.ApplicationKeywords;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;

public class B2BServicesSteps extends ApplicationKeywords {
    LoginPage login;
    HomePage home;
    LoanServicesPage loanservices;
    B2BServicesPage b2bservices;
    FDServicesPage fdservices;
    InsuranceServicesPage insurance;


    public B2BServicesSteps() {
        login = new LoginPage();
        home = new HomePage();
        loanservices = new LoanServicesPage();
        b2bservices = new B2BServicesPage();
        fdservices = new FDServicesPage();
        insurance = new InsuranceServicesPage();
    }

    @Then("verify that customer is redirected respective loan details page when they clicks on any of the loan cards from home page")
    public void verify_that_customer_is_redirected_respective_loan_details_page_when_they_clicks_on_any_of_the_loan_cards_from_home_page() {

        clickOn(B2BServicesPage.viewDetail_Active);
        verifyRedirectionURLIfContains("https://experia-uat.bajajfinserv.in/MyRelation/LoanServices/Loans/Nonflexiloan");

    }

    @Then("verify customer redirected to My relation page when click on {string} button")
    public void verify_customer_redirected_to_my_relation_page_when_click_on_button(String string) {

        clickOn(B2BServicesPage.viewAll_b2bServices);
        verifyRedirectionURLIfContains("https://experia-uat.bajajfinserv.in/MyRelation/LoanServices/MyRelation");

    }

    @Then("verify that customer is able to view all loan cards under loan section")
    public void verify_that_customer_is_able_to_view_all_loan_cards_under_loan_section() {

        verifyFieldsDisplayedUsingLocator(B2BServicesPage.listLoanTiles_b2bServices);

    }

    @Then("verify that customer  is redirected respective loan details page when they clicks on any of the loan cards")
    public void verify_that_customer_is_redirected_respective_loan_details_page_when_they_clicks_on_any_of_the_loan_cards() {
        clickOn(B2BServicesPage.loanTile_b2bServices);
        verifyRedirectionURLIfContains("https://experia-uat.bajajfinserv.in/MyRelation/LoanServices/Loans/Nonflexiloan");

    }


    @Then("verify given sections are showing on Loan Details page")
    public void verify_given_sections_are_showing_on_loan_details_page() {

        b2bservices.verifyB2BServicePage();
    }

    @Then("verify given details are showing under loan details section")
    public void verify_given_details_are_showing_under_loan_details_section() {

        verifyTopSectionInServices(B2BServicesPage.logo_ActiveB2B, "Loan Amount", "Principal Outstanding Amount#Annualised Rate of Interest#Loan Tenure#Next EMI Due Amount#Product Type", "", "", "", "", "Loan Account Number:", false, "");


    }

    @Then("verify customer is able to view Relationship Details section if customer having term loan or flexi loan with given tiles")
    public void verify_customer_is_able_to_view_relationship_details_section_if_customer_having_term_loan_or_flexi_loan_with_given_tiles() {

        verifyTextOptionsIsDisplayedUsingCommonXpath("//div[@class='Relationshipbox_title']/Strong", "Loan Details#Registered Repayment Bank Details");
    }

    @Then("verify All given Content with Value is showing to customer under relationship details section")
    public void verify_all_given_content_with_value_is_showing_to_customer_under_relationship_details_section() {

        verifyRelationShipDetails("Loan Details", "Number of EMIs Paid#EMI Start Date#EMI End Date#Down Payment Amount#Loan Amount Paid Till Date#Dealer Name", "");

    }

    @Then("verify given contents with the values is showing under Registered Repayment Bank Details section")
    public void verify_given_contents_with_the_values_is_showing_under_registered_repayment_bank_details_section() {

        verifyRelationShipDetails("Registered Repayment Bank Details", "Registered Bank Name#Registered Bank Account#IFSC#Branch Name", "");

    }

    @Then("verify customer is able to view  last {int} digit of registered bank account number in unmasked format.")
    public void verify_customer_is_able_to_view_last_digit_of_registered_bank_account_number_in_unmasked_format(Integer int1) {
//        verifyMaskedAndUnmaskedFormat(B2BServicesPage.regBankAccount_BankDetails, "*", 0, 7, true, "");
//        verifyMaskedAndUnmaskedFormat(B2BServicesPage.regBankAccount_BankDetails, "*", 7, 11, false, "");

    }

    @Then("verify that customer is able to view Change bank account button on the below of Bank details tile")
    public void verify_that_customer_is_able_to_view_change_bank_account_button_on_the_below_of_bank_details_tile() {

        verifyElementIsDisplayedOrNot(B2BServicesPage.button_ChangeBankAccount);

    }

    @Then("verify customer is able to view Pre-approved offers section with offers banners")
    public void verify_customer_is_able_to_view_pre_approved_offers_section_with_offers_banners() {

//        scrollToWebElement(B2BServicesPage.pao_B2BServices);
//        verifyElementIsDisplayedUsingLocator(B2BServicesPage.pao_B2BServices);
        insurance.paoInServicesScreen();


    }


    ///////////CLOSED/////////////////

    @Then("verify customer redirected to B2B Loan service page when click on any loans card")
    public void verify_customer_redirected_to_b2b_loan_service_page_when_click_on_any_loans_card() {

        clickOn(B2BServicesPage.viewDetail_Closed);
        verifyRedirectionURLIfContains("https://experia-uat.bajajfinserv.in/MyRelation/LoanServices/Loans/Nonflexiloan");
        navigateToBack();

    }

    @Then("verify  customer redirected to My relation page when click on {string} button- Closed")
    public void verify_customer_redirected_to_my_relation_page_when_click_on_button_closed(String string) {
        clickOn(B2BServicesPage.viewAll_b2bServices);
        verifyRedirectionURLIfContains("https://experia-uat.bajajfinserv.in/MyRelation/LoanServices/MyRelation");


    }

    @Then("verify given details are showing under loan details section- Closed")
    public void verify_given_details_are_showing_under_loan_details_section_closed() {
        verifyTopSectionInServices(B2BServicesPage.logo_ClosedB2B, "Loan Amount", "Annualised Rate of Interest#Loan Tenure#Product Type", "CLOSED", "#002953", "Blue", "background-color", "Loan Account Number:", false, "");
    }

    @Then("verify customer is able to view Relationship Details section if customer having term loan or flexi loan with given tiles-Closed")
    public void verify_customer_is_able_to_view_relationship_details_section_if_customer_having_term_loan_or_flexi_loan_with_given_tiles_closed() {
        verifyTextOptionsIsDisplayedUsingCommonXpath("//div[@class='Relationshipbox_title']/Strong", "Loan Details#Registered Repayment Bank Details#Fees and Charges");
    }

    @Then("verify all given Content with Value is showing to customer under relationship details section-Loan Section")
    public void verify_all_given_content_with_value_is_showing_to_customer_under_relationship_details_section_loan_section() {

        verifyRelationShipDetails("Loan Details", "Number of EMIs Paid#EMI Start Date#EMI End Date#Down Payment Amount#Loan Amount Paid Till Date#Dealer Name", "");

    }

    @Then("verify given contents with the values is showing under  Registered Repayment Bank Details section-Closed")
    public void verify_given_contents_with_the_values_is_showing_under_registered_repayment_bank_details_section_closed() {

        verifyRelationShipDetails("Registered Repayment Bank Details", "Registered Bank Name#Registered Bank Account#IFSC#Branch Name", "");

    }

    @Then("verify customer is able to view Change bank account option for closed loans")
    public void verify_customer_is_able_to_view_change_bank_account_option_for_closed_loans() {
        verifyElementIsNotPresentUsingLocator(B2BServicesPage.button_ChangeBankAccount);
    }

    @Then("verify customer is able to view  top {int} charges details on upfront as per priority logic  on Fees & Charges tile")
    public void verify_customer_is_able_to_view_top_charges_details_on_upfront_as_per_priority_logic_on_fees_charges_tile(Integer int1) {

        b2bservices.verifyFeesCharges();
    }


    @Then("verify Customer is able to go to Service screen from My Relations using subtitle{string} Account No{string}")
    public void verifyCustomerIsAbleToGoToServiceScreenFromMyRelationsUsingSubtitleAccountNo(String string, String string2) {

        fdservices.clickOnMyRelationTileViewDetailsIcon(string, string2, "");
//        waitForPageToLoad();
        waitTime(3);
        if (!isElementDisplayed(B2BServicesPage.lan_Servicepage)) {
            hardRefresh();
        } else {
            testStepInfo("Page loaded successfully without Hardloading");
        }
        fdservices.verifyMyRelationTileRedirectionUsingAccountNumber(string2, string, "");


    }

    @And("verify options available under {string} on RHS\\(B{int}B Services)")
    public void verifyOptionsAvailableUnderOnRHSBBServices(String string, int arg1) {
        verifyRhs(string, "Make Payments#View Documents", "");
    }

    @Then("verify Payments popup is displayed")
    public void verifyPaymentsPopupIsDisplayed() {
        verifyElementIsDisplayedOrNot(b2bservices.paymentspopup_b2bServices);

    }

    @And("verify options available under {string} on RHS\\(B{int}B Services Closed)")
    public void verifyOptionsAvailableUnderOnRHSBBServicesClosed(String string, int arg1) {
        verifyRhs(string, "View Documents", "");

    }

    @Then("verify given details are showing under loan details section-EMI Overdue")
    public void verifyGivenDetailsAreShowingUnderLoanDetailsSectionEMIOverdue() {
        verifyTopSectionInServices(B2BServicesPage.logo_ActiveB2B, "Loan Amount", "Principal Outstanding Amount#Annualised Rate of Interest#Loan Tenure#Next EMI Due Amount#Product Type", "", "", "", "", "Loan Account Number:", true, "");

    }

    @Then("verify fields displayed in the insurance details section")
    public void verifyFieldsDisplayedInTheInsuranceDetailsSection() {
        verifyRelationShipInsuranceDetails("Policy 1 Details", "Policy Name#Policy Number#Sum Assured#Premium Amount", "");

    }

    @And("verify customer clicks on Button {string}")
    public void verifyCustomerClicksOnButton(String string) {
        clickOnButtonUsingTextUsingForLoop(string);
    }

    @Then("Customer should be redirected to Mandate Page")
    public void customerShouldBeRedirectedToMandatePage() {
//        verifyRedirectionHeaderText("Registered Mandates");
        verifyRedirectionWithCommonUrlContains("MyAccountService/Emandate/index");
        verifyElementIsDisplayedOrNot(B2BServicesPage.active_LoansandInstaEmiCard);

    }

    @Then("verify fees and charges is displayed")
    public void verifyFeesAndChargesIsDisplayed() {
        loanservices.verifyFeesCharges();
    }

    @Then("verify customer is able to view Relationship Details section if customer having term loan or flexi loan with given tiles- {string}")
    public void verifyCustomerIsAbleToViewRelationshipDetailsSectionIfCustomerHavingTermLoanOrFlexiLoanWithGivenTiles(String string) {
        verifyTextOptionsIsDisplayedUsingCommonXpath("//div[@class='Relationshipbox_title']/Strong", string);

    }

    @And("verify Personal Loan Avail Now Popup")
    public void verifyPersonalLoanAvailNowPopup() {
        b2bservices.verifyPersonalLoanAvailNow();
    }

    @And("verify Insta EMI Card Shop Online")
    public void verifyInstaEMICardShopOnline() {
        clickOnButtonUsingTextUsingForLoop("Shop Online");
        verifyRedirectionInCommon("https://www.bajajmall.in/emi-store","");
    }
}
