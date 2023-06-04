package stepDefinitions;

import PageObjects.*;
import base.ApplicationKeywords;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;

public class LoanServicesSteps extends ApplicationKeywords {

    LoginPage login;
    HomePage home;
    LoanServicesPage loanservices;
    MyProfilePage myprofile;
    LAFDServicesPage lafdservices;
    FDServicesPage fdServices;

    public LoanServicesSteps() {
        login = new LoginPage();
        home = new HomePage();
        loanservices = new LoanServicesPage();
        myprofile = new MyProfilePage();
        lafdservices = new LAFDServicesPage();
        fdServices = new FDServicesPage();
    }

    //Term Loans
    @Then("verify the components displayed when customer redirect to Loan services page")
    public void verify_the_components_displayed_when_customer_redirect_to_loan_services_page() {

        loanservices.verifyLoanServicePage();

    }

    @Then("verify sections displayed for Term loan in the Relationship details")
    public void verify_sections_displayed_for_term_loan_in_the_relationship_details() {

        verifyTextOptionsIsDisplayedUsingCommonXpath("//div[@class='Relationshipbox_title']//strong", "Loan Details#Insurance Details#Registered Repayment Bank Details");
//        verifyTextOptionsIsDisplayedUsingCommonXpath("//div[@class='Relationshipbox_title']//strong", "Loan Details#Insurance Details#Registered Repayment Bank Details#Fees and Charges");

    }

    @Then("verify fields displayed in the Loan Details section for Term Loan")
    public void verify_fields_displayed_in_the_loan_details_section_for_term_loan() {

        verifyRelationShipDetails("Loan Details", "Number of EMIs Paid#EMI Start Date#EMI End Date#Loan Amount Paid Till Date", "");

    }

    @Then("verify fields displayed in the insurance details section Term loans")
    public void verify_fields_displayed_in_the_insurance_details_section_term_loans() {
        verifyRelationShipInsuranceDetails("Policy 1 Details", "Policy Name#Policy Number#Sum Assured#Premium Amount", "");

    }

    @Then("verify if there are multiple policies for Term Loan")
    public void verify_if_there_are_multiple_policies_for_term_loan() {
        loanservices.verifyInsuranceSecondPolicy();
        verifyRelationShipInsuranceDetails("Policy 2 Details", "Policy Name#Policy Number#Sum Assured#Premium Amount", "");
    }

    @Then("verify customer view multiple policies using accordian icon")
    public void verify_customer_view_multiple_policies_using_accordian_icon() {

        loanservices.verifyCollapseAccordianIcon();

    }

    @Then("verify fields displayed in the bank details section for Term loans")
    public void verify_fields_displayed_in_the_bank_details_section_for_term_loans() {

        verifyRelationShipDetails("Registered Repayment Bank Details", "Registered Bank Name#Registered Bank Account#IFSC#Branch Name", "");


    }

    @Then("verify except last {int} characters of Bank account number remaining characters are masked")
    public void verify_except_last_characters_of_bank_account_number_remaining_characters_are_masked(Integer int1) {
        loanservices.verifyBankAccountMaskedFormatInLoan();
//        verifyMaskedAndUnmaskedFormat(LoanServicesPage.regBankAccount_BankDetails, "*", 1, 7, true, "");
//        verifyMaskedAndUnmaskedFormat(LoanServicesPage.regBankAccount_BankDetails, "*", 7, 10, false, "");

    }

    @Then("verify fees and charges details displayed for Term loan")
    public void verify_fees_and_charges_details_displayed_for_term_loan() {
//        clickIfOnlyDisplayed(LoanServicesPage.rightSlider_RelationshipDetails);

        loanservices.verifyFeesCharges();

    }

    @Then("verify user can view things can do section on RHS of page for Term loan")
    public void verify_user_can_view_things_can_do_section_on_rhs_of_page_for_term_loan() {
        loanservices.verifyThingsYouCanDoTerm();
    }

    @Then("verify loan details when customer have Active Term Loans")
    public void verify_loan_details_when_customer_have_active_term_loans() {

        verifyTopSectionInServices(LoanServicesPage.logo_ActiveTermLoan, "Loan Amount", "Principal Outstanding Amount#Annualised Rate of Interest#Loan Tenure#Next EMI Due Amount", "", "", "", "", "Loan Account Number:", true, "");

    }


    //Flexi Loans

