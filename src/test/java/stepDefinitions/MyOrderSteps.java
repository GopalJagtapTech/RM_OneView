package stepDefinitions;

import PageObjects.*;
import TestData.GOR;
import base.ApplicationKeywords;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.assertj.core.api.SoftAssertions;

public class MyOrderSteps  extends ApplicationKeywords{
    LoginPage login;
    HomePage home;

    MyOrderPage myOrderPage;
    LoginFieldPage loginfieldsPage;

    public MyOrderSteps() {
        login = new LoginPage();
        home = new HomePage();
        loginfieldsPage=new LoginFieldPage();
        myOrderPage=new MyOrderPage();
    }

    @Then("My Order option under hamburger menu should be displayed")
    public void my_order_option_under_hamburger_menu_should_be_displayed() {
       verifyFieldsDisplayedUsingLocator(myOrderPage.menuMyOrder);
    }

    @When("Click on My Order")
    public void click_on_my_order() {
      clickOn(myOrderPage.menuMyOrder);
      waitForPageToLoad();
    }
    @Then("My Order Page should be displayed")
    public void my_order_page_should_be_displayed() {
       // verifyFieldsDisplayedUsingText("List of all products purchased using Insta EMI Card");
        verifyFieldsDisplayedUsingText("List of all the products purchased on Bajaj Finance");

        // myOrderPage.getTableData("");
    }

    @Then("Customer should be able to view Current tab and previous Tab under My Order Page")
    public void customer_should_be_able_to_view_current_tab_and_previous_tab_under_my_order_page() {
        verifyFieldsDisplayedUsingLocator(myOrderPage.butCurrentOrders);
        verifyFieldsDisplayedUsingLocator(myOrderPage.butPreviousOrders);
    }



    @Then("Customer should be able to view You dont have any Current order")
    public void customer_should_be_able_to_view_you_dont_have_any_current_order() {
        clickOn(myOrderPage.butCurrentOrders);
        verifyFieldsDisplayedUsingText("You have no current orders");
    }

    @Then("Customer should be able to view You dont have any orders on Current order")
    public void customer_should_be_able_to_view_you_dont_have_any_orders_on_current_order() {
        clickOn(myOrderPage.butCurrentOrders);
        verifyFieldsDisplayedUsingText("You have no current orders");
       // myOrderPage.verifyHeadingTextIsDisplayed("You don't have any Orders.");
    }
    @Then("Click on Previous Tab and verify You dont have any orders is displayed")
    public void click_on_previous_tab_and_verify_you_dont_have_any_orders_is_displayed() {
        clickOn(myOrderPage.butPreviousOrders);
        verifyFieldsDisplayedUsingText("You have no previous orders");
      //  myOrderPage.verifyHeadingTextIsDisplayed("You don't have any Orders.");
    }

    @Then("Customer should be able to view You dont have any Previous order")
    public void customer_should_be_able_to_view_you_dont_have_any_previous_order() {
        clickOn(myOrderPage.butPreviousOrders);
        verifyFieldsDisplayedUsingText("You have no previous orders");
    }

    @Then("Customer should be able to view Order ID Date Product Image,Product name,Loan Amount,Status three dot menu will show only FAQs and Cancel CTA Store Name Contact Store CTA Locate Store CTA Track Order CTA under my Current Order Page")
    public void customer_should_be_able_to_view_order_id_date_product_image_product_name_loan_amount_status_three_dot_menu_will_show_only_fa_qs_and_cancel_cta_store_name_contact_store_cta_locate_store_cta_track_order_cta_under_my_current_order_page() {
        myOrderPage.getTableData("Order ID & Date");
        myOrderPage.getOrderType("Order ID & Date");
        myOrderPage.threeDotsImage("Order ID & Date");
        myOrderPage.verifyLogoandOfferName("Logo and OfferName");
        myOrderPage.getAutopopulatedValue("LOAN AMOUNT");
        myOrderPage.getAutopopulatedValue("Status");
        myOrderPage.getAutopopulatedValue("Store Name");
        myOrderPage.verifyIconStore("Contact the store");
        myOrderPage.verifyIconStore("Locate the store");
        myOrderPage.verifyIconStore("Track your order");
    }


