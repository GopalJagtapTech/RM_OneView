package stepDefinitions;

import PageObjects.*;
import TestData.GOR;
import base.ApplicationKeywords;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.assertj.core.api.SoftAssertions;
import org.openqa.selenium.Keys;

import java.awt.*;
import java.awt.event.KeyEvent;

public class LoginFieldsSteps extends ApplicationKeywords {
    LoginPage login;
    HomePage home;

    LoginFieldPage loginfieldsPage;

    public LoginFieldsSteps() {
        login = new LoginPage();
        home = new HomePage();
        loginfieldsPage=new LoginFieldPage();
    }


    @Given("User is on Login Page")
    public void user_is_on_login_page() {
       // redirectToUrl("https://uat-oneweb.bajajfinserv.in/MyAccountLogin/Login/LogoutUserBasedOnMobile?MobileNo="+mobNumber+"","");
       //waitTime(2);
        redirectToUrl("https://uat-oneweb.bajajfinserv.in/MyAccountLogin","");
        waitForPageToLoad();
        waitTime(2);
        loginfieldsPage.clickfirstSkipButton();
        loginfieldsPage.clickOnLogincloseButtonxPopup("close");
        waitForPageToLoad();
        waitTime(2);
    }
    @When("User logouts application")
    public void user_logouts_application() {
      //  loginfieldsPage.verifyButtonUsingLocatorUsingForLoopWithoutFail(loginfieldsPage.Skip_Coach);
        verifyLogout();
    }

    @Then("verify it redirected to mentioned {string}")
    public void verify_it_redirected_to_mentioned(String string) {
        verifyRedirectionURLIfContains(string);
    }

    @Then("Sign in popup should be displayed for {int} sec")
    public void sign_in_popup_should_be_displayed_for_sec(Integer int1) {
        loginfieldsPage.verifySignIn(loginfieldsPage.SignIn_Button);
        loginfieldsPage.clickSkipButton();
    }

    @Then("verify Login Popup should be displayed")
    public void verify_login_popup_should_be_displayed() {
        loginfieldsPage.verifySignIn(loginfieldsPage.SignIn_Button);
    }

    @Then("Sign in popup should be disappeared after {int} sec")
    public void sign_in_popup_should_be_disappeared_after_sec(Integer int1) {
        loginfieldsPage.verifySignInAfter10Seconds(loginfieldsPage.SignIn_Button);

    }

    @When("User clicks on Sign in CTA")
    public void user_clicks_on_sign_in_cta() {

        if(isElementDisplayed(loginfieldsPage.SignIn_Button)){
            clickOn(loginfieldsPage.SignIn_Button);
        }
        else{
            clickOnIfDisplayed(loginfieldsPage.icon_MyAccount);
            clickOn(loginfieldsPage.SignIn_Button);
        }
        waitForPageToLoad();
        waitTime(2);
        loginfieldsPage.clickSkipButton();

    }

    @Then("Login popup should be displayed")
    public void login_popup_should_be_displayed() {
        waitForPageToLoad();
       // loginfieldsPage.clickOnSkipButton("Skip");
      verifyElementIsDisplayedUsingLocator(loginfieldsPage.loginPopup);
    }


    @Then("Customer should be able to view Individual Corporate\\/Business NRI tab on login popup")
    public void customerShouldBeAbleToViewIndividualCorporateBusinessNRITabOnLoginPopup() {

        loginfieldsPage.verifySubTabs("Individual","Individual");
        loginfieldsPage.verifySubTabs("Non-Individual","Corporate/ Business");
        loginfieldsPage.verifySubTabs("NRI","NRI");
    }

    @Then("Customer should be able to view Mobile Number Date of Birth Get OTP content on Individual tab of login popup")
    public void customerShouldBeAbleToViewMobileNumberDateOfBirthGetOTPContentOnIndividualTabOfLoginPopup() {



        loginfieldsPage.verifyFieldLabels("IDMobileEmailxtBox_Individual","Mobile Number");
        loginfieldsPage.verifyTextContent("Enter your 10-digit mobile number");
        loginfieldsPage.verifyFieldLabels("IDEnterDOBTxtBox_Individual","Date of Birth");
        loginfieldsPage.verifyTextContent("Enter your date of birth");
        verifyElementIsDisplayedUsingLocator(loginfieldsPage.btn_IndividualGetOTP);


    }

    @When("Clicks on Corporate\\/Business tab")
    public void clicks_on_corporate_business_tab() {
        loginfieldsPage.clickOnSkipButton("Corporate/ Business");
        manualScreenshot("Corporate/ Business");
    }
    @Then("Customer should be able to view Mobile Number\\/Email ID Date of Incorporation Get OTP content on Individual tab of login popup")
    public void customer_should_be_able_to_view_mobile_number_email_id_date_of_incorporation_get_otp_content_on_individual_tab_of_login_popup() {

        loginfieldsPage.verifyFieldLabels("IDMobileEmailxtBox_NonIndividual","Mobile Number/Email ID");
        loginfieldsPage.verifyTextContent("Enter your 10-digit mobile number or email ID");
        loginfieldsPage.verifyFieldLabels("IDEnterDOBTxtBox_NonIndividual","Date of Incorporation (DD/MM/YYYY)");
        loginfieldsPage.verifyTextContent("Enter your company’s date of incorporation");
        verifyElementIsDisplayedUsingLocator(loginfieldsPage.btn_NonIndividualGetOTP);

    }

    @Then("Customer should be able to view Mobile Number\\/Email ID Date of Incorporation Get OTP content on login popup")
    public void customer_should_be_able_to_view_mobile_number_email_id_date_of_incorporation_get_otp_content_on_login_popup() {


        loginfieldsPage.verifyFieldLabels("IDMobileEmailxtBox_NonIndividual","Mobile Number/Email ID");
        loginfieldsPage.verifyTextContent("Enter your 10-digit mobile number or email id");
        loginfieldsPage.verifyFieldLabels("IDEnterDOBTxtBox_NonIndividual","Date of Incorporation");
        loginfieldsPage.verifyTextContent("Enter your date of incorporation");
        verifyElementIsDisplayedUsingLocator(loginfieldsPage.btn_NonIndividualGetOTP);
    }


    @When("Clicks on NRI tab")
    public void clicks_on_nri_tab() {
        loginfieldsPage.clickOnSkipButton("NRI");
        manualScreenshot("NRI");
    }
    @Then("Customer should be able to view Mobile Number\\/Email ID Date of Birth Get OTP content on NRI tab of login popup")
    public void customer_should_be_able_to_view_mobile_number_email_id_date_of_birth_get_otp_content_on_nri_tab_of_login_popup() {

        loginfieldsPage.verifyFieldLabels("IDMobileEmailxtBox_NRI","Mobile Number/Email ID");
        loginfieldsPage.verifyTextContent("Enter your 10-digit mobile number or email ID");
        loginfieldsPage.verifyFieldLabels("IDEnterDOBTxtBox_NRI","Date of Birth (DD/MM/YYYY)");
        loginfieldsPage.verifyTextContent("Enter your date of birth as it appears on your PAN Card");
        verifyElementIsDisplayedUsingLocator(loginfieldsPage.btn_NRIGetOTP);

    }


