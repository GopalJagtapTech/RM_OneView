package stepDefinitions;

import AppHooks.ApplicationHooks;
import PageObjects.HomePage;
import PageObjects.LoginPage;
import PageObjects.PaymentsPage;
import TestData.GOR;
import base.ApplicationKeywords;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.assertj.core.api.Assertions;
import org.assertj.core.api.SoftAssertions;
import org.junit.Assert;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class HomeSteps extends ApplicationKeywords {

public static LoginPage login;
    HomePage home;
    PaymentsPage payments;
public static String homeUrl="";

    public HomeSteps() throws IOException {
        if (login==null) {
            notePad = new File(System.getProperty("user.dir") + "//FailedResults//" + DateTimeFormatter.ofPattern("d-MMM-YY-HH-mm-ss").format(LocalDateTime.now().minusSeconds(3)) + ".txt");
            newFile = notePad.createNewFile();
        }
        login = new LoginPage();
        home = new HomePage();
        payments = new PaymentsPage();

    }

    @Given("Customer is logged in with CustomerID {string} and Password {string}")
    public void customer_is_logged_in_with_customer_id_and_password(String string, String string2) {
        typeInIfDisplayed(LoginPage.txtBox_CustomerId, "100292835");
        typeInIfDisplayed(LoginPage.txtBox_Password, "Bajaj@123");
        clickOn(LoginPage.btn_Login);
    }

    @When("customer is on {string} section and Clicks on {string} option")
    public void customer_is_on_section_and_clicks_on_option(String string, String string2) {
        home.verifyTilesOptionsInHomePage(string, string2);
    }

    @Then("Click on Proceed Button")
    public void click_on_proceed_button() {
        String btnProceed = "Proceed Button#xpath=//a[normalize-space(text())='PROCEED']";
        clickOnButtonUsingLocatorUsingForLoop(btnProceed);
    }

    @When("customer is on {string} section and Clicks on {string} option and Redirected to {string}")
    public void customerIsOnSectionAndClicksOnOptionAndRedirectedTo(String header, String option, String url) {

    }
//    @When("customer is on {string} section and Clicks on {string} Laptops\" option")
//    public void customer_is_on_section_and_clicks_on_laptops_option(String string, String string2) {
//        home.verifyTilesOptionsInHomePage(string, string2);

    //    }
    /*
    Home Page
     */
    @When("Customer is on HomePage")
    public void customer_is_on_home_page() {
        home.LoginForRerunHorizantalMenu("163961", "Bajaj@123");
    }

    public int xx1 = 0;

    @When("Clicks on Right Slider in {string}, {string}")
    public void clicks_on_right_slider_in(String string, String string2) {
        xx1 = home.verifyRightSliderInHomePage(string, string2);
    }

    @Then("Tiles {string} should be moved on LHS in {string} Section")
    public void tiles_should_be_moved_on_lhs_in(String string, String string2) {
        home.verifyRightSliderPart2InHomePage(string2, string, xx1);
        xx1 = 0;
    }

    public int xx2 = 0;

    @When("Clicks on Left Slider in {string}, {string}")
    public void clicks_on_left_slider_in(String string, String string2) {
        xx2 = home.verifyLeftSliderInHomePage(string, string2);
    }

    @Then("Tiles {string} should be moved on RHS in {string} Section")
    public void tiles_should_be_moved_on_rhs_in(String string, String string2) {
        home.verifyLeftSliderPart2InHomePage(string2, string, xx2);
        xx2 = 0;
    }

    @Then("{string} products tiles should be visible under {string} section")
    public void products_tiles_should_be_visible_under_section(String string, String string2) {
        home.verifyTilesOptionSizeWithSlider(string2, string);
    }

    @Then("Clicks on Right Slider in {string}")
    public void clicks_on_right_slider_in(String string) {
        home.clickOnRightSlider(string);
    }

    @Then("{string} Next six product tiles under {string} section is visible to the customer")
    public void next_six_product_tiles_under_section_is_visible_to_the_customer(String string, String string2) {
        home.verifyTilesOptionSizeWithSlider(string2, string);
    }


    @Then("Customer should be able to view Product Image, Product name & EMIs starting at on {string} product tiles")
    public void customer_should_be_able_to_view_product_image_product_name_em_is_starting_at_on_product_tiles(String string) {
        home.verifyTileTextDetailsInHomepage(string);
    }

    @Then("Carousal section should be displayed")
    public void carousal_section_should_be_displayed() {
        verifyFieldsDisplayedUsingLocator(HomePage.section_Carousal);
    }

    @Then("Three cards should be displayed and clickable under Carousal section")
    public void three_cards_should_be_displayed_and_clickable_under_carousal_section() {
        home.verifyCarousalCardsDisplayed();
    }

    @Then("Super Store Should be on RHS")
    public void super_store_should_be_on_rhs() {
        verifyLocatorIsPresentInRightSideOfPage(HomePage.title_SuperStores);
    }

    @Then("Super Store have {string} Option and Redirected to {string}")
    public void super_store_have_option_and_redirected_to(String string, String string2) {
        home.verifyRhsSuperStoreOptionsRedirected(string, string2);
    }

    @When("Brand Store section visible to the the customer")
    public void brand_store_section_visible_to_the_the_customer() {
        verifyElementIsDisplayedUsingLocator(HomePage.title_BrandStore);
    }

    @Then("Brands logo visible to under the Brand store section and should be Redirected to Respective page")
    public void brands_logo_visible_to_under_the_brand_store_section_and_should_be_redirected_to_respective_page() {
        home.verifyAllLogoVisibleUnderBrandStores();
    }

    /**
     * Pre Approved Offers
     */
    @When("Customer is on Home Page for {string}")
    public void customer_is_on_home_page_for(String string) {
        if (string.equals("PAO")) {
            login.verifyRerunLogin("53060631", "Bajaj@123");
        }
    }

    public static String offers = "";

    @Then("{string} label & section should be visible to the customer")
    public void label_section_should_be_visible_to_the_customer(String string) {
        verifyElementIsDisplayedUsingLocator(HomePage.section_PreApprovedOffers);
    }

    @Then("Below  tiles should be visible in  Pre-Approved for you section according to offer available to the customer")
    public void below_tiles_should_be_visible_in_pre_approved_for_you_section_according_to_offer_available_to_the_customer() {
        offers = home.getAllTilesTitleInPreApprovedOferSection();
    }


    @Then("Under Pre-Approved for you section tiles should be visible in below sequence {string}")
    public void under_pre_approved_for_you_section_tiles_should_be_visible_in_below_sequence(String string) {
        home.verifySequenceOrder(string, offers);
    }


    @Then("Below labels and their values should be visible on Pre-approved offer cards")
    public void below_labels_and_their_values_should_be_visible_on_pre_approved_offer_cards() {
        home.verifyPreApprovedOffersTextOptions(offers);
    }


    @Then("buttons should be redirected to respective pages")
    public void buttons_should_be_redirected_to_respective_pages() {
        home.verifyPreApprovedOffersThreeDotOptions(offers);
    }

    /**
     * Credit Card
     */
    @When("Customer does not have Credit Card Nor Offer")
    public void customer_does_not_have_credit_card_nor_offer() {

    }

    @Then("Customer should be able to view:a.Icon of respective card b.Green label of  GET IT NOW c. All three static Content to fetched from AEM")
    public void customer_should_be_able_to_view_a_icon_of_respective_card_b_green_label_of_get_it_now_c_all_three_static_content_to_fetched_from_aem() {
        verifyFieldsDisplayedUsingLocator(HomePage.logo_CreditCard);
        verifyFieldsDisplayedUsingLocator(HomePage.icon_GetItNowCreditCard);
        verifyFieldsDisplayedUsingLocator(HomePage.text_CreditCard);
    }

    @When("Customer Clicks on Credit Card Section")
    public void customer_clicks_on_credit_card_section() {
        clickOn(HomePage.card_CreditCard);
    }

    @Then("Customer should be redirected to credit card application with below prefilled information on Forms via SSO a. mobile number b. first name c.last name")
    public void customer_should_be_redirected_to_credit_card_application_with_below_prefilled_information_on_forms_via_sso_a_mobile_number_b_first_name_c_last_name() {
        home.verifyRedirectionWithNewTab("https://www.bajajfinserv.in/apply-for-credit-card-online");
    }

    /**
     * End
     */

    @Then("Customer should be able to View {int} Lined icon of Hamburger menu before Bajaj Finserv Logo")
    public void customer_should_be_able_to_view_lined_icon_of_hamburger_menu_before_bajaj_finserv_logo(Integer int1) {
        verifyFieldsDisplayedUsingLocator(HomePage.icon_Hamburger);
    }

    @Then("Customer clicks on Bajaj Finserv logo")
    public void customer_clicks_on_bajaj_finserv_logo() {
        verifyFieldsDisplayedUsingLocator(HomePage.logo_Bfinserv);
        clickOn(HomePage.logo_Bfinserv);
    }

    //    @Then("Customer should be redirect to Home page URL")
//    public void customer_should_be_redirect_to_home_page_url() {
//        // Write code here that turns the phrase above into concrete actions
//        throw new io.cucumber.java.PendingException();
//    }
    @Then("Customer should be redirect to Home page URL")
    public void customer_should_be_redirect_to_home_page_url() {
        waitForPageToLoad();
        verifyRedirectionURLIfContains("https://experia-uat.bajajfinserv.in/Home/Customer/Home/Index");
    }

    @When("Customer clicks on Cart Icon")
    public void customer_clicks_on_cart_icon() {
        clickOnIfDisplayed(HomePage.icon_Cart);
        waitForPageToLoad();
    }

    @Then("Customer should be redirected to the EMI STORE Cart Page through SSO")
    public void customer_should_be_redirected_to_the_emi_store_cart_page_through_sso() {
        transferControlToWindow(2, false);
        verifyRedirectionURLIfContains("https://www.bajajfinservmarkets.in/emi-store");
        transferControlToWindow(1, true);

    }

    @When("Clicks on Profile icon")
    public void clicks_on_profile_icon() {
        clickOnIfDisplayed(HomePage.icon_Profile);
    }

    @Then("Customer should be able to view below options")
    public void customer_should_be_able_to_view_below_options() {
        verifyMultipleElementIsDisplayedUsingTexts("Parimal Jayawant, XXXXXX1661, View Profile, Change Password, Logout");

    }

    @When("Clicks on View Profile")
    public void clicks_on_view_profile() {
        clickOn(HomePage.link_ViewProfile);
    }

    @Then("Customer should be Redirected to the Profile details page")
    public void customer_should_be_redirected_to_the_profile_details_page() {
        waitForPageToLoad();
        verifyRedirectionURLIfContains("https://experia-uat.bajajfinserv.in/Myprofile/Service/UpdateDetails/UserProfileDetails");
        navigateToBack();
        waitForThreeDotsDisAppear();
    }

    @When("Clicks on Change Password")
    public void clicks_on_change_password() {
        clickOn(HomePage.link_ChangePassword);
    }

    @Then("Customer should be Redirected to change password  page")
    public void customer_should_be_redirected_to_change_password_page() {

    }


    @Then("Customer should be able to view three cards on the masthead")
    public void customer_should_be_able_to_view_three_cards_on_the_masthead() {
        verifyTextOptionsIsDisplayedUsingCommonXpath("//div[@class='wallet_card_row']/descendant::p", "Bajaj Finserv Wallet#EMI Network Card#Bajaj Finserv co-brand credit card");
    }

    @When("Customer does not have Wallet setup")
    public void customer_does_not_have_wallet_setup() {
        home.LoginForRerunHorizantalMenu("163961", "Bajaj@123");
    }

    @Then("Customer should able to view  below icons a.Wallet with Get it Now flag b.Add money c.Send Money")
    public void customer_should_able_to_view_below_icons_a_wallet_with_get_it_now_flag_b_add_money_c_send_money() {
        verifyMultipleElementIsDisplayedUsingTexts("Wallet,Add Money,Send Money,GET IT NOW");
    }

    @Then("Customer should able to view GET IT NOW flag when Customer is not having wallet setup")
    public void customer_should_able_to_view_get_it_now_flag_when_customer_is_not_having_wallet_setup() {
        verifyFieldsDisplayedUsingText("GET IT NOW");
    }

    /////////////////////CUSTOMER HAS WALLET//////////////////////////////
    @When("Customer has Wallet setup")
    public void customer_has_wallet_setup() {
        home.LoginForRerunHorizantalMenu("100292835", "Bajaj@123");
    }

    @Then("Customer should able to view below icons:a.Wallet b.Add money c.Send Money d.Passbook")
    public void customer_should_able_to_view_below_icons_a_wallet_b_add_money_c_send_money_d_passbook() {

        verifyMultipleElementIsDisplayedUsingTexts("Wallet,Add Money,Send Money,Passbook");

    }

    @When("Clicks on the below {string} present")
    public void clicks_on_the_below_present(String string) {
        home.verifyClickOnCardIcons(string);

    }

    @Then("Customer should able to view QR code pop-up with Cross icon, to download the Wallet Set-up")
    public void customer_should_able_to_view_qr_code_pop_up_with_cross_icon_to_download_the_wallet_set_up() {
        verifyFieldsDisplayedUsingLocator(HomePage.popup_QRCode);
    }

    @Then("Clicks on Cross icon")
    public void clicks_on_cross_icon() {
       waitTime(5);
        clickOnIfDisplayed(HomePage.closer_QRCode);
    }

    @Then("Customer should able to Close the QR Code pop-up")
    public void customer_should_able_to_close_the_qr_code_pop_up() {

    }

    @When("Clicks on Passbook in Bajaj Finserv Wallet")
    public void clicks_on_passbook_in_bajaj_finserv_wallet() {
        clickOnIfDisplayed(HomePage.icon_PassBook);
    }

    @Then("Customer should be Redirected to the Passbook Page")
    public void customer_should_be_redirected_to_the_passbook_page() {
        verifyRedirectionURLIfContains("https://experia-uat.bajajfinserv.in/Payments/passbook/index");
    }

    ////////////////////////////////////////EMI NETWORK CARD///////////////////////////////////
    @When("Customer has EMI CARD")
    public void customer_has_emi_card() {

    }

    @Then("Customer should able to view below icons:a.EMI CARD b.Transactions c.Partners d.Offers")
    public void customer_should_able_to_view_below_icons_a_emi_card_b_transactions_c_partners_d_offers() {
        verifyTextOptionsIsDisplayedUsingCommonXpath("//div[@class='Bajaj_Finserv_BG emi-net']/descendant::p", "EMI Card#Fees & Charges#Partners#Offers");
    }

    @When("Clicks on the {string} present")
    public void clicks_on_the_present(String string) {
        home.clickOnEMICardIcons(string);
    }

    @Then("Customer should be redirected on Respective {string} within same tab")
    public void customer_should_be_redirected_on_respective_within_same_tab(String string) {
        verifyRedirectionURLIfContains(string);
        waitForPageToLoad();
        //  navigateToBack();
        driver.get("https://experia-uat.bajajfinserv.in/Home/Customer/Home/Index?id=e47fa639-5b63-7c7e-a0f2-b46bbeb429dd");
        waitForPageToLoad();
    }

    @Then("Customer should be redirected on Respective {string} with new tab")
    public void customer_should_be_redirected_on_respective_with_new_tab(String string) {
        home.verifyRedirectionWithNewTab(string);
    }

    @When("Customer has Active EMI CARD")
    public void customer_has_active_emi_card() {

    }

    @Then("Customer with Active EMI Card should be able to view Green Label")
    public void customer_with_active_emi_card_should_be_able_to_view_green_label() {

        verifyFieldsDisplayedUsingLocator(HomePage.icon_ActiveEMI);
        verifyLocatorColor(HomePage.icon_ActiveEMI, "#00b500");
    }

    ///////////////////////////BLOCKED EMI////////////////////////////////////////
    @When("Customer has Blocked EMI CARD")
    public void customer_has_blocked_emi_card() {

    }

    @Then("Customer with Blocked EMI Card should be able to view Red Label")
    public void customer_with_blocked_emi_card_should_be_able_to_view_red_label() {

        verifyFieldsDisplayedUsingLocator(HomePage.icon_BlockedEMI);
        verifyLocatorColor(HomePage.icon_BlockedEMI, "#ff0000");
    }

    ////////////////////////////////////Virtual EMI Card///////////////////////////
    @When("Customer has Virtual EMI CARD offer")
    public void customer_has_virtual_emi_card_offer() {

    }

    @Then("Customer should able to view green label on EMI card with prompt ACTIVATE NOW Status")
    public void customer_should_able_to_view_green_label_on_emi_card_with_prompt_activate_now_status() {
        verifyFieldsDisplayedUsingLocator(HomePage.icon_ActiveEMI);

    }

    @When("Customer Clicks on EMI card")
    public void customer_clicks_on_emi_card() {
        home.clickOnEMICardIcons("EMI Card");
        waitForPageToLoad();
    }

    @Then("Customer will be redirected to virtual EMI card activation journey\" page with prefilled information on Formsvia SSO a.mobile number b.first name c.last name")
    public void customer_will_be_redirected_to_virtual_emi_card_activation_journey_page_with_prefilled_information_on_formsvia_sso_a_mobile_number_b_first_name_c_last_name() {
        verifyRedirectionInCommon("https://www.bajajfinservmarkets.in/emi-card/bajaj-finserv-emi-network-card-offers","");
    }

    @Then("Transaction icon should be greyed out for Virtual EMI CARD")
    public void transaction_icon_should_be_greyed_out_for_virtual_emi_card() {
        verifyFieldsDisplayedUsingLocator(HomePage.card_GreyedTransactions);

    }

    @When("Customer has Virtual EMI CARD")
    public void customer_has_virtual_emi_card() {

    }

    @When("Customer Clicks on  Partners icon")
    public void customer_clicks_on_partners_icon() {
        home.clickOnEMICardIcons("Partners");
    }

    @Then("Customer is redirected to the Store locator page via SSO")
    public void customer_is_redirected_to_the_store_locator_page_via_sso() {

        home.verifyRedirectionWithNewTab("https://www.bajajfinserv.in/store-locator");
    }

    @When("Customer Clicks on  Offers icon")
    public void customer_clicks_on_offers_icon() {
        home.clickOnEMICardIcons("Offers");
    }

    @Then("Customer with Virtual EMI Card should be redirected to the offers page via SSO")
    public void customer_with_virtual_emi_card_should_be_redirected_to_the_offers_page_via_sso() {
        home.verifyRedirectionWithNewTab("https://www.bajajfinserv.in/offers-and-promotions?offertype=showall");
    }

    /////////////////////////////NO EMI CARD//////////////////////////////////////
    @When("Customer has No EMI CARD")
    public void customer_has_no_emi_card() {

    }

    @Then("Customer should be able to view green label on EMI card with prompt {string}  Status")
    public void customer_should_be_able_to_view_green_label_on_emi_card_with_prompt_status(String string) {
        verifyFieldsDisplayedUsingLocator(HomePage.icon_GetItNow);
    }

    @When("Customer Clicks on EMI CARD icon")
    public void customer_clicks_on_emi_card_icon() {
        home.clickOnEMICardIcons("EMI Card");
        waitForPageToLoad();
        waitTime(3);
    }

    @Then("Customer with No EMI Card will be redirected to {string} page with prefilled information on Forms via SSO")
    public void customer_with_no_emi_card_will_be_redirected_to_page_with_prefilled_information_on_forms_via_sso(String string) {
        verifyRedirectionInCommon(string,"");

    }

    @Then("Transaction icon should be greyed out when customer does not have EMI card")
    public void transaction_icon_should_be_greyed_out_when_customer_does_not_have_emi_card() {
        verifyFieldsDisplayedUsingLocator(HomePage.card_GreyedTransactions);
    }

    @Then("Customer with No EMI Card should be redirected to the Store locator page via SSO")
    public void customer_with_no_emi_card_should_be_redirected_to_the_store_locator_page_via_sso() {
        home.verifyRedirectionWithNewTab("https://www.bajajfinserv.in/store-locator");
    }

    @Then("Customer with No EMI Card should be redirected to the offers page via SSO")
    public void customer_with_no_emi_card_should_be_redirected_to_the_offers_page_via_sso() {
        home.verifyRedirectionWithNewTab("https://www.bajajfinserv.in/offers-and-promotions?offertype=showall");

    }

    @When("verify the {string} section whether the maximum {string} tiles are displayed or not.")
    public void verifyTheSectionWhetherTheMaximumTilesAreDisplayedOrNot(String string, String string2) {
        home.verifyTilesOptionSize(string, string2);
    }

    @Then("Customer is on {string} section and Clicks on option")
    public void customerIsOnSectionAndClicksOnRespectiveOption(String string) {
//        HomePage home = new HomePage();
        home.selectExclusiveOption(string);
    }

    @When("To verify the view All button position and clicks on View All button{string}")
    public void toVerifyTheViewAllButtonPositionAndClicksOnViewAllButton(String string) {
//        HomePage home = new HomePage();
        verifyLocatorIsPresentInRightSideOfPage(HomePage.btn_viewall);
        clickOn(HomePage.btn_viewall);
        transferControlToWindow(2, false);
        waitForPageToLoad();
        verifyRedirectionURL(string);
        transferControlToWindow(1, true);
    }

    ////////////////////////FOOTER SECTION///////////////////////////////////////////

    @Then("Customer should able to view below option and Details:a. Personal Loan b. Home Loan c. Business Loan")
    public void customer_should_able_to_view_below_option_and_details_a_personal_loan_b_home_loan_c_business_loan() {
        verifyFieldsDisplayedUsingLocator(HomePage.section_Footer);
    }

    /*
    Redirections
     */
    @When("Clicks on the {string} option type")
    public void clicks_on_the_option_type(String string) {
        home.clickOnFooterOptions(string);
    }

    @Then("ustomer should be Redirected to the respective {string} URL")
    public void ustomer_should_be_redirected_to_the_respective_url(String string) {
        home.verifyRedirectionWithNewTab(string);
    }

    /*
    OS
     */
    @When("Clicks on the respective {string} OS icon")
    public void clicks_on_the_respective_os_icon(String string) {
        home.clickOnFooterOS(string);
    }

    @Then("Customer should be Redirection to Play store {string} to Download app")
    public void customer_should_be_redirection_to_play_store_to_download_app(String string) {
        home.verifyRedirectionWithNewTab(string);
    }

    /*
    BAJFINSERV INSIGHTS
     */
    @Then("Customer should be able to view sub-menu present under BAJAJ FINSERV INSIGHTS")
    public void customer_should_be_able_to_view_sub_menu_present_under_bajaj_finserv_insights() {
        verifyFieldsDisplayedUsingLocator(HomePage.section_BajajFinservInsights);
    }

    /*
    Footer SubMenus
     */
    @When("Clicks on Calculators {string} Drop-down,then Customer should be able to view {string} sub-menu present under Calculators")
    public void clicks_on_calculators_drop_down_then_customer_should_be_able_to_view_sub_menu_present_under_calculators(String string, String string2) {
        home.verifyFooterSubMenu(string, string2);
    }

    @When("Clicks on Reach Us Drop-down")
    public void clicks_on_reach_us_drop_down() {
        scrollToWebElement(HomePage.footersubmenu_ReachUs);
        clickOn(HomePage.footersubmenu_ReachUs);

    }

    @Then("Customer should be able to view the reach-us link")
    public void customer_should_be_able_to_view_the_reach_us_link() {
        verifyFieldsDisplayedUsingLocator(HomePage.submenucontent_ReachUs);

    }

    /*
    MY RELATIONS
     */

    @Then("verify that customer is able to view {string} Section on Home page")
    public void verify_that_customer_is_able_to_view_section_on_home_page(String string) {

        verifyElementIsDisplayedUsingLocator(HomePage.myRelationsSection_HomePage);
    }

//public static String mobno="";
//    public static String dob="";
//    public static String type="";
public static boolean rite=false;
    @Given("User is logged in {string} {string} for {string}")
    public void userIsLoggedInFor(String mobNumber, String date, String customerType) throws IOException {
        mobileNumber=mobNumber;
//        File notePad1 = null;
//        FileWriter fr;
//        BufferedWriter br;
//        if (!rite) {
//            rite=true;
//            notePad1 = new File(System.getProperty("user.dir") + "//FailedResults//" + DateTimeFormatter.ofPattern("d-MMM-YY-HH-mm-ss").format(LocalDateTime.now().minusSeconds(3)) + "_MobileNumber.txt");
//            boolean newFile = notePad1.createNewFile();
//            fr = new FileWriter(notePad1, true);
//            br = new BufferedWriter(fr);
//            br.write(mobileNumber);
//            br.close();
//            fr.close();
//        } else {
//            fr = new FileWriter(notePad1, true);
//            br = new BufferedWriter(fr);
//            br.write(mobileNumber);
//            br.close();
//            fr.close();
//        }
//        Assert.assertTrue(false);



//        redirectToUrl("https://cont-sites.bajajfinserv.in/MyAccountLogin/Login/LogoutUserBasedOnMobile?MobileNo="+mobNumber+"","");
        redirectToUrl("https://uat-oneweb.bajajfinserv.in/MyAccountLogin/Login/LogoutUserBasedOnMobile?MobileNo="+mobNumber+"","");
        waitTime(2);
        redirectToUrl("https://uat-oneweb.bajajfinserv.in/MyAccountLogin","");

        clickOnButtonUsingLocatorUsingForLoopWithoutFail(LoginPage.skip);
//mobno=mobNumber;
//dob=date;
//type=customerType;

        String load="Loader#xpath=//div[@id='status']";
        String loadInACtive="Loader In Active#xpath=//div[@id='status'and(@style)]";
        while (isElementDisplayed(load)) {
            if (isElementPresent(loadInACtive)) {
                break;
            }
        }

        if (customerType.equalsIgnoreCase("Individual")) {
            login.LoginIndividual(mobNumber, date, "123456");
        } else if (customerType.equalsIgnoreCase("NRI")) {
            login.LoginNRI(mobNumber, date, "123456");
        } else {
            login.LoginNonindividual(mobNumber, date, "123456");
        }

    }

    @When("User is on Home Page")
    public void userIsOnHomePage() {
//        driver.get("https://www.google.com/");
        boolean flag =false;
        flag = verifyFieldsDisplayedUsingLocator(HomePage.txt_Home);
//hardRefresh();
        if (!flag) {
            ApplicationKeywords.quitBrowser = true;
            GOR.login=false;
            SoftAssertions sa = new SoftAssertions();
            testStepFailed("Login is Unsuccessfull");
            sa.fail("Login is Unsuccessful");
            sa.assertAll();
        }
        clickOnButtonUsingLocatorUsingForLoopWithoutFail(LoginPage.skip);
        String closeIconAddressVerifcation="Address verifcation popup close button#xpath=//div[@class='dialog_modal kyc-popup']//a[@class='dialog_closer']";
        if (isElementDisplayed(closeIconAddressVerifcation)) {
            clickOn(closeIconAddressVerifcation);
        }
}

    @And("verify My Relation {string} Tile")
    public void verifyMyRelationTile(String tileName) {
        home.verifyMyRelationSectionTiles(tileName);
    }


    @Then("verify All Submenu is Displayed in Hamburger")
    public void verifyAllSubmenuIsDisplayedInHamburger() {
        verifyFieldsUsingCommonXpathAndMultipleTextWithHash("//div[@class='list_text']/strong","Loan payment#Documentation#Request for a loan#Redeem vouchers#Calculators#Help and support#Settings","");
        clickOnIfDisplayed(HomePage.cross_Hamburger);
    }

    @And("Clicks on Alert Icon")
    public void clicksOnAlertIcon() {
        clickOnIfDisplayed(HomePage.icon_Alert);
    }

    @Then("verify coming soon pop up is displayed")
    public void verifyComingSoonPopUpIsDisplayed() {
        verifyElementIsDisplayedOrNot(HomePage.popup_Alert);
    }

    @And("verify popup is closed when clicked outside the popup")
    public void verifyPopupIsClosedWhenClickedOutsideThePopup() {

        clickOn(HomePage.logo_Bfinserv);
        home.verifyAlertPopupClosed();
    }

    @And("verify no nudge is displayed when customer having active EMI card")
    public void verifyNoNudgeIsDisplayedWhenCustomerHavingActiveEMICard() {
        home.verifyActiveEMICard();
    }

    @And("verify Passbook is not displayed for Customer without wallet setup")
    public void verifyPassbookIsNotDisplayedForCustomerWithoutWalletSetup() {
        home.verifyPassbooknotDisplayed();
    }

//    @When("Clicks on Hamburger Menu")
//    public void clicks_on_hamburger_menu() {
////        waitTime(30);
//        clickOnIfDisplayed(HomePage.icon_HamburgerMenu);
//        waitTime(3);
//    }
    /*
    New Home Page
     */
    @When("{string} Section {string} Option is Displayed")
    public void section_option_is_displayed(String sectionName, String optionName) {
   home.verifyProductIsDisplayed(sectionName,optionName,"");
    }

    @When("{string} Section {string} Option Logo is Displayed")
    public void section_option_logo_is_displayed(String sectionName, String optionName) {
        home.verifyLogoIsDisplayed(sectionName,optionName,"");
    }

    @When("Clicks {string} Section {string} Option")
    public void clicks_section_option(String sectionName, String optionName) {
home.clickOnProduct(sectionName,optionName,"");
    }

    @And("{string} Section has {int} Number of Tiles")
    public void sectionHasNumberOfTiles(String sectionName, int noOfTiles) {
home.verifyNoOfTiles(sectionName,noOfTiles,"");
    }


    @And("Login Popup is Displayed")
    public void loginPopupIsDisplayed() {
        login.verifyLoginRedirection();
    }


    @And("verify {string} Section Next and Previous Sliders are not Showing")
    public void verifySectionNextAndPreviousSlidersAreNotShowing(String sectionName) {
        home.verifySliderButtonsIsNotVisible(sectionName,"");
    }

    @And("verify {string} Section Next and Previous Sliders are only showing for {int} tiles or more than Tiles")
    public void verifySectionNextAndPreviousSlidersAreOnlyShowingForTilesOrMoreThanTiles(String sectionName, int noOfTiles)  {
        home.verifySliderWorking(sectionName,noOfTiles,"");
    }

    @And("Clicks {string} Section {string} Option Tile")
    public void clicksSectionOptionTile(String sectionName, String optionName) {
        String altName = getLocator(optionName);
        home.clickOnImagesUsingSectionName(sectionName,optionName,altName,"");
    }

    @And("verify {string} Sequential Order: {string}")
    public void verifySequentialOrder(String optionName, String names) {
        String locator = getLocator(optionName);
        home.verifySequentialOrder(locator,names,"");
    }
////// Mustaq - Start ///////////
////////////////23112022-Mustaq
@Then("verify All {string} is Displayed in Hamburger")
public void verifyAllIsDisplayedInHamburger(String string) {
    verifyFieldsUsingCommonXpathAndMultipleTextWithHash("//div[@class='list_text']/strong", string, "");
    clickOnIfDisplayed(HomePage.cross_Hamburger);

}

    @Then("verify the {string} displayed for the Accordion icon")
    public void verifyTheDisplayedForTheAccordionIcon(String options) {

        verifyFieldsUsingCommonXpathAndMultipleTextWithHash("//div[@class='under_menu_list']//li/a", options, "");
    }

    @And("Clicks on SubListmenu {string}")
    public void clicksOnSubListmenu(String sublistMenu) {
        home.clickOnSubListMenus(sublistMenu);

    }

    @And("verify Loan Payment page is displayed")
    public void verifyLoanPaymentPageIsDisplayed() {
        payments.verifyLoanPaymentsHeader();
    }

    @Then("verify User is redirected to Pre Approved Loan Offers page")
    public void verifyUserIsRedirectedToPreApprovedLoanOffersPage() {
        verifyRedirectionInCommon("https://www.bajajfinserv.in/pre-approved-loan-offers", "");
    }

    @Then("verify User is redirected to {string} page")
    public void verifyUserIsRedirectedToPage(String arg0) {
    }

    @Then("verify User is redirected to {string} page with {string}")
    public void verifyUserIsRedirectedToPageWith(String arg0, String Headertext) {
        verifyPageRedirectionUsingTagAndText("strong", Headertext, "");

    }

    @Then("verify User is redirected to Passbook page")
    public void verifyUserIsRedirectedToPassbookPage() {
        verifyPageRedirectionUsingLocator(HomePage.passbook_Page, "");
    }

    @Then("verify User is redirected to respective URL {string}")
    public void verifyUserIsRedirectedToRespectiveURL(String URL) {
        verifyRedirectioninNewTab(URL, "");
    }

    @Then("verify User is redirected to Rewards page with {string}")
    public void verifyUserIsRedirectedToRewardsPageWith(String Headertext) {
        verifyRedirectionHeaderText(Headertext);
    }

    @Then("verify Popup is displayed for Rating")
    public void verifyPopupIsDisplayedForRating() {
        waitTime(2);
        driver.switchTo().frame("kampyleForm3444");
        verifyElementIsDisplayedOrNot(HomePage.popup_Rating);
//        verifyButtonIsDisabledInThePageusingText("SUBMIT FEEDBACK");
//        verifyFieldsDisplayedUsingText("Your feedback will help us improve");

    }

    @Then("verify User is logged out of Application")
    public void verifyUserIsLoggedOutOfApplication() {
        if (isElementDisplayed(LoginPage.icon_MyAccount)) {
            testStepPassed("User successfully Logged out");
        } else {
            testStepFailed("User not logged out");
        }
    }


    @And("Customer Clicks on Cross icon of Hamburger")
    public void customerClicksOnCrossIconOfHamburger() {
        clickOnIfDisplayed(HomePage.cross_Hamburger);
    }

    @Then("Hamburger menu should be closed")
    public void hamburgerMenuShouldBeClosed() {
        if (!isElementDisplayed(HomePage.header_HamburgerMenu)) {
            testStepPassed("Hamburger is closed on click of Cross icon");
        } else {
            testStepFailed("Hamburger is not closed");
        }

    }

    @And("Customer Clicks on anywhere outside the hamburger menu")
    public void customerClicksOnAnywhereOutsideTheHamburgerMenu() {
//        Actions action = new Actions(driver);
//        action.click(findWebElement(HomePage.super_StoresHeader));
//        action.click(findWebElement(HomePage.icon_Profile));
//        clickOn(HomePage.super_StoresHeader);
        clickOnTabRightSide();
    }

    @And("Clicks on Up arrow accordion {string}")
    public void clicksOnUpArrowAccordion(String string) {
        String option="#xpath=//strong[text()='"+string.trim()+"']/parent::div[@class='list_text']/following-sibling::div[@class='droparrow']";
        clickOn(option);
    }

    @Then("Submenu should be collapsable {string}")
    public void submenuShouldBeCollapsable(String string) {
        home.verifyAccordionCollapsable(string,"");

    }

    @Then("Overdue page should be displayed {string}")
    public void overduePageShouldBeDisplayed(String string) {
//        verifyTextOptionsIsDisplayedUsingCommonXpath("//strong[normalize-space()='Select loan for payment']");
        verifyPageRedirectionUsingTagAndText("strong",string,"");
    }

    @Then("Other Payments page should be displayed {string}")
    public void otherPaymentsPageShouldBeDisplayed(String string) {
        verifyPageRedirectionUsingTagAndText("strong",string,"");

    }

    @Then("Get a loan page should be displayed {string}")
    public void getALoanPageShouldBeDisplayed(String string) {
        verifyRedirectionInCommon(string, "");

    }

    @And("verify EMI Calculator menu page is displayed with Calculator types {string}")
    public void verifyEMICalculatorMenuPageIsDisplayedWithCalculatorTypes(String string) {
        verifyFieldsUsingCommonXpathAndMultipleTextWithHash("//div[@class='j_calcText']/p",string,"");
    }

    @And("When Customer clicks on Calculator type {string}")
    public void whenCustomerClicksOnCalculatorType(String string) {

    }

    @And("When Customer clicks on Calculator type {string}, then verify Customer is redirected to that Particular Page{string}")
    public void whenCustomerClicksOnCalculatorTypeThenVerifyCustomerIsRedirectedToThatParticularPage(String calc, String url) {
        home.clickOnEMICalculator(calc,url);
    }

    @Then("Following options {string} should be displayed under RHS Section {string}")
    public void followingOptionsShouldBeDisplayedUnderRHSSection(String rhsoptions, String title) {
        verifyRhs(title,rhsoptions,"");
    }

    @Then("Document page should be displayed with {string}")
    public void documentPageShouldBeDisplayedWith(String string) {
        verifyPageRedirectionUsingTagAndText("span",string,"");

    }

    ///////02012023

    @When("Clicks on the {string} option type in Application Forms")
    public void clicksOnTheOptionTypeInApplicationForms(String string) {
        home.clickOnAppFormsFooterOptions(string,"");
    }

    @And("clicks on Footer Options and get texts")
    public void clicksOnFooterOptionsAndGetTexts() {
        home.clickOnAppFormsFooterOptionstogettext("","");
    }

    @And("clicks on Footer Options in Middle Section and get texts")
    public void clicksOnFooterOptionsInMiddleSectionAndGetTexts() {
        home.clickOnMiddleSectionFooterOptionstogettext("","");
    }

    @When("Clicks on a Tab {string} in Footer")
    public void clicksOnATabInFooter(String tab) {
        home.clickOnFooterTabs(tab,"");

    }

    @When("Clicks on the {string} option type in {string}")
    public void clicksOnTheOptionTypeIn(String option, String tab) {
        home.clickOnFooterTabOptions(tab,option,"");
    }

    @Then("Verify Customer Redirected to respective Social Media {string}")
    public void verifyCustomerRedirectedToRespectiveSocialMedia(String string) {
        verifyRedirectioninNewTab(string,"");
    }

    @When("Customer is able to view Our Companies section in footer")
    public void customerIsAbleToViewOurCompaniesSectionInFooter() {
        scrollToWebElement(HomePage.ourCompanies);
        verifyElementIsDisplayedOrNot(HomePage.ourCompanies);
    }

    @When("clicks on {string} in Footer")
    public void clicksOnInFooter(String string) {
        clickOnButtonUsingTextUsingForLoop(string);
    }

    @Then("Verify Customer Redirected to respective {string}")
    public void verifyCustomerRedirectedToRespective(String string) {
        verifyRedirectioninNewTab(string,"");

    }

    @Then("Verify Customer Redirected to respective {string} in same page")
    public void verifyCustomerRedirectedToRespectiveInSamePage(String string) {
        verifyRedirectioninSameTab(string,"");
    }

    @Then("Customer should be able to view Below address under Footer Section")
    public void customerShouldBeAbleToViewBelowAddressUnderFooterSection() {
        scrollToWebElement(HomePage.address_CorporateOffice);
        verifyElementIsDisplayedOrNot(HomePage.address_CorporateOffice);
        verifyFieldsDisplayedUsingText("6th Floor Bajaj Finserv Corporate Office, Off Pune-Ahmednagar Road, Viman Nagar, Pune-411014");

    }

    @Then("Customer should be able to view the Details under following Titles:")
    public void customerShouldBeAbleToViewTheDetailsUnderFollowingTitles() {
        scrollToWebElement(HomePage.office_Regd);
        verifyFieldsDisplayedUsingLocatorWithComment(HomePage.office_Regd,getText(HomePage.office_Regd));
        verifyFieldDisplayedUsingTagAndText("p","Akurdi, Pune-411035","");
        verifyFieldDisplayedUsingTagAndText("h3","Corporate Identity Number (CIN)","");
        verifyFieldDisplayedUsingTagAndText("p","L65910MH1987PLC042961","");
        verifyFieldDisplayedUsingTagAndText("h3","IRDAI Corporate Agency Registration Number","");
        verifyFieldDisplayedUsingTagAndText("p","CA0101","");
        verifyFieldDisplayedUsingTagAndText("h3","URN","");
        verifyFieldDisplayedUsingTagAndText("p","WEB/BFL/20-21/1/V1","");
    }

    @Then("Verify Customer Redirected to respective {string} in same Tab")
    public void verifyCustomerRedirectedToRespectiveInSameTab(String string) {
        verifyRedirectioninSameTab(string,"");

    }
    //////// Mustaq - End //////////

}