    @Then("Verify Current Order details popup")
    public void verify_current_order_details_popup() {
        myOrderPage.verifyOrderType("Order ID & Date");
    }

    @When("Click on Previous Order Tab under My Order Page")
    public void click_on_previous_order_tab_under_my_order_page() {
       clickOn(myOrderPage.butPreviousOrders);
    }
    @Then("Customer should be able to view Previous Order details")
    public void customer_should_be_able_to_view_previous_order_details() {
        myOrderPage.getTableData("Order ID & Date");
        myOrderPage.getOrderType("Order ID & Date");
        myOrderPage.threeDotsImage("Order ID & Date");
        myOrderPage.verifyLogoandOfferName("Logo and OfferName");
        myOrderPage.getAutopopulatedValue("LOAN AMOUNT");
        myOrderPage.getAutopopulatedValue("Status");
        myOrderPage.getAutopopulatedValue("Store Name");
        myOrderPage.verifyIconStore("Share your feedback");
       // myOrderPage.verifyIconStore("View your loan details");

    }

    @Then("Share Feedback Icon Should be displayed")
    public void share_feedback_icon_should_be_displayed() {
        myOrderPage.verifyIconStore("Share your feedback");
    }


    @When("clicks on Share Feedback  Icon")
    public void clicks_on_share_feedback_icon() {
        myOrderPage.clickIconStore("Share your feedback");
        waitForPageToLoad();
        waitTime(5);

    }
    @Then("Feedback page should be displayed")
    public void feedback_page_should_be_displayed() {
        driver.switchTo().frame("kampyleForm3444");
        verifyFieldsDisplayedUsingText("Your feedback will help us improve");
    }

    @Then("Customer should be able to view Please rate us on your store visit experience with us Rating option under Feedback page")
    public void customer_should_be_able_to_view_please_rate_us_on_your_store_visit_experience_with_us_rating_option_under_feedback_page() {
        driver.switchTo().frame("kampyleForm3444");
        verifyFieldsDisplayedUsingText("Your feedback will help us improve");
        verifyFieldsDisplayedUsingText("On a scale of 1-5, please rate your experience on our website");
        verifyFieldsDisplayedUsingLocator(myOrderPage.ratingStar);
    }

    @When("Customer selects three stars on Rating Option")
    public void customer_selects_three_stars_on_rating_option() {

       myOrderPage.clickOnRating(3,"3, Neutral");

    }
    @Then("Customer should be able to view Please rate us on your store visit experience with us Feedback option Choose one or more of the options below under Feedback page")
    public void customer_should_be_able_to_view_please_rate_us_on_your_store_visit_experience_with_us_feedback_option_choose_one_or_more_of_the_options_below_under_feedback_page() {
     clickOn(myOrderPage.btnSubmit);
     waitForPageToLoad();
        verifyFieldsDisplayedUsingText("Thank you for your feedback");

    }

    @When("Customer selects Feedback option")
    public void customer_selects_feedback_option() {
         myOrderPage.selectFeedbackCheckboxOption("I couldn't find what I was looking for");
    }
    @Then("Submit button should be enabled")
    public void submit_button_should_be_enabled() {
      verifyFieldsDisplayedUsingLocator(myOrderPage.btnSubmit);
    }

    @When("Clicks on submit button")
    public void clicks_on_submit_button() {
      clickOn(myOrderPage.btnSubmit);
      waitForPageToLoad();
    }
    @Then("Thank You Pop Up should be displayed")
    public void thank_you_pop_up_should_be_displayed() {
        verifyFieldsDisplayedUsingText("Thank you for your feedback");
    }


    @Then("Inline message should be displayed")
    public void inline_message_should_be_displayed() {
        verifyFieldsDisplayedUsingText("Please submit a rating");
    }

    @When("Click on Three Dot Menu")
    public void click_on_three_dot_menu() {
       myOrderPage.clickThreeDotsImage("Order ID & Date");
    }
    @When("Click on FAQ CTA")
    public void click_on_faq_cta() {
       myOrderPage.clickFaq("FAQs");
    }
    @Then("Customer should be able to view Loan Category Page")
    public void customer_should_be_able_to_view_loan_category_page() {
        verifyRedirectionURLIfContains("https://uat-oneweb.bajajfinserv.in/MyAccountService/HelpAndSupport/RARFAQCategory");
    }

