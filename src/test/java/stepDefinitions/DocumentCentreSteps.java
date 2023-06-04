package stepDefinitions;

import PageObjects.DocumentCentrePage;
import PageObjects.HomePage;
import PageObjects.LoginPage;
import base.ApplicationKeywords;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;

public class DocumentCentreSteps extends ApplicationKeywords {

    LoginPage login;
    HomePage home;
    DocumentCentrePage doccentre;

    public DocumentCentreSteps() {
        login = new LoginPage();
        home = new HomePage();
        doccentre = new DocumentCentrePage();
    }


    @Then("verify User is redirected to Document Center Page")
    public void verify_user_is_redirected_to_document_center_page() {
        hardRefresh();
        doccentre.dcPageRedirection();
    }


    @And("verify that following Tabs {string} {string} {string} are Displayed in Document Centre Page")
    public void verifyThatFollowingTabsAreDisplayedInDocumentCentrePage(String string0, String string1, String string2) {
        doccentre.verifyDCPageTabs(string0);
        doccentre.verifyDCPageTabs(string1);
        doccentre.verifyDCPageTabs(string2);
    }

    @And("verify that Loan product tab by default is selected on Document center page")
    public void verifyThatLoanProductTabByDefaultIsSelectedOnDocumentCenterPage() {
        doccentre.verifyDefaultLoansTabDCPage();
    }

    @And("verify All Loan cards are Displayed in Document Center Page-{string},{string}")
    public void verifyAllLoanCardsAreDisplayedInDocumentCenterPage(String string, String string1) {
        doccentre.verifyCardsDisplayedDCPage(string, string1);
    }

    @And("verify Details on the Loan Cards in Document Center Page- {string} {string}")
    public void verifyDetailsOnTheLoanCardsInDocumentCenterPage(String string, String string1) {
        doccentre.verifyCardsDetailsDCPage(string, string1);
    }

    @And("User clicks on a Card {string}")
    public void userClicksOnACard(String cardNumber) {
        doccentre.clickOnDCCards(cardNumber);
    }

    @And("User should be redirected to specific document page {string}")
    public void userShouldBeRedirectedToSpecificDocumentPage(String cardNumber) {
        doccentre.redirectionToLoanDocPage(cardNumber);
    }

    @And("verify Customer is able to view content on Loan Document page {string}")
    public void verifyCustomerIsAbleToViewContentOnLoanDocumentPage(String cardNumber) {
        doccentre.verifyLoanDocPageContents(cardNumber);
    }

    @And("verify User is able to Download the file and the file is in PDF Format FileName {string} ,FileDownloadName {string}")
    public void verifyUserIsAbleToDownloadTheFileAndTheFileIsInPDFFormatFileNameFileDownloadName(String string, String string1) {

        doccentre.downloadFileandverifyFormat(string, string1);

    }

    @And("Clicks on the Document Centre Page tab {string}")
    public void clicksOnTheDocumentCentrePageTab(String string) {
        doccentre.clickOnDocCentreTabs(string);
    }

    @And("verify All cards are Displayed in Document Center Page-{string},{string}")
    public void verifyAllCardsAreDisplayedInDocumentCenterPage(String string, String string1) {

        doccentre.verifyCardsDisplayedDCPage(string, string1);
    }

    @And("verify Details on the Cards in Document Center Page- {string} {string}")
    public void verifyDetailsOnTheCardsInDocumentCenterPage(String string, String string1) {
        doccentre.verifyCardsDetailsDCPage(string, string1);
    }

    @And("verify that Customer is able to view content on FDs and SDPs Document page {string}")
    public void verifyThatCustomerIsAbleToViewContentOnFDsAndSDPsDocumentPage(String string) {
        doccentre.verifyLoanDocPageContents(string);
    }

    @And("verify User is able to Download the file when customer clicks on document FileName {string} ,FileDownloadName {string}")
    public void verifyUserIsAbleToDownloadTheFileWhenCustomerClicksOnDocumentFileNameFileDownloadName(String string, String string1) {

        doccentre.downloadFileandverifyFormatOnFileClick(string, string1);
    }

