package stepDefinitions;

import PageObjects.EMICardPage;
import PageObjects.HomePage;
import PageObjects.LoginPage;
import base.ApplicationKeywords;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

import static stepDefinitions.HomeSteps.homeUrl;

public class EMICardSteps extends ApplicationKeywords {

    LoginPage login;
    HomePage home;
    EMICardPage emicard;

    public EMICardSteps() {
        login = new LoginPage();
        home = new HomePage();
        emicard = new EMICardPage();
    }

    @Then("verify that Customer is able to view EMI Card icon Under EMI network Card tile")
    public void verify_that_customer_is_able_to_view_emi_card_icon_under_emi_network_card_tile() {
        verifyElementIsDisplayedUsingLocator(EMICardPage.homeEMICard_Icon);
    }

    @Then("verify Customer is redirected to EMI Card service page when Click on EMI Card icon through header EMI Card section")
    public void verify_customer_is_redirected_to_emi_card_service_page_when_click_on_emi_card_icon_through_header_emi_card_section() {
        clickOn(EMICardPage.homeEMICard_Icon);
        waitTime(10);
        // verifyFieldsDisplayedUsingText("My Insta EMI Card");
        //  verifyFieldsDisplayedUsingText("Your card details");
        // verifyRedirectionURLIfContains("https://cont-sites.bajajfinserv.in/MyAccountCards/EmiCard/EmiCards");
    }



    @Then("verify Customer is redirected to EMI Card service page from My Relations")
    public void verify_customer_is_redirected_to_emi_card_service_page_from_my_relations() {

        clickOn(EMICardPage.viewAll);
        clickOn(EMICardPage.cardsSubheading);
        emicard.clickOnEmiCardNumber("2030-XXXX-XXXX-8906");
        verifyFieldsDisplayedUsingText("My Insta EMI Card");
        manualScreenshot("Verifying from MY relations Section emi card is  Sucessfully redirected to EMI card Section");

    }

    @Then("verify Customer is redirected to EMI Card service page from My Relations thru {string}")
    public void verify_customer_is_redirected_to_emi_card_service_page_from_my_relations_thru(String string) {

        clickOn(EMICardPage.viewAll);
        waitTime(5);
        clickOn(EMICardPage.cardsSubheading);
        waitTime(5);
        emicard.clickOnEmiCardNumber(string);
        verifyFieldsDisplayedUsingText("My Insta EMI Card");
        manualScreenshot("Verifying from MY relations Section emi card is  Sucessfully redirected to EMI card Section");
    }


    @Then("verify Customer is able to view details when Customer click on EMI Card icon")
    public void verify_customer_is_able_to_view_details_when_customer_click_on_emi_card_icon() {
        emicard.verifyUpperSectioninEMICardPage();
        emicard.verifyBottomSectioninEMICardPage();
        emicard.verifyblockedRHSinEMICardPage();

    }

    @Then("verify Customer is able to view Sub-text under My EMI Cards header title")
    public void verify_customer_is_able_to_view_sub_text_under_my_emi_cards_header_title() {

        verifyElementIsDisplayedUsingLocator(EMICardPage.subText_CardSection);
    }

    @Then("verify Total Count of EMI Card when Customer having Multiple EMI Card")
    public void verify_total_count_of_emi_card_when_customer_having_multiple_emi_card() {

        emicard.getCountFromLocator(EMICardPage.txt_Title, sizeOfLocator(EMICardPage.cardCommon), "");
    }

    @Then("verify Customer is able to view the details which are displayed within the EMI Card")
    public void verify_customer_is_able_to_view_the_details_which_are_displayed_within_the_emi_card() {

        emicard.verifyEMICardDetails();

    }

    @Then("verify Customer is able to view information  of Total Loan Limit when Customer click on info tooltip of Total Loan Limit  in Active EMI Card")
    public void verify_customer_is_able_to_view_information_of_total_loan_limit_when_customer_click_on_info_tooltip_of_total_loan_limit_in_active_emi_card() {
        clickOnIfDisplayed(EMICardPage.infoIcon_TotalLoanLimit);
        // verifyFieldsDisplayedUsingText("This is the total pre-approved limit available on your Bajaj Finserv Insta EMI Card. This limit is subject to change based on your eligibility.");
        verifyFieldsDisplayedUsingText("This is the total pre-approved loan limit on your Bajaj Finserv EMI Network Card. This value is subject to increase or decrease basis your eligibility.");
    }

    @Then("verify Customer is able to view information of Available Loan Limit when Customer click on info  tooltip of Available Loan Limit in Active EMI Card")
    public void verify_customer_is_able_to_view_information_of_available_loan_limit_when_customer_click_on_info_tooltip_of_available_loan_limit_in_active_emi_card() {
        clickOnIfDisplayed(EMICardPage.infoIcon_AvailableLoanLimit);
        //  verifyFieldsDisplayedUsingText("This is the unused or remaining limit of your Insta EMI Card, which you can use for future purchases.");
        verifyFieldsDisplayedUsingText("This denotes the remaining/unused/available loan limit on your Bajaj Finserv EMI Network Card that you can use to make further purchases");


    }

    @Then("verify Customer is able to view Given Section under Relationship section")
    public void verify_customer_is_able_to_view_given_section_under_relationship_section() {

        emicard.verifySectionsInRelationshipSection();

    }

    @Then("verify Customer is able to view Given options under Where to Use Tab")
    public void verify_customer_is_able_to_view_given_options_under_where_to_use_tab() {
        verifyElementIsDisplayedUsingLocator(EMICardPage.whereToUse_BajajMall);
        verifyElementIsDisplayedUsingLocator(EMICardPage.whereToUse_EMIPartnerStores);
        verifyElementIsDisplayedUsingLocator(EMICardPage.whereToUse_EcomPartners);

    }

    @Then("verify Customer is able to view Given text and button under EMI NETWORK Stores section")
    public void verify_customer_is_able_to_view_given_text_and_button_under_emi_network_stores_section() {

        verifyFieldsDisplayedUsingText("Shop Online");
        verifyFieldsDisplayedUsingText("Locate a Store");

    }

    @Then("verify Customer is redirected to store locator page with sso when  click on Locate a Store button")
    public void verify_customer_is_redirected_to_store_locator_page_with_sso_when_click_on_locate_a_store_button() {
        clickOn(EMICardPage.locateAStore_Button);
        transferControlToWindow(2, false);
        verifyRedirectionURLIfContains("https://www.bajajfinserv.in/bajaj-mall-store-locator");

        transferControlToWindow(1, true);

    }

    @Then("verify Customer is able to view static Sub-text under E-Com partners section")
    public void verify_customer_is_able_to_view_static_sub_text_under_e_com_partners_section() {

        verifyFieldsDisplayedUsingText("You can shop for your favourite products, book flight tickets, and hotel rooms on No Cost EMIs from other e-commerce websites. This option will be active after your first transaction at our partner store.");

    }

    @Then("verify Customer is able to Click on E-Com partners Section")
    public void verify_customer_is_able_to_click_on_e_com_partners_section() {

        verifyElementNotClickable(EMICardPage.ecomPartner_Button);

    }

    @Then("verify Customer is able to view Given text and button under Bajaj Finserv Online store-Pickup at store option")
    public void verify_customer_is_able_to_view_given_text_and_button_under_bajaj_finserv_online_store_pickup_at_store_option() {

        //verifyFieldsDisplayedUsingText("Shop across 56+ categories online on No Cost EMI");
        verifyElementIsDisplayedUsingLocator(EMICardPage.shopOnline_Button);

    }