    @Then("Customer should be able to view FAQ & Cancel CTA  under my Current Order Page")
    public void customer_should_be_able_to_view_faq_cancel_cta_under_my_current_order_page() {
       myOrderPage.verifyFaq("FAQs");
    }

    @When("Click on Current Order Tab under My Order Page")
    public void click_on_current_order_tab_under_my_order_page() {
        clickOn(myOrderPage.butCurrentOrders);
    }
    @Then("Contact Store CTA should be displayed")
    public void contact_store_cta_should_be_displayed() {
       myOrderPage.verifyIconStore("Contact the store");
    }


    @Then("Track Order CTA should be displayed")
    public void track_order_cta_should_be_displayed() {
        myOrderPage.verifyIconStore("Track your order");
    }

    @When("Click on Track Order CTA")
    public void click_on_track_order_cta() {
        myOrderPage.clickIconStore("Track your order");
    }
    @Then("Customer should be able to view Status of Order")
    public void customer_should_be_able_to_view_status_of_order() {
      // myOrderPage.verifyOutForDeliveryOrder("Track your order","Out for Delivery","My tracker,Order Placed,Order Confirmed,Rider Assigned,Vijay,9874536543,Out for Delivery,Product Delivered");
        myOrderPage.verifyOutForDeliveryOrder("Track your order","Sanction & Loan Document Pending","My tracker,Loan Approved,Sanction & Loan Document Pending,Sanction & Loan Document Accepted,Loan Processed");

    }


    @When("user Switches to default Content")
    public void user_switches_to_default_content() {
       myOrderPage.switchDefaultPage();
    }

    @Then("Delivery Agents name, number & calling CTA should be displayed")
    public void delivery_agents_name_number_calling_cta_should_be_displayed() {
        myOrderPage.verifyOutForDeliveryOrder("Track your order","Out for Delivery","My tracker,Order Placed,Order Confirmed,Rider Assigned,Vijay,9874536543,Out for Delivery,Product Delivered");

    }


    @Then("Customer should be able to view Tracking Details")
    public void customer_should_be_able_to_view_tracking_details() {
         myOrderPage.verifyOutForDeliveryOrder("Track your order","Out for Delivery","My tracker,Order Placed,Order Confirmed,Rider Assigned,Vijay,9874536543,Out for Delivery,Product Delivered");

    }


    @When("Click on Contact Store CTA")
    public void click_on_contact_store_cta() {
        myOrderPage.clickIconStore("Contact the store");
    }
    @Then("Contact Number Of the Dealer should be displayed")
    public void contact_number_of_the_dealer_should_be_displayed() {
        myOrderPage.verifyHeadingTextIsDisplayed("Store Contact");
        myOrderPage.verifyHeadingTextIsDisplayed("You can reach out to our partner store on 9604601956");
    }


    @Then("Locate Store CTA should be displayed")
    public void locate_store_cta_should_be_displayed() {
        myOrderPage.verifyIconStore("Locate the store");
    }




    @When("Click on Locate Store CTA")
    public void click_on_locate_store_cta() {
        myOrderPage.clickIconStore("Locate the store");
        waitForPageToLoad();
        waitTime(30);
    }
    @Then("Save icon should be displayed")
    public void save_icon_should_be_displayed() {

        transferControlToWindow(2,false);
        myOrderPage.verifyFieldsDisplayedUsingLocator(myOrderPage.butUnsave);
        transferControlToWindow(1,true);

    }

    @When("Click on Save")
    public void click_on_save() {
        transferControlToWindow(2,false);
        myOrderPage.verifyFieldsDisplayedUsingLocator(myOrderPage.butUnsave);
        clickOn(myOrderPage.butUnsave);

    }
    @Then("Customer should be able to save direction on google maps of the store")
    public void customer_should_be_able_to_save_direction_on_google_maps_of_the_store() {
        myOrderPage.verifyFieldsDisplayedUsingLocator(myOrderPage.butSave);
        transferControlToWindow(1,true);
    }

    @Then("map of the store should be displayed")
    public void map_of_the_store_should_be_displayed() {

        transferControlToWindow(2,false);
        clickOn(myOrderPage.butDirection);
        waitTime(5);
        verifyFieldsDisplayedUsingLocator(myOrderPage.startDirections);
        verifyFieldsDisplayedUsingLocator(myOrderPage.mapDirection);
       // transferControlToWindow(1,false);
    }


