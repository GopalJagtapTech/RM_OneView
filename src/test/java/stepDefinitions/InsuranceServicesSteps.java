package stepDefinitions;

import PageObjects.*;
import base.ApplicationKeywords;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;

public class InsuranceServicesSteps extends ApplicationKeywords {
    LoginPage login;
    HomePage home;
    LoanServicesPage loanservices;
    B2BServicesPage b2bservices;
    FDServicesPage fdservices;
    InsuranceServicesPage insurance;


    public InsuranceServicesSteps() {
        login = new LoginPage();
        home = new HomePage();
        loanservices = new LoanServicesPage();
        b2bservices = new B2BServicesPage();
        fdservices = new FDServicesPage();
        insurance = new InsuranceServicesPage();
    }


    @And("verify Customer is redirected to FAQ Page when click on FAQ\\(Insurance Services)")
    public void verifyCustomerIsRedirectedToFAQPageWhenClickOnFAQInsuranceServices() {
        insurance.faqRedirection();
    }

    @And("verify Customer is redirected to CIBIL Page when Customer click on know your Cibil\\(Insurance Services)")
    public void verifyCustomerIsRedirectedToCIBILPageWhenCustomerClickOnKnowYourCibilInsuranceServices() {
        insurance.cibilRedirection();
    }

    @And("verify options available under {string} on RHS\\(Insurance Services)")
    public void verifyOptionsAvailableUnderOnRHSInsuranceServices(String arg0) {
        verifyRhs("Quick Actions", "Claim Request#View Documents#Update Policy Details#Surrender Policy#Cancel Policy", "");
    }


    @And("Customer Click on {string} CTA in RHS")
    public void customerClickOnCTAInRHS(String string) {
        insurance.clickONInsuranceServicesRHS(string, "");

    }

    @And("verify Customer is redirected to Claim Request Page")
    public void verifyCustomerIsRedirectedToClaimRequestPage() {
        insurance.claimRequestRedirection();
    }

    @And("verify Customer is able to view the list of Document that need to upload for Claim Request")
    public void verifyCustomerIsAbleToViewTheListOfDocumentThatNeedToUploadForClaimRequest() {
        verifyElementIsDisplayedOrNot(InsuranceServicesPage.docRequired_Header);
        insurance.claimRequestDocumentsRequired("Photo ID");
        insurance.claimRequestDocumentsRequired("Policy copy");
        insurance.claimRequestDocumentsRequired("Discharge summary / OPD-IPD Papers / Medical reports");
        insurance.claimRequestDocumentsRequired("Cancelled Cheque Leaf / Passbook page with account details");
    }

    @And("verify Customer is redirected to Cancellation Policy Page")
    public void verifyCustomerIsRedirectedToCancellationPolicyPage() {
        insurance.cancelPolicyRedirection();
    }

    @And("verify Customer is able to view following Details on Cancellation Policy Page")
    public void verifyCustomerIsAbleToViewFollowingDetailsOnCancellationPolicyPage() {
        insurance.cancelPolicyPageContents();
    }

    @And("verify customer is abe to view Details under Policy Details Section")
    public void verifyCustomerIsAbeToViewDetailsUnderPolicyDetailsSection() {
        insurance.policyDetailsSection();
    }

    @And("verify Customer is able to view the list of Reason to Cancel the Policy")
    public void verifyCustomerIsAbleToViewTheListOfReasonToCancelThePolicy() {
//        verifyGetAllOptionsInDropDownAndCompare("//div[@class='inputMainBlock']/child::input", "Financial Problem#Change of Mind#Product is not fitting the requirement");
        insurance.verifypolicyDropdownOptionsCancelPolicy();
    }

    @And("verify Customer is able to view selected Reason")
    public void verifyCustomerIsAbleToViewSelectedReason() {
        getSelectedOptionInDropDown("//div[@class='inputMainBlock']/child::input", "Financial Problem");
    }

    @And("verify Customer is able to view PDF with the benefits of the policy")
    public void verifyCustomerIsAbleToViewPDFWithTheBenefitsOfThePolicy() {
        insurance.verifyBenefitButton();
    }

    @And("verify the PDF")
    public void verifyThePDF() {
        insurance.verifyBenefitPdfPage();
    }

