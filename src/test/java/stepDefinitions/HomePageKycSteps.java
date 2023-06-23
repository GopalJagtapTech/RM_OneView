package stepDefinitions;

import PageObjects.*;
import base.ApplicationKeywords;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.openqa.selenium.Alert;

public class HomePageKycSteps extends ApplicationKeywords {

    LoginPage login;
    HomePage home;
    HomePageKyc kycpage;

    LoginFieldPage loginfieldsPage;

    FDServicesPage fdservices;

    public HomePageKycSteps() {
        login = new LoginPage();
        home = new HomePage();
        kycpage = new HomePageKyc();
        loginfieldsPage=new LoginFieldPage();
        fdservices = new FDServicesPage();
    }


    @And("verify re KYC popup")
    public void verifyReKYCPopup() {
        verifyElementIsDisplayedOrNot(HomePageKyc.kyc_Popup);
    }


    @Then("verify the field {string} in the KYC Popup")
    public void verifyTheFieldInTheKYCPopup(String string) {
        verifyValueUsingLabel("//div[@class='dialog_modal kyc-popup']/div[@class='dialog_body']/descendant::div/p/strong",string,"/following-sibling::span","");

    }

//    @Then("verify the following buttons {string} are displayed in the page")
//    public void verify_the_following_buttons_are_displayed_in_the_page(String string) {
//        kycpage.verifyButtons(string);
//    }

    @When("Click on two {string} button")
    public void click_on_two_button(String string) {

        clickOn(kycpage.kyc_checkBox);
        kycpage.clickKycButton(string);
        waitForPageToLoad();
        waitTime(10);
    }
    @Then("Customer should  be able to click on two CTA from re KYC popup on homepage and It should be redirected to respective page")
    public void customer_should_be_able_to_click_on_two_cta_from_re_kyc_popup_on_homepage_and_it_should_be_redirected_to_respective_page() {

    }


    @Then("Customer should be redirected to My Relation page")
    public void customer_should_be_redirected_to_my_relation_page() {
        verifyPageRedirectionUsingTagAndText("h2","My Relations","");
    }

    @When("Click on Flexi loan Card {string}")
    public void click_on_flexi_loan_card(String string) {
        fdservices.clickOnMyRelationTileViewDetailsIcon("FLEXI TERM LOAN", string, "");
        //  fdservices.verifyMyRelationTileRedirectionUsingAccountNumber("FLEXI TERM LOAN", string, "");

    }


    @Then("Drawdown Bank Change CTA should be visible")
    public void drawdown_bank_change_cta_should_be_visible() {
        verifyFieldsDisplayedUsingLocator(kycpage.drawdown_cta);
    }

    @When("Click on  Drawdown Bank Change from RHS")
    public void click_on_drawdown_bank_change_from_rhs() {
        clickOn(kycpage.drawdown_cta);
    }
    @Then("Popup with OK CTA should be dispalyed {string}")
    public void popup_with_ok_cta_should_be_dispalyed(String string) {
        loginfieldsPage.verifyTextContent("We are unable to proceed with your request due to some technical issues. You will be redirected to our ‘Raise a Request’ section to change your bank account details.");
        verifyFieldsDisplayedUsingLocator(kycpage.ok_cta);

    }


    @Then("Customer should be redirected to My Relation Heading page")
    public void customer_should_be_redirected_to_my_relation_heading_page() {
        verifyRedirectionURLIfContains("https://uat-oneweb.bajajfinserv.in/MyAccountLoanServices/Loans/flexiloan");
    }

    @When("Click on OK")
    public void click_on_ok() {
        clickOn(kycpage.ok_cta);
        waitForPageToLoad();
    }
    @Then("Customer should be redirected to RAR page")
    public void customer_should_be_redirected_to_rar_page() {
        verifyRedirectionURLIfContains("https://uat-oneweb.bajajfinserv.in/MyAccountService/HelpAndSupport/LogRequest");
    }


    @Then("Customer should be able to view re KYC popup on homepage")
    public void customer_should_be_able_to_view_re_kyc_popup_on_homepage() {
        verifyFieldsDisplayedUsingText("Verify Your Information");
        verifyFieldsDisplayedUsingText("As a part of KYC(Know Your Customer) process.We request you to verify your identity.");
        verifyValueUsingLabel("//div[@class='dialog_modal kyc-popup']/div[@class='dialog_body']/descendant::div/p/strong","Name :","/following-sibling::span","");
        kycpage.verifyMaskedValueUsingLabel("//div[@class='dialog_modal kyc-popup']/div[@class='dialog_body']/descendant::div/p/strong","Address :","/following-sibling::span","");
        kycpage.verifyMaskedValueUsingLabel("//div[@class='dialog_modal kyc-popup']/div[@class='dialog_body']/descendant::div/p/strong","Permanent Account Number :","/following-sibling::span","");
        verifyFieldsDisplayedUsingLocator(kycpage.kyc_checkBox);
        kycpage.verifyButtons("This is correct#Complete KYC");
        verifyFieldsDisplayedUsingText("In case your KYC seems incorrect, click on ‘Complete KYC’ to change your profile details.");
        verifyFieldsDisplayedUsingLocator(kycpage.close_Kyc_Popup);
    }