    @Then("verify Customer is redirected to Marketplace page with SSO when Customer click on Shop online CTA")
    public void verify_customer_is_redirected_to_marketplace_page_with_sso_when_customer_click_on_shop_online_cta() {

        clickOn(EMICardPage.shopOnline_Button);
        waitTime(5);
        transferControlToWindow(2, false);
        //  verifyRedirectionURLIfContains("https://www.bajajmall.in/emi-store?");
        verifyRedirectionURLIfContains("https://www.bajajmall.in/emi-store?");
        transferControlToWindow(1, true);

    }

    @When("Click on Fees and Charges icon under Insta EMI Card")
    public void click_on_fees_and_charges_icon_under_insta_emi_card() {
         verifyFieldsDisplayedUsingLocator(EMICardPage.feesView);
    }


    @When("Click on EMI Card icon under Insta EMI Card")
    public void click_on_emi_card_icon_under_insta_emi_card() {
        clickOn(EMICardPage.instaEmiCard);
        waitForThreeDotsDisAppear();
    }
    @When("Click on View All CTA under Fees and Charges section")
    public void click_on_view_all_cta_under_fees_and_charges_section() {
        clickOn(EMICardPage.feesView);
        waitForThreeDotsDisAppear();
    }


    @Then("verify Fees and Charges section in View All section")
    public void verify_fees_and_charges_section_in_view_all_section() {
        verifyValueUsingLabel("//p[@class='a_annual_title']", "EMI Network Card Fee", "/following-sibling::p", "");
        verifyValueUsingLabel("//p[@class='a_annual_title']", "Online Convenience Fee", "/following-sibling::p", "");
        verifyValueUsingLabel("//p[@class='a_annual_title']", "EMI Network Card Loan Limit Enhancement Fee", "/following-sibling::p", "");
        verifyValueUsingLabel("//p[@class='a_annual_title']", "EMI Network Card Annual Fee", "/following-sibling::p", "");
        verifyValueUsingLabel("//p[@class='a_annual_title']", "Add-on EMI Network Card Fee", "/following-sibling::p", "");
        verifyValueUsingLabel("//p[@class='a_annual_title']", "Processing Fee", "/following-sibling::p", "");
        verifyValueUsingLabel("//p[@class='a_annual_title']", "Bounce Charge", "/following-sibling::p", "");
        verifyValueUsingLabel("//p[@class='a_annual_title']", "Penal Interest", "/following-sibling::p", "");
        verifyValueUsingLabel("//p[@class='a_annual_title']", "Mandate Rejection Charge", "/following-sibling::p", "");
        verifyValueUsingLabel("//p[@class='a_annual_title']", "Mandate Registration Charge", "/following-sibling::p", "");
        verifyValueUsingLabel("//p[@class='a_annual_title']", "Loan Enhancement Fee", "/following-sibling::p", "");
        verifyValueUsingLabel("//p[@class='a_annual_title']", "Convenience Fee", "/following-sibling::p", "");
        verifyValueUsingLabel("//p[@class='a_annual_title']", "Document Statement Charges", "/following-sibling::p", "");
        verifyValueUsingLabel("//p[@class='a_annual_title']", "Additional Cess", "/following-sibling::p", "");

    }

    @Then("verify Fees and Charges section")
    public void verify_fees_and_charges_section() {
        verifyValueUsingLabel("//p[@class='fees_title']", "EMI Network Card Fee", "/following-sibling::p", "");
        verifyValueUsingLabel("//p[@class='fees_title']", "Online Convenience Fee", "/following-sibling::p", "");
        verifyValueUsingLabel("//p[@class='fees_title']", "EMI Network Card Loan Limit Enhancement Fee", "/following-sibling::p", "");
        verifyValueUsingLabel("//p[@class='fees_title']", "EMI Network Card Annual Fee", "/following-sibling::p", "");
        verifyFieldsDisplayedUsingText("No annual charges will be applicable if the card has been used in the last 12 months.");

    }


    @Then("verify Customer is able to view Fees and Charges Tab under Relationship Details with Given details")
    public void verify_customer_is_able_to_view_fees_and_charges_tab_under_relationship_details_with_given_details() {

//        verifyTextElementUsingOptionsTextUsingHash("Joining Fee#Add-on Card Fee#Convenience Fee#Loan Enhancement Fees");
        verifyValueUsingLabel("//p[@class='fees_title']", "EMI Network Card Fee", "/following-sibling::p", "");
        verifyValueUsingLabel("//p[@class='fees_title']", "Online Convenience Fee", "/following-sibling::p", "");
        verifyValueUsingLabel("//p[@class='fees_title']", "EMI Network Card Loan Limit Enhancement Fee", "/following-sibling::p", "");
        verifyValueUsingLabel("//p[@class='fees_title']", "EMI Network Card Annual Fee", "/following-sibling::p", "");

        //verifyFieldsDisplayedUsingText("Annual Fee");a_annual_title //p[@class='a_annual_title']
        //emicard.verifyElementIsPresentAndGetText(EMICardPage.annualFee_Fee_Charges);
        //verifyFieldsDisplayedUsingText("No Annual charges will be applicable if the card is used in the last 12 months");

        verifyFieldsDisplayedUsingText("No annual charges will be applicable if the card has been used in the last 12 months.");

    }

    @Then("verify Customer is redirected to FAQ section with EMI Card section highlighted when Customer click on FAQ's")
    public void verify_customer_is_redirected_to_faq_section_with_emi_card_section_highlighted_when_customer_click_on_faq_s() {
        scrollToWebElement(EMICardPage.fAQ_TabSection);
        clickOn(EMICardPage.fAQ_TabSection);
        //verifyRedirectionURLIfContains("https://cont-sites.bajajfinserv.in/MyAccountService/HelpAndSupport/RARFAQCategory");
        verifyRedirectionURLIfContains("https://uat-oneweb.bajajfinserv.in/MyAccountService/HelpAndSupport/RARFAQCategory");
        navigateToBack();
        waitTime(10);

    }

    @Then("verify Customer is redirected to CIBIL page with SSO when click on Know your CIBIL button")
    public void verify_customer_is_redirected_to_cibil_page_with_sso_when_click_on_know_your_cibil_button() {
        scrollToWebElement(EMICardPage.checkNowCibil_Button);
        clickOn(EMICardPage.checkNowCibil_Button);
        verifyRedirectionURLIfContains("https://www.bajajfinserv.in/check-free-cibil-score");
        navigateToBack();
        waitTime(10);

    }

    @Then("verify the options displayed under Thing you can do Section in RHS when Customer is having Active EMI Card")
    public void verify_the_options_displayed_under_thing_you_can_do_section_in_rhs_when_customer_is_having_active_emi_card() {

        //verifyLocatorIsPresentInRightSideOfPage(EMICardPage.thingsYouCanDo_RHS);

        verifyLocatorIsPresentInRightSideOfPage(EMICardPage.quickActions);
        // verifyLocatorIsPresentInRightSideOfPage(EMICardPage.forgotPin_RHS);
        verifyLocatorIsPresentInRightSideOfPage(EMICardPage.forgotPin_RHS);
        verifyLocatorIsPresentInRightSideOfPage(EMICardPage.blockCard_RHS);
        verifyLocatorIsPresentInRightSideOfPage(EMICardPage.viewStatements_RHS);
        verifyLocatorIsPresentInRightSideOfPage(EMICardPage.getHealthCard_RHS);
        verifyLocatorIsPresentInRightSideOfPage(EMICardPage.locateStores_RHS);
        verifyLocatorIsPresentInRightSideOfPage(EMICardPage.shopOnline_RHS);
    }

    @Then("verify OTP is triggered on Customer registered mobile number when click on View Number button on Card details section")
    public void verify_otp_is_triggered_on_customer_registered_mobile_number_when_click_on_view_number_button_on_card_details_section() {

        emicard.verifyViewNumberOTP();


    }

