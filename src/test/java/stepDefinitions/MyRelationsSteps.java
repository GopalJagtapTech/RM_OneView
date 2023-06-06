package stepDefinitions;

import PageObjects.HomePage;
import PageObjects.LoginPage;
import PageObjects.MyRelationsPage;
import TestData.GOR;
import base.ApplicationKeywords;
import com.aventstack.extentreports.Status;
import com.aventstack.extentreports.cucumber.adapter.ExtentCucumberAdapter;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.assertj.core.api.SoftAssertions;
import org.openqa.selenium.By;


public class MyRelationsSteps extends ApplicationKeywords {

    LoginPage login;
    HomePage home;
    MyRelationsPage MyRelations;

    public MyRelationsSteps() {
        login = new LoginPage();
        home = new HomePage();
        MyRelations = new MyRelationsPage();
    }

    @When("Customer has active closed relations")
    public void customer_has_active_closed_relations() {

        verifyFieldsDisplayedUsingLocator(MyRelationsPage.section_MyRelations);

    }

    @When("Customer clicks on view all option")
    public void customer_clicks_on_view_all_option() {
        clickOn(MyRelationsPage.viewAll_MyRelations);
    }

    @Then("My relation section should be displayed to ETB customers")
    public void my_relation_section_should_be_displayed_to_etb_customers() {
        verifyFieldsDisplayedUsingText("My Relations");
    }

    @Then("Below components should be displayed :a.Filter b.Relations c.Bill payments and Offers d.Pre-approved offers e.Quick Links on RHS")
    public void below_components_should_be_displayed_a_filter_b_relations_c_bill_payments_and_offers_d_pre_approved_offers_e_quick_links_on_rhs() {
        verifyElementIsDisplayedUsingLocator(MyRelationsPage.icon_filter_MyRelations);
        verifyMultipleElementIsDisplayedUsingTexts("Quick Actions");
//        verifyMultipleElementIsDisplayedUsingTexts("Loans,Bills & Recharges,Quick Actions");

    }

    @Then("verify If customer select active option from filter under loan tab and click on apply now button- All the active loans should be displayed under loans tab")
    public void verify_if_customer_select_active_option_from_filter_under_loan_tab_and_click_on_apply_now_button_all_the_active_loans_should_be_displayed_under_loans_tab() {

        MyRelations.MyRelationsLoanActive();

    }

    @Then("verify if customer selects closed option from filter under loan tab and click on  apply now button- All the closed loans should be displayed under loans tab")
    public void verify_if_customer_selects_closed_option_from_filter_under_loan_tab_and_click_on_apply_now_button_all_the_closed_loans_should_be_displayed_under_loans_tab() {

        MyRelations.MyRelationsLoanClosed();
    }

    @Then("verify if customer selects multiple options from filter- Basis on the multiple selection of options respective details should displayed")
    public void verify_if_customer_selects_multiple_options_from_filter_basis_on_the_multiple_selection_of_options_respective_details_should_displayed() {

        MyRelations.MyRelationsLoanBoth();

    }

    @Then("verify when customer click on clear all button- All selected filter option should be cleared and displayed active relations")
    public void verify_when_customer_click_on_clear_all_button_all_selected_filter_option_should_be_cleared_and_displayed_active_relations() {

        MyRelations.MyRelationsClearAll("Loans");

    }

    @Then("verify If customer select active option from filter under cards tab and click on apply now button- All the active cards should be displayed under cards tab")
    public void verify_if_customer_select_active_option_from_filter_under_cards_tab_and_click_on_apply_now_button_all_the_active_cards_should_be_displayed_under_cards_tab() {
        MyRelations.myRelationsFilter("Cards", "Cards", "Active", "Active", "Active", "Active");

    }