    @When("Enters Wrong input in mobile number field {string}")
    public void enters_wrong_input_in_mobile_number_field(String string) {
        loginfieldsPage.enterMobileNumber(string);
    }
    @Then("Customer should be able to view {string} validation messages")
    public void customer_should_be_able_to_view_validation_messages(String string) {

        if(string.equals("lease enter valid Mobile Number")){
           //  clickOn(loginfieldsPage.btn_IndividualGetOTP);
            clickOnButtonUsingTextUsingForLoop("Get OTP");
            loginfieldsPage.verifyTextContent(string);
        }else{
            loginfieldsPage.verifyTextContent(string);
        }


    }



    @When("Enters Wrong input in Date of Birth field {string}")
    public void enters_wrong_input_in_date_of_birth_field(String string) {
        loginfieldsPage.enterDOB(string);
    }

    @Then("Customer should be able to view  DOB {string} validation messages")
    public void customer_should_be_able_to_view_dob_validation_messages(String string) {
           // clickOn(loginfieldsPage.btn_IndividualGetOTP);
        clickOnButtonUsingTextUsingForLoop("Get OTP");
        loginfieldsPage.verifyTextContent(string);

    }

    @When("Enters Mobile Number and Date of Birth {string} {string}")
    public void enters_mobile_number_and_date_of_birth(String string, String string2) {
        loginfieldsPage.enterMobileNumber(string);
        loginfieldsPage.enterDOB(string2);
    }

    @When("Click on Get OTP")
    public void click_on_get_otp() {
        clickOnButtonUsingTextUsingForLoop("Get OTP");
        waitForPageToLoad();
        loginfieldsPage.waitForThreeDotsDisapper(7);

    }





    @Then("OTP popup should be displayed")
    public void otp_popup_should_be_displayed() {
        loginfieldsPage.verifyTextContent("Verify your OTP");
        manualScreenshot("Verify your OTP");
    }


    @Then("Customer should be able to view content on OTP pop-up")
    public void customer_should_be_able_to_view_content_on_otp_pop_up() {
        //loginfieldsPage.verifyIndividualOTPContent();
    }

    @Then("Customer should be able to view content on OTP pop-up {string}")
    public void customer_should_be_able_to_view_content_on_otp_pop_up(String string) {
        loginfieldsPage.verifyIndividualOTPContent(string);
    }

    @Then("Customer should be able to view content on OTP pop-up {string} with change CTA")
    public void customer_should_be_able_to_view_content_on_otp_pop_up_with_change_cta(String string) {
        loginfieldsPage.verifyIndividualOTPContent(string);
    }


    @When("Click on Privacy Policy")
    public void click_on_privacy_policy() {
        clickOnButtonUsingTextUsingForLoop("privacy policy");
    }
    @Then("Privacy Policy should be opened")
    public void privacy_policy_should_be_opened() {
        waitTime(10);
        transferControlToWindow(2,false);
        verifyRedirectionURLIfContains("https://www.bajajfinserv.in/privacy-policy");
        transferControlToWindow(1,true);
    }


    @When("Click on Term & Conditions")
    public void click_on_term_conditions() {
        clickOnButtonUsingTextUsingForLoop("terms & conditions");
    }
    @Then("Term & condition should be opened")
    public void term_condition_should_be_opened() {
       waitTime(10);
        transferControlToWindow(2,false);
        verifyRedirectionURLIfContains("https://bfin.in/Docs/Terms_and_Conditions.pdf");
        transferControlToWindow(1,true);
    }

    @When("Click on need help")
    public void click_on_need_help() {
        clickOnButtonUsingTextUsingForLoop("Need help?");
    }
    @Then("Customer should be able to view FAQs")
    public void customer_should_be_able_to_view_fa_qs() {
        String locator="FAQ#xpath=//strong[text()='FAQs']";
        verifyFieldsDisplayedUsingLocator(locator);
        manualScreenshot("FAQs");
    }


    @When("Enters Wrong {string}")
    public void enters_wrong(String string) {
        waitForPageToLoad();
        enterOtpInTextBox("o",string);
    }
    @When("Click on Submit")
    public void click_on_submit() {
        clickOnButtonUsingTextUsingForLoop("Submit");
        waitForPageToLoad();
        waitForThreeDotsDisAppear();

    }
    @Then("Validation message should be displayed")
    public void validation_message_should_be_displayed() {
        verifyFieldsDisplayedUsingText("Invalid / wrong OTP");
        manualScreenshot("Invalid / wrong OTP");

    }
    @When("Enters {string}")
    public void enters(String string) {
        waitForPageToLoad();
        enterOtpInTextBox("o",string);
    }
    @Then("Customer should be redirected to home page")
    public void customer_should_be_redirected_to_home_page() {
        boolean flag =false;
        loginfieldsPage.waitUntilElementVisible(HomePage.txt_Home,60);
        flag = verifyFieldsDisplayedUsingLocator(HomePage.txt_Home);
        verifyLogout();

        if (!flag) {
            ApplicationKeywords.quitBrowser = true;
            GOR.login=false;
            SoftAssertions sa = new SoftAssertions();
            testStepFailed("Login is Unsuccessfull");
            sa.fail("Login is Unsuccessful");
            sa.assertAll();
        }
    }


    @When("Leaves Mobile number\\/Email ID field blank {string}")
    public void leaves_mobile_number_email_id_field_blank(String string) {
        loginfieldsPage.enterDOIMobileNumber(string);
    }


    @Given("Enter DOB {string} in Date of Incoporation")
    public void enter_dob_in_date_of_incoporation(String string) {
        loginfieldsPage.enterDOIDOB(string);
    }


    @When("Enters Wrong input in Date of Incorporation field {string}")
    public void enters_wrong_input_in_date_of_incorporation_field(String string) {
        loginfieldsPage.enterDOIMobileNumber(string);
        clickOnButtonUsingTextUsingForLoop("Get OTP");
    }
    @Then("Customer should be able to view Date of Incorporation validation messages {string}")
    public void customer_should_be_able_to_view_date_of_incorporation_validation_messages(String string) {
        loginfieldsPage.verifyTextContent(string);
    }

    @When("Enters Wrong input in Date of Incorporation  Date field {string}")
    public void enters_wrong_input_in_date_of_incorporation_date_field(String string) {
        loginfieldsPage.enterDOIDOB(string);
    }


    @When("Enters Mobile Number and Date of Incorporation {string} {string}")
    public void enters_mobile_number_and_date_of_incorporation(String string, String string2) {
        loginfieldsPage.enterDOIMobileNumber(string);
        loginfieldsPage.enterDOIDOB(string2);

    }

    @When("Enters Email-ID and Date of Incorporation {string} and {string}")
    public void enters_email_id_and_date_of_incorporation_and(String string, String string2) {
        loginfieldsPage.enterDOIMobileNumber(string);
        loginfieldsPage.enterDOIDOB(string2);
    }


    @When("Enters Wrong input in NRI Mobile Number field {string}")
    public void enters_wrong_input_in_nri_mobile_number_field(String string) {
        loginfieldsPage.enterNRIMobileNumber(string);
    }
    @Then("Customer should be able to view  NRI validation messages {string}")
    public void customer_should_be_able_to_view_nri_validation_messages(String string) {
        loginfieldsPage.verifyTextContent(string);
    }

    @When("Enters Wrong input in NRI Date of Birth field {string}")
    public void enters_wrong_input_in_nri_date_of_birth_field(String string) {
        loginfieldsPage.enterNRIDOB(string);
    }


