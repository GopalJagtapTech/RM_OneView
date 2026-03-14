package stepDefinitions;

import PageObjects.DashboardPage;
import TestData.GOR;
import base.ApplicationKeywords;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import org.assertj.core.api.SoftAssertions;

public class DashboardSteps extends ApplicationKeywords {

    DashboardPage dashboard;

    public DashboardSteps() {
        dashboard = new DashboardPage();
    }


    @Then("User should be redirected to Dashboard Page {string}")
    public void userShouldBeRedirectedToDashboardPage(String url) {
        waitForPageToLoad();
//        waitForLoadingCircleToDisAppear();
        verifyRedirectioninSameTabWithoutABack(url, "");
        boolean flag = false;

        flag = verifyFieldsDisplayedUsingLocator(DashboardPage.logoRmOne);
        if (flag) {
            GOR.isLoggedIn = true;
        }
        if (!flag) {
            ApplicationKeywords.quitBrowser = true;
            GOR.login = false;
            SoftAssertions sa = new SoftAssertions();
            testStepFailed("Login is Unsuccessfull");
            sa.fail("Login is Unsuccessful");
            sa.assertAll();
        }
    }


    @Then("Below two tabs {string} should be displayed in Dashboard Page")
    public void belowTwoTabsShouldBeDisplayedInDashboardPage(String opt) {
        verifyFieldsUsingCommonXpathAndMultipleTextWithHash("//ul[@class='navbar-ul']//li//a", opt, "");
    }

    @And("Verify User is able to view Below Options {string} for Search By Dropdown")
    public void verifyUserIsAbleToViewBelowOptionsForSearchByDropdown(String opts) {
        verifyGetAllOptionsInDropDownAndCompare(DashboardPage.searchDropdown, opts);
    }


    @And("Selects {string} Option from Search Dropdown")
    public void selectsOptionFromSearchDropdown(String drop) {
        selectDropDownUsingText(DashboardPage.searchDropdown, drop);
//        selectDropdownByCleanText(LandingPage.searchDropdown, drop);

    }

    @And("Enters {string} into Search Input Box")
    public void entersIntoSearchInputBox(String input) {
        typeIn(DashboardPage.searchByInput, input);
    }


    @And("Clicks on {string} Button")
    public void clicksOnButton(String btn) {
        clickOnButtonUsingTextUsingForLoop(btn);
    }

    @Then("Below validation message {string} should be displayed with Error header {string}")
    public void belowValidationMessageShouldBeDisplayedWithErrorHeader(String msg, String header) {
        handleToastByClass("toast-title", header, "");
        handleToastByClass("toast-message", msg, "");
//        toastBackgroundColour("", "#fe2323", "Red", "background-color");


    }

    @And("Below options {string} should be displayed under the Quick link section")
    public void belowOptionsShouldBeDisplayedUnderTheQuickLinkSection(String opts) {
        dashboard.quickLinkVerifications(opts,"");
    }

    @And("Clicks on {string} Option under Quick Links Section")
    public void clicksOnOptionUnderQuickLinksSection(String opt) {
        clickOnButtonUsingXpathAndText("//h4[normalize-space(text())='Quick Links']/following::a//p",opt);
    }

    @Then("User should be redirected to the Url {string}")
    public void userShouldBeRedirectedToTheUrl(String url) {
        verifyRedirectioninSameTabWithoutABack(url,"");
    }

    @And("Clicks on {string} Option under Top Section in Dashboard Page")
    public void clicksOnOptionUnderTopSectionInDashboardPage(String opt) {
        clickOnButtonUsingXpathAndText("//ul[@class='navbar-ul']//li//a",opt);

    }

    @Then("{string} option should be enable and clickable")
    public void optionShouldBeEnableAndClickable(String opt) {
//        verifyButtonIsEnabledInThePageusingText(opt);
        verifyButtonIsEnabledUsingText(opt);
    }

    @And("Below text and fields should be displayed in Dashboard Page")
    public void belowTextAndFieldsShouldBeDisplayedInDashboardPage() {
        dashboard.dashboardPageContents();
    }


    @And("Below options {string} should be enabled and clickable")
    public void belowOptionsShouldBeEnabledAndClickeble(String expectedHeadr) {
        String[] text = expectedHeadr.split(", ");
        for (int i = 0; i < text.length; i++) {
            String commonXpath = "h4[normalize-space(text())='Quick Links']/following::a//p";
            String locatorText = text[i].trim();
            verifyLocatorIsClickableUsingCommonXpath(commonXpath, locatorText);
            String result = locatorText.toLowerCase().replaceAll(" ", "");

            if(result.equalsIgnoreCase("offersandleads")) result = "offer";

            verifyRedirectionURLIfContains(result);
            navigateToBack();
        }
    }


}