    @Then("Customer should not be able to view re KYC popup on homepage")
    public void customer_should_not_be_able_to_view_re_kyc_popup_on_homepage() {
        kycpage.verifyFieldsNotDisplayedUsingLocator(kycpage.kyc_Popup);
    }

    @Then("Click On This is Correct button verifies redirectes to home page")
    public void click_on_this_is_correct_button_verifies_redirectes_to_home_page() {
        clickOn(kycpage.kyc_checkBox);
        clickOn(kycpage.btn_Correct);
        waitForPageToLoad();
        waitTime(10);
        verifyRedirectionURLIfContains("https://uat-oneweb.bajajfinserv.in/MyAccountCustomer/Home");
    }


    @Then("Customer should  be able to view re KYC popup on homepage with Two CTA This is correct and Complete KYC should be displayed")
    public void customer_should_be_able_to_view_re_kyc_popup_on_homepage_with_two_cta_this_is_correct_and_complete_kyc_should_be_displayed() {
        kycpage.verifyFieldsNotDisplayedUsingLocator(kycpage.kyc_Popup);
        kycpage.verifyButtons("This is correct#Complete KYC");
    }



    @When("verify Alert bell icon in header")
    public void verify_alert_bell_icon_in_header() {
        verifyFieldsDisplayedUsingLocator(kycpage.alerts_Icon);
    }
    @Then("NTB PTB ETB Customer should be able to View Alert section on header of Homepage")
    public void ntb_ptb_etb_customer_should_be_able_to_view_alert_section_on_header_of_homepage() {
        clickOn(kycpage.alerts_Icon);
        verifyFieldsDisplayedUsingLocator(kycpage.alerts_label);
    }

    @Then("ETB Customer should be able to View Alert section on header of Homepage")
    public void etb_customer_should_be_able_to_view_alert_section_on_header_of_homepage() {
        clickOn(kycpage.alerts_Icon);
        verifyFieldsDisplayedUsingLocator(kycpage.alerts_label);
    }

    @When("Click on Alert bell icon")
    public void click_on_alert_bell_icon() {
        clickOn(kycpage.alerts_Icon);
    }
    @Then("Customer should be able to click on Alert option and offers should be displayed")
    public void customer_should_be_able_to_click_on_alert_option_and_offers_should_be_displayed() {
        verifyFieldsDisplayedUsingLocator(kycpage.alerts_label);
    }


    @When("Verify Fixed Deposit offer card {string}")
    public void verify_fixed_deposit_offer_card(String string) {
        kycpage.verifyAlertsIconBelowOffers(string,"INVEST ONLINE");
    }

    @When("Verify Shop on No Cost EMIs offer card {string}")
    public void verify_shop_on_no_cost_em_is_offer_card(String string) {
        kycpage.verifyAlertsIconBelowOffers(string,"VISIT STORE");
    }

    @Then("Customer should be able to view Fixed deposit offer card with given two {string} and {string} and subtext as per AEM")
    public void customer_should_be_able_to_view_fixed_deposit_offer_card_with_given_two_and_and_subtext_as_per_aem(String string, String string2) {
        kycpage.verifyAlertsIconBelowOffers("Fixed Deposit",string);
        kycpage.verifyAlertsIconBelowOffers("Fixed Deposit",string2);
    }


    @Then("Fixed Deposit card title should be in camel case and CTA should be in caps Fixed Deposit {string} and {string}")
    public void fixed_deposit_card_title_should_be_in_camel_case_and_cta_should_be_in_caps_fixed_deposit_and(String string, String string2) {
        kycpage.verifyFontSizeAlertsIconBelowOffers("Fixed Deposit",string);
        kycpage.verifyFontSizeAlertsIconBelowOffers("Fixed Deposit",string2);
    }

    @Then("Shop on No Cost EMIs title should be in CAPS case and CTA should be in caps Fixed Deposit {string} and {string}")
    public void shop_on_no_cost_em_is_title_should_be_in_caps_case_and_cta_should_be_in_caps_fixed_deposit_and(String string, String string2) {
        kycpage.verifyFontSizeAlertsIconBelowOffers("Shop on No Cost EMIs",string);
        kycpage.verifyFontSizeAlertsIconBelowOffers("Shop on No Cost EMIs",string2);
    }