    @Then("verify  Validation message is displayed when Customer entered an invalid OTP  with given inputs in Enter OTP text field\\(View Number Active EMI)")
    public void verify_validation_message_is_displayed_when_customer_entered_an_invalid_otp_with_given_inputs_in_enter_otp_text_field_view_number_active_emi() {
        emicard.verifyInvalidOTPViewNumber();
    }

    @Then("verify OTP is triggered to customer registered mobile number when click on Resend OTP button\\(View Number Active EMI)")
    public void verify_otp_is_triggered_to_customer_registered_mobile_number_when_click_on_resend_otp_button_view_number_active_emi() {

        emicard.verifyResendOTPViewNumber();
        //close the popup has been set in the method itself
    }

    @Then("verify Customer is able to view Card Number in {int} x {int} view with space after every {int} characters in Unmasked State")
    public void verify_customer_is_able_to_view_card_number_in_x_view_with_space_after_every_characters_in_unmasked_state(Integer int1, Integer int2, Integer int3) {

        emicard.verifyDisplayedEMICardNumber();

    }

    @Then("verify Card Number Get masked when Customer Refresh the Page")
    public void verify_card_number_get_masked_when_customer_refresh_the_page() {

        emicard.verifyEMICardNumberAfterRefresh();
    }


    /*
    Update Pin
     */
    @Then("verify Customer is able to redirect on Update PIN page when Customer click on Update PIN button")
    public void verify_customer_is_able_to_redirect_on_update_pin_page_when_customer_click_on_update_pin_button() {

        //scrollToWebElement(EMICardPage.forgotPin_RHS);  resetPin_RHS
        //clickOn(EMICardPage.forgotPin_RHS);

        scrollToWebElement(EMICardPage.resetPin_RHS);
        clickOn(EMICardPage.resetPin_RHS);
        // verifyRedirectionURLIfContains("https://experia-uat.bajajfinserv.in/EmiCard/Cards/EmiCard/UpdatePin");
        verifyFieldsDisplayedUsingText("Reset your PIN");
    }

    @Then("verify Customer is able to view Update PIN page when Customer clicks on Update PIN in RHS")
    public void verify_customer_is_able_to_view_update_pin_page_when_customer_clicks_on_update_pin_in_rhs() {

        verifyFieldsDisplayedUsingText("Enter New PIN");
        verifyFieldsDisplayedUsingText("Re-enter New PIN");
        scrollToWebElement(EMICardPage.cancelButton_UpdatePin);
        verifyElementIsDisplayedUsingLocator(EMICardPage.cancelButton_UpdatePin);
        verifyElementIsDisplayedUsingLocator(EMICardPage.confirmButton_UpdatePin);


    }

    @Then("verify Customer is able to view Validation message when Customer enter two different  pin number")
    public void verify_customer_is_able_to_view_validation_message_when_customer_enter_two_different_pin_number() {

        emicard.enterValueInTextBox("1234", 4, EMICardPage.enterPin_UpdatePin, "");
        emicard.enterValueInTextBox("4321", 4, EMICardPage.re_enterPin_UpdatePin, "");
        verifyErrorMessageUsingText("Incorrect PIN. Please re-enter the same PIN as above.");
        //verifyErrorMessageUsingText("New PIN and Re-enter PIN should have same values. Please try again");
    }

    @Then("verify OTP is triggered on Customer registered mobile number when click on Confirm button")
    public void verify_otp_is_triggered_on_customer_registered_mobile_number_when_click_on_confirm_button() {
        emicard.enterValueInTextBox("1234", 4, EMICardPage.enterPin_UpdatePin, "");
        emicard.enterValueInTextBox("1234", 4, EMICardPage.re_enterPin_UpdatePin, "");
        //   clickOnButtonUsingTextUsingForLoop("CONFIRM");
        clickOnButtonUsingTextUsingForLoop("PROCEED");
        emicard.verifyUpdatePinOTP();

    }

    @Then("verify  Validation message is displayed when Customer entered an invalid OTP  with given inputs in Enter OTP text field\\(Update Pin)")
    public void verify_validation_message_is_displayed_when_customer_entered_an_invalid_otp_with_given_inputs_in_enter_otp_text_field_update_pin() {

        emicard.verifyInvalidOTPUpdatePin();

    }

    @Then("verify OTP is triggered to customer registered mobile number when click on Resend OTP button\\(Update Pin)")
    public void verify_otp_is_triggered_to_customer_registered_mobile_number_when_click_on_resend_otp_button_update_pin() {

        emicard.verifyResendOTPUpdatePin();

    }

    @Then("verify Customer is able to view Validation message after submitting the Valid OTP")
    public void verify_customer_is_able_to_view_validation_message_after_submitting_the_valid_otp() {

        emicard.verifycorrectOTPValidationUpdatePin();

    }


    @Then("verify Confirm button is disable when customer does not enter any input in New PIN and Re-enter New PIN Number")
    public void verify_confirm_button_is_disable_when_customer_does_not_enter_any_input_in_new_pin_and_re_enter_new_pin_number() {
        emicard.verifyConfirmButtonIsDisabled();
    }


    /*
    Block Card
     */
    @Then("verify Customer able to view Block Cards option Under Things you can do section in RHS")
    public void verify_customer_able_to_view_block_cards_option_under_things_you_can_do_section_in_rhs() {

        verifyLocatorIsPresentInRightSideOfPage(EMICardPage.blockCard_RHS);

    }

    @Then("verify Customer able to redirect on Block Card page when Customer click on Block Card button")
    public void verify_customer_able_to_redirect_on_block_card_page_when_customer_click_on_block_card_button() {
        clickOn(EMICardPage.blockCard_RHS);
        waitTime(5);
        //  verifyRedirectionURLIfContains("https://experia-uat.bajajfinserv.in/EmiCard/Cards/EmiCard/BlockEmiCard");
        verifyFieldsDisplayedUsingText("Block my Insta EMI Card");

    }

    @Then("verify Customer is able to view the Reason when Customer Clicks on the Blocking Reason drop-down")
    public void verify_customer_is_able_to_view_the_reason_when_customer_clicks_on_the_blocking_reason_drop_down() {
        // verifyGetAllOptionsInDropDownAndCompare(EMICardPage.dropDown_BlockingReason, "Select#Did not apply for EMI Card#Do not want EMI Card#Lost EMI Card#I have multiple EMI cards of BFL#Fraud attempt on the card#Name mismatch#Card holder deceased");
        verifyGetAllOptionsInDropDownAndCompare(EMICardPage.dropDown_BlockingReason, "Select#I did not apply for an Insta EMI Card#I do not want an Insta EMI Card#I have Lost my Insta EMI Card#I have multiple Insta EMI cards#There was a Fraud attempt on my Insta EMI Card#Name mismatch on my Insta EMI Card#Card holder deceased");

    }

    @Then("Verify Customer is able to clicks on Block Card button  without selecting a Reason")
    public void verify_customer_is_able_to_clicks_on_block_card_button_without_selecting_a_reason() {
        emicard.verifyBlockCardButton();

    }

    @Then("verify Customer is able to Cancel the Blocking Card process")
    public void verify_customer_is_able_to_cancel_the_blocking_card_process() {

        emicard.verifyCancelButtonINBlockCardPage();
    }

    @Then("verify OTP is triggered on Customer registered mobile number when click on Block Card button")
    public void verify_otp_is_triggered_on_customer_registered_mobile_number_when_click_on_block_card_button() {

        emicard.verifyOTP1();
    }

    @Then("verify  Validation message is displayed when Customer entered an invalid OTP  with given inputs in Enter OTP text field")
    public void verify_validation_message_is_displayed_when_customer_entered_an_invalid_otp_with_given_inputs_in_enter_otp_text_field() {
        emicard.verifyInvalidOTP();
    }