    @Then("verify sections displayed for Flexi Loan in the Relationship details")
    public void verify_sections_displayed_for_flexi_loan_in_the_relationship_details() {

        verifyTextOptionsIsDisplayedUsingCommonXpath("//div[@class='Relationshipbox_title']/Strong", "Loan Details#Insurance Details#Registered Repayment Bank Details#Fees and Charges");
    }

    @Then("verify fields displayed in the Loan Details section for Flexi Loans")
    public void verify_fields_displayed_in_the_loan_details_section_for_flexi_loans() {
        verifyRelationShipDetails("Loan Details", "Number of EMIs Paid#EMI Start Date#EMI End Date#Loan Amount Paid Till Date", "");
    }


    @Then("verify user can view things can do section on RHS of page for Flexi Loan")
    public void verify_user_can_view_things_can_do_section_on_rhs_of_page_for_flexi_loan() {

        loanservices.verifyThingsYouCanDoFlexi();
    }

    @Then("verify fields displayed in the bank details section for Flexi Loan")
    public void verify_fields_displayed_in_the_bank_details_section_for_flexi_loan() {

        verifyRelationShipDetails("Registered Repayment Bank Details", "Registered Bank Name#Registered Bank Account#IFSC#Branch Name", "");

    }

    @Then("verify fields displayed in the card for Flexi Loans")
    public void verify_fields_displayed_in_the_card_for_flexi_loans() {

        verifyTopSectionInServices(LoanServicesPage.logo_ActiveTermLoan, "Loan Amount", "Utilised Limit#Available Limit#Total Withdrawable Amount#Annualised Rate of Interest#Repayment Tenure#Next EMI Due Amount", "", "", "", "", "Loan Account Number:", true, "");

        verifyElementIsDisplayedOrNot(LoanServicesPage.infotip_FlexiLoan);

    }

    //////////////////////////////////////////

    @Then("verify that customer is redirecting to View Statements page on click of View Statements")
    public void verify_that_customer_is_redirecting_to_view_statements_page_on_click_of_view_statements() {

        loanservices.verifyViewStatements();

    }

    @Then("verify that customer is able view content on View Statements page")
    public void verify_that_customer_is_able_view_content_on_view_statements_page() {

        loanservices.verifyViewStatementPageContents();

    }

    @Then("verify that statement is downloaded  on click of download button")
    public void verify_that_statement_is_downloaded_on_click_of_download_button() {

        loanservices.verifyDownloadCTAInViewStatements("Statement of Account", "SOA.pdf", "");
//        waitTime(10);
//        loanservices.verifyDownloadCTAInViewStatements("Repayment Schedule", "RPS.pdf", "");
//        loanservices.verifyDownloadCTAInViewStatements("Interest Certificate","","");


    }

////CLOSED TERM LOAN

    @Then("verify the Loan services page is displayed when customer clicks on respective loan card\\(Closed Term Loan)")
    public void verify_the_loan_services_page_is_displayed_when_customer_clicks_on_respective_loan_card_closed_term_loan() {

        clickOn(LoanServicesPage.viewDetails_ClosedTermLoan);
        waitForPageToLoad();

    }


    @Then("verify if Overdue is there for Active Term loans")
    public void verifyIfOverdueIsThereForActiveTermLoans() {
        verifyTopSectionInServices(LoanServicesPage.logo_ActiveTermLoan, "Loan Amount", "Principal Outstanding Amount#Annualised Rate of Interest#Loan Tenure#Next EMI Due Amount", "EMI OVERDUE", "#b40000", "Red", "background-color", "Loan Account Number:", true, "");

    }

    @Then("verify if overdue is there in any of the Flexi Loans")
    public void verifyIfOverdueIsThereInAnyOfTheFlexiLoans() {
        verifyTopSectionInServices(LoanServicesPage.logo_ActiveTermLoan, "Loan Amount", "Utilised Limit#Available Limit#Annualised Rate of Interest#Repayment Tenure#Next EMI Due Amount", "EMI OVERDUE", "#b40000", "Red", "background-color", "Loan Account Number:", true, "");

    }

    @Then("verify fields displayed in card when customer have Closed Term loans")
    public void verifyFieldsDisplayedInCardWhenCustomerHaveClosedTermLoans() {

        verifyTopSectionInServices(LoanServicesPage.logo_ClosedTermLoan, "Loan Amount", "Annualised Rate of Interest#Closure Date", "", "", "", "", "Loan Account Number:", false, "");

    }