    @When("Enters NRI  Mobile Number and Date of Birth {string} {string}")
    public void enters_nri_mobile_number_and_date_of_birth(String string, String string2) {
        loginfieldsPage.enterNRIMobileNumber(string);
        loginfieldsPage.enterNRIDOB(string2);
    }

    @Then("Below validation message should be displayed Please try login with registered details.")
    public void below_validation_message_should_be_displayed_please_try_login_with_registered_details() {
        loginfieldsPage.verifyTextContent("Please try login with registered details");
    }

    @Then("Mobile number should be in mask format on OTP popup")
    public void mobileNumberShouldBeInMaskFormatOnOTPPopup() {

    }

    @Then("Mobile number should be in mask format on OTP popup {string}")
    public void mobile_number_should_be_in_mask_format_on_otp_popup(String string) {
        loginfieldsPage.verifyIndividualOTPContent(string);
    }


    @When("Click on Change")
    public void click_on_change() {
        clickOn(loginfieldsPage.btn_Change);
    }
    @Then("Customer should be redirected to login popup window")
    public void customer_should_be_redirected_to_login_popup_window() {
        verifyElementIsDisplayedUsingLocator(loginfieldsPage.loginPopup);
    }

    @Then("Timer on OTP popup should be visible and value should be decremented from {int} secs")
    public void timer_on_otp_popup_should_be_visible_and_value_should_be_decremented_from_secs(Integer int1) {
        loginfieldsPage.verifyTimer();
    }


    @Then("Resend CTA should be disabled for {int} sec")
    public void resend_cta_should_be_disabled_for_sec(Integer int1) {
        waitTime(5);
      loginfieldsPage.verifyResendTimer();
    }


    @When("Click on Resend OTP before {int} sec")
    public void click_on_resend_otp_before_sec(Integer int1) {
        waitTime(65);
       clickOn(loginfieldsPage.btn_Resend);
    }
    @When("Enter OTP after {int} sec")
    public void enter_otp_after_sec(Integer int1) {

        waitTime(120);
        waitForPageToLoad();
        enterOtpInTextBox("o","123456");
    }

    @Then("Validation message should be displayed {string}")
    public void validation_message_should_be_displayed(String string) {
       loginfieldsPage.verifyTextContent(string);
    }

    @Then("Customer should be landed to home page with selected customer type")
    public void customer_should_be_landed_to_home_page_with_selected_customer_type() {

    }


    @Then("Validation message should be displayed the {string}")
    public void validation_message_should_be_displayed_the(String string) {
       verifyFieldsDisplayedUsingText(string);
    }

    @Then("Customer should be landed to home page with selected customer type {string}")
    public void customer_should_be_landed_to_home_page_with_selected_customer_type(String string) {

        selectDropDownUsingText(loginfieldsPage.dropdown_Multi,string);
        clickOn(loginfieldsPage.btn_Proceed);
        boolean flag =false;
        loginfieldsPage.waitUntilElementVisible(HomePage.txt_Home,60);
        flag = verifyFieldsDisplayedUsingLocator(HomePage.txt_Home);
        verifyLogout();
        if (!flag) {
            ApplicationKeywords.quitBrowser = true;
            GOR.login=false;
            SoftAssertions sa = new SoftAssertions();
            testStepFailed("Login is Unsuccessfull");
            sa.fail("Login is Unsuccessful");
            sa.assertAll();
        }
    }


    @Then("Customer should be landed to home page with the  selected customer type {string}")
    public void customer_should_be_landed_to_home_page_with_the_selected_customer_type(String string) {
       loginfieldsPage.verifyCustId(loginfieldsPage.custIdProfile,string);
    }



    @Then("Popup with dropdown having all cust ids linked to logged in mobile number should be displayed")
    public void popup_with_dropdown_having_all_cust_ids_linked_to_logged_in_mobile_number_should_be_displayed() {
        verifyGetAllOptionsInDropDownAndCompare(loginfieldsPage.dropdown_Multi, "47641293#2601116");
    }

    @Then("Popup with dropdown having all cust ids linked to logged in mobile number should be displayed {string}")
    public void popup_with_dropdown_having_all_cust_ids_linked_to_logged_in_mobile_number_should_be_displayed(String string) {
        verifyGetAllOptionsInDropDownAndCompare(loginfieldsPage.dropdown_Multi, string);

    }


    @Then("Customer should be loggged in as selected entity")
    public void customer_should_be_loggged_in_as_selected_entity() {
        loginfieldsPage.clickSkipButton();
        waitTime(2);
        clickOnButtonUsingLocatorUsingForLoop(LoginPage.icon_Profile);
        clickOn(loginfieldsPage.viewProfile);
        verifyFieldsDisplayedUsingLocator(loginfieldsPage.DateofIncor);

    }

    @Then("Customer should be loggged in as selected entity {string}")
    public void customer_should_be_loggged_in_as_selected_entity(String string) {
        loginfieldsPage.clickSkipButton();
        waitTime(2);
        clickOnButtonUsingLocatorUsingForLoop(LoginPage.icon_Profile);
        clickOn(loginfieldsPage.viewProfile);
        verifyFieldsDisplayedUsingLocator(loginfieldsPage.DateofBirth);
    }

    @Then("Customer should be loggged in as selected entity type")
    public void customer_should_be_loggged_in_as_selected_entity_type() {
        loginfieldsPage.clickSkipButton();
        waitTime(2);
        clickOnButtonUsingLocatorUsingForLoop(LoginPage.icon_Profile);
        clickOn(loginfieldsPage.viewProfile);
        verifyFieldsDisplayedUsingLocator(loginfieldsPage.DateofBirth);
    }


    @Then("Individual NRI customer should be logged in as guest")
    public void individual_nri_customer_should_be_logged_in_as_guest() {
        loginfieldsPage.clickSkipButton();
        waitTime(4);
        clickOnButtonUsingLocatorUsingForLoop(LoginPage.icon_Profile);
        verifyFieldsDisplayedUsingLocator(loginfieldsPage.gusetlabel);
    }

    @Then("dropdown should be displayed with multi customer IDs {string}")
    public void dropdown_should_be_displayed_with_multi_customer_i_ds(String string) {
        verifyGetAllOptionsInDropDownAndCompare(loginfieldsPage.dropdown_Multi, string);
    }

    @Then("dropdown should be displayed with multi customer IDs")
    public void dropdown_should_be_displayed_with_multi_customer_i_ds() {
        verifyGetAllOptionsInDropDownAndCompare(loginfieldsPage.dropdown_Multi, "277#185");
    }




    @When("User clicks on dropdown")
    public void user_clicks_on_dropdown() {
     clickOn(loginfieldsPage.dropdown_Multi);
    }

    @Then("Dropdown should be clickable")
    public void dropdown_should_be_clickable() {
       // selectDropDownUsingText(loginfieldsPage.dropdown_Multi,string);
    }

    @Then("Dropdown should be clickable {string}")
    public void dropdown_should_be_clickable(String string) {
        selectDropDownUsingText(loginfieldsPage.dropdown_Multi,string);
    }

    @When("Select Customer id from dropdown {string}")
    public void select_customer_id_from_dropdown(String string) {
        selectDropDownUsingText(loginfieldsPage.dropdown_Multi,string);
        clickOn(loginfieldsPage.btn_Proceed);
    }