    @And("verify that following Tab {string} is Displayed in Document Centre Page")
    public void verifyThatFollowingTabIsDisplayedInDocumentCentrePage(String string) {
        doccentre.verifyDCPageTabs(string);
    }

    @And("verify that Customer is able to view content on Insurance Document page {string}")
    public void verifyThatCustomerIsAbleToViewContentOnInsuranceDocumentPage(String string) {
        doccentre.verifyLoanDocPageContents(string);
    }

    @And("verify that Customer is able to view list of documents for insurance {string}")
    public void verifyThatCustomerIsAbleToViewListOfDocumentsForInsurance(String docswithComma) {
        doccentre.verifyListofDocspresentInsurance(docswithComma);
    }

    @And("verify that Customer is redirecting to Passbook page when they click on passbook -DOC CENTRE")
    public void verifyThatCustomerIsRedirectingToPassbookPageWhenTheyClickOnPassbookDOCCENTRE() {
    }

    @And("verify that Customer is redirecting to {string} page when they click on passbook -DOC CENTRE")
    public void verifyThatCustomerIsRedirectingToPageWhenTheyClickOnPassbookDOCCENTRE(String option) {
        doccentre.verifyRHSRedirection("option", DocumentCentrePage.header_PassbookPage);

    }

    @And("verify that Customer is redirecting to {string} page when they click on Help and support -DOC CENTRE")
    public void verifyThatCustomerIsRedirectingToPageWhenTheyClickOnHelpAndSupportDOCCENTRE(String option) {
        doccentre.verifyRHSRedirection("option", DocumentCentrePage.header_RARPage);

    }

    @And("verify that following Tabs {string} are Displayed in Document Centre Page")
    public void verifyThatFollowingTabsAreDisplayedInDocumentCentrePage(String string) {
        doccentre.verifyDCPageTabs(string);
    }

    @And("Clicks on Filter in Doc Centre Page")
    public void clicksOnFilterInDocCentrePage() {
        clickOnIfDisplayed(DocumentCentrePage.filter_DocPage);
    }

    @Then("verify Contents in Doc Page Filter Text Options: {string} and Status options: {string}")
    public void verifyContentsInDocPageFilterTextOptionsAndStatusOptions(String textOptions, String statusOptions) {
        doccentre.verifyFilterOptionsDocPage(textOptions, statusOptions, "");
        verifyElementIsDisplayedOrNot(DocumentCentrePage.btn_Apply);
        verifyElementIsDisplayedOrNot(DocumentCentrePage.btn_Clearall);
        verifyElementIsDisplayedOrNot(DocumentCentrePage.close_Filter);
    }

    @And("User clicks on close Button in Doc Page Filter")
    public void userClicksOnCloseButtonInDocPageFilter() {
        clickOnIfDisplayed(DocumentCentrePage.close_Filter);
    }

    @Then("verify Filter is closed in Doc centre Page")
    public void verifyFilterIsClosedInDocCentrePage() {
        doccentre.verifyFilterisClosedDocPage();

    }

    @And("Selects a Relation Status in Filter in Doc Page-{string}")
    public void selectsARelationStatusInFilterInDocPage(String string) {
        doccentre.clickOnFilterStatus(string);
    }

    @And("Clicks on Apply Button in Filter in Doc Page")
    public void clicksOnApplyButtonInFilterInDocPage() {
        clickOnIfDisplayed(DocumentCentrePage.btn_Apply);
    }

    @Then("verify for Card-{string} and Status-{string}, the Cards are Displayed-{string}")
    public void verifyForCardAndStatusTheCardsAreDisplayed(String card, String status, String details) {
        doccentre.verifyFilterStatusDocPage(status, card, details);

    }