    @Then("verify if customer selects blocked option from filter under cards tab and click on apply now button- All the blocked cards should be displayed under cards tab")
    public void verify_if_customer_selects_blocked_option_from_filter_under_cards_tab_and_click_on_apply_now_button_all_the_blocked_cards_should_be_displayed_under_cards_tab() {
        MyRelations.myRelationsFilter("Cards", "Cards", "BLOCKED", "Active", "Blocked", "Blocked");
        MyRelations.myRelationsFilter("Cards", "Cards", "Active", "Active", "Active", "Multiple");
        MyRelations.MyRelationsClearAll("Cards");

    }

    @Then("verify Label colour in My relations")
    public void verify_label_colour_in_my_relations() {
        MyRelations.verifyColorForRelationsNudge();
    }


    /*
    DEPOSITS
     */

    @Then("verify If customer select active option from filter under deposits tab and click on apply now button- All the active deposits should be displayed under deposits tab")
    public void verify_if_customer_select_active_option_from_filter_under_deposits_tab_and_click_on_apply_now_button_all_the_active_deposits_should_be_displayed_under_deposits_tab() {
        MyRelations.verifyFilter("Deposits", "Deposits","DEPOSIT", "Rate Of Interest,Rate Of Interest", "Active", "Active", "Active");


    }

    @Then("verify if customer selects closed  option from filter under deposits tab and click on apply now button- All matured and pre matured deposit  should be displayed under deposits tab")
    public void verify_if_customer_selects_closed_option_from_filter_under_deposits_tab_and_click_on_apply_now_button_all_matured_and_pre_matured_deposit_should_be_displayed_under_deposits_tab() {

        MyRelations.verifyFilter("Deposits", "Deposits","DEPOSIT", "MATURED,PRE_MATURED", "Active", "Closed", "Closed");
        MyRelations.verifyFilter("Deposits", "Deposits","DEPOSIT", "Rate Of Interest,Rate Of Interest", "Active", "Active", "Multiple");
        MyRelations.MyRelationsClearAll("Deposits");

    }
    @Then("verify  fields displayed in customer details when customer selects deposits- Below fields should be displayed:a.Relations Nameb.Relation Numberc.Amount and rate of interest")
    public void verify_fields_displayed_in_customer_details_when_customer_selects_deposits_below_fields_should_be_displayed_a_relations_nameb_relation_numberc_amount_and_rate_of_interest() {

       verifyTextOptionsIsDisplayedUsingCommonXpath("","");

    }

    @Then("verify Label colour in My relations for Deposits")
    public void verify_label_colour_in_my_relations_for_deposits() {
        MyRelations.verifyColorForRelationsNudge();
    }
    @Then("verify Customer relationship numbers is displayed")
    public void verify_customer_relationship_numbers_is_displayed() {
        MyRelations.verifyCountsForEachTitle();
    }


//////INSURANCE
@Then("verify if customer selects Insurance from filter under Insurance Value address services tab  and click on apply now button")
public void verify_if_customer_selects_insurance_from_filter_under_insurance_value_address_services_tab_and_click_on_apply_now_button() {


    MyRelations.myRelationsFilter("Insurance", "Insurance", "Active", "Active", "Active", "Active");
    MyRelations.myRelationsFilter("Insurance", "Insurance", "CLOSED", "Active", "Closed", "Closed");
    MyRelations.myRelationsFilter("Insurance", "Insurance", "CANCELLED", "Closed", "Cancelled", "Cancelled");
    MyRelations.myRelationsFilter("Insurance", "Insurance", "SURRENDERED", "Cancelled", "Surrendered", "Surrendered");
    MyRelations.myRelationsFilter("Insurance", "Insurance", "Active", "Active", "Active", "Multiple");
    MyRelations.MyRelationsClearAll("Insurance");

    }