    @And("verify Customer is redirected to RAR page when customer click on Request To Cancel CTA")
    public void verifyCustomerIsRedirectedToRARPageWhenCustomerClickOnRequestToCancelCTA() {
        insurance.verifyRequesttoCancel();
    }

    @And("verify Customer is redirected to Insurance page when customer click on Keep the Policy CTA")
    public void verifyCustomerIsRedirectedToInsurancePageWhenCustomerClickOnKeepThePolicyCTA() {
        insurance.verifyKeepthePolicy();
    }

    @And("verify Customer is redirected to Surrender Policy Page")
    public void verifyCustomerIsRedirectedToSurrenderPolicyPage() {
        insurance.surrenderPolicyRedirection();
    }

    @And("verify Customer is able to view the Details in Surrender Policy Page")
    public void verifyCustomerIsAbleToViewTheDetailsInSurrenderPolicyPage() {
        insurance.surrenderPolicyPageContents();
    }

    @And("verify Customer is able to view Details under Policy Details Section\\(Surrender Policy)")
    public void verifyCustomerIsAbleToViewDetailsUnderPolicyDetailsSectionSurrenderPolicy() {
        insurance.policyDetailsSectionSurrenderPolicy();
    }

    @And("verify Customer is able to view {string} under Policy Details section when insurance is being cancelled in the Free Look Period")
    public void verifyCustomerIsAbleToViewUnderPolicyDetailsSectionWhenInsuranceIsBeingCancelledInTheFreeLookPeriod(String arg0) {
        insurance.freelookPeriodSurrenderPolicy();
    }

    @And("verify Redirection of know more Button")
    public void verifyRedirectionOfKnowMoreButton() {
        insurance.knowMoreRedirectionSurrenderPolicy();
    }

    @And("verify customer gets a validation when click on Proceed Button without selecting Surrendering Reason")
    public void verifyCustomerGetsAValidationWhenClickOnProceedButtonWithoutSelectingSurrenderingReason() {
        insurance.proceedWithoutReasonSurrenderPolicy();
    }

    @And("verify Pre-approved offers cards at the bottom of the screen")
    public void verifyPreApprovedOffersCardsAtTheBottomOfTheScreen() {
        insurance.paoInServicesScreen();
    }

    @And("verify the header text displayed when customer is on Claim Request Page")
    public void verifyTheHeaderTextDisplayedWhenCustomerIsOnClaimRequestPage() {
        verifyRedirectionHeaderText("Follow these simple steps to raise a request with your insurance provider");
    }


    @And("verify Customer is redirected to to RAR page when Customer click on {string} CTA")
    public void verifyCustomerIsRedirectedToToRARPageWhenCustomerClickOnCTA(String cta) {
        clickOnButtonUsingTextUsingForLoop(cta);
        waitForPageToLoad();
//        insurance.claimRequestRarRedirection();
    }

    @And("verify Customer is redirected to to RAR page when Customer click on {string} CTA for {string}")
    public void verifyCustomerIsRedirectedToToRARPageWhenCustomerClickOnCTAFor(String cta, String policyNum) {
        clickOnButtonUsingTextUsingForLoop(cta);
        waitForPageToLoad();
        insurance.claimRequestRarRedirection(policyNum, "");

    }

    @And("verify PDF file get open when Customer click on Benefits CTA")
    public void verifyPDFFileGetOpenWhenCustomerClickOnBenefitsCTA() {
        insurance.verifyBenefitButtonSurrenderPolicy();
    }

    @And("verify Customer is able to view Please Note under Policy Details section when insurance is being cancelled in the Free Look Period")
    public void verifyCustomerIsAbleToViewPleaseNoteUnderPolicyDetailsSectionWhenInsuranceIsBeingCancelledInTheFreeLookPeriod() {
        insurance.freelookPeriodSurrenderPolicy();
    }

    @And("verify Customer is able to view the list of Surrender Reason")
    public void verifyCustomerIsAbleToViewTheListOfSurrenderReason() {
        insurance.verifypolicyDropdownOptionsSurrenderPolicy();
    }

//    @And("verify Customer is able to view selected Surrender Reason")
//    public void verifyCustomerIsAbleToViewSelectedSurrenderReason() {
//        insurance.verifyDropdownSelectOptionVisibleSurrenderPolicy();
//
//    }

