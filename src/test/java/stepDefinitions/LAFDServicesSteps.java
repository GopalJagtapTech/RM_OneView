package stepDefinitions;

import PageObjects.*;
import base.ApplicationKeywords;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;


public class LAFDServicesSteps extends ApplicationKeywords {

    LoginPage login;
    HomePage home;
    LAFDServicesPage lafdservices;

    public LAFDServicesSteps() {
        login = new LoginPage();
        home = new HomePage();
        lafdservices = new LAFDServicesPage();
    }

    @Then("verify LAFD Services is displayed for ETB customer")
    public void verify_lafd_services_is_displayed_for_etb_customer() {

        verifyElementIsDisplayedOrNot(LAFDServicesPage.section_MyRelations);
    }

    @Then("verify that customer is able redirect to LAFD details page when customer click on view details on LAFD tile\\(Active)")
    public void verify_that_customer_is_able_redirect_to_lafd_details_page_when_customer_click_on_view_details_on_lafd_tile_active() {

        lafdservices.verifyViewDetailsRedirectionLAFD();

    }

    @Then("verify customer is able to view given options and icon details on LAFD Details page\\(Active)")
    public void verify_customer_is_able_to_view_given_options_and_icon_details_on_lafd_details_page_active() {

        lafdservices.verifyNameandLogoOfTheProduct();
        // verifyTopSectionInServices(LAFDServicesPage.logo_LAFD, "Loan Amount", "Principal Outstanding Amount#Loan Tenor#Rate of Interest#Loan Closure Date#Disbursement Date", "", "", "", "", "Loan Account Number:", false, "");
        verifyTopSectionInServices(LAFDServicesPage.logo_LAFD, "Loan Amount", "Principal Outstanding Amount#Loan Tenure#Rate of Interest#Disbursement Date", "", "", "", "", "Loan Account Number:", false, "");

    }

    @Then("verify that Relationship Details sections are visible to customer under LAFD details page\\(Active)")
    public void verify_that_relationship_details_sections_are_visible_to_customer_under_lafd_details_page_active() {

        verifyRelationShipDetails("Loan Details", "Deposit ID#Disbursement Date#Interest Paid#Total Principal Paid", "");
        //   verifyRelationShipDetails("Loan Details","Deposit ID#Disbursement Date#Interest Paid","");


    }

    @Then("verify options visible to customer under THINGS YOU CAN DO with Active LAFD\\(Active)")
    public void verify_options_visible_to_customer_under_things_you_can_do_with_active_lafd_active() {

        lafdservices.verifyTYCDLafd();
    }

    @Then("verify the redirection to Document center page when customer clicks on View statement under thing you can do RHS section\\(Active)")
    public void verify_the_redirection_to_document_center_page_when_customer_clicks_on_view_statement_under_thing_you_can_do_rhs_section_active() {



        clickIfOnlyDisplayed(LAFDServicesPage.view_statement);
        waitTime(10);
        //  verifyRedirectionURLIfContains("https://cont-sites.bajajfinserv.in/MyAccountDocumentCenter/DocumentCenter/docCenter_LoanDetails");
        verifyFieldsDisplayedUsingText("What are these documents?");

    }

    @Then("verify customer is redirected to FAQ section Loan Detail section is highlighted when customer clicks on FAQ's\\(Active)")
    public void verify_customer_is_redirected_to_faq_section_loan_detail_section_is_highlighted_when_customer_clicks_on_faq_s_active() {
        scrollToWebElement(LAFDServicesPage.faqs_LAFDServices);
        clickOn(LAFDServicesPage.faqs_LAFDServices);
        verifyRedirectionURLIfContains("https://cont-sites.bajajfinserv.in/MyAccountService/HelpAndSupport/RARFAQCategory");
        navigateToBack();
        waitTime(10);
        // verifyRedirectionInCommon("", "");
    }





    @Then("verify the redirection when customer clicks on Know your CIBIL\\(Active)")
    public void verify_the_redirection_when_customer_clicks_on_know_your_cibil_active() {

        verifyFieldsDisplayedUsingText("A CIBIL Score above 750 can help you get better terms on loans and other products. Check your score for free now.");
        clickIfOnlyDisplayed(LAFDServicesPage.checkNow_LAFDServices);
        //  transferControlToWindow(2,false);
        // verifyRedirectionInCommon("https://www.bajajfinserv.in/check-free-cibil-score", "");
        verifyRedirectionURLIfContains("https://www.bajajfinserv.in/check-free-cibil-score");
        navigateBack();
        waitTime(3);
        // transferControlToWindow(1,true);

    }