    @When("Click on cross\\(x) CTA of popup")
    public void click_on_cross_x_cta_of_popup() {
       clickOn(loginfieldsPage.closeDrop);
    }
    @Then("Customer should be redirected to login homepage")
    public void customer_should_be_redirected_to_login_homepage() {
    verifyRedirectionURLIfContains("https://uat-oneweb.bajajfinserv.in/");
    }


    @Then("Validation message should be displayed correctly {string}")
    public void validation_message_should_be_displayed_correctly(String string) {
        verifyFieldsDisplayedUsingText(string);
        manualScreenshot(string);
    }


    @When("Enters random  Mobile Number and Date of Incorporation {string} {string}")
    public void enters_random_mobile_number_and_date_of_incorporation(String string, String string2) {
        String randMob=  loginfieldsPage.generateMobileNumber();
        loginfieldsPage.enterDOIMobileNumber(randMob);
        loginfieldsPage.enterDOIDOB(string2);

    }


    @When("Enters random NRI  Mobile Number and Date of Birth {string} {string}")
    public void enters_random_nri_mobile_number_and_date_of_birth(String string, String string2) {
        String randMob=  loginfieldsPage.generateMobileNumber();
        loginfieldsPage.enterNRIMobileNumber(randMob);
        loginfieldsPage.enterNRIDOB(string2);
    }



    @When("Enters random generated Mobile Number and Date of Birth {string} {string}")
    public void enters_random_generated_mobile_number_and_date_of_birth(String string, String string2) {

      String randMob=  loginfieldsPage.generateMobileNumber();
        loginfieldsPage.enterMobileNumber(randMob);
        loginfieldsPage.enterDOB(string2);
    }
    @Then("Customer should not able to login for {int} mins and below message should be displayed  �Account temporary locked for {int} minutes. Due to multiple incorrect login attempt, your account has been locked. Please try after some time� with a �Got It� & �Need Help� CTA")
    public void customer_should_not_able_to_login_for_mins_and_below_message_should_be_displayed_account_temporary_locked_for_minutes_due_to_multiple_incorrect_login_attempt_your_account_has_been_locked_please_try_after_some_time_with_a_got_it_need_help_cta(Integer int1, Integer int2) {
        verifyFieldsDisplayedUsingText("Account temporary locked for 3 minutes");
        loginfieldsPage.verifyTextContent("Due to multiple incorrect login attempt your account has been locked. Please try again after sometime.");
        verifyElementIsDisplayedUsingLocator(loginfieldsPage.btn_Got);
        verifyElementIsDisplayedUsingLocator(loginfieldsPage.btn_NeedHelp);
    }


    @Then("Customer should not able to login for {int} mins and below message should be displayed Account temporary locked for {int} minutes.")
    public void customer_should_not_able_to_login_for_mins_and_below_message_should_be_displayed_account_temporary_locked_for_minutes(Integer int1, Integer int2) {
        verifyFieldsDisplayedUsingText("Account temporary locked for 3 minutes");
        loginfieldsPage.verifyTextContent("Due to multiple incorrect login attempt your account has been locked. Please try again after sometime.");
        verifyElementIsDisplayedUsingLocator(loginfieldsPage.btn_Got);
        verifyElementIsDisplayedUsingLocator(loginfieldsPage.btn_NeedHelp);
    }


    @Then("Customer should be able to view Masthead Card Section {string} {string} {string}")
    public void customer_should_be_able_to_view_masthead_card_section(String string, String string2, String string3) {
        loginfieldsPage.verifyHeadingLabelName(string);
        loginfieldsPage.verifyHeadingLabelName(string2);
        loginfieldsPage.verifyHeadingLabelName(string3);
    }



    @Then("Customer should be able to view below {int} icon under Apply for Loan card  {string}")
    public void customer_should_be_able_to_view_below_icon_under_apply_for_loan_card(Integer int1, String string) {
        loginfieldsPage.verifyMastHeadLogos("Apply for loans",string);
    }

    @When("User clicks on Offers Co-branded credit card")
    public void user_clicks_on_offers_co_branded_credit_card() {
        clickOn(loginfieldsPage.cc_Offers);
    }


    @When("User clicks on {string} of masthead card")
    public void user_clicks_on_of_masthead_card(String string) {
        loginfieldsPage.clickOnHeadingLabelName(string);
    }
    @Then("it should be Redirected to {string}")
    public void it_should_be_redirected_to(String string) {
        verifyRedirectionURLIfContains(string);
    }

    @Then("Customer should be able to view below {int} icon under Shop on EMIs {string}")
    public void customer_should_be_able_to_view_below_icon_under_shop_on_em_is(Integer int1, String string) {
        loginfieldsPage.verifyMastHeadLogos("Shop on EMIs",string);
    }

    @Then("it should be Redirected to newTab {string}")
    public void it_should_be_redirected_to_new_tab(String string) {
       transferControlToWindow(2,false);
        verifyRedirectionURLIfContains(string);
        transferControlToWindow(1,true);
    }



    @When("Customer click on EMI Card Icon")
    public void customer_click_on_emi_card_icon() {
        clickOn(EMICardPage.homeEMICard_Icon);
        waitTime(2);
       // verifyFieldsDisplayedUsingText("Your card details");
    }
    @Then("Customer should be redirected to My Relation page after successfully logged in and card should be highlighted from cockpit")
    public void customer_should_be_redirected_to_my_relation_page_after_successfully_logged_in_and_card_should_be_highlighted_from_cockpit() {
        //loginfieldsPage.verifyEmiCard();
    }

    @Then("Customer should be redirected to My Relation page after successfully logged in and card should be highlighted from cockpit {string}")
    public void customer_should_be_redirected_to_my_relation_page_after_successfully_logged_in_and_card_should_be_highlighted_from_cockpit(String string) {
        loginfieldsPage.verifyEmiCard(string);
    }

    @Then("Customer should be able to view pop-up with Apply CTA and Cross icon after successfully logged in {string}")
    public void customer_should_be_able_to_view_pop_up_with_apply_cta_and_cross_icon_after_successfully_logged_in(String string) {

        loginfieldsPage.verifyTextContent("There is no Card details available for you");
        verifyFieldsDisplayedUsingLocator(loginfieldsPage.cta_Apply);
        verifyFieldsDisplayedUsingLocator(loginfieldsPage.cta_close);
    }

    @Then("Customer should be able to view below {int} icon under Co-branded credit card {string}")
    public void customer_should_be_able_to_view_below_icon_under_co_branded_credit_card(Integer int1, String string) {
        loginfieldsPage.verifyMastHeadLogos("Co-branded credit card",string);
    }

    @Then("Card should  be in auto carousal with timer of {int} secs")
    public void card_should_be_in_auto_carousal_with_timer_of_secs(Integer int1) {
        loginfieldsPage.clickOnDotButton(1);
        loginfieldsPage.verifyFieldisDisplayedUsingForLoop(loginfieldsPage.checkNow_locator);
        loginfieldsPage.clickOnDotButton(2);
        waitTime(1);
        loginfieldsPage.verifyFieldisDisplayedUsingForLoop(loginfieldsPage.openFd_locator);
        loginfieldsPage.clickOnDotButton(3);
        loginfieldsPage.verifyFieldisDisplayedUsingForLoop(loginfieldsPage.signCar_locator);
    }