    @When("Click on Back Button")
    public void click_on_back_button() {
        verifyFieldsDisplayedUsingLocator(myOrderPage.backButton);
        transferControlToWindow(1,true);
    }

    @Then("Directions icon should be displayed under locator page")
    public void directions_icon_should_be_displayed_under_locator_page() {
        transferControlToWindow(2,false);
    verifyFieldsDisplayedUsingLocator(myOrderPage.butDirection);
        transferControlToWindow(1,true);
    }

    @Then("Customer should be able to view Locate store tabs")
    public void customer_should_be_able_to_view_locate_store_tabs() {

        transferControlToWindow(2,false);
        verifyFieldsDisplayedUsingLocator(myOrderPage.textStore);
        myOrderPage.verifyStoreName();
        myOrderPage.emiStoreDistance();
       // myOrderPage.emiStoreStatus();
        myOrderPage.emiStoreStatusType();
        myOrderPage.emiStoreAdress();
    verifyFieldsDisplayedUsingLocator(myOrderPage.butUnsave);
    verifyFieldsDisplayedUsingLocator(myOrderPage.butDirection);
       clickOn(myOrderPage.butDirection,"");
       waitTime(2);
       verifyFieldsDisplayedUsingLocator(myOrderPage.backButton);
       verifyFieldsDisplayedUsingLocator(myOrderPage.storeLogoImage);

        transferControlToWindow(1,true);

    }

    @Then("Loan Details Icon should be displayed")
    public void loan_details_icon_should_be_displayed() {
        myOrderPage.verifyLoan("View your loan details");
    }

    @Then("Loan Details screen should be displayed")
    public void loan_details_screen_should_be_displayed() {

        verifyRedirectionURLIfContains("https://uat-oneweb.bajajfinserv.in/MyAccountLoanServices/Loans/Nonflexiloan");

    }
    @When("clicks on Loan Details Icon")
    public void clicks_on_loan_details_icon() {
        myOrderPage.clickLoanIcon("View your loan details");
        waitForPageToLoad();
        waitTime(10);
    }

    @Then("Contact number of the dealer on Pop Up should be displayed")
    public void contact_number_of_the_dealer_on_pop_up_should_be_displayed() {
        myOrderPage.verifyOutForDeliveryOrder("Track your order","Out for Delivery","My tracker,Order Placed,Order Confirmed,Rider Assigned,Vijay,9874536543,Out for Delivery,Product Delivered");
    }


    @When("Locator page should be displayed")
    public void locator_page_should_be_displayed() {
        transferControlToWindow(2,false);
        verifyRedirectionURLIfContains("https://www.bajajfinserv.in/locator");
    }
    @When("Click on Directions")
    public void click_on_directions() {
    clickOn(myOrderPage.butDirection);
    waitTime(10);
    }
    @Then("Customer should be able to view direction on maps of the store")
    public void customer_should_be_able_to_view_direction_on_maps_of_the_store() {
        verifyFieldsDisplayedUsingLocator(myOrderPage.storeLogoImage);
        transferControlToWindow(1,true);

    }


    @Then("verify tiles visible to customer under Pre-Approved offer section of CurrentOrder")
    public void verify_tiles_visible_to_customer_under_pre_approved_offer_section_of_current_order() {
        myOrderPage.verifyFieldDisplayedUsingForLoop("Personal Loan");
        myOrderPage.verifyFieldDisplayedUsingForLoop("Bajaj Finserv RBL Bank SuperCard");
        myOrderPage.verifyFieldDisplayedUsingForLoop("Insta EMI Card");
        myOrderPage.verifyFieldDisplayedUsingForLoop("Gold Loan");
        myOrderPage.verifyFieldDisplayedUsingForLoop("Fixed Deposit");
        myOrderPage.verifyFieldDisplayedUsingForLoop("Car Insurance");
        myOrderPage.verifyFieldDisplayedUsingForLoop("Bajaj Finserv RBL Bank SuperCard");
        myOrderPage.verifyFieldDisplayedUsingForLoop("Bajaj Finserv DBS Bank Credit Card");

    }


}