    @Then("verify Validation message is displayed when Customer entered an invalid OTP text field")
    public void verify_validation_message_is_displayed_when_customer_entered_an_invalid_otp_text_field() {
        emicard.verifyInvalidOTPMessage();
    }


    @Then("verify OTP is triggered to customer registered mobile number when click on Resend OTP button")
    public void verify_otp_is_triggered_to_customer_registered_mobile_number_when_click_on_resend_otp_button() {

        emicard.verifyResendOTP();

    }

    @Then("verify Customer is able to view Validation message When they clicking on Submit Button")
    public void verify_customer_is_able_to_view_validation_message_when_they_clicking_on_submit_button() {
        emicard.verifycorrectOTPValidation();

    }



    /*
    UNBLOCK CARD
     */

    @Then("verify Given options are displayed under Thing you can do Section in RHS when Customer is having EMI Card with Blocked Status")
    public void verify_given_options_are_displayed_under_thing_you_can_do_section_in_rhs_when_customer_is_having_emi_card_with_blocked_status() {

        verifyLocatorIsPresentInRightSideOfPage(EMICardPage.unblockCard_RHS);
        verifyLocatorIsPresentInRightSideOfPage(EMICardPage.viewStatements_RHS);


    }

    @Then("verify OTP is triggered on Customer registered mobile number when click on Unblocked Card button")
    public void verify_otp_is_triggered_on_customer_registered_mobile_number_when_click_on_unblocked_card_button() {

        emicard.verifyUnblockCardOTP();

    }

    @Then("verify  Validation message is displayed when Customer entered an invalid OTP  with given inputs in Enter OTP text field in Unblock Card Page")
    public void verify_validation_message_is_displayed_when_customer_entered_an_invalid_otp_with_given_inputs_in_enter_otp_text_field_in_unblock_card_page() {

        emicard.verifyInvalidOTPUnblockCard();
    }

    @Then("verify OTP is triggered to customer registered mobile number when click on Resend OTP button in Unblock Card Page")
    public void verify_otp_is_triggered_to_customer_registered_mobile_number_when_click_on_resend_otp_button_in_unblock_card_page() {

        emicard.verifyResendOTPUnblockCard();
    }

    @Then("verify Customer is able to view Validation message  with Block tag and Unblock Card button on Card after clicking on Submit Button")
    public void verify_customer_is_able_to_view_validation_message_with_block_tag_and_unblock_card_button_on_card_after_clicking_on_submit_button() {

        emicard.verifycorrectOTPValidationUnblockCard();
    }

    /*
    E Mandate Pending
     */
    @Then("verify Total Count of EMI Card when Customer having Single EMI Card")
    public void verify_total_count_of_emi_card_when_customer_having_single_emi_card() {
        emicard.getCountFromLocator(EMICardPage.txt_Title, sizeOfLocator(EMICardPage.cardCommon), "");

    }

    @Then("verify Customer is Redirected to Mandate POD when Customer Click on Register Now button")
    public void verify_customer_is_redirected_to_mandate_pod_when_customer_click_on_register_now_button() {

        emicard.verifyRegisterNowEMandate();

    }

    @Then("verify Customer is able to view information of Total Loan Limit when Customer click on info icon tooltip of Total Loan LimitThen in EMI Card with E-mandate pending status")
    public void verify_customer_is_able_to_view_information_of_total_loan_limit_when_customer_click_on_info_icon_tooltip_of_total_loan_limit_then_in_emi_card_with_e_mandate_pending_status() {

        clickOn(EMICardPage.infoIcon_TotalLoanLimit);
        verifyFieldsDisplayedUsingText("This is the total Pre-approved loan amount on your Bajaj Finserv EMI Network Card. This value is subject to increase or decrease basis your eligibility.");


    }

    @Then("verify Customer is able to view information of Available Loan Limit when Customer click on info icon  tooltip of Available Loan Limit in EMI Card with E-mandate pending status")
    public void verify_customer_is_able_to_view_information_of_available_loan_limit_when_customer_click_on_info_icon_tooltip_of_available_loan_limit_in_emi_card_with_e_mandate_pending_status() {

        clickOn(EMICardPage.infoIcon_AvailableLoanLimit);
        verifyFieldsDisplayedUsingText("This is the remaining Loan Limit on the EMI Card that you can use to make further purchases.");

    }

    @Then("verify Customer is able to view E-Mandate pending status in Orange capsule when EMI Card is in E-Mandate pending status")
    public void verify_customer_is_able_to_view_e_mandate_pending_status_in_orange_capsule_when_emi_card_is_in_e_mandate_pending_status() {

        emicard.verifyEMandateOrangeCapsule();

    }

    @Then("verify Customer is able to view the Card details when Customer is having  EMI Card with E-mandate pending status")
    public void verify_customer_is_able_to_view_the_card_details_when_customer_is_having_emi_card_with_e_mandate_pending_status() {
        emicard.verifyEMandateCardDetails();

    }

    @Then("verify OTP is triggered on Customer registered mobile number when click on {string} button on Card details section")
    public void verify_otp_is_triggered_on_customer_registered_mobile_number_when_click_on_button_on_card_details_section(String string) {

        emicard.verifyViewNumberOTP();
    }

    @Then("verify  Validation message is displayed when Customer entered an invalid OTP  with given inputs in Enter OTP text field\\(E Mandate Pending)")
    public void verify_validation_message_is_displayed_when_customer_entered_an_invalid_otp_with_given_inputs_in_enter_otp_text_field_e_mandate_pending() {

        emicard.verifyInvalidOTPViewNumber();

    }

    @Then("verify OTP is triggered to customer registered mobile number when click on Resend OTP button\\(E Mandate Pending)")
    public void verify_otp_is_triggered_to_customer_registered_mobile_number_when_click_on_resend_otp_button_e_mandate_pending() {

        emicard.verifyResendOTPViewNumber();
    }

    @Then("verify Customer is able to view Card Number in {int} x {int} view with space after every {int} characters in Masked and Unmasked State")
    public void verify_customer_is_able_to_view_card_number_in_x_view_with_space_after_every_characters_in_masked_and_unmasked_state(Integer int1, Integer int2, Integer int3) {

        emicard.verifyDisplayedEMICardNumber();
    }

    @Then("verify Card Number is masked when Customer Refresh the Page")
    public void verify_card_number_is_masked_when_customer_refresh_the_page() {

        emicard.verifyEMICardNumberAfterRefresh();
    }




    /*
    General
     */

    @Then("verify Customer is able to view only one Card highlighted Active EMI Card and rest are Greyed out")
    public void verify_customer_is_able_to_view_only_one_card_highlighted_active_emi_card_and_rest_are_greyed_out() {
        emicard.verifyEMICardsVisiblity();
    }

    @Then("verify Selected EMI Card is Highlighted when customer having multiple EMI Card and Click on any one of the Card")
    public void verify_selected_emi_card_is_highlighted_when_customer_having_multiple_emi_card_and_click_on_any_one_of_the_card() {
        emicard.verifyEMICardsVisiblityOnClick();
    }

    @Then("verify Customer is able to scroll EMI Card when  Customer having multiple EMI Card")
    public void verify_customer_is_able_to_scroll_emi_card_when_customer_having_multiple_emi_card() {
        emicard.verifyScrollInEmiCards(sizeOfLocator(EMICardPage.cardCommon), "");
    }

    @Then("verify Customer is able to scroll EMI Card when Customer is having Single EMI Card")
    public void verify_customer_is_able_to_scroll_emi_card_when_customer_is_having_single_emi_card() {
        emicard.verifyScrollInEmiCards(sizeOfLocator(EMICardPage.cardCommon), "");

    }



    @Then("User Verifies the {string}")
    public void user_verifies_the(String string) {
        emicard.verifyBlockedReason(string);
    }



