package stepDefinitions;

import PageObjects.*;
import base.ApplicationKeywords;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;

public class LASSteps extends ApplicationKeywords {

    LoginPage login;
    HomePage home;
    LASPage las;
    PaymentsPage payments;
    MyRelationsPage MyRelations;


    public LASSteps() {
        login = new LoginPage();
        home = new HomePage();
        las = new LASPage();
        payments = new PaymentsPage();
        MyRelations = new MyRelationsPage();

    }


    @And("Customer is redirected to the exact LAS page {string}")
    public void customerIsRedirectedToTheExactLASPage(String num) {
        las.redirectionToLASPage(num, "");
    }


    @And("verify the Components in LAS page")
    public void verifyTheComponentsInLASPage() {
        las.contentsLASPage();
    }

    @Then("Title text should be {string} and {string} should be displyed with {string} under Disbursement Request")
    public void titleTextShouldBeAndShouldBeDisplyedWithUnderDisbursementRequest(String title, String subtext, String account) {
        verifyFieldDisplayedUsingTagAndText("strong", title, "");
        las.disbursementSubtext(subtext, account, "");
    }

    @And("Verify the available value of share")
    public void verifyTheAvailableValueOfShare() {
        verifyFieldDisplayedUsingTagAndText("strong", "Value of securities available for release", "");

    }

    @Then("Customer should be able to view available value of share that can be released and it should not be editable")
    public void customerShouldBeAbleToViewAvailableValueOfShareThatCanBeReleasedAndItShouldNotBeEditable() {
        verifyElementIsDisplayedAndGetText(LASPage.share_Value);
        verifyElementIsDisplayedOrNot(LASPage.share_ValueUneditable);

    }

    @And("clicks on Check Box number {int} in Choose a Bank below")
    public void clicksOnCheckBoxNumberInChooseABankBelow(int num) {
        las.clickCheckBox(num, "");
    }

    @Then("Customer should be able to view below release details when select bank details")
    public void customerShouldBeAbleToViewBelowReleaseDetailsWhenSelectBankDetails() {
        las.bankTiles();
    }


    @And("verify Shares to Unpledge Input Box {int} is disabled")
    public void verifySharesToUnpledgeInputBoxIsDisabled(int num) {
        las.verifyBankBoxIsDisabled(num, "", "");

    }

    @And("verify Shares to Unpledge Input Box {int} is enabled")
    public void verifySharesToUnpledgeInputBoxIsEnabled(int num) {
        las.verifyBankBoxIsEnabled(num, "", "");

    }


    @And("User enters a value {string} in Shares to Unpledge Input Box {int}")
    public void userEntersAValueInSharesToUnpledgeInputBox(String value, int num) {
        las.typeInBankBox(num, value, "");

    }

    @Then("verify the Value {string} is accepted in Unpledge Input Box {int}")
    public void verifyTheValueIsAcceptedInUnpledgeInputBox(String value, int num) {
        las.valueInBankBox(num, value, "");
    }

    @Then("verify the Unpledge Input Box {int} with Negative Values {string}")
    public void verifyTheUnpledgeInputBoxWithNegativeValues(int num, String value) {
        las.verifyBankBoxWithInvalidValues(num, value, "");
    }

    @Then("Customer should be able to view below share details of respective share to be displayed for Input Box {int}: {string} and {string}")
    public void customerShouldBeAbleToViewBelowShareDetailsOfRespectiveShareToBeDisplayedForInputBoxAnd(int num, String one, String two) {
        verifyValueUsingLabelUsingIteration("//div[@class='Payment_Details_list']/ul/li[1]/p", one, "/following-sibling::strong", num, "");
        verifyValueUsingLabelUsingIteration("//div[@class='Payment_Details_list']/ul/li[2]/p", two, "/following-sibling::strong", num, "");
    }


    @And("verify Value of Unpledged Shares and Total Release Share Value for Bank {int} is same for entered value {string}")
    public void verifyValueOfUnpledgedSharesAndTotalReleaseShareValueForBankIsSameForEnteredValue(int num, String value) {
        las.verifyValueOfUnpledgedShares(num, value, "");
    }