    @Then("verify User as Guest")
    public void verify_user_as_guest() {

        loginfieldsPage.clickSkipButton();
        waitTime(4);
        clickOnButtonUsingLocatorUsingForLoop(LoginPage.icon_Profile);
        verifyFieldsDisplayedUsingLocator(loginfieldsPage.gusetlabel);
    }

    @Then("Corporate NRI customer should be logged in as guest")
    public void corporate_nri_customer_should_be_logged_in_as_guest() {
        loginfieldsPage.clickSkipButton();
        waitTime(4);
        clickOnButtonUsingLocatorUsingForLoop(LoginPage.icon_Profile);
        verifyFieldsDisplayedUsingLocator(loginfieldsPage.gusetlabel);
    }


    @Then("Shop on Bajaj Mall offer label & section should visible to the customer")
    public void shop_on_bajaj_mall_offer_label_section_should_visible_to_the_customer() {
       verifyFieldsDisplayedUsingLocator(loginfieldsPage.sbm_locator);
    }


    @Then("Customer should be able to view below content on product tiles {string} and {string}")
    public void customer_should_be_able_to_view_below_content_on_product_tiles_and(String string, String string2) {
        loginfieldsPage.clickSkipButton();
    loginfieldsPage.verifyShopOnBajajMall("Shop on EMIs | Cashback up to Rs. 5,000 on ACs",string2,string);
    }




    @When("Clicks on any product tile {string}")
    public void clicks_on_any_product_tile(String string) {
       loginfieldsPage.clickOnProduct("Shop on EMIs | Cashback up to Rs. 5,000 on ACs",string,"");
    }
    @Then("verify Shop on bajaj mall offers are redirected to {string}")
    public void verify_shop_on_bajaj_mall_offers_are_redirected_to(String string) {
         waitTime(2);
        transferControlToWindow(2,false);
        verifyRedirectionURLIfContains(string);
        transferControlToWindow(1,true);
    }


    @When("Clicks on Check Now CTA")
    public void clicks_on_check_now_cta() {
        loginfieldsPage.clickOnDotButton(1);
        clickOnButtonUsingLocatorUsingForLoop(loginfieldsPage.checkNow_locator);
    }


    @When("Clicks on Open FD CTA")
    public void clicks_on_open_fd_cta() {
        loginfieldsPage.clickOnDotButton(2);
        clickOnButtonUsingLocatorUsingForLoop(loginfieldsPage.openFd_locator);
    }

    @When("Clicks on Sign- in CTA")
    public void clicks_on_sign_in_cta() {
        loginfieldsPage.clickOnDotButton(3);
        clickOnButtonUsingLocatorUsingForLoop(loginfieldsPage.signCar_locator);
    }


    @Then("Our best selling product offer label & section should visible")
    public void our_best_selling_product_offer_label_section_should_visible() {
        verifyFieldsDisplayedUsingText("Our bestselling products");
        verifyFieldsDisplayedUsingText("Get our most popular offerings in just a few clicks");
    }

    @When("Click on Apply Online\\/Open FD CTA of best selling product {string}")
    public void click_on_apply_online_open_fd_cta_of_best_selling_product(String string) {
        loginfieldsPage.clickOnBestSellingProduct(string);
    }
    @Then("Customer should be able to view Login  pop-up")
    public void customer_should_be_able_to_view_login_pop_up() {
        loginfieldsPage.verifySignIn(loginfieldsPage.SignIn_Button);
    }

    @Given("Click on partner brand {string}")
    public void click_on_partner_brand(String string) {
        verifyFieldsDisplayedUsingText("Brand Store");
        loginfieldsPage.clickOnBrandLogoButton(string);
    }


    @Then("Customer should be redirected to respective page {string}")
    public void customer_should_be_redirected_to_respective_page(String string) {
      verifyRedirectionURLIfContains(string);
    }

    @Then("Customer should be redirected to respective {string}")
    public void customer_should_be_redirected_to_respective(String string) {
        verifyRedirectionURLIfContains(string);
    }

    @Then("Bajaj Mall  should be visible on the RHS")
    public void bajaj_mall_should_be_visible_on_the_rhs() {
    verifyFieldsDisplayedUsingLocator(loginfieldsPage.RHS_locator);
    }

    @Then("Customer should be redirected to take a tour Page.")
    public void customer_should_be_redirected_to_take_a_tour_page() {
        waitTime(4);
       verifyFieldsDisplayedUsingText("Check out the menu");
    }


    @Given("Click on RHS tile {string}")
    public void click_on_rhs_tile(String string) {
     loginfieldsPage.clickOnRHSOffer(string);
    }


    @Then("Customer should be redirected to respective brand page {string}")
    public void customer_should_be_redirected_to_respective_brand_page(String string) {
        waitForPageToLoad();
        transferControlToWindow(2,false);
        verifyRedirectionURLIfContains(string);
        transferControlToWindow(1,true);
    }



    @Then("Locate Us label & section should be visible to the customer")
    public void locate_us_label_section_should_be_visible_to_the_customer() {
        verifyFieldsDisplayedUsingLocator(loginfieldsPage.locate_locator);
        verifyFieldsDisplayedUsingText("Visit our nearest branch to apply for loans, pay bills, or invest in a fixed deposit");
    }

    @Then("Har time EMI on time BANNER label & section should be visible to the customer")
    public void har_time_emi_on_time_banner_label_section_should_be_visible_to_the_customer() {
        verifyFieldsDisplayedUsingLocator(loginfieldsPage.Har_locator);
        verifyFieldsDisplayedUsingText("Bajaj Finance launches an initiative to spread awareness on the benefits of paying EMIs on time");
    }

    @Given("Click on Locate Us")
    public void click_on_locate_us() {
    clickOn(loginfieldsPage.locate_locator);
    }

    @Given("Click on Har time on EMI in time")
    public void click_on_har_time_on_emi_in_time() {
        clickOn(loginfieldsPage.Har_locator);
    }

    @Then("Insurance  label & section should be visible to the customer")
    public void insurance_label_section_should_be_visible_to_the_customer() {
       verifyElementIsDisplayedUsingLocator(loginfieldsPage.Ins_locator);
    }

    @Given("Click on Insurance tile {string}")
    public void click_on_insurance_tile(String string) {
       loginfieldsPage.clickOnInsuranceLogoButton(string);
    }


    @Then("Investment  label & section should be visible to the customer")
    public void investment_label_section_should_be_visible_to_the_customer() {
        verifyElementIsDisplayedUsingLocator(loginfieldsPage.Inv_locator);
    }


    @Given("Click on Investment tile {string}")
    public void click_on_investment_tile(String string) {
        loginfieldsPage.clickOnInsuranceLogoButton(string);
    }
    @Then("Customer should be redirected to respective URL or page of Investment offer with authentication")
    public void customer_should_be_redirected_to_respective_url_or_page_of_investment_offer_with_authentication() {

    }

    @Then("Lifesyle Store offer label & section should be visible  to the customer")
    public void lifesyle_store_offer_label_section_should_be_visible_to_the_customer() {
       verifyFieldsDisplayedUsingText("Lifestyle Store | Cashback up to Rs. 4,000");
    }


    @Given("Click on Product tile {string}")
    public void click_on_product_tile(String string) {
       loginfieldsPage.clickOnLifeStyleProduct(string);
    }