    @Then("User Clicks on Unblock Card")
    public void user_clicks_on_unblock_card() {
        emicard.scrollToTop();
        // scrollToWebElement(EMICardPage.unblockCard_RHS);
        clickOn(EMICardPage.unblockCard_RHS);
        waitTime(10);
    }
    @Then("User Verifies Confirmation message and navigates sucesfully to Payment page")
    public void user_verifies_confirmation_message_and_navigates_sucesfully_to_payment_page() {
        emicard.verifyPopUpText("Please clear your outstanding payment to unblock your card.");
        clickOn(EMICardPage.okbutton);
        verifyRedirectionURLIfContains("https://cont-sites.bajajfinserv.in/MyAccountPayments/LoanPay/ActiveLoanOverduePay");

    }

    @Then("User Verifies Validation message")
    public void user_verifies_validation_message() {
        emicard.verifyssubHeadingIsDisplayed("Error Occured.Please try again later.");
        emicard.clickOnOKbutton("OK");
    }

    @Then("User Verifies OTP Popup message")
    public void user_verifies_otp_popup_message() {
        emicard.verifyViewNumberOTPPopup();
    }


    @Then("User Clicks on Block Card and enters blocked Reason")
    public void user_clicks_on_block_card_and_enters_blocked_reason() {
        //clickOn(EMICardPage.blockCard_RHS);
        //verifyFieldsDisplayedUsingText("Block my Insta EMI Card");
        //verifyGetAllOptionsInDropDownAndCompare(EMICardPage.dropDown_BlockingReason, "Select#I did not apply for an Insta EMI Card#I do not want an Insta EMI Card#I have Lost my Insta EMI Card#I have multiple Insta EMI cards#There was a Fraud attempt on my Insta EMI Card#Name mismatch on my Insta EMI Card#Card holder deceased");
        selectDropDownUsingText(EMICardPage.dropblock,"I do not want an Insta EMI Card");
        clickOn(EMICardPage.blockCard_Button);


    }

    @Then("User Verifies Sucess confirmation message")
    public void user_verifies_sucess_confirmation_message() {

    }

    @Then("User verifies Emi Card is unblocked Sucessfully")
    public void user_verifies_emi_card_is_unblocked_sucessfully() {

    }



    @When("verify the options displayed under Quick Action Section in RHS when Customer is having Active EMI Card")
    public void verify_the_options_displayed_under_quick_action_section_in_rhs_when_customer_is_having_active_emi_card() {
        waitTime(10);
        verifyLocatorIsPresentInRightSideOfPage(EMICardPage.quickActions);
        // verifyLocatorIsPresentInRightSideOfPage(EMICardPage.forgotPin_RHS);
        verifyLocatorIsPresentInRightSideOfPage(EMICardPage.resetPin_RHS);
        verifyLocatorIsPresentInRightSideOfPage(EMICardPage.blockCard_RHS);
        verifyLocatorIsPresentInRightSideOfPage(EMICardPage.viewStatements_RHS);
        // NA  verifyLocatorIsPresentInRightSideOfPage(EMICardPage.getHealthCard_RHS);
        verifyLocatorIsPresentInRightSideOfPage(EMICardPage.locateStores_RHS);
        verifyLocatorIsPresentInRightSideOfPage(EMICardPage.shopOnline_RHS);
    }
    @Then("verify Customer is able to redirect on Update PIN page when Customer click on Reset PIN button")
    public void verify_customer_is_able_to_redirect_on_update_pin_page_when_customer_click_on_reset_pin_button() {
//scrollToWebElement(EMICardPage.forgotPin_RHS);  resetPin_RHS
        //clickOn(EMICardPage.forgotPin_RHS);

        scrollToWebElement(EMICardPage.resetPin_RHS);
        clickOn(EMICardPage.resetPin_RHS);
        waitTime(10);
        // verifyRedirectionURLIfContains("https://experia-uat.bajajfinserv.in/EmiCard/Cards/EmiCard/UpdatePin");
        verifyFieldsDisplayedUsingText("Reset your PIN");
    }
    @Then("verify OTP is triggered on Customer registered mobile number when click on Proceed button")
    public void verify_otp_is_triggered_on_customer_registered_mobile_number_when_click_on_proceed_button() {
        emicard.enterValueInTextBox("1234", 4, EMICardPage.enterPin_UpdatePin, "");
        emicard.enterValueInTextBox("1234", 4, EMICardPage.re_enterPin_UpdatePin, "");
        //   clickOnButtonUsingTextUsingForLoop("CONFIRM");
        clickOnButtonUsingTextUsingForLoop("PROCEED"); waitTime(10);
        emicard.verifyUpdatePinOTP();
    }



    @Then("verify Customer is able to scroll to Shop  on Bajaj Mall")
    public void verify_customer_is_able_to_scroll_to_shop_on_bajaj_mall() {
        scrollToWebElement(EMICardPage.shopOnbajajMall);
        clickOn(EMICardPage.ExploreButton);
        waitTime(5);
        transferControlToWindow(2,false);
        verifyRedirectionURLIfContains("https://www.bajajmall.in/emi-store");
        transferControlToWindow(1,true);
        waitTime(10);
    }


    @When("User clicks on Shop On BajajMall Offer and verifies Redirection Url")
    public void user_clicks_on_shop_on_bajaj_mall_offer_and_verifies_redirection_url() {

        String locatorNext =   " Next Button#xpath=//div[@class='Shop_EMI_store_box']//button[@aria-label='Next']";


        emicard.clickOnProduct("Shop on Bajaj Mall","Smartphones","");
        verifyRedirectioninNewTab("https://www.bajajmall.in/emi-store/smartphones.html","");

        emicard.clickOnProduct("Shop on Bajaj Mall","Air Conditioners","");
        verifyRedirectioninNewTab("https://www.bajajmall.in/emi-store/ac.html","");

        emicard.clickOnProduct("Shop on Bajaj Mall","LED TVs","");
        verifyRedirectioninNewTab("https://www.bajajmall.in/emi-store/television.html","");

        emicard.clickOnProduct("Shop on Bajaj Mall","Mattresses","");
        verifyRedirectioninNewTab("https://www.bajajmall.in/emi-store/mattress.html","");

        emicard.clickOnProduct("Shop on Bajaj Mall","Smartwatches","");
        verifyRedirectioninNewTab("https://www.bajajmall.in/emi-store/smart-watches.html","");

        emicard.clickOnProduct("Shop on Bajaj Mall","Laptops","");
        verifyRedirectioninNewTab("https://www.bajajmall.in/emi-store/laptops.html","");

        emicard.clickOnProduct("Shop on Bajaj Mall","Refrigerators","");
        verifyRedirectioninNewTab("https://www.bajajmall.in/emi-store/refrigerators.html","");
        clickOn(locatorNext);
        waitTime(5);
        emicard.clickOnProduct("Shop on Bajaj Mall","Cycles","");
        verifyRedirectioninNewTab("https://www.bajajmall.in/emi-store/cycles.html","");
        clickOn(locatorNext);
        waitTime(5);

        emicard.clickOnProduct("Shop on Bajaj Mall","Washing Machines","");
        waitTime(5);
        verifyRedirectioninNewTab("https://www.bajajmall.in/emi-store/washing-machine.html","");

        emicard.clickOnProduct("Shop on Bajaj Mall","Sports and Fitness","");
        verifyRedirectioninNewTab("https://www.bajajmall.in/emi-store/sports-and-fitness-equipment.html","");

    }