    @And("verify Customer is able to view selected Surrender Reason -{string}")
    public void verifyCustomerIsAbleToViewSelectedSurrenderReason(String Reason) {
        insurance.verifyDropdownSelectSurrenderPolicy(Reason);

    }

    @Then("verify Customer is able to view Change the Surrender Reason-{string}")
    public void verifyCustomerIsAbleToViewChangeTheSurrenderReason(String Reason) {
        insurance.verifyDropdownSelect2(Reason);
    }


    @And("verify customer successfully completes Surrender Policy Journey -{string}")
    public void verifyCustomerSuccessfullyCompletesSurrenderPolicyJourney(String Reason) {
        insurance.successJourneySurrenderPolicy(Reason);

    }

    @And("verify customer is redirected to Insurance Details Screen when click on DONE CTA")
    public void verifyCustomerIsRedirectedToInsuranceDetailsScreenWhenClickOnDONECTA() {
        clickOnButtonUsingTextUsingForLoop("done");
        verifyPageRedirectionUsingTagAndText("h2", "My Relations", "");

    }


    @And("verify Customer is redirected to to RAR page when Customer click on Raise a Request CTA")
    public void verifyCustomerIsRedirectedToToRARPageWhenCustomerClickOnRaiseARequestCTA() {

        clickOnButtonUsingTextUsingForLoop("Raise a Request");
        waitForPageToLoad();
        verifyElementIsDisplayedOrNot(InsuranceServicesPage.active_InsuranceTab);

    }

    @And("verify customer is able to redirect to the document upload screen when clicks on Claim Request")
    public void verifyCustomerIsAbleToRedirectToTheDocumentUploadScreenWhenClicksOnClaimRequest() {
        verifyPageRedirectionUsingTagAndText("strong", "Follow these simple steps to raise a request with your insurance provider", "");
    }

    @And("Below documents {string} are Displayed to the Customer in Claim Request Page")
    public void belowDocumentsAreDisplayedToTheCustomerInClaimRequestPage(String Docs) {
        verifyFieldsUsingCommonXpathAndMultipleTextWithHash("//div[@class='v_download_document']/descendant::div[@class='v_document_reciept']/child::p", Docs, "");

    }

    @And("verify the message diplayed when customer clicks on \\(i) tolltip of Claim Invoice")
    public void verifyTheMessageDiplayedWhenCustomerClicksOnITolltipOfClaimInvoice() {
        clickOnIfDisplayed(InsuranceServicesPage.infoIcon_ClaimInvoice);
//        verifyFieldsDisplayedUsingText("Claim Invoice");
        verifyTextOptionsIsDisplayedUsingCommonXpath("//strong", "Claim Invoice");
        verifyFieldsDisplayedUsingText("You will be asked to upload invoices if your asset was repaired at an authorised service centre.");

    }

    @And("verify close Button is present for Claim Invoice Popup")
    public void verifyCloseButtonIsPresentForClaimInvoicePopup() {
        clickOnIfDisplayed(InsuranceServicesPage.infoIcon_ClaimInvoicePopupCloseBtn);
    }

    @And("verify customer gets a validation when click on Surrender Policy Button without selecting Surrendering Reason")
    public void verifyCustomerGetsAValidationWhenClickOnSurrenderPolicyButtonWithoutSelectingSurrenderingReason() {
        insurance.proceedWithoutReasonSurrenderPolicy();
    }

    @And("verify Customer redirected to Service Page when click on Keep the Policy Button")
    public void verifyCustomerRedirectedToServicePageWhenClickOnKeepThePolicyButton() {
        clickOnButtonUsingTextUsingForLoop("keep the policy");
        verifyPageRedirectionUsingTagAndText("strong","Relationship Details","");

    }

    @And("verify customer is redirected to RAR page when click on Surrender Policy after selecting a Reason")
    public void verifyCustomerIsRedirectedToRARPageWhenClickOnSurrenderPolicyAfterSelectingAReason() {

    }

    @And("verify customer is redirected to RAR page when click on Surrender Policy after selecting a Reason for {string}")
    public void verifyCustomerIsRedirectedToRARPageWhenClickOnSurrenderPolicyAfterSelectingAReasonFor(String policy) {
        verifyButtonIsDisplayedInThePage("Surrender Policy");
        clickOnButtonUsingTextUsingForLoop("Surrender Policy");
        insurance.claimRequestRarRedirection(policy,"");
    }

