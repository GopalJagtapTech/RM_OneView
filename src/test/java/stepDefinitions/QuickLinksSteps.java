package stepDefinitions;

import PageObjects.QuickLinksPage;
import TestData.GOR;
import base.ApplicationKeywords;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;

import static PageObjects.QuickLinksPage.filterBySearchField;

public class QuickLinksSteps extends ApplicationKeywords {

    QuickLinksPage quickLinks;

    public QuickLinksSteps() {
        quickLinks = new QuickLinksPage();
    }


    @Then("Below text and fields should be displayed on the Offer Details landing page {string}")
    public void belowTextAndFieldsShouldBeDisplayedOnTheOfferDetailsLandingPage(String gridBox) {
        quickLinks.offerDetailsPageContents(gridBox);
        verifyTableHeaders("Customer Name#Customer ID#Mobile Number#Lead Offering ID#Offer Allocation Date#Offer Name#Offer Product#Offer Amount#Lead Disposition Status", 1);
    }


    @Then("{string} option should be selected by default in Debt Collections Page")
    public void optionShouldBeSelectedByDefaultInDebtCollectionsPage(String opt) {
        verifyByDefaultSelectedTabUsingXpath("//ul[@class='loan-details-ul']//p", opt, "");

    }

    @And("Verify User is able to view Below Options {string} for FilterBy Search Dropdown")
    public void verifyUserIsAbleToViewBelowOptionsForFilterBySearchDropdown(String opts) {
        clickUsingMouse(quickLinks.filterBySearchByDropDown);
        verifyGetAllOptionsInDropDownAndCompare(quickLinks.filterBySearchByDropDown, opts);
    }

    @And("Selects {string} Option from Filter By Search Dropdown")
    public void selectsOptionFromFilterBySearchDropdown(String drop) {
        selectDropDownUsingText(quickLinks.filterBySearchByDropDown, drop);
    }

    @And("Enters {string} into Filter By Search Input Box")
    public void entersIntoFilterBySearchInputBox(String input) {
        typeIn(filterBySearchField, input);
        quickLinks.keyEnterAction();
        waitForLoadingCircleToDisAppear();
        manualScreenshot("");
    }


    @And("Click on search parameter")
    public void clickOnSearchParameter() {
        clickUsingMouse(quickLinks.filterBySearchByDropDown);
    }

    @Then("User should be able to click on dropdown under search parameter")
    public void userShouldBeAbleToClickOnDropdownUnderSearchParameter() {
        clickUsingMouseIfDisplayed(quickLinks.filterBySearchByDropDown);
    }

    @Then("Below Validation message should be displayed")
    public void belowValidationMessageShouldBeDisplayed(String msg, String tab) {
//        quickLinks.verifyNoDataAvailable(tab, msg, "");
        handleToastByClass("toast-message", msg, "");

    }

    @Then("Below option {string} and total glance count should be displayed under the offer summary section")
    public void belowOptionAndTotalGlanceCountShouldBeDisplayedUnderTheOfferSummarySection(String tabs) {
        quickLinks.verifyGlanceCountIsDisplayed(tabs);
    }

    @And("Click on {string} Based Offer tile")
    public void clickOnBasedOfferTile(String text) {
        quickLinks.verifyClickOnBasedGridBox(text);
    }

    @Then("{string} Based Offer details should be displayed")
    public void basedOfferDetailsShouldBeDisplayed(String text) {
        quickLinks.verifyOfferGridBoxDisplayed(text);
    }

    @And("Click on tab title {string} option")
    public void clickOnTabTitleOption(String title) {
        verifyLocatorIsClickableUsingCommonXpath("div[@class='loandetails-tab-title']//p", title);
    }

    @And("Verify the Filter By drop down")
    public void verifyTheFilterByDropDown() {
        verifyElementIsDisplayedOrNot(quickLinks.filterBySearchByDropDown);
    }

    @Then("Corresponding {string} {string} customer records should be displayed")
    public void correspondingCustomerRecordsShouldBeDisplayed(String text, String data) {
        String element = text + "#xpath=(//table[contains(@class, 'emi-table')]//tbody//tr//td[normalize-space(text())='" + data.trim() + "'])[1]";
        String errorMsg = "Record does not exists";
        if(isElementDisplayed(GOR.NoDataAvailableMessageOnTable)){
            testStepInfo("No Data Available");
        } else {
            quickLinks.verifyCustomerRecord(text, element, data, errorMsg);
        }
    }

    @Then("Below Columns name should be displayed {string}")
    public void belowColumnsNameShouldBeDisplayed(String headers) {
        verifyTableHeaders(headers, 1);
    }