    @And("clicks on Clear All Button in filter")
    public void clicksOnClearAllButtonInFilter() {
        clickOnIfDisplayed(DocumentCentrePage.btn_Clearall);

    }

    @And("verify Middle section is displayed fetched from AEM")
    public void verifyMiddleSectionIsDisplayedFetchedFromAEM() {
        verifyElementIsDisplayedOrNot(DocumentCentrePage.middlesection_why);
    }

    @Then("verify the following Documents are displayed in Doc page {string}")
    public void verifyTheFollowingDocumentsAreDisplayedInDocPage(String docOptions) {
        verifyFieldsUsingCommonXpathAndMultipleTextWithHash("//p", docOptions, "");
    }

    @And("Customer clicks on {string} option in RHS")
    public void customerClicksOnOptionInRHS(String option) {
        doccentre.clickOnRhsDocCenter(option, "");
        waitTime(2);
    }

    @Then("verify Customer redirected to the respect page{string}")
    public void verifyCustomerRedirectedToTheRespectPage(String string) {
        verifyPageRedirectionUsingTagAndText("strong", string, "");
    }

    @Then("verify Customer redirected to the Passbook page{string}")
    public void verifyCustomerRedirectedToThePassbookPage(String string) {
        verifyPageRedirectionUsingTagAndText("a", string, "");

    }

    @And("User navigates back")
    public void userNavigatesBack() {
        navigateToBack();
    }

    @And("On Document Center Page {string} tab is by Default selected")
    public void onDocumentCenterPageTabIsByDefaultSelected(String tab) {
        doccentre.byDefaultSelectedTab(tab, "");
    }

    @And("Unselects a Relation Status in Filter in Doc Page-{string}")
    public void unselectsARelationStatusInFilterInDocPage(String status) {
        doccentre.unClickOnFilterStatus(status, "");
    }


    @And("Verify that message is displayed to customer {string}")
    public void verifyThatMessageIsDisplayedToCustomer(String string) {
        verifyFieldsDisplayedUsingText(string);
    }

    @Then("All closed {string} should be displayed with {string} nudge")
    public void allClosedShouldBeDisplayedWithNudge(String trans, String type) {
        doccentre.verifyFilterNudge(trans, type, "");
    }

    @Then("All pre matured {string} should be displayed with {string} nudge")
    public void allPreMaturedShouldBeDisplayedWithNudge(String trans, String type) {
        doccentre.verifyFilterNudge(trans, type, "");

    }

    @Then("All Cancelled {string} should be displayed with {string} nudge")
    public void allCancelledShouldBeDisplayedWithNudge(String trans, String type) {
        doccentre.verifyFilterNudge(trans, type, "");

    }

    @Then("All surrendered {string} should be displayed with {string} nudge")
    public void allSurrenderedShouldBeDisplayedWithNudge(String trans, String type) {
        doccentre.verifyFilterNudge(trans, type, "");

    }

    @And("Clicks on the document {string}")
    public void clicksOnTheDocument(String doc) {
        doccentre.downloadDocumentDocCenter(doc, "");
    }

    @Then("{string} should not be displayed to closed loan in document list page")
    public void shouldNotBeDisplayedToClosedLoanInDocumentListPage(String doc) {
        verifyFieldsNotDisplayedUsingCommonXpathAndMultipleTextWithHash("//p", doc, "");
    }

    @Then("verify Customer clicks on {string}")
    public void verifyCustomerClicksOn(String string) {
        doccentre.clickOnTileViewDetailsIcon(string,"");
    }

    @Then("{string} document should not be displayed for mentioned product ID {string}")
    public void documentShouldNotBeDisplayedForMentionedProductID(String doc, String arg1) {
        verifyFieldsNotDisplayedUsingCommonXpathAndMultipleTextWithHash("//p", doc, "");

    }

    @Then("Verify Customer Redirected to respective URL {string} in new Tab")
    public void verifyCustomerRedirectedToRespectiveURLInNewTab(String string) {
        verifyRedirectioninNewTab(string,"");
    }
}