    @Then("verify Customer is able to view Change the Cancel Reason-{string}")
    public void verifyCustomerIsAbleToViewChangeTheCancelReason(String option2) {
        insurance.verifyDropdownSelect2CancelPolicy(option2);
    }

    @And("verify Customer is able to view selected Cancel Reason -{string}")
    public void verifyCustomerIsAbleToViewSelectedCancelReason(String option) {
        insurance.verifyDropdownSelectCancelPolicy(option);
    }

    @And("verify customer gets a validation when click on Cancel Policy Button without selecting Surrendering Reason")
    public void verifyCustomerGetsAValidationWhenClickOnCancelPolicyButtonWithoutSelectingSurrenderingReason() {
        insurance.proceedWithoutReasonCancelPolicy();
    }

    @And("verify customer gets a validation when click on Cancel Policy Button without selecting Cancel Reason")
    public void verifyCustomerGetsAValidationWhenClickOnCancelPolicyButtonWithoutSelectingCancelReason() {
        insurance.proceedWithoutReasonCancelPolicy();

    }

    @Then("verify customer is redirected to RAR page when click on Cancel Policy after selecting a Reason for {string}")
    public void verifyCustomerIsRedirectedToRARPageWhenClickOnCancelPolicyAfterSelectingAReasonFor(String policy) {
        verifyButtonIsDisplayedInThePage("Cancel Policy");
        clickOnButtonUsingTextUsingForLoop("Cancel Policy");
        insurance.claimRequestRarRedirection(policy,"");

    }

    @Then("verify customer is redirected to RAR page for {string}")
    public void verifyCustomerIsRedirectedToRARPageFor(String policy) {
        insurance.claimRequestRarRedirection(policy,"");

    }

    @Then("verify below components of Insurance {string} Page: {string}")
    public void verifyBelowComponentsOfInsurancePage(String title, String Components) {
        insurance.verifyComponentsOfInsuranceServicesPage(title,Components);
    }

    @And("verify options{string} available under {string} on RHS")
    public void verifyOptionsAvailableUnderOnRHS(String title, String Options) {
        verifyRhs(Options,title,"");
    }

    @Then("verify Nudge for {string} Insurance")
    public void verifyNudgeForInsurance(String Nudge) {
        insurance.verifyNudgeInServices(Nudge,"#002a53","Blue","background-color","");
    }

    @Then("User should be redirected to specific document page with the msg{string}")
    public void userShouldBeRedirectedToSpecificDocumentPageWithTheMsg(String string) {
        verifyPageRedirectionUsingTagAndText("p",string,"");
    }

    @Then("verify customer is redirected to RAR page when click on Cancel Policy after selecting a Reason {string}")
    public void verifyCustomerIsRedirectedToRARPageWhenClickOnCancelPolicyAfterSelectingAReason(String Header) {
        verifyButtonIsDisplayedInThePage("Cancel Policy");
        clickOnButtonUsingTextUsingForLoop("Cancel Policy");
        verifyPageRedirectionUsingTagAndText("strong",Header,"");

    }

    @Then("verify customer is redirected to RAR page with {string}")
    public void verifyCustomerIsRedirectedToRARPageWith(String Header) {
        verifyPageRedirectionUsingTagAndText("strong",Header,"");

    }

    @Then("verify customer is redirected to RAR page when click on Surrender Policy after selecting a Reason With {string}")
    public void verifyCustomerIsRedirectedToRARPageWhenClickOnSurrenderPolicyAfterSelectingAReasonWith(String string) {
        verifyButtonIsDisplayedInThePage("Surrender Policy");
        clickOnButtonUsingTextUsingForLoop("Surrender Policy");
        verifyPageRedirectionUsingTagAndText("strong",string,"");

    }

    @Then("verify customer can view FAQ section in Insurance page")
    public void verifyCustomerCanViewFAQSectionInInsurancePage() {
        scrollToWebElement(InsuranceServicesPage.faq_Insurance);
        verifyElementIsDisplayedOrNot(InsuranceServicesPage.faq_Insurance);

    }

    @And("Customer clicks on FAQ section in Insurance page")
    public void customerClicksOnFAQSectionInInsurancePage() {
        clickOn(InsuranceServicesPage.faq_Insurance);
    }

}