    @Then("verify status nudge when customer have Closed Term loan")
    public void verifyStatusNudgeWhenCustomerHaveClosedTermLoan() {
        verifyTopSectionInServices(LoanServicesPage.logo_ClosedTermLoan, "Loan Amount", "Annualised Rate of Interest#Closure Date", "CLOSED", "#002953", "Blue", "background-color", "Loan Account Number:", false, "");

    }

    @Then("verify fields displayed in the card for Closed Flexi Loan")
    public void verifyFieldsDisplayedInTheCardForClosedFlexiLoan() {
        verifyTopSectionInServices(LoanServicesPage.logo_ClosedTermLoan, "Loan Amount", "Annualised Rate of Interest#Closure Date", "", "", "", "", "Loan Account Number:", false, "");

    }

    @Then("verify blue capsule with Closed text is displayed when customer have Closed Flexi loan")
    public void verifyBlueCapsuleWithClosedTextIsDisplayedWhenCustomerHaveClosedFlexiLoan() {
        verifyTopSectionInServices(LoanServicesPage.logo_ClosedTermLoan, "Loan Amount", "Annualised Rate of Interest#Closure Date", "CLOSED", "#002953", "Blue", "background-color", "Loan Account Number:", false, "");

    }


    @Then("verify fields displayed in the loan section for Hybrid Flexi Loans")
    public void verifyFieldsDisplayedInTheLoanSectionForHybridFlexiLoans() {
        verifyTopSectionInServices(LoanServicesPage.logo_LoanSection, "Loan Amount", "Utilised Limit#Available Limit#Annualised Rate of Interest#Repayment Tenure#Next EMI Due Amount", "", "", "", "", "Loan Account Number:", true, "");

    }


    @Then("verify customer can view pre- approved offer\\(Loan Services)")
    public void verifyCustomerCanViewPreApprovedOfferLoanServices() {
        Boolean flag = scrollToWebElementIfPresent(LoanServicesPage.preApprovedOffers);
        if (flag) {
            verifyElementIsDisplayedUsingLocator(LoanServicesPage.preApprovedOffers);
        }
//        scrollToWebElement(LAFDServicesPage.pao_LAFD);
//        verifyElementIsDisplayedOrNot(LAFDServicesPage.pao_LAFD);
//        lafdservices.verifyPAOLafd("Business Loan");
//        lafdservices.verifyPAOLafd("Chartered Accountant Loan");

    }

    @Then("verify customer can view FAQ section")
    public void verifyCustomerCanViewFAQSection() {
        scrollToWebElement(LoanServicesPage.faqs_LoanServices);
        verifyElementIsDisplayedOrNot(LoanServicesPage.faqs_LoanServices);

    }

    @And("verify customer can view cibil on click of know your cibil")
    public void verifyCustomerCanViewCibilOnClickOfKnowYourCibil() {
        scrollToWebElement(LoanServicesPage.section_CibiliScore);
        verifyElementIsDisplayedOrNot(LoanServicesPage.section_CibiliScore);
        clickOn(LoanServicesPage.checkNow_LoanServices);
        transferControlToWindow(2,false);
        waitForPageToLoad();
        verifyElementIsDisplayedOrNot(LoanServicesPage.field_Geturcibil);
//        verifyRedirectionInCommon("https://www.bajajfinserv.in/check-free-cibil-score", "");
        transferControlToWindow(1,true);
    }

//    091122
    @And("verify Customer is redirected to FAQ page on clicking FAQ section")
    public void verifyCustomerIsRedirectedToFAQPageOnClickingFAQSection() {
        clickIfOnlyDisplayed(LoanServicesPage.faqs_LoanServices);
        waitForPageToLoad();
        verifyElementIsDisplayedOrNot(LoanServicesPage.section_FAQS);
//        verifyRedirectionInCommon("https://experia-uat.bajajfinserv.in/MyProfile/Service/HelpAndSupport/RARFAQ", "");
//            navigateToBack();

    }


    @And("verify options available under {string} on RHS\\(Loan Services)")
    public void verifyOptionsAvailableUnderOnRHSLoanServices(String string) {
        verifyRhs(string,"Make Payments#View Statements","");

    }