    @Then("Customer should get a Warning Popup")
    public void customerShouldGetAWarningPopup() {
        las.morethan3PopUp("");
    }

    @And("verify the Contents in Success Page for Share Release")
    public void verifyTheContentsInSuccessPageForShareRelease() {
        las.successShareReleasePageContents("");
    }

//    @Then("customer should be able to view multiplication of user input and marketRate in Value Of Unpledged Shares for Bank {int} and for Shares {int}")
//    public void customerShouldBeAbleToViewMultiplicationOfUserInputAndMarketRateInValueOfUnpledgedSharesForBankAndForShares(int bank, int Shares) {
//        las.valueOfUnpledgedSecurities(bank,);
//
//    }

    @Then("customer should be able to view multiplication of user input and marketRate in Value Of Unpledged Shares for Bank {int} and for Shares {string}")
    public void customerShouldBeAbleToViewMultiplicationOfUserInputAndMarketRateInValueOfUnpledgedSharesForBankAndForShares(int bank, String Shares) {
        las.valueOfUnpledgedSecurities(bank, Shares, "");

    }

    @And("Enter value more than Share Pledged value in Share to Unpledge field {int}")
    public void enterValueMoreThanSharePledgedValueInShareToUnpledgeField(int num) {
        las.valueGreaterThanQuantityPledged(num, "");
    }

    @Then("Inline validation message should be displayed")
    public void inlineValidationMessageShouldBeDisplayed() {
        verifyErrorMessageUsingLocatorAndGetText(LASPage.errormsg_QuantityToPledge);
    }


    @Then("customer should be able to view multiplication of allowableQty and  marketRate in Loan value and Value of Pledged Shared for Bank {int}")
    public void customerShouldBeAbleToViewMultiplicationOfAllowableQtyAndMarketRateInLoanValueAndValueOfPledgedSharedForBank(int num) {
        las.verifyValuePledgedSecurityAndLoanValue(num, "");

    }

    @And("verify Customer is able to go to Service screen from My Relations using FAS No{string}")
    public void verifyCustomerIsAbleToGoToServiceScreenFromMyRelationsUsingFASNo(String num) {
        las.clickOnMyRelationTileFAS(num, "");
        las.verifyMyRelationTileRedirectionUsingFASNO(num, "");
    }

    @And("Inline message should be displayed below amount text field with min and max amount")
    public void inlineMessageShouldBeDisplayedBelowAmountTextFieldWithMinAndMaxAmount() {
        las.drawdownMinimumAndMaximum("");
    }

    @Then("Inline error message should be displayed in red color below amount text field for maximum Value")
    public void inlineErrorMessageShouldBeDisplayedInRedColorBelowAmountTextFieldForMaximumValue() {
        las.drawdownMaximumErrorValue("");
    }

    @Then("Inline error message should be displayed in red color below amount text field for minimum Value")
    public void inlineErrorMessageShouldBeDisplayedInRedColorBelowAmountTextFieldForMinimumValue() {
        las.drawdownMinimumErrorValue("");
    }

    @And("Enter value other than numbers {string} Input field should not accept those values")
    public void enterValueOtherThanNumbersInputFieldShouldNotAcceptThoseValues(String string) {
        las.drawdownInvalidValues(string, "");
    }

    @And("Enters Numerical values {string} then it should be accepted")
    public void entersNumericalValuesThenItShouldBeAccepted(String string) {
        las.drawdownNumericalValue(string, "");
    }

    @And("Enters value of more than {int}%")
    public void entersValueOfMoreThan(int arg0) {
        las.value96("");
    }

    @Then("Advisory note should be displayed with text,check box and disabled Proceed CTA {string}")
    public void advisoryNoteShouldBeDisplayedWithTextCheckBoxAndDisabledProceedCTA(String string) {
        scrollToWebElementIfPresent(LASPage.advisoryNote_Drawdown);
        verifyElementIsDisplayedAndGetText(LASPage.advisoryNote_Drawdown);
        verifyElementIsDisplayedOrNot(LASPage.advisoryNoteCheckBox_Drawdown);
        verifyButtonIsDisabledInThePageusingText(string);
    }