    /*
    MF
     */
    @Then("verify filter option is not displayed for mutual funds relation & static info displayed under mutual funds relation")
    public void verify_filter_option_is_not_displayed_for_mutual_funds_relation_static_info_displayed_under_mutual_funds_relation() {

        MyRelations.verifyColorForRelationsNudge();

    }
    @Then("verify if customer click on Pay bills and Recharge option- Customer should redirect on https:\\/\\/www.bajajfinserv.in\\/bbps-bills-and-payments\\/recharge.html with SSO")
    public void verify_if_customer_click_on_pay_bills_and_recharge_option_customer_should_redirect_on_https_www_bajajfinserv_in_bbps_bills_and_payments_recharge_html_with_sso() {
        // Write code here that turns the phrase above into concrete actions
        throw new io.cucumber.java.PendingException();
    }
    @Then("verify  pre-approved offers displayed when customer enter on view all option- Pre-approved offers should be same as of home screen")
    public void verify_pre_approved_offers_displayed_when_customer_enter_on_view_all_option_pre_approved_offers_should_be_same_as_of_home_screen() {
        // Write code here that turns the phrase above into concrete actions
        throw new io.cucumber.java.PendingException();
    }
    @Then("verify customer can browse offers using arrow  button- Customers should be able to browse pre-approved offers using left and right arrows")
    public void verify_customer_can_browse_offers_using_arrow_button_customers_should_be_able_to_browse_pre_approved_offers_using_left_and_right_arrows() {
        // Write code here that turns the phrase above into concrete actions
        throw new io.cucumber.java.PendingException();
    }
    @Then("verify options displayed under RHS section- Below CTAs should displayed on the right side of the screen")
    public void verify_options_displayed_under_rhs_section_below_ct_as_should_displayed_on_the_right_side_of_the_screen() {

        verifyLocatorIsPresentInRightSideOfPage(MyRelationsPage.quickActions_RHSMyRelations);

    }



    @Then("verify customer is redirected to k-point- Customer should be able to redirect k-point ,k-point videos on click of any CTA")
    public void verify_customer_is_redirected_to_k_point_customer_should_be_able_to_redirect_k_point_k_point_videos_on_click_of_any_cta() {
        // Write code here that turns the phrase above into concrete actions
        throw new io.cucumber.java.PendingException();
    }
    @Then("verify If customer click on quick links- Customer should redirect to their specific service pages")
    public void verify_if_customer_click_on_quick_links_customer_should_redirect_to_their_specific_service_pages() {
        // Write code here that turns the phrase above into concrete actions
        throw new io.cucumber.java.PendingException();
    }

///////RHS
@When("customer is on any Quick Actions section and Clicks on {string} option")
public void customer_is_on_any_quick_actions_section_and_clicks_on_option(String string) {

        MyRelations.verifyRHSinMyRelations(string);
    }

    @Then("Customer should be Redirected to {string} for Quick Actions")
    public void customer_should_be_redirected_to_for_quick_actions(String string) {

        verifyRedirectionInCommon(string,"");

    }
/////Bills & Recharges


    @Then("verify if customer click on Pay bills and Recharge option- Redirection")
    public void verify_if_customer_click_on_pay_bills_and_recharge_option_redirection() {

        MyRelations.verifyBillAndRecharges();

    }

/*
Neelakandan
 */
@When("Customer is able to view My Relations Section to ETB Customers")
public void customer_is_able_to_view_my_relations_section_to_etb_customers() {

    if (isElementDisplayed(MyRelationsPage.section_MyRelations)) {
testStepPassed("My Relation Section showing to the ETB customer successfully");
    } else {
        testStepInfo("My Relation is not showing after login");
        manualScreenshot("");
        testStepInfo("Refresh the Page");
        hardRefresh();
//        driver.navigate().refresh();
        waitForPageToLoad();
        boolean flag = verifyFieldsDisplayedUsingLocator(MyRelationsPage.section_MyRelations);
        if (!flag) {
            ApplicationKeywords.quitBrowser = true;
            GOR.login=false;
            SoftAssertions sa = new SoftAssertions();
            testStepFailed("My Relation is not Working");
            sa.fail("My Relation is not Working");
            sa.assertAll();
        }
    }
//    Boolean flag = verifyFieldsDisplayedUsingLocator(MyRelationsPage.section_MyRelations);
    
}
    @Then("My relations Page should be displayed")
    public void my_relations_page_should_be_displayed() {
        verifyPageRedirectionUsingTagAndText("h2","My Relations","");
    }
    @Then("Below Fields should be displayed: a.Loans b.Deposits c.InsuranceVAS d.Mutual funds e.Cards")
    public void below_fields_should_be_displayed_a_loans_b_deposits_c_insurancevas_d_mutual_funds_e_cards() {
        MyRelations.getMyRelationsTabNames();
    }