    @Then("verify Customer is able to view Red Blocked Capsule and Unblock Card button on EMI Card")
    public void verify_customer_is_able_to_view_red_blocked_capsule_and_unblock_card_button_on_emi_card() {
        emicard.verifyRedCapsuleforBlocked();
    }
    @Then("verify Customer is able to view Quick Actions Section")
    public void verify_customer_is_able_to_view_quick_actions_section() {

        verifyLocatorIsPresentInRightSideOfPage(EMICardPage.quickActions);
        verifyLocatorIsPresentInRightSideOfPage(EMICardPage.unblockCard_RHS);
        clickOn(EMICardPage.unblockCard_RHS);

        waitForPageToLoad();
        emicard.verifyssubHeadingIsDisplayed("Please raise a request to unblock your card.");
        emicard.clickOnOKbutton("Cancel");
     //   emicard.verifyViewNumberOTPPopup();
        // emicard.verifyssubHeadingIsDisplayed("Error Occured.Please try again later.");
        // emicard.clickOnOKbutton("OK");
       // manualScreenshot("Popup displayed Sucessfully");
        waitTime(2);


        verifyLocatorIsPresentInRightSideOfPage(EMICardPage.getHealthCard_RHS);
        clickOn(EMICardPage.getHealthCard_RHS);
        //transferControlToWindow(2, false);
        verifyRedirectionURLIfContains("https://www.bajajfinserv.in/health-emi-network-card");
        //  transferControlToWindow(1, true);

        navigateBack();
        waitTime(3);


        verifyLocatorIsPresentInRightSideOfPage(EMICardPage.shopOnline_RHS);
        clickOn(EMICardPage.shopOnline_RHS);
        waitTime(5);
        transferControlToWindow(2, false);
        verifyRedirectionURLIfContains("https://www.bajajmall.in/emi-store");
        transferControlToWindow(1, true);


        verifyLocatorIsPresentInRightSideOfPage(EMICardPage.viewStatements_RHS);
        clickOn(EMICardPage.viewStatements_RHS);
        // verifyRedirectionURLIfContains("https://cont-sites.bajajfinserv.in/MyAccountDocumentCenter/DocumentCenter");
        verifyRedirectionURLIfContains("https://uat-oneweb.bajajfinserv.in/MyAccountDocumentCenter/DocumentCenter");
        navigateBack();
        waitTime(3);

        verifyLocatorIsPresentInRightSideOfPage(EMICardPage.locateStores_RHS);
        clickOn(EMICardPage.locateStores_RHS);
        waitForPageToLoad();
        waitTime(3);
        // transferControlToWindow(2, false);
        verifyRedirectionURLIfContains("https://www.bajajfinserv.in/locator");
        // transferControlToWindow(1, true);
        navigateBack();
        waitTime(3);

    }

    @When("Click on To apply for a new loan visit our partner stores")
    public void click_on_to_apply_for_a_new_loan_visit_our_partner_stores() {
        clickOn(EMICardPage.partnerStores);
        waitForPageToLoad();
    }

    @When("Click on Shop Online option under Quick Action")
    public void click_on_shop_online_option_under_quick_action() {
        verifyLocatorIsPresentInRightSideOfPage(EMICardPage.shopOnline_RHS);
        clickOn(EMICardPage.shopOnline_RHS);
        waitForPageToLoad();

    }

    @When("Click on Locate Stores option under Quick Action")
    public void click_on_locate_stores_option_under_quick_action() {
        verifyLocatorIsPresentInRightSideOfPage(EMICardPage.locateStores_RHS);
        clickOn(EMICardPage.locateStores_RHS);
        waitForPageToLoad();
    }

    @When("Click on Get Health EMI Network Card option under Quick Action")
    public void click_on_get_health_emi_network_card_option_under_quick_action() {
        verifyLocatorIsPresentInRightSideOfPage(EMICardPage.getHealthCard_RHS);
        clickOn(EMICardPage.getHealthCard_RHS);
        waitForPageToLoad();
    }

    @When("Click on View Statements option under Quick Action")
    public void click_on_view_statements_option_under_quick_action() {
        verifyLocatorIsPresentInRightSideOfPage(EMICardPage.viewStatements_RHS);
        clickOn(EMICardPage.viewStatements_RHS);
        waitForPageToLoad();
    }
    @Then("verify Customers should be redirected to respective page")
    public void verify_customers_should_be_redirected_to_respective_page() {
        verifyRedirectionURLIfContains("https://uat-oneweb.bajajfinserv.in/MyAccountDocumentCenter/DocumentCenter");

    }


    @When("verify Customer able to view Block Cards option Under Quick Actions Section in RHS")
    public void verify_customer_able_to_view_block_cards_option_under_quick_actions_section_in_rhs() {
        verifyLocatorIsPresentInRightSideOfPage(EMICardPage.blockCard_RHS);
    }


    @Then("User Verifies Unblock OTP Popup message")
    public void user_verifies_unblock_otp_popup_message() {

        verifyErrorMessageUsingText("Please raise a request to unblock your card.");
        emicard.clickOnOKbutton("OK");
    }


    @Then("verify Customer is able to view Quick Actions  Active Section")
    public void verify_customer_is_able_to_view_quick_actions_active_section() {

        verifyLocatorIsPresentInRightSideOfPage(EMICardPage.quickActions);
        verifyLocatorIsPresentInRightSideOfPage(EMICardPage.resetPin_RHS);
        verifyLocatorIsPresentInRightSideOfPage(EMICardPage.blockCard_RHS);
        verifyLocatorIsPresentInRightSideOfPage(EMICardPage.locateStores_RHS);

        // transferControlToWindow(1, true);

        verifyLocatorIsPresentInRightSideOfPage(EMICardPage.shopOnline_RHS);
        clickOn(EMICardPage.shopOnline_RHS);
        waitTime(5);
        transferControlToWindow(2, false);
        verifyRedirectionURLIfContains("https://www.bajajmall.in/emi-store");
        transferControlToWindow(1, true);


        verifyLocatorIsPresentInRightSideOfPage(EMICardPage.viewStatements_RHS);
        clickOn(EMICardPage.viewStatements_RHS);
        // verifyRedirectionURLIfContains("https://cont-sites.bajajfinserv.in/MyAccountDocumentCenter/DocumentCenter");
        verifyRedirectionURLIfContains("https://uat-oneweb.bajajfinserv.in/MyAccountDocumentCenter/DocumentCenter");
        navigateBack();
        waitTime(5);


        clickOn(EMICardPage.locateStores_RHS);
        waitTime(5);
        // transferControlToWindow(2, false);
        verifyRedirectionURLIfContains("https://www.bajajfinserv.in/locator");
        navigateBack();
        waitTime(5);

    }




    @Then("User navigated back to homePage")
    public void user_navigated_back_to_home_page() {
        driver.navigate().back();
        waitTime(5);
    }


    @Then("User Verifies  Unblocking Process {string}")
    public void user_verifies_unblocking_process(String string) {
        emicard.verifyBlockedProcess(string);
    }
    @Then("User Verifies the unblocking Timeline {string}")
    public void user_verifies_the_unblocking_timeline(String string) {
        emicard.verifyBlockedTimeline(string);
    }


    @Then("User Verifies Validation  Popup message")
    public void user_verifies_validation_popup_message() {
        verifyFieldsDisplayedUsingText("Please raise a request to unblock your card.");
    }
    @Then("Verify after clicking on close it stays on Same Page")
    public void verify_after_clicking_on_close_it_stays_on_same_page() {
        clickOn(EMICardPage.closePopupButton);
        verifyRedirectionURLIfContains("https://uat-oneweb.bajajfinserv.in/MyAccountCards/EmiCard/EmiCards");
    }
    @Then("Verify after clicking on close icon it stays on Same Page")
    public void verify_after_clicking_on_close_icon_it_stays_on_same_page() {
        clickOn(EMICardPage.closeIconPopupButton);
        verifyRedirectionURLIfContains("https://uat-oneweb.bajajfinserv.in/MyAccountCards/EmiCard/EmiCards");

    }
    @Then("User Verifies it is succesfully redirected to RAR Page after clicking on Ok button")
    public void user_verifies_it_is_succesfully_redirected_to_rar_page_after_clicking_on_ok_button() {
        clickOnButtonUsingTextUsingForLoop("OK");
    }