    @And("Ticks the check box")
    public void ticksTheCheckBox() {
        clickOn(LASPage.advisoryNoteCheckBox_Drawdown);
    }

    @Then("Advisory note should be displayed")
    public void advisoryNoteShouldBeDisplayed() {
        scrollToWebElementIfPresent(LASPage.advisoryNote_Drawdown);
        verifyElementIsDisplayedOrNot(LASPage.advisoryNote_Drawdown);

    }

    @Then("{string} CTA should be enabled")
    public void ctaShouldBeEnabled(String cta) {
        verifyButtonIsEnabledInThePageusingText(cta);
    }

    @And("Clicks on {string} CTA")
    public void clicksOnCTA(String cta) {
        clickOnButtonUsingTextUsingForLoop(cta);
    }

    @And("Enters value between the acceptable Range, then {string} CTA should be enabled")
    public void entersValueBetweenTheAcceptableRangeThenCTAShouldBeEnabled(String btn) {
        las.drawdownAcceptableValues(btn, "");
    }

    @And("Enters Acceptable Value")
    public void entersAcceptableValue() {
        las.drawdownAcceptableValueMinimum("");
    }

    @And("Click on {string} CTA")
    public void clickOnCTA(String cta) {
        verifyButtonIsEnabledInThePageusingText(cta);
        clickOnButtonUsingTextUsingForLoop(cta);
    }

    @And("Fields {string} should be displayed for bank details")
    public void fieldsShouldBeDisplayedForBankDetails(String string) {
        las.drawdownBankDetails(string, "");
    }

    @Then("Customer should be able to view all the contents in Disbursement Page")
    public void customerShouldBeAbleToViewAllTheContentsInDisbursementPage() {
        las.drawdownPageContents("");
    }

    @And("Relase share CTA should be disabled for {int} min with {string} nudge under RHS Quick action")
    public void relaseShareCTAShouldBeDisabledForMinWithNudgeUnderRHSQuickAction(int arg0, String nudge) {
        las.shareRepledgeNudge(nudge, "");

    }

    @Then("Bottom drawer should be  displayed with {string}")
    public void bottomDrawerShouldBeDisplayedWith(String text) {
        verifyFieldDisplayedUsingTagAndText("p", text, "");
    }

    /////////03042023

    @And("Title text should be {string}")
    public void titleTextShouldBe(String header) {
        verifyFieldDisplayedUsingTagAndText("strong", header, "");
    }


    @And("Clicks on {string} tile")
    public void clicksOnTile(String string) {
        payments.clickOnPaymentsTileUsingAccountNumber(string, "");

    }

    @Then("Minimum amount should be prepopulated in Input field")
    public void minimumAmountShouldBePrepopulatedInInputField() {
        las.verifyPartPrePaymentTextBoxAutoPopulatedValueLAS();
    }

    @And("Inline message should be displayed as {string} when the Amount entered is out of Range")
    public void inlineMessageShouldBeDisplayedAsWhenTheAmountEnteredIsOutOfRange(String arg0) {
        las.verifyPartPrepaymentTextBoxWithNegativeLAS();
    }

    @And("{string} CTA should be disabled when the entered Amount is less than Minimum")
    public void ctaShouldBeDisabledWhenTheEnteredAmountIsLessThanMinimum(String string) {
        las.verifyOnlinePaymentButtonWithLessThanLAS(string, "");
    }

    @And("{string} CTA should be disabled when the entered Amount is more than Maximum")
    public void ctaShouldBeDisabledWhenTheEnteredAmountIsMoreThanMaximum(String string) {
        las.verifyOnlinePaymentButtonWithMoreThanLAS(string, "");
    }