    @Then("Two-wheeler world label & section should be visible  to the customer")
    public void two_wheeler_world_label_section_should_be_visible_to_the_customer() {
        verifyFieldsDisplayedUsingText("Two-wheeler World | Cashback up to Rs. 5,000");
    }

    @Given("Click on TwoWheeler tile {string}")
    public void click_on_two_wheeler_tile(String string) {
        waitForPageToLoad();
     loginfieldsPage.clickOnTwoWheelerProduct(string);
    }

    @Given("Click on Products for You tile {string}")
    public void click_on_products_for_you_tile(String string) {
        loginfieldsPage.clickOnProductsForYou(string);
    }


    @Then("verify All Submenu is Displayed in Login Page Hamburger {string}")
    public void verify_all_submenu_is_displayed_in_login_page_hamburger(String string) {
       loginfieldsPage.verifyHamburgerMenus("Hamburger",string);
    }


    @Then("Verify Customer is able to view {string} for Help and Support menu")
    public void verify_customer_is_able_to_view_for_help_and_support_menu(String string) {
        loginfieldsPage.verifyHamburgerSubMenus("Help and Support",string);
    }

    @Then("Verify Customer is able to view {string} for {string}")
    public void verify_customer_is_able_to_view_for(String string, String string2) {
        loginfieldsPage.verifyHamburgerSubMenus(string2,string);
    }


    @Given("Clicks on {string} of {string}")
    public void clicks_on_of(String string, String string2) {
       loginfieldsPage.clickOnHamburgerSubMenus(string2,string);
    }

    @Given("Click on Online Store tile {string}")
    public void click_on_online_store_tile(String string) {
        loginfieldsPage.clickOnOnlineStoreProduct(string);
    }

    @Given("Click on Explore Store tile {string}")
    public void click_on_explore_store_tile(String string) {
        loginfieldsPage.clickOnExploreProduct(string);
    }


    @Then("Partners Offers label & section should be visible to the customer")
    public void partners_offers_label_section_should_be_visible_to_the_customer() {
        verifyFieldsDisplayedUsingText("Partner Offers");
        verifyFieldsDisplayedUsingText("Get attractive discounts in a few clicks");
    }
    @Then("Click on Partners tile {string}")
    public void click_on_partners_tile(String string) {
        waitTime(2);
       loginfieldsPage.clickOnPartnerImageProduct(string);
    }

    @Then("Customer should be able to view all options are Present")
    public void customer_should_be_able_to_view_all_options_are_present() {
        loginfieldsPage.verifyFieldsDisplayedUsingLocator(HomePage.logo_Bfinserv);
        loginfieldsPage.verifyFieldsDisplayedUsingLocator(HomePage.icon_Hamburger);
        loginfieldsPage.verifyFieldsDisplayedUsingLocator(SearchPage.searchBox);
        loginfieldsPage.verifyFieldsDisplayedUsingLocator(HomePage.title_SuperStores);
        loginfieldsPage.verifyFieldsDisplayedUsingLocator(loginfieldsPage.app_locator);
        loginfieldsPage.verifyFieldsDisplayedUsingLocator(loginfieldsPage.Shp_locator);
        loginfieldsPage.verifyFieldsDisplayedUsingLocator(loginfieldsPage.cbc_locator);
        loginfieldsPage.verifyFieldsDisplayedUsingLocator(HomePage.section_Carousal);
        loginfieldsPage.verifyFieldsDisplayedUsingLocator(loginfieldsPage.Ins_locator);
        loginfieldsPage.verifyFieldsDisplayedUsingLocator(loginfieldsPage.Inv_locator);
        loginfieldsPage.verifyFieldsDisplayedUsingLocator(loginfieldsPage.locate_locator);
       // loginfieldsPage.verifyFieldsDisplayedUsingLocator(loginfieldsPage.Har_locator);
        loginfieldsPage.verifyFieldsDisplayedUsingLocator(loginfieldsPage.sbmall_locator);
        loginfieldsPage.verifyFieldsDisplayedUsingLocator(loginfieldsPage.obp_locator);
        loginfieldsPage.verifyFieldsDisplayedUsingLocator(loginfieldsPage.bs_locator);
        loginfieldsPage.verifyFieldsDisplayedUsingLocator(loginfieldsPage.lfs_locator);
        loginfieldsPage.verifyFieldsDisplayedUsingLocator(loginfieldsPage.prod_locator);
        loginfieldsPage.verifyFieldsDisplayedUsingLocator(loginfieldsPage.twl_locator);
        loginfieldsPage.verifyFieldsDisplayedUsingLocator(loginfieldsPage.os_locator);
        loginfieldsPage.verifyFieldsDisplayedUsingLocator(loginfieldsPage.exp_locator);
        loginfieldsPage.verifyFieldsDisplayedUsingLocator(loginfieldsPage.par_locator);

    }



    @When("Click Resend OTP after {int} sec")
    public void click_resend_otp_after_sec(Integer int1) {
       waitTime(60);
       clickOn(loginfieldsPage.btn_Resend);
        loginfieldsPage.waitForThreeDotsDisapper(20);
       waitForPageToLoad();
    }



    @Then("Bills & recharge label & section should be visible  to the customer")
    public void bills_recharge_label_section_should_be_visible_to_the_customer() {
      verifyFieldsDisplayedUsingLocator(loginfieldsPage.bbrsAllBBRS);
    }



    @When("Clicks on any options under Bills & recharge {string}")
    public void clicks_on_any_options_under_bills_recharge(String string) {
       loginfieldsPage.clickOnBBRSOffer(string);
    }
    @Then("verify Bills & Recharge options are redirected to {string}")
    public void verify_bills_recharge_options_are_redirected_to(String string) {

        waitForPageToLoad();
        transferControlToWindow(2,false);
        waitForPageToLoad();
       verifyRedirectionURLIfContains(string);
       transferControlToWindow(1,true);
    }

    @Then("Customer should be redirected to respective URL or page of Fixed deposit offer with authentication and SSO {string}")
    public void customer_should_be_redirected_to_respective_url_or_page_of_fixed_deposit_offer_with_authentication_and_sso(String string) {
        waitForPageToLoad();
        transferControlToWindow(2,false);
        waitForPageToLoad();
        verifyRedirectionURLIfContains(string);
        transferControlToWindow(1,true);
    }
    @When("Clicks on any options under Bills & recharge View All {string}")
    public void clicks_on_any_options_under_bills_recharge_view_all(String string) {
        clickOn(loginfieldsPage.viewAllBBRS);
    }



    @Then("Customer should be able to view below icon under BBPS {string}")
    public void customer_should_be_able_to_view_below_icon_under_bbps(String string) {
        loginfieldsPage.verifyBBRSLogos("Bills & Recharges", string);
       verifyFieldsDisplayedUsingLocator(loginfieldsPage.viewAllBBRS);
    }

//New CR

    @When("customer under shop on Bajaj mall Section")
    public void customer_under_shop_on_bajaj_mall_section() {
       verifyFieldsDisplayedUsingLocator(loginfieldsPage.sbmall_locator);
    }
    @When("verify smartphones Option nudge color Nudgecolor")
    public void verify_smartphones_option_nudge_color_nudgecolor() {
        loginfieldsPage.verifyLocatorColorUsingCssValue(loginfieldsPage.ShopBajalMall_Nudge, "#00B500", "green", "background-color");
    }
    @Then("customer should be able to view green nudge color with offer text Under Shop on Bajaj mall section")
    public void customer_should_be_able_to_view_green_nudge_color_with_offer_text_under_shop_on_bajaj_mall_section() {
     verifyFieldsDisplayedUsingLocator(loginfieldsPage.ShopBajalMall_Nudge);
    }