    @And("verify options available under {string} on RHS\\(Flexi Loan Services)")
    public void verifyOptionsAvailableUnderOnRHSFlexiLoanServices(String string) {
        verifyRhs(string,"Withdraw#Make Payments#View Statements","");

    }

    @Then("verify fees and charges details displayed for Flexi Loan")
    public void verifyFeesAndChargesDetailsDisplayedForFlexiLoan() {
        loanservices.verifyFeesCharges();
    }

    @Then("verify the components with Fees and Charges displayed when customer redirect to Loan services page")
    public void verifyTheComponentsWithFeesAndChargesDisplayedWhenCustomerRedirectToLoanServicesPage() {
        loanservices.verifyLoanServiceWithFeesAndCharges();
    }

    @Then("verify sections with Fees Charges displayed for Term loan in the Relationship details")
    public void verifySectionsWithFeesChargesDisplayedForTermLoanInTheRelationshipDetails() {
        verifyTextOptionsIsDisplayedUsingCommonXpath("//div[@class='Relationshipbox_title']//strong", "Loan Details#Registered Repayment Bank Details#Fees and Charges");
    }

    @Then("verify the components displayed when customer redirect to Flexi Loan services page")
    public void verifyTheComponentsDisplayedWhenCustomerRedirectToFlexiLoanServicesPage() {

    }
///////////////////////////////////// Neelakandan ////////////////////////////////////////////////


    @Then("verify the {string} following components: Top Section, Relationship section, RHS section, {string} are Displayed in {string}")
    public void verifyTheFollowingComponentsTopSectionRelationshipSectionRHSSectionAreDisplayedIn(String name, String relationshipLabels, String locator) {
        String commonPath = getLocator(locator);
        String labels = changedCommaToHash(relationshipLabels,"");
        loanservices.verifyServicePage(name,labels,commonPath,"");
    }

    @Then("verify Top Section Details for {string}")
    public void verifyTopSectionDetailsFor(String name) {
        String details = getLocator(name);
        String[] s = details.split("@");
/*
Old
 */
        //            if (name.contains("Last")) {
//                loanservices.verifyUpperSectionInServices(LoanServicesPage.logo_ActiveTermLoan,s[0],s[1],s[2],s[3],s[4],s[5],s[6],true,"Last EMI Amount","");
//            } else if (name.toLowerCase().contains("next")) {
//                loanservices.verifyUpperSectionInServices(LoanServicesPage.logo_ActiveTermLoan, s[0], s[1], s[2], s[3], s[4], s[5], s[6], true, "Next EMI Due Amount", "");
//            }
/*
New
 */
        if (name.contains("Last EMI")) {
            loanservices.verifyUpperSectionInServices(LoanServicesPage.logo_ActiveTermLoan,s[0],s[1],s[2],s[3],s[4],s[5],s[6],true,"Last EMI Amount","");
        } else if (name.toLowerCase().contains("closed")) {
            loanservices.verifyUpperSectionInServices(LoanServicesPage.logo_ActiveTermLoan, s[0], s[1], s[2], s[3], s[4], s[5], s[6], false, "", "");
        } else if (!name.contains("Last EMI")) {
//        } else if (name.toLowerCase().contains("next")) {
            loanservices.verifyUpperSectionInServices(LoanServicesPage.logo_ActiveTermLoan, s[0], s[1], s[2], s[3], s[4], s[5], s[6], true, "Next EMI Due Amount", "");
        } else {
            testStepFailed(name+" is Not Matched with Any Condition in Script");
//            loanservices.verifyUpperSectionInServices(LoanServicesPage.logo_ActiveTermLoan, s[0], s[1], s[2], s[3], s[4], s[5], s[6], false, "", "");
        }

    }


    @Then("verify Relationship Details following Sub Sections: {string} are Displayed {string}")
    public void verifyRelationshipDetailsFollowingSubSectionsAreDisplayed(String relationshipSubLabels, String extra) {
        String labelNames = changedCommaToHash(relationshipSubLabels, "");
//        verifyTextOptionsIsDisplayedUsingCommonXpathNew("//div[@class='Relationshipbox_title']//strong", labelNames);
        verifyTextOptionsIsDisplayedUsingCommonXpath("//div[@class='Relationshipbox_title']//strong", labelNames);
    }

    @Then("verify following {string} in Relationship Section: {string}")
    public void verifyFollowingInRelationshipSection(String subSectionName, String labels) {
        String names = changedCommaToHash(labels, "");
        verifyRelationShipDetails(subSectionName, names, "");
    }


