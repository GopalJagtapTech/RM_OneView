package stepDefinitions;

import PageObjects.HomePage;
import PageObjects.LoginPage;
import PageObjects.MandateManagementPage;
import base.ApplicationKeywords;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class MandateManagementSteps extends ApplicationKeywords {
    LoginPage login;
    HomePage home;
    MandateManagementPage mandatemanage;

    public MandateManagementSteps() {
        login = new LoginPage();
        home = new HomePage();
        mandatemanage = new MandateManagementPage();
    }

//    @When("Selects an SubMenu from Hamburger {string}")
//    public void selects_an_sub_menu_from_hamburger(String string) {
//
//        mandatemanage.clickOnHamburgerListMenus(string);
//    }

    @When("Clicks on Submenu of Documentation {string}")
    public void clicks_on_submenu_of_documentation(String string) {
        mandatemanage.clickOnDocumentationSubListMenus(string);
    }

    @Then("verify User is redirected to Mandate Management Page")
    public void verify_user_is_redirected_to_mandate_management_page() {

        mandatemanage.verifyMandateManagementRedirection();
        waitTime(2);

    }


    @And("verify that following Tabs {string} {string} are Displayed")
    public void verifyThatFollowingTabsAreDisplayed(String string, String string1) {
        mandatemanage.verifyManManageTabs(string);
        mandatemanage.verifyManManageTabs(string1);
    }

    @And("verify Loan Tab is selected by Default")
    public void verifyLoanTabIsSelectedByDefault() {
        mandatemanage.verifyDefaultLoansTab();
    }

    @And("verify All Loan cards are Displayed")
    public void verifyAllLoanCardsAreDisplayed() {
    }

    @And("verify All Loan cards are Displayed-{string},{string}")
    public void verifyAllLoanCardsAreDisplayed(String string, String string1) {
        mandatemanage.verifyCardsDisplayed(string, string1);

    }

    @And("verify Details on the Loan Cards")
    public void verifyDetailsOnTheLoanCards() {

    }

    @And("verify Details on the Loan Cards- {string}")
    public void verifyDetailsOnTheLoanCards(String cardNumber) {
        mandatemanage.verifyLoanCard("Loan Account Number", cardNumber, "EMI Amount");
    }

    @And("verify Message Displayed when Customer has No Loan Cards Available")
    public void verifyMessageDisplayedWhenCustomerHasNoLoanCardsAvailable() {
        verifyGetText(MandateManagementPage.msg_NoLoanCArds, "You do not have any active loan relation");
    }

    @And("Click on the Tab {string} in Mandate Management Page")
    public void clickOnTheTabInMandateManagementPage(String tabName) {
        mandatemanage.clickOnMandManageTabs(tabName);
        waitTime(1);
    }

    @And("verify Message Displayed when Customer has No Deposit Cards Available")
    public void verifyMessageDisplayedWhenCustomerHasNoDepositCardsAvailable() {
        verifyGetText(MandateManagementPage.msg_NoDepositCArds, "You do not have any active deposit");
    }

    @And("verify User is able to Select Multiple Loans at a time")
    public void verifyUserIsAbleToSelectMultipleLoansAtATime() {
        mandatemanage.clickOnMultipleCheckBox("loan");
    }

    @And("User selects a Loan card in Mandate Management Page -{string}")
    public void userSelectsALoanCardInMandateManagementPage(String cardNumber) {
        mandatemanage.clickOnIndividualCheckBox("loan", cardNumber);
    }


    @And("Clicks on Proceed Button")
    public void clicksOnProceedButton() {
        clickOnIfDisplayed(MandateManagementPage.active_ProceedButton);
        waitForPageToLoad();
    }

    @Then("verify customer is redirecting to EMandate page")
    public void verifyCustomerIsRedirectingToEMandatePage() {
        verifyElementIsDisplayedUsingLocator(MandateManagementPage.header_EMandatePage);
    }

    @And("verify All Deposit cards are Displayed-{string},{string}")
    public void verifyAllDepositCardsAreDisplayed(String string, String string1) {
        mandatemanage.verifyCardsDisplayed(string, string1);
    }


    @And("verify Details on the SDP Card- {string}")
    public void verifyDetailsOnTheSDPCard(String cardNumber) {
        mandatemanage.verifySDPCard("SDP Application Number", cardNumber, "SDP Amount");
    }

    @And("verify User is able to Select Multiple SDPs at a time")
    public void verifyUserIsAbleToSelectMultipleSDPsAtATime() {
        mandatemanage.clickOnMultipleCheckBox("sdp");
    }

    @And("User selects a SDP card in Mandate Management Page -{string}")
    public void userSelectsASDPCardInMandateManagementPage(String cardNumber) {
        mandatemanage.clickOnIndividualCheckBox("sdp", cardNumber);
    }

    @When("Clicks on Hamburger Menu")
    public void clicks_on_hamburger_menu() {

        clickOn(MandateManagementPage.icon_HamburgerMenu);
        waitTime(3);
    }

    @And("Selects an SubMenu from Hamburger\\(DA) {string}")
    public void selectsAnSubMenuFromHamburgerDA(String string) {
        mandatemanage.clickOnHamburgerListMenuswithArrow(string);

    }

    @And("verify the following buttons {string} are displayed in the page")
    public void verifyTheFollowingButtonsAreDisplayedInThePage(String buttons) {
        verifymultipleButtonIsDisplayedInThePageusingText(buttons, "");
    }

    @And("verify the following buttons {string} are disabled in the page")
    public void verifyTheFollowingButtonsAreDisabledInThePage(String buttons) {
        verifymultipleButtonIsDisabledInThePageusingText(buttons, "");
    }

    @And("verify Header and its subtext are displayed")
    public void verifyHeaderAndItsSubtextAreDisplayed() {
        verifyFieldsDisplayedUsingTextAndForLoop("Registered Mandates","");
        verifyFieldsDisplayedUsingText("Select the loan account for which you want to change or update the mandate");
    }

    @Then("verify Customer redirected to the respective page{string}")
    public void verifyCustomerRedirectedToTheRespectivePage(String string) {
        verifyRedirectionHeaderText(string);

    }

    @Then("verify Customer redirected to the respective page using Header {string}")
    public void verifyCustomerRedirectedToTheRespectivePageUsingHeader(String string) {
        verifyRedirectionHeaderText(string);

    }

    @And("verify Header and its subtext are displayed for SDP")
    public void verifyHeaderAndItsSubtextAreDisplayedForSDP() {
        verifyFieldsDisplayedUsingTextAndForLoop("Registered Mandates","");
        verifyFieldsDisplayedUsingText("Select the systematic deposit plan for which you want to change or update the mandate");

    }

    @Then("verify {string} Button is disabled")
    public void verifyButtonIsDisabled(String string) {
        verifyButtonIsDisabledInThePageusingText(string);
    }

    @And("User selects a Loan card in Mandate Management Page -{string} to verify colour")
    public void userSelectsALoanCardInMandateManagementPageToVerifyColour(String cardNumber) {
        mandatemanage.verifyCheckBox("loan",cardNumber);
    }

    @And("verify CheckBox colour in Loans page")
    public void verifyCheckBoxColourInLoansPage() {
        verifyLocatorColorUsingCssValue(MandateManagementPage.first_check_Box,"#000000","Transparent","background-color");

    }

}