    @Then("Expired card should be Greyed out")
    public void expired_card_should_be_greyed_out() {
        verifyLocatorColorUsingCssValue(EMICardPage.expiredBack,"#000000","Grayed","background-color");

    }

    @Then("verify Customer is able to view Red Expired Capsule")
    public void verify_customer_is_able_to_view_red_expired_capsule() {
        verifyLocatorColorUsingCssValue(EMICardPage.blockedCapsule,"#b40000","Red","background-color");
        verifyFieldsDisplayedUsingLocator(EMICardPage.expiredText);
    }




    @When("verify the options displayed under Your Card details Section  when Customer is having View Number CTA")
    public void verify_the_options_displayed_under_your_card_details_section_when_customer_is_having_view_number_cta() {

    }
    @Then("verify Customer is able to redirect on OTP Screen when Customer click on View Number CTA")
    public void verify_customer_is_able_to_redirect_on_otp_screen_when_customer_click_on_view_number_cta() {
        clickOn(EMICardPage.viewNumber_Button);
        waitForPageToLoad();
        emicard.verifyNewotpMessage();
    }
    @Then("verify Validation message {string} is displayed when customer invalid OTP for multiple times")
    public void verify_validation_message_is_displayed_when_customer_invalid_otp_for_multiple_times(String string) {
        //emicard.verifyssubHeadingIsDisplayed(string);
        emicard.verifyInvalidThirdOtpMessage();
    }



    @Then("verify user enter unblock invalid otp first time and validate message")
    public void verify_user_enter_unblock_invalid_otp_first_time_and_validate_message() {
        emicard.verifyUnblockInvalidfirstOtpMessage();
    }
    @Then("verify user enter unblock invalid otp Second time and validate message")
    public void verify_user_enter_unblock_invalid_otp_second_time_and_validate_message() {
        emicard.verifyUnblockInvalidSecondOtpMessage();
    }

    @Then("verify user enter unblock invalid otp third time and validate otp Exhaust message")
    public void verify_user_enter_unblock_invalid_otp_third_time_and_validate_otp_exhaust_message() {
    emicard.verifyUnblockInvalidThirdOtpMessage();
    }

    @Then("verify user enter invalid otp first time and validate message")
    public void verify_user_enter_invalid_otp_first_time_and_validate_message() {
        //checking xpath
       // emicard.verifyUnblockInvalidfirstOtpMessage();
        emicard.verifyInvalidfirstOtpMessage();
    }
    @Then("verify user enter invalid otp Second time and validate message")
    public void verify_user_enter_invalid_otp_second_time_and_validate_message() {
        emicard.verifyInvalidSecondOtpMessage();
    }


    @When("verify the options displayed under Quick Action Section in RHS when Customer is having Block Card EMI Card")
    public void verify_the_options_displayed_under_quick_action_section_in_rhs_when_customer_is_having_block_card_emi_card() {
        verifyFieldsDisplayedUsingLocator(EMICardPage.blockedText);
        verifyLocatorIsPresentInRightSideOfPage(EMICardPage.unblockCard_RHS);
    }
    @Then("verify Customer is able to redirect on Unblock card page when Customer click on Unblock card button")
    public void verify_customer_is_able_to_redirect_on_unblock_card_page_when_customer_click_on_unblock_card_button() {
        clickOn(EMICardPage.unblockCard_RHS);
        waitForPageToLoad();
        waitTime(2);
        emicard.verifyUnblockotpMessage();
    }



    @Then("verify customer should not able to view RESET PIN under Quick Action")
    public void verify_customer_should_not_able_to_view_reset_pin_under_quick_action() {
         clickOn(EMICardPage.healthEmiCard);
         waitForPageToLoad();
         waitTime(2);
        verifyElementIsNotDisplayedUsingLocator(EMICardPage.resetPin_RHS);
    }


    @Then("Verify customer is able to copy the Card number when customer click on Copy icon")
    public void verify_customer_is_able_to_copy_the_card_number_when_customer_click_on_copy_icon() {
        clickOn(EMICardPage.copyClip);
        manualScreenshot("Copied to clipboard");
    }
    @Then("Verify copy to clipboard Pop-up is displayed")
    public void verify_copy_to_clipboard_pop_up_is_displayed() {
        verifyFieldsDisplayedUsingText("Copied to clipboard");

    }


    @When("Verify Section title - Wellness Benefits")
    public void verify_section_title_wellness_benefits() {
        verifyFieldsDisplayedUsingText("Wellness Benefits Utilization");
    }
    @When("Verify Sub Text - Your wellness benefits are activated")
    public void verify_sub_text_your_wellness_benefits_are_activated() {
        verifyFieldsDisplayedUsingText("Your wellness benefits are activated");
    }

    @Then("Verify Customer clicks on Avail Now CTA")
    public void verify_customer_clicks_on_avail_now_cta() {
        clickOn(EMICardPage.WellAvail);
    }



    @When("verify Wellness benefits details displayed for customers whose card activation date is between 17th Feb {int} to 11th May {int}")
    public void verify_wellness_benefits_details_displayed_for_customers_whose_card_activation_date_is_between_17th_feb_to_11th_may(Integer int1, Integer int2) {
        clickOn(EMICardPage.WellhealthEmiCard);

    }


    @When("verify Customer is able to view Limited Transaction Nudge on Block card")
    public void verify_customer_is_able_to_view_limited_transaction_nudge_on_block_card() {
         verifyFieldsDisplayedUsingLocator(EMICardPage.limitCard);
    }
    @When("customer is able to view Usage Limitations pop-up with Got it CTA when customer click on Limited Transaction Allowed CTA")
    public void customer_is_able_to_view_usage_limitations_pop_up_with_got_it_cta_when_customer_click_on_limited_transaction_allowed_cta() {
        clickOn(EMICardPage.limitCard);
        verifyFieldsDisplayedUsingLocator(EMICardPage.gotIt);


    }
    @When("Verify the {int} Points")
    public void verify_the_points(Integer int1) {
        verifyFieldsUsingCommonXpathAndMultipleTextWithHash("//div[@class='p_terms_title']//following::p","Make purchase transactions up to Rs. 35,000/- for digital products and Rs. 50,000/- for non digital products#Buy your non-digital products on loans/low-cost EMIs at 84% of the total loan amount.#Buy your digital products on loans/low-cost EMIs at 70% of the total loan amount.","");
        clickOn(EMICardPage.gotIt);
        waitForPageToLoad();
    }
    @Then("verify customer is able to view Usage Limitations tab under Relationship Details instead of Where to use tab")
    public void verify_customer_is_able_to_view_usage_limitations_tab_under_relationship_details_instead_of_where_to_use_tab() {
        verifyFieldsDisplayedUsingLocator(EMICardPage.usage);
        verifyFieldsUsingCommonXpathAndMultipleTextWithHash("//p[@class='fees_title']","Make purchase transactions up to Rs. 35,000/- for digital products and Rs. 50,000/- for non digital products#Buy your non-digital products on loans/low-cost EMIs at 84% of the total loan amount.#Buy your digital products on loans/low-cost EMIs at 70% of the total loan amount.","");
         verifyFieldsDisplayedUsingText("Dear Customer, as per our internal policies you can use the cards till next 6 months incase all your future payments are payed on time. adding further , you can use your card only for one consumer durable product at your nearest store once in 30 days.");
    }


    @When("verify customer is able to view offer description when customer is having {int} number of health card")
    public void verify_customer_is_able_to_view_offer_description_when_customer_is_having_number_of_health_card(Integer int1) {
      verifyFieldsDisplayedUsingLocator(EMICardPage.wellThreeBen);
    }