    @Then("verify following {string} Insurance Details in Relationship Section: {string}")
    public void verifyFollowingInsuranceDetailsInRelationshipSection(String insuranceType, String labels) {
        String names = changedCommaToHash(labels, "");
        if (insuranceType.equalsIgnoreCase("single")) {
            verifyRelationShipInsuranceDetails("Policy 1 Details", names, "");
        } else {
            verifyRelationShipInsuranceDetails("Policy 1 Details", names, "");
            loanservices.verifyInsuranceSecondPolicy();
            verifyRelationShipInsuranceDetails("Policy 2 Details", names, "");
        }

    }

    @Then("verify Fees and Charges Details in {string}")
    public void verifyFeesAndChargesDetailsIn(String extra) {
        loanservices.verifyFeesCharges();
    }

    @Then("verify RHS {string} following Options: {string} are Displayed")
    public void verifyRHSFollowingOptionsAreDisplayed(String rhsHeader, String rhsOptionNames) {
        String options = changedCommaToHash(rhsOptionNames, "");
        verifyRhs(rhsHeader,options,"");
    }

    @Then("verify RHS {string} following Options are Not Displayed: {string}")
    public void verifyRHSFollowingOptionsAreNotDisplayed(String rhsHeader, String rhsOptionNames) {
        String options = changedCommaToHash(rhsOptionNames, "");
        verifyRhsOptionIsNotDisplayed(rhsHeader,options,"");
    }

    @Then("Pre-Approved Offers Section is {string} to {string} Service Page")
    public void preApprovedOffersSectionIsToServicePage(String visibleStatus, String name) {
        if (visibleStatus.toLowerCase().contains("not")) {
            Boolean flag = verifyElementIsNotPresentUsingLocator(LoanServicesPage.preApprovedOffers);
            if (flag) {
                manualScreenshot("If customer has no Pre Approved Offers,  PAO is not Showing in " + name + " service Page successfully");
            } else {
                testStepFailed("If customer has no Pre Approved Offers,  PAO is Showing in " + name + " service Page Wrongly");
            }
        } else {
            Boolean status = scrollToWebElementIfPresent(LoanServicesPage.preApprovedOffers);
            if (status) {
                Boolean flag = verifyElementIsDisplayedUsingLocator(LoanServicesPage.preApprovedOffers);
                if (flag) {
                    manualScreenshot("If customer has Pre Approved Offers,  PAO is Showing in " + name + " service Page successfully");
                } else {
                    testStepFailed("If customer has Pre Approved Offers,  PAO is not Showing in " + name + " service Page Wrongly");
                }
            }
        }


    }

    @Then("verify Relationship Details following Sub Sections are Not Displayed: {string}.")
    public void verifyRelationshipDetailsFollowingSubSectionsAreNotDisplayed(String subSections) {

        String labelNames = changedCommaToHash(subSections, "");
        verifyTextOptionsIsNotPresentUsingCommonXpath("//div[@class='Relationshipbox_title']//strong", labelNames);
    }

    @Then("verify Withdraw with EMI Overdue option in RHS Section")
    public void verifyWithdrawWithEMIOverdueOptionInRHSSection() {
        verifyMultipleElementIsDisplayedUsingTexts("Unable to process,We cannot proceed with your withdrawal request due to an overdue EMI on your loan. Clear your outstanding EMI now and continue using your withdrawal facility.,CANCEL,CLEAR DUES");
        clickOnButtonUsingTextUsingForLoop("CLEAR DUES");
        waitForPageToLoad();
    }

    @And("verify Loan Services statement is downloaded  on click of download button for Account NO {string}")
    public void verifyLoanServicesStatementIsDownloadedOnClickOfDownloadButtonForAccountNO(String arg0) {
        loanservices.verifyDownloadCTAInViewStatements("Statement of Account", arg0+"_SOA.pdf", "");
    }

    @And("Verify {string} {int} {string}")
    public void verify(String arg0, int no, String arg2) {
        String locator = getLocator(arg0+" "+arg2);
        loanservices.verifyShowMoreForFeesAndCharges(locator,"");
    }



    @And("Click on {string} - {string} {string} Button My Relations Tile in Home Page")
    public void clickOnButtonMyRelationsTileInHomePage(String accNo, String loanName, String btnName) {
        loanservices.clickOnTileInMyRelationsPage(accNo,loanName,btnName,"");
    }