    @Then("Customer Should be Landed in My Relation Loans Tab")
    public void customerShouldBeLandedInMyRelationLoansTab() {
        verifyLocatorAppeared(MyRelationsPage.tab_Loans_Default," is verified successfully");
    }

    @Then("Filter option should be displayed in Following tabs only: a.Loans b.Deposits c.InsuranceVAS d.Cards")
    public void filterOptionShouldBeDisplayedInFollowingTabsOnlyALoansBDepositsCInsuranceVASDCards() {
        MyRelations.filterWithMyRelationsTabNames();
    }

    @And("Click on Filter")
    public void clickOnFilter() {
        clickOnIfDisplayed(MyRelationsPage.icon_filter_MyRelations);
    }

    @Then("Close filter using cross icon")
    public void closeFilterUsingCrossIcon() {
        clickOnIfDisplayed(MyRelationsPage.icon_CloseFilter_MyRelations);
    }

    @Then("Filter should be closed")
    public void filterShouldBeClosed() {
        verifyLocatorIsNOT_Displayed(MyRelationsPage.icon_CloseFilter_MyRelations,"Filter Closed","");
    }

    @And("Close filter using outside of the filter")
    public void closeFilterUsingOutsideOfTheFilter() {
clickOnIfDisplayed(MyRelationsPage.title_MyRelations);
    }

    @Then("Filter option should not be displayed for Mutual Funds tab")
    public void filterOptionShouldNotBeDisplayedForMutualFundsTab() {
        verifyLocatorIsNOT_Displayed(MyRelationsPage.icon_filter_MyRelations,"Filter Icon is not visible for Mutual Funds tab","");
    }

//    @Then("click on Mutual Funds tab")
//    public void clickOnMutualFundsTab() {
//    MyRelations.clickOnMyRelationTabUsingText("Mutual Funds","");
//    }

    @Then("click on {string} tab")
    public void clickOnTab(String tabText) {
        MyRelations.clickOnMyRelationTabUsingText(tabText,"");
    }

    @Then("Customer able to see following Filter Text Options: {string} and Status options: {string}")
    public void customerAbleToSeeFollowingFilterTextOptionsAndStatusOptions(String textFields, String statusOptions) {
        MyRelations.verifyFilterFieldsForEachTab(textFields,statusOptions,"");
    }

    @And("click on {string} Relationship status in Filter")
    public void clickOnRelationshipStatusInFilter(String status) {
MyRelations.clickOnRelationshipStatus(status);
    }
    /*

     */
    public int activeCountRelations=0;
    public int activeCountRelationsAfterFilter=0;
    public int countRelations=0;
    public int countRelationsAfterFilter=0;
    public int depositCountRelationsAfterFilter=0;
    public int depositCountRelations=0;
    public int allCountRelations=0;
    public int allCountRelationsAfterClearFilter=0;



    @Then("get count of {string} Active Relations")
    public void getCountOfActiveRelations(String id) {
        activeCountRelations = MyRelations.getActiveCountRelations(id, "");
    }

    @And("click on {string} Button")
    public void clickOnButton(String buttonText) {
        clickOnButtonUsingTextUsingForLoop(buttonText);
        waitTime(5);
    }

