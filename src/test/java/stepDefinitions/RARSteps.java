package stepDefinitions;

import PageObjects.HomePage;
import PageObjects.LoginPage;

import PageObjects.RARPage;
import TestData.GOR;
import base.ApplicationKeywords;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.assertj.core.api.SoftAssertions;

import java.io.IOException;
import java.util.List;

public class RARSteps extends ApplicationKeywords {

    LoginPage login;
    HomePage home;
    RARPage rar;

    public RARSteps() {
        login = new LoginPage();
        home = new HomePage();
        rar = new RARPage();
    }


    @Then("verify User is redirected to Request History Page")
    public void verifyUserIsRedirectedToRequestHistoryPage() {
        rar.verifyRequestHistoryRedirection();
    }

    @And("verify all the components displayed on Request History page")
    public void verifyAllTheComponentsDisplayedOnRequestHistoryPage() {
        rar.verifyRequestHistoryPageContents();
    }

    @And("verify that customer is able to view request history when a customer has raised a request")
    public void verifyThatCustomerIsAbleToViewRequestHistoryWhenACustomerHasRaisedARequest() {
        verifyElementIsDisplayedOrNot(RARPage.req_History);
    }

    @And("verify that customer is able to redirect on Choose a category you need help page when customer click on view all CTA")
    public void verifyThatCustomerIsAbleToRedirectOnChooseACategoryYouNeedHelpPageWhenCustomerClickOnViewAllCTA() {
        rar.verifyViewAllRedirection();
    }

    @And("Clicks on {string} in Request History Page")
    public void clicksOnInRequestHistoryPage(String string) {
        clickOnButtonUsingTextUsingForLoop(string);
        waitForPageToLoad();
    }

    @And("verify that all open request are displayed for Given Tabs by default")
    public void verifyThatAllOpenRequestAreDisplayedForGivenTabsByDefault() {
        rar.verifyTabsRequestPage();
    }

    @And("verify that customer is able to view latest {int} request history under Request History section")
    public void verifyThatCustomerIsAbleToViewLatestRequestHistoryUnderRequestHistorySection(int arg0) {
        rar.verifyTwoRequests();
    }

    @And("verify that customer is able to view closed and open request count under Filter")
    public void verifyThatCustomerIsAbleToViewClosedAndOpenRequestCountUnderFilter() {
        rar.verifyRequestsCount();
    }

    @Then("Verify any one of the relation selectable and Relation highlighted")
    public void verify_any_one_of_the_relation_selectable_and_relation_highlighted(io.cucumber.datatable.DataTable dataTable) {
        List<String> list = dataTable.asList();


    }

    @And("Select {string} Relation Tab in RAR Page")
    public void selectRelationTabInRARPage(String relationtab) {
        rar.clickOnRelationTabInRAR(relationtab, "");
    }

    ///
    @And("verify User is Redirected to FAQs Page in RAR Choose A Category")
    public void verifyUserIsRedirectedToFAQsPageInRARChooseACategory() {
        GOR.beforeScenario = verifyPageRedirectionUsingLocator(RARPage.header_Faqs_RAR, "");
    }

    @When("Choose {string} in Category")
    public void choose_in_category(String tileName) {
        rar.clickOnChooseCategoryTile(tileName, "");
    }

    @Then("verify user Redirected to {string} Category Page")
    public void verify_user_redirected_to_category_page(String tileName) {
        rar.verifyRedirectionForRarChooseCategory(tileName, "");
    }

    @Then("Clicks on {string} Relation in Category Page")
    public void clicks_on_relation_in_category_page(String relationName) {
        rar.clickOnRelationInChooseCategoryPage(relationName, "");
    }

    @Then("Clicks on {string} query in {string} Relation")
    public void clicks_on_query_in_relation(String queryname, String relationName) {
        rar.clickOnQueryRelationInChooseCategoryPage(relationName, queryname, "");
    }

    @Then("verify FAQs")
    public void verify_fa_qs(io.cucumber.datatable.DataTable dataTable) {
        if (GOR.beforeScenario) {
            List<String> list = dataTable.asList();
            rar.verifyFaqs(list, "", "");
        } else {
            ApplicationKeywords.quitBrowser = true;
            SoftAssertions sa = new SoftAssertions();
            sa.fail("FAQ Page Rediection Failed");
            sa.assertAll();
        }
        GOR.beforeScenario = false;
    }

    @And("Selects an SubMenu from Hamburger {string}")
    public void selectsAnSubMenuFromHamburger(String hamburgerMenuOptions) {
        String option = "#xpath=//strong[text()='" + hamburgerMenuOptions.trim() + "']";
        clickOn(option);
        waitForPageToLoad();
    }

    @And("create RAR File")
    public void createRARFile() throws IOException {
        rar.getAllRar("1", "1");
    }

    @And("Create Choose Category File")
    public void createChooseCategoryFile() throws IOException {
        rar.getChooseCategoryAllNames("Loans");
    }

    @And("verify the Categories present")
    public void verifyTheCategoriesPresent(io.cucumber.datatable.DataTable dataTable) {
        List<String> list = dataTable.asList();
        rar.verifyChooseRAROptions(list,"");
    }


    @And("get the RAR faqs {string}")
    public void getTheRARFaqs(String string) throws IOException {
        rar.getChooseCategoryAllNames(string);

    }
}