    @Then("verify the redirection to My Relations page when customer clicks on View All Tab")
    public void verify_the_redirection_to_my_relations_page_when_customer_clicks_on_view_all_tab() {

        clickOn(LAFDServicesPage.viewAll_LAFDServices);
        //  verifyRedirectionURLIfContains("https://experia-uat.bajajfinserv.in/MyRelation/Customer/MyRelation/Index");
        lafdservices.verifysubHeadingIsDisplayed("My Relations");
        // verifyRedirectionURLIfContains("https://cont-sites.bajajfinserv.in/MyAccountLoanServices/MyRelation/Index");


    }
    @Then("verify customer lands on LAFD Services page when clicks on LAFD Tile under Loans")
    public void verify_customer_lands_on_lafd_services_page_when_clicks_on_lafd_tile_under_loans() {

        clickOn(LAFDServicesPage.loanTile_LAFDServices);
        verifyRedirectionURLIfContains("https://experia-uat.bajajfinserv.in/MyRelation/Loans/Loans/Nonflexiloan");

    }


    @Then("verify that Relationship Details sections are visible to customer under LAFD details page\\(Closed)")
    public void verifyThatRelationshipDetailsSectionsAreVisibleToCustomerUnderLAFDDetailsPageClosed() {

        //  verifyRelationShipDetails("Loan Details", "Deposit ID#Disbursement Date#Interest Paid#Total Principal Paid", "");
        //  verifyTopSectionInServices(LAFDServicesPage.logo_LAFD, "Loan Amount", "Principal Outstanding Amount#Loan Tenure#Rate of Interest#Disbursement Date", "", "", "", "", "Loan Account Number:", false, "");

        verifyRelationShipDetails("Loan Details","Deposit ID#Disbursement Date#Interest Paid","");

    }


    @Then("verify options visible to customer under THINGS YOU CAN DO with Closed LAFD\\(Closed)")
    public void verifyOptionsVisibleToCustomerUnderTHINGSYOUCANDOWithClosedLAFDClosed() {
        verifyLocatorIsPresentInRightSideOfPage(LAFDServicesPage.quickActions_LAFD);
        verifyLocatorIsPresentInRightSideOfPage(LAFDServicesPage.view_statement);
    }





    @Then("For NTB PTB customer My Relations should not be displayed")
    public void for_ntb_ptb_customer_my_relations_should_not_be_displayed() {
        lafdservices.verifyFieldsNotDisplayedUsingLocator(LAFDServicesPage.myRelations);
    }

    @Then("verify tiles visible to customer under Pre-Approved offer section")
    public void verifyTilesVisibleToCustomerUnderPreApprovedOfferSection() {

        lafdservices.verifyFieldDisplayedUsingForLoop("Personal Loan");
        lafdservices.verifyFieldDisplayedUsingForLoop("Doctor Loan");
        lafdservices.verifyFieldDisplayedUsingForLoop("Health EMI Network Card");
        lafdservices.verifyFieldDisplayedUsingForLoop("Two-wheeler Loan");
        lafdservices.verifyFieldDisplayedUsingForLoop("Gold Loan");
        lafdservices.verifyFieldDisplayedUsingForLoop("Fixed Deposit");
        lafdservices.verifyFieldDisplayedUsingForLoop("Car Insurance");
        lafdservices.verifyFieldDisplayedUsingForLoop("Bajaj Finserv RBL Bank SuperCard");
        lafdservices.verifyFieldDisplayedUsingForLoop("Insta EMI Card");




        /*scrollToWebElement(LAFDServicesPage.pao_LAFD);
        verifyElementIsDisplayedOrNot(LAFDServicesPage.pao_LAFD);
        lafdservices.verifyPAOLafd("Personal Loan");
        lafdservices.verifyPAOLafd("Doctor Loan");
        lafdservices.verifyPAOLafd("Health EMI Network Card");
      //  lafdservices.verifyPAOLafd("Digital Health EMI Network Card");
      //  lafdservices.verifyPAOLafd("Credit Card");
        lafdservices.verifyPAOLafd("Two-wheeler Loan");
        lafdservices.verifyPAOLafd("Gold Loan");*/


    }

    @Then("verify the redirection to Document center page when customer clicks on View statement under thing you can do RHS section\\(Closed)")
    public void verifyTheRedirectionToDocumentCenterPageWhenCustomerClicksOnViewStatementUnderThingYouCanDoRHSSectionClosed() {

//        clickIfOnlyDisplayed(LAFDServicesPage.view_statement);
//        waitForPageToLoad();
//        verifyElementIsDisplayedOrNot(LAFDServicesPage.statement_LAFDServices);
        clickIfOnlyDisplayed(LAFDServicesPage.view_statement);
        waitTime(10);
        //  verifyRedirectionURLIfContains("https://cont-sites.bajajfinserv.in/MyAccountDocumentCenter/DocumentCenter/docCenter_LoanDetails");
        verifyFieldsDisplayedUsingText("What are these documents?");
        // doccentre.redirectionToLoanDocPage(cardNumber);
        // navigateToBack();
        // waitTime(10);
    }