    @And("User should not be allowed to enter {string}")
    public void userShouldNotBeAllowedToEnter(String string) {
        las.verifyInputBoxInvalidValuesLAS(string, "");
    }

    @Then("Below details should be displayed for {string} with i){string} and ii){string}")
    public void belowDetailsShouldBeDisplayedForWithIAndIi(String head, String string1, String string2) {
        verifyFieldDisplayedUsingTagAndText("strong", head, "");
        verifyValueUsingLabel("//div[@class='Loan_De_list border-0']/ul/li/p", string1, "/following-sibling::strong", "");
        verifyValueUsingLabel("//div[@class='Loan_De_list border-0']/ul/li/p", string2, "/following-sibling::strong", "");
    }

    @And("verify Payment Confirmation Details are displayed with {string} and {string}")
    public void verifyPaymentConfirmationDetailsAreDisplayedWithAnd(String string1, String string2) {
        verifyValueUsingLabel("//div[@class='emobile_data']/p", string1, "/following-sibling::strong", "");
        verifyValueUsingLabel("//div[@class='emobile_data']/p", string2, "/following-sibling::strong", "");

    }

    @Then("Customer should able to view first TWO & last TWO letters of Email")
    public void customerShouldAbleToViewFirstTWOLastTWOLettersOfEmail() {
        las.emailMaskedLAS("");
    }

    @And("Customer should able to view last FOUR digits of Mobile number.")
    public void customerShouldAbleToViewLastFOURDigitsOfMobileNumber() {
        las.mobileMaskedLAS("");
    }

    @And("Enter Valid amount for LAS PartPayment")
    public void enterValidAmountForLASPartPayment() {
        las.enterValidAmountPartPayLAS("");
    }

    @Then("Offline Method Pop up should be displayed")
    public void offlineMethodPopUpShouldBeDisplayed() {
        verifyElementIsDisplayedOrNot(LASPage.popup_Offline);
    }

    @And("Content should be displayed for popup with below Details {string}")
    public void contentShouldBeDisplayedForPopupWithBelowDetails(String det) {
        las.offlinePopupContents(det, "");
    }

    @And("Click on {string} CTA present on pop up")
    public void clickOnCTAPresentOnPopUp(String btn) {
        clickOnButtonUsingTextUsingForLoopWithoutWait(btn);
    }

    @Then("Pre-approved Offers section should be displayed same as the Pre-approved Offers section displayed on Home Page")
    public void preApprovedOffersSectionShouldBeDisplayedSameAsThePreApprovedOffersSectionDisplayedOnHomePage() {
        verifyElementIsDisplayedOrNot(LASPage.pao_CancelPage);
    }

    @Then("Verify Customer Redirected to respective URL {string}")
    public void verifyCustomerRedirectedToRespectiveURL(String string) {
        verifyRedirectionURLIfContains(string);
    }

    @Then("Below details should be displayed for {string} with {string} and {string}")
    public void belowDetailsShouldBeDisplayedForWithAnd(String head, String string1, String string2) {
        verifyFieldDisplayedUsingTagAndText("strong", head, "");
        verifyValueUsingLabel("//div[@class='Loan_De_list border-0']/ul/li/p", string1, "/following-sibling::strong", "");
        verifyValueUsingLabel("//div[@class='Loan_De_list border-0']/ul/li/p", string2, "/following-sibling::strong", "");

    }

    @And("Clicks on the Tab {string} in LAS Payments page")
    public void clicksOnTheTabInLASPaymentsPage(String string) {
        las.tabPaymentsLAS(string, "");
    }

    @Then("User should be redirected to Missed Interest Details page")
    public void userShouldBeRedirectedToMissedInterestDetailsPage() {
        verifyElementIsDisplayedOrNot(LASPage.input_MissedInterests);
    }

    @Then("Minimum amount should be prepopulated in Input field for Missed Interests")
    public void minimumAmountShouldBePrepopulatedInInputFieldForMissedInterests() {
        las.verifyMITextBoxAutoPopulatedValueLAS();
    }