    @When("verify customer is able to view offer description when customer is having the {int} number of health card")
    public void verify_customer_is_able_to_view_offer_description_when_customer_is_having_the_number_of_health_card(Integer int1) {
        verifyFieldsDisplayedUsingLocator(EMICardPage.wellTwoBen);
    }

    @Then("Verify Customer clicks on Avail Now CTA button")
    public void verify_customer_clicks_on_avail_now_cta_button() {
    clickOn(EMICardPage.avail82);
    }


    @When("Verify the first point {int} tele Consultations with All Specialists Second Point Free Preventive health check up update XX Test third Point Rs. {double} Lab & OPD benefit redeemable at any Hospital")
    public void verify_the_first_point_tele_consultations_with_all_specialists_second_point_free_preventive_health_check_up_update_xx_test_third_point_rs_lab_opd_benefit_redeemable_at_any_hospital(Integer int1, Double double1) {
        verifyFieldsUsingCommonXpathAndMultipleTextWithHash("//div[@id='Wellness_ThreeBenefits']//li","10 free tele-consultations with the specialists#Free preventive health check-ups#Rs. 2,500 Lab & OPD benefits which can be redeemed at any hospital","");

    }

    @When("Verify the first point- {int} tele Consultations with All Specialists Second Point  Free Preventive health check up update XX Test")
    public void verify_the_first_point_tele_consultations_with_all_specialists_second_point_free_preventive_health_check_up_update_xx_test(Integer int1) {
        verifyFieldsUsingCommonXpathAndMultipleTextWithHash("//div[@id='Wellness_TwoBenefits']//li","10 free tele-consultations with the specialists#Free preventive health check-ups","");

    }
    @Then("Verify Customer clicks on the Avail Now CTA button")
    public void verify_customer_clicks_on_the_avail_now_cta_button() {
        clickOn(EMICardPage.avail80);
    }




    @When("Click on Blocked EMI Card")
    public void click_on_blocked_emi_card() {
      clickOn(EMICardPage.blockedCard);
        waitForThreeDotsDisAppear();
        waitForPageToLoad();
    }
    @Then("verify OTP is triggered on Customer registered mobile number when click on Unblock Card option under Quick Action")
    public void verify_otp_is_triggered_on_customer_registered_mobile_number_when_click_on_unblock_card_option_under_quick_action() {
        emicard.scrollToTop();
        clickOn(EMICardPage.unblockCard_RHS);
        waitTime(10);
        emicard.verifyViewNumberOTPPopup();
    }
    @Then("Enter Valid OTP")
    public void enter_valid_otp() {
    emicard.verifyvalidOTP();
    }
    @Then("Click on Submit Button")
    public void click_on_submit_button() {
        clickOnButtonUsingTextUsingForLoop("Submit");
    }
    @Then("verify Alter Pop-up with “We are currently unable to unblock your card as per inline policies.” with GOT IT CTA is displayed")
    public void verify_alter_pop_up_with_we_are_currently_unable_to_unblock_your_card_as_per_inline_policies_with_got_it_cta_is_displayed() {
    verifyFieldsDisplayedUsingText("We are currently unable to unblock your card as per inline policies.");
    }
    @Then("Click on GOT IT CTA Button")
    public void click_on_got_it_cta_button() {
       clickOn(EMICardPage.unblockGot);
       waitForThreeDotsDisAppear();
       waitForPageToLoad();
    }
    @Then("Customer should stay on EMI Card services Page")
    public void customer_should_stay_on_emi_card_services_page() {
      verifyRedirectionURLIfContains("https://uat-oneweb.bajajfinserv.in/MyAccountCards/EmiCard/EmiCards");
    }


    @When("Verify To view card number, download the Bajaj Finserv App note should be displayed")
    public void verify_to_view_card_number_download_the_bajaj_finserv_app_note_should_be_displayed() {
        emicard.verifyssubHeadingIsDisplayed("To view card number, download the Bajaj Finserv App");
    }


    @When("Click on Reset PIN")
    public void click_on_reset_pin() {
        clickOn(EMICardPage.resetPin_RHS);
        waitTime(5);
    }
    @When("Enter Enter New PIN")
    public void enter_enter_new_pin() {
        emicard.enterValueInTextBox("1234", 4, EMICardPage.enterPin_UpdatePin, "");

    }
    @When("Enter Re-enter New PIN")
    public void enter_re_enter_new_pin() {
        emicard.enterValueInTextBox("1234", 4, EMICardPage.re_enterPin_UpdatePin, "");

    }
    @When("Click on Proceed CTA")
    public void click_on_proceed_cta() {

        clickOnButtonUsingTextUsingForLoop("PROCEED");
        waitTime(10);

    }
    @When("Timer should start from  {int} sec in descending order")
    public void timer_should_start_from_sec_in_descending_order(Integer int1) {
       emicard.verifyOtpTimer();
    }
    @When("Enters invalid OTP")
    public void enters_invalid_otp() {
        emicard.verifyUpdatePinOTP();
        String locator1 = "//div[@class='otpPart']//input[contains(@id,'OTP-digit')]";
        String locator = "OTP Timer #xpath=//div[@class='otpPart']//input[contains(@id,'OTP-digit')]";
        if (isElementPresent(locator)) {
            emicard.enterValueInTextBox("222222", 6, locator1, "");
        }
        else{
            testStepFailed("OTP Popup not displayed");
        }

    }
    @When("click on SUBMIT CTA")
    public void click_on_submit_cta() {
        clickOnButtonUsingTextUsingForLoop("Submit");
        waitForThreeDotsDisAppear();
    }
    @Then("Inline Validation Text should be displayed {string}")
    public void inline_validation_text_should_be_displayed(String string) {
        emicard.verifyssubHeadingIsDisplayed(string);
    }

    @Then("Validation Message should be displayed in Pop-up {string}")
    public void validation_message_should_be_displayed_in_pop_up(String string) {
        emicard.verifyssubHeadingIsDisplayed(string);
    }




    @When("click on Resend Otp Button CTA")
    public void click_on_resend_otp_button_cta() {
        String resendButton = "Resend OTP Button In Update Pin Page#xpath=//button[@id='resend']";
        waitForElementVisibility(resendButton);
        waitTime(60);
        clickOnButtonUsingTextUsingForLoop("Resend OTP");
    }



    @When("Click on Resend OTP CTA when timer get Expired")
    public void click_on_resend_otp_cta_when_timer_get_expired() {
        waitTime(60);
       clickOn(EMICardPage.resend_Btn);
       waitForPageToLoad();
    }
    @When("Second time Again Click on Resend OTP CTA when timer get Expired")
    public void second_time_again_click_on_resend_otp_cta_when_timer_get_expired() {
        waitTime(60);
        clickOn(EMICardPage.resend_Btn);
        waitForPageToLoad();
    }
    @When("Third time Again Click on Resend OTP CTA")
    public void third_time_again_click_on_resend_otp_cta() {
        waitTime(60);
        clickOn(EMICardPage.resend_Btn);
        waitForPageToLoad();
    }



    @When("Click on Blocked card")
    public void click_on_blocked_card() {
       clickOn(EMICardPage.otpblockedCard);
    }
    @When("Click on Unblock Card option under Quick Action")
    public void click_on_unblock_card_option_under_quick_action() {
        clickOn(EMICardPage.unblockCard_RHS);
        waitForPageToLoad();
        waitTime(2);
        emicard.verifyUnblockotpMessage();
    }

    @When("Unblock Popup Timer should start from {int} sec in descending order")
    public void unblock_popup_timer_should_start_from_sec_in_descending_order(Integer int1) {
        emicard.verifyUnblockOtpTimer();
    }


}