    @Then("verify {string} Count After Filter {string}")
    public void verifyCountAfterFilter(String id, String status) {
        if (status.equalsIgnoreCase("active")) {
            activeCountRelationsAfterFilter = MyRelations.getActiveCountRelations(id, "");
            MyRelations.verifyCountAfterFilter(activeCountRelations,activeCountRelationsAfterFilter,id,status);
        } else {
             countRelationsAfterFilter= MyRelations.CountRelationsUsingNudgeText(id, status, "");
            MyRelations.verifyCountAfterFilter(countRelations,countRelationsAfterFilter,id,status);
        }
    }

    @Then("get count of {string} {string} Relations")
    public void getCountOfRelations(String id, String nudgeText) {
        countRelations = MyRelations.CountRelationsUsingNudgeText(id, nudgeText, "");
    }

    @Then("get count of Deposits {string} Relations")
    public void getCountOfDepositsRelations(String statusText) {
        if (statusText.equalsIgnoreCase("Active")) {
            depositCountRelations = MyRelations.DepositCountRelations(true, "");
        } else {
            depositCountRelations = MyRelations.DepositCountRelations(false, "");
        }

    }

    @Then("verify Deposits Count After Filter {string}")
    public void verifyDepositsCountAfterFilter(String statusText) {
        if (statusText.equalsIgnoreCase("Active")) {
            depositCountRelationsAfterFilter = MyRelations.DepositCountRelations(true, "");
        } else {
            depositCountRelationsAfterFilter = MyRelations.DepositCountRelations(false, "");
        }
        MyRelations.verifyCountAfterFilter(depositCountRelations,depositCountRelationsAfterFilter,"Deposits",statusText);
    }

    @Then("get count of {string} All Relations")
    public void getCountOfAllRelations(String id) {
        allCountRelations = MyRelations.allRelationsCount(id);
    }

    @Then("verify {string} Count After Clear Filter")
    public void verifyCountAfterClearFilter(String id) {
        allCountRelationsAfterClearFilter = MyRelations.allRelationsCount(id);
        MyRelations.verifyCountAfterFilter(allCountRelations,allCountRelations,"After Click On ","Clear All");
    }

    @Then("verify {string} Tile Fields")
    public void verifyTileFields(String id) {

    }

    @Then("verify Following fields: {string}")
    public void verifyFollowingFields(String text) {
        verifyTextElementUsingOptionsTextUsingHash(text);
    }

    @Then("verify {string} Group of Relations Title Count")
    public void verifyGroupOfRelationsTitleCount(String id) {
        MyRelations.verifyCountsForEachTitleUsingId(id);
    }

    @Then("verify {string} Relations {string} Label Color: {string}-{string}")
    public void verifyRelationsLabelColor(String id, String labeltext, String colorName, String colorValue) {
        MyRelations.verifyMyRelationsLabelColorUsingText(id,labeltext,colorValue,colorName,"");
    }

    @Then("verify Bills and Recharges on My Relations")
    public void verifyBillsAndRechargesOnMyRelations() {
        verifyFieldsDisplayedUsingText("");
        MyRelations.verifyBillAndRecharges();
    }


    @Then("verify Quick Action Section on My Relations")
    public void verifyQuickActionSectionOnMyRelations() {
        verifyFieldsUsingCommonXpathAndMultipleTextWithHash("//p[normalize-space(text())='Quick Actions']/ancestor::div[contains(@class,'Superstores')]/descendant::p","Help and Support#Document Center#Check your CIBIL Score#Mandate Management","");
    }

    @Given("check")
    public void check() {
        String loc="Locator#xpath=//b[text()='Customer I']";
        if (isElementDisplayed(loc)) {
//            testStepPassed("Passesd1");
//            manualScreenshot("Passesd2");
            System.out.println("Success1");
        } else {
//            stepFailed("failed1");
//            testStepFailed("failed1");
            System.out.println("Failure1");
        }
    }

    @Then("Below components should be displayed in My Relations")
    public void belowComponentsShouldBeDisplayedInMyRelations() {
        verifyElementIsDisplayedUsingLocator(MyRelationsPage.icon_filter_MyRelations);
        verifyMultipleElementIsDisplayedUsingTexts("Quick Actions");
    }