    @Then("verify customer is able to view given options and icon details on LAFD Details page\\(Closed)")
    public void verifyCustomerIsAbleToViewGivenOptionsAndIconDetailsOnLAFDDetailsPageClosed() {
        lafdservices.verifyNameandLogoOfTheProduct();
        verifyTopSectionInServices(LAFDServicesPage.logo_LAFDClosed, "Loan Amount", "Loan Tenure#Rate of Interest", "CLOSED", "#002953", "Blue", "background-color", "Loan Account Number:", false, "");
        //  verifyTopSectionInServices(LAFDServicesPage.logo_LAFD, "Loan Amount", "Principal Outstanding Amount#Loan Tenure#Rate of Interest#Disbursement Date", "", "", "", "", "Loan Account Number:", false, "");


    }


    //ravi
    @When("verify Redirection after Clicking on {string} tile on Home Page My Relations")
    public void verify_redirection_after_clicking_on_tile_on_home_page_my_relations(String string) {
        lafdservices.verifyViewDetailsLAFD(string);
    }


    @Then("verify options visible to customer under Quick Actions with Active LAFD\\(Active)")
    public void verify_options_visible_to_customer_under_quick_actions_with_active_lafd_active() {
        lafdservices.verifyTYCDLafd();
    }


    @Then("verify options visible to customer under Quick Actions with Active LAFD\\(Closed)")
    public void verify_options_visible_to_customer_under_quick_actions_with_active_lafd_closed() {
        lafdservices.verifyTYCDLafd();
    }

    @Then("verify details displayed on LAFD services page")
    public void verify_details_displayed_on_lafd_services_page() {
        lafdservices.verifyB2BServicePage();
    }


    @Then("verify details displayed on LAFD services page\\(Closed)")
    public void verify_details_displayed_on_lafd_services_page_closed() {
        lafdservices.verifyB2BServicePage();
    }

    @Then("verify the redirection when customer clicks on FAQ\\(Active)")
    public void verify_the_redirection_when_customer_clicks_on_faq_active() {

        scrollToWebElement(LAFDServicesPage.faqs_LAFDServices);
        clickOn(LAFDServicesPage.faqs_LAFDServices);
        //   verifyRedirectionURLIfContains("https://cont-sites.bajajfinserv.in/MyAccountService/HelpAndSupport/RARFAQCategory");
        verifyFieldsDisplayedUsingText("Choose a category you need help with");
        navigateToBack();
        waitTime(10);

    }



    @Then("verify Active Tile is displayed sucessfully using Account No {string}")
    public void verify_active_tile_is_displayed_sucessfully_using_account_no(String string) {
        // lafdservices.verifyActiveorClosed(string,"Active");
        lafdservices.verifyLAFDLabelName(string,"Loan Amount");
        lafdservices.verifyLAFDLabelName(string,"Next EMI Amount");

    }


    @Then("verify the redirection when customer clicks on Know your CIBIL\\(Closed)")
    public void verify_the_redirection_when_customer_clicks_on_know_your_cibil_closed() {
        verifyFieldsDisplayedUsingText("A CIBIL Score above 750 can help you get better terms on loans and other products. Check your score for free now.");
        clickIfOnlyDisplayed(LAFDServicesPage.checkNow_LAFDServices);
        // transferControlToWindow(2,false);
        // verifyRedirectionInCommon("https://www.bajajfinserv.in/check-free-cibil-score", "");
        verifyRedirectionURLIfContains("https://www.bajajfinserv.in/check-free-cibil-score");
        // transferControlToWindow(1,true);
        navigateBack();
        waitTime(3);
    }
    @Then("verify the redirection when customer clicks on FAQ\\(Closed)")
    public void verify_the_redirection_when_customer_clicks_on_faq_closed() {
        scrollToWebElement(LAFDServicesPage.faqs_LAFDServices);
        clickOn(LAFDServicesPage.faqs_LAFDServices);
        verifyFieldsDisplayedUsingText("Choose a category you need help with");
        // verifyRedirectionURLIfContains("https://cont-sites.bajajfinserv.in/MyAccountService/HelpAndSupport/RARFAQCategory");
        navigateToBack();
        waitTime(10);
    }


    @Then("verify Closed Tile is displayed sucessfully using Account No {string}")
    public void verify_closed_tile_is_displayed_sucessfully_using_account_no(String string) {

        lafdservices.verifyActiveorClosed(string,"CLOSED");
        lafdservices.verifyLAFDLabelName(string,"Loan Amount");
        lafdservices.verifyLAFDLabelName(string,"Loan Closed Date");
    }



}