    @When("customer under Investment Section")
    public void customer_under_investment_section() {
        verifyFieldsDisplayedUsingLocator(loginfieldsPage.Inv_locator);
    }
    @When("verify fixed deposit option Fixed deposit")
    public void verify_fixed_deposit_option_fixed_deposit() {
        loginfieldsPage.verifyLocatorColorUsingCssValue(loginfieldsPage.InvFD_Nudge, "#00B500", "green", "background-color");

    }
    @Then("customer should be able to view green nudge with FD rate nudegetext Up to {double}%")
    public void customer_should_be_able_to_view_green_nudge_with_fd_rate_nudegetext_up_to(Double double1) {
        verifyFieldsDisplayedUsingLocator(loginfieldsPage.InvFD_Nudge);

    }


    @When("customer under Lifestyle Store Section")
    public void customer_under_lifestyle_store_section() {
        verifyFieldsDisplayedUsingLocator(loginfieldsPage.lfs_locator);
    }
    @When("verify Mattress Option nudge color")
    public void verify_mattress_option_nudge_color() {
        loginfieldsPage.verifyLocatorColorUsingCssValue(loginfieldsPage.life_Nudge, "#00B500", "green", "background-color");

    }
    @Then("customer should be able to view green nudge color with offer text Under Lifestyle Store section")
    public void customer_should_be_able_to_view_green_nudge_color_with_offer_text_under_lifestyle_store_section() {
       verifyFieldsDisplayedUsingLocator(loginfieldsPage.life_Nudge);
    }



    @When("customer under Two wheeler world Section")
    public void customer_under_two_wheeler_world_section() {
        verifyFieldsDisplayedUsingLocator(loginfieldsPage.twl_locator);
    }
    @When("verify Scooters category Option nudge color")
    public void verify_scooters_category_option_nudge_color() {
        loginfieldsPage.verifyLocatorColorUsingCssValue(loginfieldsPage.twoWheeler_Nudge, "#00B500", "green", "background-color");

    }
    @Then("customer should be able to view green nudge color with offer text for Scooters category Under Two wheeler world section")
    public void customer_should_be_able_to_view_green_nudge_color_with_offer_text_for_scooters_category_under_two_wheeler_world_section() {
        verifyFieldsDisplayedUsingLocator(loginfieldsPage.twoWheeler_Nudge);
    }

    @When("customer under products for You Section")
    public void customer_under_products_for_you_section() {
        verifyFieldsDisplayedUsingLocator(loginfieldsPage.prod_locator);
    }
    @When("verify fixed deposit option Under products for You nudge color")
    public void verify_fixed_deposit_option_under_products_for_you_nudge_color() {
        loginfieldsPage.verifyLocatorColorUsingCssValue(loginfieldsPage.prod_Nudge, "#00B500", "green", "background-color");
    }
    @Then("customer should be able to view green nudge with FD rate nudge text")
    public void customer_should_be_able_to_view_green_nudge_with_fd_rate_nudge_text() {
      verifyFieldsDisplayedUsingLocator(loginfieldsPage.prod_Nudge);
    }

    @When("customer under RHS Supersore Section")
    public void customer_under_rhs_supersore_section() {
        verifyFieldsDisplayedUsingLocator(loginfieldsPage.RHS_locator);
    }
    @When("verify Bajaj mall Option purple nudge color")
    public void verify_bajaj_mall_option_purple_nudge_color() {
        loginfieldsPage.verifyLocatorColorUsingCssValue(loginfieldsPage.SuperStore_Nudge, "#8961E1", "Purple", "background-color");

    }
    @Then("customer should be able to view perple nudge nudge with offer text Under RHS super store section")
    public void customer_should_be_able_to_view_perple_nudge_nudge_with_offer_text_under_rhs_super_store_section() {
 verifyFieldsDisplayedUsingLocator(loginfieldsPage.SuperStore_Nudge);
    }



    @When("User clicks on My Account")
    public void user_clicks_on_my_account() {

        if(isElementDisplayed(loginfieldsPage.SignIn_Button)){
            clickOnIfDisplayed(LoginPage.icon_MyAccount);
            waitTime(3);
        }
        else{
        }
       // waitTime(10);
        clickOnIfDisplayed(LoginPage.icon_MyAccount);
       // waitForPageToLoad();
    }
    @Then("Customer should be able to view sign in popin under my account")
    public void customer_should_be_able_to_view_sign_in_popin_under_my_account() {
      verifyFieldsDisplayedUsingLocator(LoginPage.login_Button);
    }



    @When("Click on Sign in popin")
    public void click_on_sign_in_popin() {
        clickOnIfDisplayed(loginfieldsPage.SignIn_Button);
        waitForPageToLoad();
    }
    @Then("Login popup should be visible to customer")
    public void login_popup_should_be_visible_to_customer() {
     verifyFieldsDisplayedUsingLocator(loginfieldsPage.loginPopup);
    }


    @Then("Cross \\(x) CTA of login popup should be visible and clickable")
    public void cross_x_cta_of_login_popup_should_be_visible_and_clickable() {
     verifyFieldsDisplayedUsingLocator(loginfieldsPage.clossmark_Login);
    }

    @When("Click on Cross mark\\(x) CTA of popup")
    public void click_on_cross_mark_x_cta_of_popup() {
      clickOn(loginfieldsPage.clossmark_Login,"");
      waitForPageToLoad();
    }

    @Then("Customer should be landed on my account login landing page on click of cross \\(x) CTA of login popup")
    public void customer_should_be_landed_on_my_account_login_landing_page_on_click_of_cross_x_cta_of_login_popup() {
        loginfieldsPage.verifyFieldsNotDisplayedUsingLocator(loginfieldsPage.clossmark_Login);
    }


    @When("Hit the enter key from keyboard for GET OTP")
    public void hit_the_enter_key_from_keyboard_for_get_otp() {
        try {
            waitTime(1);
            findWebElement(loginfieldsPage.tab_Dob).sendKeys(Keys.TAB);
            clickOnButtonUsingLocatorUsingForLoopWithoutFail(LoginPage.skip);
           // findWebElement(loginfieldsPage.button_getOTP).sendKeys(Keys.TAB);
            Robot r = new Robot();
            r.keyPress(KeyEvent.VK_TAB);
            r.keyRelease(KeyEvent.VK_TAB);
            r.keyPress(KeyEvent.VK_ENTER);
            r.keyRelease(KeyEvent.VK_ENTER);
         waitForPageToLoad();
            waitTime(5);
        }
        catch(Exception e){
            testStepFailed("Unable to click Enter Key Board Button");
        }
    }


    @Then("Verify Resend otp is disabled state and grayed out.")
    public void verify_resend_otp_is_disabled_state_and_grayed_out() {
        verifyFieldsDisplayedUsingLocator(loginfieldsPage.resend_Login);
      //  verifyLocatorColorUsingCssValue(loginfieldsPage.resend_LoginColor,"#ff6700","orange","background-color");
        loginfieldsPage.verifyLocatorColorUsingCssValue(loginfieldsPage.resend_LoginColor,"#FF6700","orange","color");
    }


