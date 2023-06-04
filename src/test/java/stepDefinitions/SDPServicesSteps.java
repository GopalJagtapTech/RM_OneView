package stepDefinitions;

import PageObjects.*;
import base.ApplicationKeywords;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import org.apache.commons.validator.GenericValidator;

public class SDPServicesSteps extends ApplicationKeywords {
    LoginPage login;
    HomePage home;
    LoanServicesPage loanservices;
    SDPServicesPage sdpservices;
    FDServicesPage fdservices;

    public SDPServicesSteps() {
        login = new LoginPage();
        home = new HomePage();
        loanservices = new LoanServicesPage();
        sdpservices = new SDPServicesPage();
        fdservices = new FDServicesPage();
    }


    @Then("verify Customer is able to go to SDP screen using View All option available on Home page")
    public void verify_customer_is_able_to_go_to_sdp_screen_using_view_all_option_available_on_home_page() {
                        clickIfOnlyDisplayed(SDPServicesPage.viewAll_Homepage);
                        waitForPageToLoad();
                        fdservices.clickOnMyRelationTabUsingText("Deposits","");
                        fdservices.clickOnMyRelationTileViewDetailsIcon("SYSTEMATIC DEPOSIT PLAN","490364","");


    }

    @Then("verify details displayed in Component {int}")
    public void verify_details_displayed_in_component(Integer int1) {

        verifyTopSectionInServices(SDPServicesPage.productLogo_SDP, "SDP Amount", "Amount Invested Till Date#Rate of Interest#Next Installment Date#Maturity Amount#Maturity Date", "", "", "", "", "SDP Number :", false, "");
    }

    @Then("verify details displayed in Component {int} - SDP Details")
    public void verify_details_displayed_in_component_sdp_details(Integer int1) {

        sdpservices.verifySDPRelationShipDetails("SDP Details", "SDP Status#Scheme Type#Interest Start Date#Interest Payout Type#Number Of Deposits#Tenor Of Each Deposit#NACH Registration Date#Installments Paid (Till Date)#Installments Dishonoured#Installments Remaining#TDS Waiver", "");

    }

    @Then("verify details displayed in Component {int} - Bank Details")
    public void verify_details_displayed_in_component_bank_details(Integer int1) {

        sdpservices.verifySDPRelationShipBankDetails("Linked Maturity Bank Account", "Registered Bank Name#Registered Bank Account#IFSC#Branch Name", "");
        sdpservices.verifySDPRelationShipBankDetails("Linked Mandate Bank Account", "Registered Bank Name#Registered Bank Account#IFSC#Branch Name", "");
    }

    @Then("verify * sign is available along with Maturity Amount value")
    public void verify_sign_is_available_along_with_maturity_amount_value() {
        verifyGetTextContainsIfPresent(SDPServicesPage.star_Text, "*Indicative returns if ROI does not change. In practice, interest rate prevailing on date of each deposit will be applicable to that particular deposit, hence this amount may vary.");
    }


    @Then("verify SDP card should be available for ETB customer")
    public void verifySDPCardShouldBeAvailableForETBCustomer() {

        verifyFieldsDisplayedUsingLocator(SDPServicesPage.deposit_Tiles);

    }

    @Then("verify Customer is able to go to SDP screen using View All option available on Home page {string}")
    public void verifyCustomerIsAbleToGoToSDPScreenUsingViewAllOptionAvailableOnHomePage(String string) {
        clickIfOnlyDisplayed(SDPServicesPage.viewAll_Homepage);
        waitForPageToLoad();
        fdservices.clickOnMyRelationTabUsingText("Deposits","");
        fdservices.clickOnMyRelationTileViewDetailsIcon("SYSTEMATIC DEPOSIT PLAN",string,"");
        waitForPageToLoad();
        fdservices.verifyMyRelationTileRedirectionUsingAccountNumber(string,"SYSTEMATIC DEPOSIT PLAN","");

    }


    @Then("verify Customer is able to go to Service screen from My Relations using Account No{string}")
    public void verifyCustomerIsAbleToGoToServiceScreenFromMyRelationsUsingAccountNo(String string) {
        fdservices.clickOnMyRelationTileViewDetailsIcon("SYSTEMATIC DEPOSIT PLAN",string,"");
        waitForPageToLoad();
        fdservices.verifyMyRelationTileRedirectionUsingAccountNumber(string,"SYSTEMATIC DEPOSIT PLAN","");

    }

    @Then("verify details displayed in Component two")
    public void verifyDetailsDisplayedInComponentTwo() {
        verifyTextOptionsIsDisplayedUsingCommonXpath(SDPServicesPage.relationship_common,"SDP Details#Bank Details#Nominee Details");
    }




    @And("verify SDP Amount format as <Rs. Digits with month>")
    public void verifySDPAmountFormatAsRsDigitsWithMonth() {
        sdpservices.verifyAmountOfServicesSDP("SDP Amount","");
    }

    public void verifyValueisDateFormat(String label, String value, String format, String extra) {
        try {

            boolean flag = GenericValidator.isDate(value, format, true);
            if (flag) {
                testStepPassed(label + " Value has Date Format verified successfully. " + format);
            } else {
                stepFailed(label + " Value has Date Format is not verified");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed i verify value is Date Format with *. Exception: " + e.getClass());
        }
    }

    @And("verify Stop SDP Popup Text Based on Date Range")
    public void verifyStopSDPPopupTextBasedOnDateRange() {
sdpservices.verifyStopSdpPopupBasedOnDateRange();
    }

    @And("Verify OTP has been sent Message is Displayed")
    public void verifyOTPHasBeenSentMessageIsDisplayed() {
        sdpservices.verifyOtpSentYourMobNumberMsg();
    }

    @And("verify OTP Attempts are There or Not")
    public void verifyOTPAttemptsAreThereOrNot() {
        String alertTitle="Alert Text in Popup#xpath=//strong[normalize-space(text())='Alert']";
        String alertText="OTP Exhausted msg in Popup#xpath=//p[normalize-space(text())='You have exhausted all the attempts to confirm. Please try after some time.']";
        if (isElementDisplayed(alertTitle) || isElementDisplayed(alertText)) {
testStepFailed(getTextPresent(alertText)+": Alert Text Present due to OTP Attempts");
skipSteps("OTP Attempts in STOP SDP");
        }
    }
}