    @When("Verify Check\\/update email ID card option")
    public void verify_check_update_email_id_card_option() {
       verifyFieldsDisplayedUsingText("Check/update email ID");
    }
    @Then("Customer should be able to Check update email ID  with Update CTA and subtext {string} and {string}")
    public void customer_should_be_able_to_check_update_email_id_with_update_cta_and_subtext_and(String string, String string2) {
        verifyFieldsDisplayedUsingText("Update your email ID in few clicks.");

    }


    @When("Verify CTA in caps on card option {string}")
    public void verify_cta_in_caps_on_card_option(String string) {

    }
    @Then("Update CTA should be displayed in caps format")
    public void update_cta_should_be_displayed_in_caps_format() {
        kycpage.verifyFontSizeAUpdateEmailID("UPDATE");
    }


    @When("Click on Update {string}")
    public void click_on_update(String string) {
      clickOn(kycpage.updatebutton);
      waitForPageToLoad();
      waitTime(10);
    }
    @Then("Customer should be redirected to My Profile page")
    public void customer_should_be_redirected_to_my_profile_page() {
       verifyRedirectionURLIfContains("https://uat-oneweb.bajajfinserv.in/MyAccountService/UpdateDetails/UserProfileDetail");
    }




    @When("Verify Fixed Deposit tile Click on INVEST ONLINE {string}")
    public void verify_fixed_deposit_tile_click_on_invest_online(String string) {
        kycpage.clickOnAlertsIconBelowOffers("Fixed Deposit","INVEST ONLINE");
    }

    @When("Verify Shop on No Cost EMIs Click on SHOP ONLINE {string}")
    public void verify_shop_on_no_cost_em_is_click_on_shop_online(String string) {
        kycpage.clickOnAlertsIconBelowOffers("Shop on No Cost EMIs","SHOP ONLINE");
    }


    @Then("Customer should be redirected to respective page and URL with SSO and form should be prefilled")
    public void customer_should_be_redirected_to_respective_page_and_url_with_sso_and_form_should_be_prefilled() {
        verifyRedirectionURLIfContains("https://uat-oneweb.bajajfinserv.in/investments/fixed-deposit");
    }


    @When("Verify Fixed Deposit tile Click on KNOW MORE {string}")
    public void verify_fixed_deposit_tile_click_on_know_more(String string) {
        kycpage.clickOnAlertsIconBelowOffers("Fixed Deposit","KNOW MORE");
    }

    @When("Verify Shop on No Cost EMIs tile Click on  VISIT STORE {string}")
    public void verify_shop_on_no_cost_em_is_tile_click_on_visit_store(String string) {
        kycpage.clickOnAlertsIconBelowOffers("Shop on No Cost EMIs","VISIT STORE");
    }

    @Then("Customer should be redirected to respective page and {string} with SSO")
    public void customer_should_be_redirected_to_respective_page_and_with_sso(String string) {
        verifyRedirectionURLIfContains(string);
    }


    @When("Verify position of {string} {string}")
    public void verify_position_of(String string, String string2) {
        kycpage.verifyAlertsIconBelowOffers("Fixed Deposit","INVEST ONLINE");
        String button = "Fixed Deposit INVEST ONLINE  "+ "#xpath=//h3[text()='Fixed Deposit']//parent::div//following::div//a[contains(text(),'" + string + "')]";
        verifyLocatorIsPresentInRightSideOfPage(button);
    }
    @Then("KNOW MORE CTA should be left on tile and INVEST ONLINE CTA should be right side on FD offer card")
    public void know_more_cta_should_be_left_on_tile_and_invest_online_cta_should_be_right_side_on_fd_offer_card() {

        String button1 = "Fixed Deposit  KNOW MORE "+ "#xpath=//h3[text()='Fixed Deposit']//parent::div//following::div//a[contains(text(),'KNOW MORE')]";
        String button2 = "Fixed Deposit  INVEST ONLINE "+ "#xpath=//h3[text()='Fixed Deposit']//parent::div//following::div//a[contains(text(),'INVEST ONLINE')]";
        verifyLocatorPresentInLeftSideOfAnotherLocator(button1,button2,0);
    }