    @Then("verify Customer is redirected to {string} Account <{string}> Service Page")
    public void verifyCustomerIsRedirectedToAccountServicePage(String accNo, String name) {
        waitTime(3);
        if (!isElementDisplayed(B2BServicesPage.lan_Servicepage)) {
            hardRefresh();
        } else {
            testStepInfo("Page loaded successfully without Hardloading");
        }
        fdServices.verifyMyRelationTileRedirectionUsingAccountNumber(accNo, name, "");
    }

    @Then("verify TWL Top Section Details for {string}")
    public void verifyTWLTopSectionDetailsFor(String name) {
        String details = getLocator(name);
        String[] s = details.split("@");
        if (name.contains("Last EMI")) {
            loanservices.verifyUpperSectionInServices(LoanServicesPage.logo_TwoWheelerLoan,s[0],s[1],s[2],s[3],s[4],s[5],s[6],true,"Last EMI Amount","");
        } else if (name.toLowerCase().contains("closed")) {
            loanservices.verifyUpperSectionInServices(LoanServicesPage.logo_TwoWheelerLoan, s[0], s[1], s[2], s[3], s[4], s[5], s[6], false, "", "");
        } else if (!name.contains("Last EMI")) {
            loanservices.verifyUpperSectionInServices(LoanServicesPage.logo_TwoWheelerLoan, s[0], s[1], s[2], s[3], s[4], s[5], s[6], true, "Next EMI Due Amount", "");
        } else {
            testStepFailed(name+" is Not Matched with Any Condition in Script");

        }

    }

    @Then("Verify Nudge is not showing in {string}")
    public void verifyNudgeIsNotShowingIn(String name) {
loanservices.verifyNudgeIsNotShowing(name,"");
    }

    @Then("verify TWL Relationship Details following Sub Sections: {string} are Displayed {string}")
    public void verifyTWLRelationshipDetailsFollowingSubSectionsAreDisplayed(String relationshipSubLabels, String extra) {
        String labelNames = changedCommaToHash(relationshipSubLabels, "");
        verifyTextOptionsIsDisplayedUsingCommonXpathNew("//div[@class='Relationshipbox_title']//strong", labelNames);

    }

    @Then("verify GL Top Section Details for {string}")
    public void verifyGLTopSectionDetailsFor(String name) {
        String details = getLocator(name);
        String[] s = details.split("@");
//        if (name.contains("Last EMI")) {
//            loanservices.verifyUpperSectionInServices(LoanServicesPage.logo_GoldLoan,s[0],s[1],s[2],s[3],s[4],s[5],s[6],true,"Last EMI Amount","");
//        } else
            if (name.toLowerCase().contains("closed")) {
            loanservices.verifyUpperSectionInServices(LoanServicesPage.logo_GoldLoan, s[0], s[1], s[2], s[3], s[4], s[5], s[6], false, "", "");
        }
//            else if (!name.contains("Last EMI")) {
//            loanservices.verifyUpperSectionInServices(LoanServicesPage.logo_GoldLoan, s[0], s[1], s[2], s[3], s[4], s[5], s[6], true, "Next EMI Due Amount", "");
//        }
            else {
            testStepFailed(name+" is Not Matched with Any Condition in Script");
        }

    }

    @And("verify Popup is showing and click on Clear Due Button")
    public void verifyPopupIsShowingAndClickOnClearDueButton() {
        verifyMultipleElementIsDisplayedUsingTexts("Unable to process,We cannot proceed with your withdrawal request due to an overdue EMI on your loan. Clear your outstanding EMI now and continue using your withdrawal facility.,CANCEL,CLEAR DUES");
        clickOnButtonUsingTextUsingForLoop("CLEAR DUES");
        waitForPageToLoad();
    }

    @And("verify Flexi Loan Drawdown section is displayed")
    public void verifyFlexiLoanDrawdownSectionIsDisplayed() {
        verifyElementIsDisplayedUsingLocator(LoanServicesPage.sectionName_Drawdown_FlexiLoan);
    }


    @And("verify Flexi Loan Drawdown Note Text Displayed")
    public void verifyFlexiLoanDrawdownNoteTextDisplayed() {
        verifyElementIsDisplayedUsingLocator(LoanServicesPage.noteText_Flexiloan_Drawdown);
    }
}