    @Then("Below Columns name should be displayed in multiple tables {string} {string}")
    public void belowColumnsNameShouldBeDisplayedInMultipleTables(String table1, String table2) {
        verifyTableHeaders(table1, 1);
        verifyTableHeaders(table2, 2);
    }

    @Then("Below Validation message {string} should be displayed")
    public void belowValidationMessageShouldBeDisplayed(String msg) {
//        handleToastByClass("toast-title", msg, "");
        handleToastByClass("toast-message", msg, "");
    }

    @Then("Below option should be enabled and clickable")
    public void belowOptionShouldBeEnabledAndClickable(String expectedHeadr) {
        String commonXpath = "div[@class='total-offer-gridbox']//a//h2";
        String[] expectedHeaders = expectedHeadr.split("#");
        for (int i = 0; i < expectedHeaders.length; i++) {
            String locator = expectedHeaders[i];
            verifyLocatorIsClickableUsingCommonXpath(commonXpath, locator);
        }
    }

    @Then("Below {string} should be enabled and clickable")
    public void belowShouldBeEnabledAndClickable(String expectedHeadr) {
        String commonXpath = "div[@class='total-offer-gridbox']//a//h2";
        String[] expectedHeaders = expectedHeadr.split("#");
        for (int i = 0; i < expectedHeaders.length; i++) {
            String headr = expectedHeaders[i];
            verifyLocatorIsClickableUsingCommonXpath(commonXpath, headr);
        }
    }


    @Then("Details section should be displayed")
    public void detailsSectionShouldBeDisplayed() {
        quickLinks.verifyDetailsSectionDisplayedAndSelectedCountHighlighted("LAP,MULTIPRODUCT,TOP-UP");
    }


    @Then("Disbursed LAN option should be selected by default")
    public void disbursedLANOptionShouldBeSelectedByDefault() {
        String ele = "Disbursed LANs  #xpath=//a[@data-tab='Disbursed-LANs' and contains(@class,'active')]";
        if(isElementDisplayed(ele)){
            testStepPassed("Disbursed LANs option is selected by default");
        }else {
            testStepFailed("Disbursed LANs option is not selected by default");
        }
    }

    @Then("Below fields should be displayed {string} {string} {string}")
    public void belowFieldsShouldBeDisplayed(String fieldName, String tabs, String tableHeader) {
        quickLinks.verifyYourApplicationsPageContends(fieldName, tabs, tableHeader);
    }

    @Then("Corresponding {string} {string} customer records should be displayed on LAN Details")
    public void correspondingCustomerRecordsShouldBeDisplayedOnLANDetails(String text, String expectedData) {
        quickLinks.verifyLANsDetailsCustomerDatasDisplayedOrNot(text, expectedData);

    }

    @Then("Below validation message {string} should be displayed in the table")
    public void belowValidationMessageShouldBeDisplayedInTheTable(String text) {
        quickLinks.verifyNoDataAvailable("", text, "");
    }

    @Then("Pagination section should be displayed at the bottom of the page")
    public void paginationSectionShouldBeDisplayedAtTheBottomOfThePage() {
        if(verifyFieldsDisplayedUsingLocatorWithScroll(quickLinks.paginationBox)){
            testStepPassed("Pagination section successfully displayed bottom of the page.");
        }else {
            testStepFailed("Pagination section not displayed bottom of the page.");
        }
    }

    @Then("Pagination section index should be starts at {string} and is displayed at the bottom of the page")
    public void paginationSectionIndexShouldBeStartsAtAndIsDisplayedAtTheBottomOfThePage(String expectedStartsIndex) {
        if(verifyFieldsDisplayedUsingLocatorWithScroll(quickLinks.paginationBox)){
            testStepPassed("Pagination section successfully displayed bottom of the page.");
            String actualStartsIndexLocator = quickLinks.paginationBox + "//ul//li[2]//a";
            quickLinks.verifyPaginationIndex(actualStartsIndexLocator, expectedStartsIndex);
        }else {
            testStepFailed("Pagination section not displayed bottom of the page.");
        }

    }

    @Then("Pagination arrow should be enable and clickable")
    public void paginationArrowShouldBeEnableAndClickable() {
        if(verifyFieldsDisplayedUsingLocatorWithScroll(quickLinks.paginationBox)){
            testStepPassed("Pagination section successfully displayed bottom of the page.");
            String actualStartsIndexLocator = quickLinks.paginationBox + "//ul//li[1]//a";
            verifyTextBoxIsEnabledUsingLocator(actualStartsIndexLocator);
        }else {
            testStepFailed("Pagination section not displayed bottom of the page.");
        }
    }


}