    @And("Inline message should be displayed as Enter amount between min & Max when the Amount entered is out of Range")
    public void inlineMessageShouldBeDisplayedAsEnterAmountBetweenMinMaxWhenTheAmountEnteredIsOutOfRange() {
        las.verifyMIBoxWithNegativeLAS();
    }

    @And("Online Payment CTA should be disabled when Customer enters less than the Minimum amount given for Missed Interest")
    public void onlinePaymentCTAShouldBeDisabledWhenCustomerEntersLessThanTheMinimumAmountGivenForMissedInterest() {
    }

    @And("{string} CTA should be disabled when Customer enters less than the Minimum amount given for Missed Interest")
    public void ctaShouldBeDisabledWhenCustomerEntersLessThanTheMinimumAmountGivenForMissedInterest(String string) {
        las.verifyOnlinePaymentButtonWithLessThanMILAS(string, "");

    }

    @And("{string} CTA should be disabled when Customer enters more than the maximum amount given for Missed Interest")
    public void ctaShouldBeDisabledWhenCustomerEntersMoreThanTheMaximumAmountGivenForMissedInterest(String string) {
        las.verifyOnlinePaymentButtonWithMoreThanMILAS(string, "");
    }

    @And("User should not be allowed to enter {string} for Missed Interests")
    public void userShouldNotBeAllowedToEnterForMissedInterests(String string) {
        las.verifyInputBoxInvalidValuesMILAS(string, "");

    }

    @And("Enter Valid amount for LAS Missed Interest")
    public void enterValidAmountForLASMissedInterest() {
        las.enterValidAmountMILAS("");
    }

    @And("verify {string} Tab is selected by Default in LAS Payments page")
    public void verifyTabIsSelectedByDefaultInLASPaymentsPage(String string) {
        verifyByDefaultSelectedTab(string, "");
    }

//    @And("wait for page to load")
//    public void waitForPageToLoad() {
//        waitForPageToLoad();
//    }

    @And("Click on {string} CTA without wait")
    public void clickOnCTAWithoutWait(String string) {
        clickOnButtonUsingTextUsingForLoopWithoutWait(string);
    }

    @Then("Validation message popup should be displayed with {string} CTA")
    public void validationMessagePopupShouldBeDisplayedWithCTA(String btn) {
//        verifyFieldDisplayedUsingTagAndText("h4","Alert","");
        verifyFieldsDisplayedUsingText("You cannot Drawdown money now as the available limit on your loan is less than the eligible amount.");
        verifyButtonIsDisplayedInThePage(btn);

    }

    @Then("Verify customer is able to view LAN Number on LAS tile {string}")
    public void verifyCustomerIsAbleToViewLANNumberOnLASTile(String lan) {
        MyRelations.esopTileVisibility(lan, "");

    }

    @Then("Verify the Account Number Last {int} digit are Unmasked under Bank Details section")
    public void verifyTheAccountNumberLastDigitAreUnmaskedUnderBankDetailsSection(int arg0) {

        las.bankAccountMaskedLAS("");
    }

    @Then("Verify Quantity Pledged text is replaced with Securities Pledged text under Choose from the given securities below section section")
    public void verifyQuantityPledgedTextIsReplacedWithSecuritiesPledgedTextUnderChooseFromTheGivenSecuritiesBelowSectionSection() {
        verifyFieldsDisplayedUsingLocatorUsingForLoop(LASPage.securities_Pledged, "");

    }

    @Then("Verify Quantity Pledged text is replaced with Quantity to Unpledged text under Choose from the given securities below section section")
    public void verifyQuantityPledgedTextIsReplacedWithQuantityToUnpledgedTextUnderChooseFromTheGivenSecuritiesBelowSectionSection() {
        verifyFieldsDisplayedUsingLocatorUsingForLoop(LASPage.quantitytoUnpledge, "");

    }

    @Then("{string} information text to be added below amount field")
    public void informationTextToBeAddedBelowAmountField(String str) {
        verifyFieldsDisplayedUsingText(str);
    }
}