    @Then("verify Pre Approved Offers on My Relations")
    public void verifyPreApprovedOffersOnMyRelations() {
        verifyFieldsDisplayedUsingText("Pre-approved offers for you");
    }

    @Then("verify Pre Approved Offers is Not Visible on My Relations Page")
    public void verifyPreApprovedOffersIsNotVisibleOnMyRelationsPage() {
        verifyLocatorIsNOT_Displayed(MyRelationsPage.title_PreApprovedOffers_MyRelations,"Pre Approved Offers is Not Visible for All Customer","");
    }


    @And("verify No Relations Text Message for {string} Filter in {string}")
    public void verifyNoRelationsTextMessageForFilterIn(String status, String optionText) {
        String locator = getLocator(optionText);
        MyRelations.verifyNoRelationsText(locator,status,"","");
    }

    @And("verify {string} Text Message for {string} Filter in {string}")
    public void verifyTextMessageForFilterIn(String noRelationtext, String status, String optionText) {
        String locator = getLocator(optionText);
        MyRelations.verifyNoRelationsText(locator,status,noRelationtext,"");
    }

    @And("verify no {string} Text Message for {string} Filter in {string}")
    public void verifynoTextMessageForFilterIn(String noRelationtext, String status, String optionText) {
        String locator = getLocator(optionText);
        MyRelations.verifyNoRelationsText(locator,status,noRelationtext,"");
    }

    @And("verify no {string} Text Message for My Relations")
    public void verifyNoTextMessageForMyRelations(String arg0) {
        MyRelations.verifyNoRelationsTextWithoutFilter(arg0,"");
    }

    @Then("Customer Should be Landed in My Relation {string} Tab")
    public void customerShouldBeLandedInMyRelationTab(String tabName) {
        MyRelations.verifyMyRelationTabActiveUsingText(tabName,"");
    }

    @And("verify {string} Labels are Displayed in Insurance Tile")
    public void verifyLabelsAreDisplayedInInsuranceTile(String arg0) {

    }

    @And("verify {string} Labels are Displayed in Insurance Tile No: {string}")
    public void verifyLabelsAreDisplayedInInsuranceTileNo(String labels, String accNo) {
        MyRelations.verifyInsuranceTileDetailsInMyRelationPageUsingAccountNumber(accNo,labels,"","");
    }

    @And("verify {string} Labels are Displayed in Insurance Tile No: {string} with {string} Nudge Text")
    public void verifyLabelsAreDisplayedInInsuranceTileNoWithNudgeText(String labels, String accNo, String nudgeText) {
        MyRelations.verifyInsuranceTileDetailsInMyRelationPageUsingAccountNumber(accNo,labels,nudgeText,"");
    }

    @And("verify {string} Labels are Displayed in Card Tile No: {string}")
    public void verifyLabelsAreDisplayedInCardTileNo(String labels, String accNo) {
        MyRelations.verifyCardTileDetailsInMyRelationPageUsingAccountNumber(accNo,labels,"","");
    }

    @And("verify {string} Labels are Displayed in Card Tile No: {string} with {string} Nudge Text")
    public void verifyLabelsAreDisplayedInCardTileNoWithNudgeText(String labels, String accNo, String nudgeText) {
        MyRelations.verifyCardTileDetailsInMyRelationPageUsingAccountNumber(accNo,labels,nudgeText,"");
    }

    @Then("Verify Credit Card is displayed under My Relations {string}")
    public void verifyCreditCardIsDisplayedUnderMyRelations(String CCName) {

        String Cardname = driver.findElement(By.xpath("//*[@id=\"MasterBody\"]/div[1]/section/div/div[2]/div[2]/div[1]/div[3]/div/div[2]/div[3]/div[1]/div/div/p")).getText();
        System.out.print("CC name : "+Cardname);

            if (Cardname.equalsIgnoreCase(CCName)) {
                testStepPassed("Credit Card displayed under My Relations");
            }

        else {
            stepFailed("Test step failed " );


        }
    }
}