    @Then("SHOP ONLINE CTA should be left on tile and VISIT STORE CTA should be right side on Shop On No Cost EMis")
    public void shop_online_cta_should_be_left_on_tile_and_visit_store_cta_should_be_right_side_on_shop_on_no_cost_e_mis() {
        String button1 = "Shop on No Cost EMIs  SHOP ONLINE "+ "#xpath=//h3[text()='Shop on No Cost EMIs']//parent::div//following::div//a[contains(text(),'SHOP ONLINE')]";
        String button2 = "Shop on No Cost EMIs VISIT STORE "+ "#xpath=//h3[text()='Shop on No Cost EMIs']//parent::div//following::div//a[contains(text(),'VISIT STORE')]";
        verifyLocatorPresentInLeftSideOfAnotherLocator(button1,button2,0);
    }




    @When("User click on Alert Bell icon")
    public void user_click_on_alert_bell_icon() {
        clickOn(kycpage.alerts_Icon);
    }
    @When("click on Check Offer CTA under Pre-approved Personal Loan")
    public void click_on_check_offer_cta_under_pre_approved_personal_loan() {
        kycpage.clickOnAlertsIconBelowOffers("Pre-approved Personal Loan","CHECK OFFER");
    }

    @When("click on InvestOnline under Fixed Deposit")
    public void click_on_invest_online_under_fixed_deposit() {
        kycpage.clickOnAlertsIconBelowOffers("Fixed Deposit","INVEST ONLINE");

    }


    @When("click on Get It Now CTA under Insta EMI Card")
    public void click_on_get_it_now_cta_under_insta_emi_card() {
        kycpage.clickOnAlertsIconBelowOffers("Insta EMI Card","GET IT NOW");
        //  verifyLocatorPresentInLeftSideOfAnotherLocator();
    }




    @When("Verify User is having Personal Loan Offer")
    public void verify_user_is_having_personal_loan_offer() {
        verifyFieldsDisplayedUsingLocator(kycpage.preApproved_PL);
    }
    @Then("Verify User is redirected to new PL form when customer click on Apply Now CTA Under Pre-approved Offer for you section")
    public void verify_user_is_redirected_to_new_pl_form_when_customer_click_on_apply_now_cta_under_pre_approved_offer_for_you_section() {
        clickOn(kycpage.preApproved_PL);
        clickOn(kycpage.checkbox);
        clickOn(kycpage.Applynoe_btn);
        waitForPageToLoad();
        waitForPageToLoad();
        waitTime(10);
        Alert alert = driver.switchTo().alert();
        alert.accept();
    }


    @Then("Verify User is redirected to new PL form when customer click on Personal Loan under Footer section")
    public void verify_user_is_redirected_to_new_pl_form_when_customer_click_on_personal_loan_under_footer_section() {
        clickOn(kycpage.footer_PL);
    }


    @Then("Verify User is redirected to new PL form when customer click on Personal Loan under Offers for you section")
    public void verify_user_is_redirected_to_new_pl_form_when_customer_click_on_personal_loan_under_offers_for_you_section() {
        clickOn(kycpage.offersforYou);
    }


    @Then("Verify User is redirected to new PL form when customer click on Personal Loan under Products for you section")
    public void verify_user_is_redirected_to_new_pl_form_when_customer_click_on_personal_loan_under_products_for_you_section() {
        loginfieldsPage.clickOnProductsForYou("Personal Loan");
    }

    @Then("Verify User is redirected to new PL form when customer click on Personal icon under Apply for Loans Master Card section")
    public void verify_user_is_redirected_to_new_pl_form_when_customer_click_on_personal_icon_under_apply_for_loans_master_card_section() {
        loginfieldsPage.clickOnHeadingLabelName("Personal");
    }


    @Then("Verify User is redirected to new PL form when customer click on Apply Now CTA under Pre-approved Banner")
    public void verify_user_is_redirected_to_new_pl_form_when_customer_click_on_apply_now_cta_under_pre_approved_banner() {
        kycpage.verifyFieldDisplayedUsingForLoop("Personal Loan");
        try {
            clickOn(kycpage.checkbox);
            clickOn(kycpage.Applynoe_btn);
            waitForPageToLoad();
            //  waitTime(3);
            waitForPageToLoad();
            waitTime(5);
            Alert alert = driver.switchTo().alert();
            alert.accept();


        } catch(Exception e){
            testStepFailed("Apply Now Checkbox  is not displayed ");
        }
    }


    @When("Verify Customer must have Insta EMI Pre-approved Offer")
    public void verify_customer_must_have_insta_emi_pre_approved_offer() {
        kycpage.verifyEmiPopup();
    }
    @Then("Customer should be able to view drawer\\/pop up for First time with Get your EMI Card Now CTA for PTB Customer")
    public void customer_should_be_able_to_view_drawer_pop_up_for_first_time_with_get_your_emi_card_now_cta_for_ptb_customer() {
        verifyFieldsDisplayedUsingText("Get your EMI Card Now");
    }



}