    @Then("User should be redirected to Overdue details Page")
    public void user_should_be_redirected_to_overdue_details_page() {
        verifyRedirectionURLIfContains("https://uat-oneweb.bajajfinserv.in/MyAccountPayments/LoanPay/ActiveLoanOverduePay?source=OVERDUE");


    }

    @Then("User should be redirected to Active Loan details Page")
    public void user_should_be_redirected_to_active_loan_details_page() {
        verifyRedirectionURLIfContains("https://uat-oneweb.bajajfinserv.in/MyAccountPayments/LoanPay/ActiveLoanPay");
    }


    @When("User click on Payment Option")
    public void user_click_on_payment_option() {

    }
    @When("Click on Pay Your EMI")
    public void click_on_pay_your_emi() {
   clickOn(loginfieldsPage.termloan_PayNow);
    }


    @Then("Verify Hamburger Menu is displayed")
    public void verify_hamburger_menu_is_displayed() {
         verifyFieldsDisplayedUsingLocator(loginfieldsPage.ham_Menu);
    }

    @Then("Customer should be redirected to document center page")
    public void customer_should_be_redirected_to_document_center_page() {
        verifyRedirectionURLIfContains("https://uat-oneweb.bajajfinserv.in/MyAccountDocumentCenter/DocumentCenter");
    }


    @When("Clicks on View all of my relation")
    public void clicks_on_view_all_of_my_relation() {
        clickOn(loginfieldsPage.home_viewAll);
        waitForPageToLoad();
    }
    @When("Click on RHS Menu")
    public void click_on_rhs_menu() {
        clickOn(loginfieldsPage.rhs_doc);
        waitForPageToLoad();
    }

    @When("Click on Insurance Tab")
    public void click_on_insurance_tab() {
        clickOn(loginfieldsPage.ins_Tab);
    }
    @Then("All active insurances should be displayed")
    public void all_active_insurances_should_be_displayed() {
       verifyFieldsDisplayedUsingText("Select your insurance policy to view its documents");
    }


    @When("Click on Insurance Card {string}")
    public void click_on_insurance_card(String string) {
        loginfieldsPage.clickOnPolicyLabel(string);
    }


    @When("Click on Insurance Card {string} in homePage")
    public void click_on_insurance_card_in_home_page(String string) {
        loginfieldsPage.clickOnPolicyLabelinViewAll(string);
    }


    @When("click on Active Insurance Tile having product code {string}")
    public void click_on_active_insurance_tile_having_product_code(String string) {
        loginfieldsPage.clickOnPolicyLabelinViewAll(string);

    }
    @When("Click on Claim Request CTA")
    public void click_on_claim_request_cta() {
    clickOn(loginfieldsPage.rhs_cliam);
    }
    @Then("customer should be redirected to CPP Portal Page {string} when customer click on Raise A Request CTA")
    public void customer_should_be_redirected_to_cpp_portal_page_when_customer_click_on_raise_a_request_cta(String string) {
      //  clickOn(loginfieldsPage.raise_btn);
        transferControlToWindow(2,false);
        verifyRedirectionURLIfContains(string);
        transferControlToWindow(1,true);

    }



    @When("Click on COI document")
    public void click_on_coi_document() {
       clickOn(loginfieldsPage.coi_btn);
    }
    @Then("Pop up with below text and GOT IT CTA should be displayed {string}")
    public void pop_up_with_below_text_and_got_it_cta_should_be_displayed(String string) {
     verifyFieldsDisplayedUsingText(string);
     verifyFieldsDisplayedUsingText("Got It!");
    }

    @When("Click on GOT IT CTA")
    public void click_on_got_it_cta() {
        clickOn(loginfieldsPage.got_btn);
    }
    @Then("Customer should be on document list page on click on GOT IT CTA")
    public void customer_should_be_on_document_list_page_on_click_on_got_it_cta() {
        verifyRedirectionURLIfContains("https://uat-oneweb.bajajfinserv.in/MyAccountDocumentCenter/DocumentCenter/docCenter_Insurance");
    }

    @When("Click on {string} in View All")
    public void click_on_in_view_all(String string) {
        clickOn(loginfieldsPage.viewall_Cards);
        waitForPageToLoad();
    }
    @When("click on Tile having product code {string}")
    public void click_on_tile_having_product_code(String string) {
        loginfieldsPage.clickOnEmiCardLabelInViewAll(string);
        waitForPageToLoad();
        waitTime(5);
    }

    @When("Click on Insurance Tab in View All")
    public void click_on_insurance_tab_in_view_all() {
        clickOn(loginfieldsPage.viewall_Cards);
        waitForPageToLoad();
    }
    @When("Click on View Statement")
    public void click_on_view_statement() {
        clickOn(loginfieldsPage.viewdoc_btn);
        waitForPageToLoad();
    }

    @When("Clicks on View All of My relatiom")
    public void clicks_on_view_all_of_my_relatiom() {
        clickOn(loginfieldsPage.home_viewAll);
        waitForPageToLoad();
    }

    @Then("Login Popup should displayed with below field Mobile Number DOB,GET OTP CTA")
    public void login_popup_should_displayed_with_below_field_mobile_number_dob_get_otp_cta() {
        verifyFieldsDisplayedUsingLocator(loginfieldsPage.txt_Mobileno);
        verifyFieldsDisplayedUsingLocator(loginfieldsPage.txt_Dateofbirth);
        verifyFieldsDisplayedUsingLocator(loginfieldsPage.button_getOTP);
    }

    @Given("User is on Login popup")
    public void user_is_on_login_popup() {
        redirectToUrl("https://uat-oneweb.bajajfinserv.in/MyAccountLogin","");
        waitForPageToLoad();
        waitTime(5);
        loginfieldsPage.clickfirstSkipButton();
        verifyFieldsDisplayedUsingLocator(loginfieldsPage.txt_SignIn);
    }

    @When("User Leaves Mobile number field blank {string}")
    public void user_leaves_mobile_number_field_blank(String string) {
        loginfieldsPage.enterMobileNumber(string);
    }

    @When("User Enters less than {int} digit Mobile number {string}")
    public void user_enters_less_than_digit_mobile_number(Integer int1, String string) {
        loginfieldsPage.enterMobileNumber(string);
    }

    @When("Enter DOB {string}")
    public void enter_dob(String string) {
        loginfieldsPage.enterDOB(string);
    }

    @Then("Below validation message should be displayed {string}")
    public void below_validation_message_should_be_displayed(String string) {
        verifyFieldsDisplayedUsingText(string);
        manualScreenshot(string);
    }

    @Given("Enters Mobile number\\/Email ID field blank {string}")
    public void enters_mobile_number_email_id_field_blank(String string) {
        loginfieldsPage.enterDOIMobileNumber(string);
    }
    @Then("Customer should be able to view Change number CTA after masked mobile number")
    public void customer_should_be_able_to_view_change_number_cta_after_masked_mobile_number() {
        loginfieldsPage.verifyIndividualOTPContent("8888890933");
    }



    @When("Click on Submit after {int} Sec")
    public void click_on_submit_after_sec(Integer int1) {
        waitTime(120);
        clickOnButtonUsingTextUsingForLoop("Submit");
        waitForPageToLoad();
        waitForThreeDotsDisAppear();
    }



}