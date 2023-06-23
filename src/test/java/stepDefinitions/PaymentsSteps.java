package stepDefinitions;

import PageObjects.*;
import TestData.TestDataPayments;
import base.ApplicationKeywords;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class PaymentsSteps extends ApplicationKeywords {

    LoginPage login;
    HomePage home;
    PaymentsPage payments;

    public PaymentsSteps() {
        login = new LoginPage();
        home = new HomePage();
        payments = new PaymentsPage();
    }

//    @When("Clicks on Hamburger Menu")
//    public void clicks_on_hamburger_menu() {
//
//        clickOnIfDisplayed(PaymentsPage.icon_HamburgerMenu);
//    }


    @Then("verify Loan Payment page displayed when Customer click on {string} Button")
    public void verifyLoanPaymentPageDisplayedWhenCustomerClickOnOverduePaymentButton() {

        clickIfOnlyDisplayed(PaymentsPage.darrow_LoanPayments);
        clickIfOnlyDisplayed(PaymentsPage.button_Overdue);
        waitForPageToLoad();
        payments.verifyLoanPaymentsHeader();


    }

    @Then("verify overdue details are displayed when customer click on down arrow accordion for any of the loan under Loans with overdue section & All other charges are displayed when customer click on Other Charges tooltip \\(info icon)")
    public void verifyOverdueDetailsAreDisplayedWhenCustomerClickOnDownArrowAccordionForAnyOfTheLoanUnderLoansWithOverdueSectionAllOtherChargesAreDisplayedWhenCustomerClickOnOtherChargesTooltipInfoIcon() {

        payments.verifyOverdueDetails();

    }

    @Then("verify the contents on Loan Payment Page for Overdue Payments")
    public void verifyTheContentsOnLoanPaymentPageForOverduePayments() {

        payments.verifyLoanPaymentPageContents();
    }


    @Then("verify when customer clicks on Overdue payments where customer don’t have any LAN with overdue through Hamburger journey")
    public void verifyWhenCustomerClicksOnOverduePaymentsWhereCustomerDonTHaveAnyLANWithOverdueThroughHamburgerJourney() {

        verifyFieldsDisplayedUsingText("You do not have an overdue amount for any active Loan");

    }

    @Then("verify chrages are displayed when customer click on info icon of Other Charges section")
    public void verifyChragesAreDisplayedWhenCustomerClickOnInfoIconOfOtherChargesSection() {

        payments.verifyOtherChargesinOverdueTabPage();
    }

    @And("verify Loan Payment page displayed when Customer click on Other payments Button")
    public void verifyLoanPaymentPageDisplayedWhenCustomerClickOnOtherPaymentsButton() {
        clickIfOnlyDisplayed(PaymentsPage.darrow_LoanPayments);
        clickIfOnlyDisplayed(PaymentsPage.button_OtherPayments);
        waitForPageToLoad();
        payments.verifyLoanPaymentsHeader();

    }


    @And("Customer Clicks on a Loan tile {string} and selects a Payment Option {string}")
    public void customerClicksOnALoanTileAndSelectsAPaymentOption(String string, String string1) {
        payments.clickOnPaymentsTileUsingAccountNumber(string, "");
        payments.clickOnRadioButtonInPaymentOptionsUsingText(string1, "");

    }


    @Then("verify Customer is redirected to the exact Payment Option {string}")
    public void verifyCustomerIsRedirectedToTheExactPaymentOption(String string) {
        payments.verifyRadioButtonRedirectionUsingText(string, "");

    }


    @And("verify Enter Amount to Pay Text field is editable")
    public void verifyEnterAmountToPayTextFieldIsEditable() {
        payments.verifyEnterAmtTextBoxisEditable();
    }

    @Then("Verify if Customer click on down Arrow Accordion then below fields are displayed")
    public void verifyIfCustomerClickOnDownArrowAccordionThenBelowFieldsAreDisplayed() {
        clickIfOnlyDisplayed(PaymentsPage.darrow_LoanPayments);
        verifyElementIsDisplayedOrNot(PaymentsPage.button_Overdue);
        verifyElementIsDisplayedOrNot(PaymentsPage.button_OtherPayments);

    }

    @And("Customer Clicks on a Loan tile {string}")
    public void customerClicksOnALoanTile(String string) {
        payments.clickOnPaymentsTileUsingAccountNumber(string, "");
    }

    @Then("verify Got it button should be disabled if no payment is selected")
    public void verifyGotItButtonShouldBeDisabledIfNoPaymentIsSelected() {
        payments.verifyProceedButtonDisabled();
    }

    @And("selects a Payment Option {string}")
    public void selectsAPaymentOption(String string) {
        payments.clickOnRadioButtonInPaymentOptionsUsingText(string, "");
    }

    @And("verify whether Got it button is clickable on selecting a Payment Option {string}")
    public void verifyWhetherGotItButtonIsClickableOnSelectingAPaymentOption(String string) {
        payments.verifyProceedButtonActive(string);

    }

    @Then("verify customer is redirected payment selection pop-up on click of Pay Now button")
    public void verifyCustomerIsRedirectedPaymentSelectionPopUpOnClickOfPayNowButton() {
        clickOnIfDisplayed(PaymentsPage.btn_PayNow);
        waitForPageToLoad();
        verifyElementIsDisplayedOrNot(PaymentsPage.paymentSelectionTab);
    }

    @Then("verify if Customer is able to view {string} Option under Things You can do section at Right hand side")
    public void verifyIfCustomerIsAbleToViewMakePaymentOptionUnderThingsYouCanDoSectionAtRightHandSide() {
        verifyLocatorIsPresentInRightSideOfPage(PaymentsPage.btn_MakePayments);
    }

    @And("verify customer is prompted with pop when customer select Make Payment Option from Things you can do section")
    public void verifyCustomerIsPromptedWithPopWhenCustomerSelectMakePaymentOptionFromThingsYouCanDoSection() {
        clickOn(PaymentsPage.btn_MakePayments);
        verifyElementIsDisplayedOrNot(PaymentsPage.popup_PaymentOptions);
        clickOn(PaymentsPage.popup_CrossButton);
    }

    @Then("verify if Customer will be able to select one Loan & Multiple loan at a time for Payment")
    public void verifyIfCustomerWillBeAbleToSelectOneLoanMultipleLoanAtATimeForPayment() {
        payments.verifyOverdueRadioSelection(3, "");
    }

    @And("verify if Customer select multiple loan at a time then Total Amount to pay should be pre-populated")
    public void verifyIfCustomerSelectMultipleLoanAtATimeThenTotalAmountToPayShouldBePrePopulated() {
        payments.verifyTotalAmountBasedSelectionOverdueRadioSelection(2, "");
    }

    @Then("verify if customer having Terms Loan then Total Foreclosure charges will be prepopulated at Top section")
    public void verifyIfCustomerHavingTermsLoanThenTotalForeclosureChargesWillBePrepopulatedAtTopSection() {

        verifyElementIsDisplayedOrNot(PaymentsPage.title_ForeclosureAmount);
        validateGetTextCustomized(PaymentsPage.value_ForeclosureAmount, "");

    }

    @Then("Verify Total Forclosure Charges fields is editable")
    public void verifyTotalForclosureChargesFieldsIsEditable() {
        payments.verifyForeclosureChargeisEditable();
    }

    @Then("verify after click on Download Forclosure Letter button whether it is downloadable")
    public void verifyAfterClickOnDownloadForclosureLetterButtonWhetherItIsDownloadable() {
        payments.verifyDownloadForeclosureButton();
    }

    @Then("Verify customer is able to select any of Foreclosure Reason from Drop down")
    public void verifyCustomerIsAbleToSelectAnyOfForeclosureReasonFromDropDown() {

        payments.verifyForeclosureReasonDropdown();
    }

    @Then("verify customer is redirected to home page when click on Cancel button")
    public void verifyCustomerIsRedirectedToHomePageWhenClickOnCancelButton() {
        payments.verifyForeclosureCancelButton();
    }

    @Then("verify whether Proceed to Payment button is clickable without selecting Foreclosure Reason")
    public void verifyWhetherProceedToPaymentButtonIsClickableWithoutSelectingForeclosureReason() {

        payments.verifyForeclosureProctoPayWIthoutReason();
    }

    @Then("verify if customer having B{int}b Loan Then Foreclosure charges are Applicable to customer while foreclosing the Loan")
    public void verifyIfCustomerHavingBBLoanThenForeclosureChargesAreApplicableToCustomerWhileForeclosingTheLoan(int arg0) {

//        verifyValueUsingLabel("//p", "Foreclosure Charges (4% + taxes)", "/following-sibling::strong", "");
        verifyFieldsDisplayedUsingTextAndForLoop("AgreementNo Not available", "");
    }


    @And("verify the contents {string} along with labels are displayed in the section {string} for Foreclosure Page")
    public void verifyTheContentsAlongWithLabelsAreDisplayedInTheSectionForForeclosurePage(String labels, String title) {
        payments.verifyContactDetails(title, labels);
    }

    @And("verify OtherCharges info tip Icon with following {string} Options")
    public void verifyOtherChargesInfoTipIconWithFollowingOptions(String string) {
        payments.verifyForeclosurePageInfoOptions(string, "");
    }

    @And("verify the message displayed at the bottom of Foreclosure Amount section")
    public void verifyTheMessageDisplayedAtTheBottomOfForeclosureAmountSection() {
        verifyElementIsDisplayedOrNot(PaymentsPage.infoMsg_Foreclosure);
        getText(PaymentsPage.infoMsg_Foreclosure);
    }

    @And("verify Header is displayed {string}")
    public void verifyHeaderIsDisplayed(String string) {
        verifyFieldsDisplayedUsingTextAndForLoop(string, "");
    }

    @And("verify subtext is displayed for the respective {string} for Foreclosure")
    public void verifySubtextIsDisplayedForTheRespectiveForForeclosure(String string) {
        verifyFieldsDisplayedUsingLocatorWithComment(PaymentsPage.foreclosur_SubHeader, getText(PaymentsPage.foreclosur_SubHeader));
        payments.verifyForeclosurePageSubHeader(string, "");

    }

    @And("verify Loan Payment page displayed")
    public void verifyLoanPaymentPageDisplayed() {
//        payments.verifyLoanPaymentsHeader();
        verifyRedirectionHeaderText("Select the loan you want to make a payment for");
        verifyFieldsDisplayedUsingText("You can pay an EMI in advance, part-prepay or foreclose your loan.");

    }


    @Then("verify Foreclosure Reason section and contents are Displayed")
    public void verifyForeclosureReasonSectionAndContentsAreDisplayed() {
        verifyElementIsDisplayedOrNot(PaymentsPage.foreclosureDropDownSection);
        verifyFieldsDisplayedUsingText("Please select the reason why you are foreclosing the loan");
        verifyElementIsDisplayedOrNot(PaymentsPage.foreclosureDropdown);

    }

    @Then("verify All the {string} are displayed in the Foreclosure Reason from Drop down")
    public void verifyAllTheAreDisplayedInTheForeclosureReasonFromDropDown(String dropoptions) {
        verifyGetAllOptionsInDropDownAndCompare(PaymentsPage.foreclosureDropdown, "Applying for another loan#High rate of interest on existing loan#Transferring the loan to another bank#Managed to arrange for extra funds to close the loan#Don’t require funds anymore");

    }

    @And("verify Customer is able to see the Popup for Foreclosure")
    public void verifyCustomerIsAbleToSeeThePopupForForeclosure() {
        verifyFieldsDisplayedUsingTextAndForLoop("Important !", "");
        verifyFieldsDisplayedUsingTextAndForLoop("You are making the foreclosure payment after the cut off period. This means that your EMI is under presentation to your bank for the deduction. Excess amount deducted, if any, will be refunded to your bank account within 10 working days.", "");
        verifymultipleButtonIsDisplayedInThePageusingText("Cancel,Proceed to pay", "");
    }

    @And("Customer clicks on {string} Button in Foreclosure Popup")
    public void customerClicksOnButtonInForeclosurePopup(String string) {
        clickOnButtonUsingTextUsingForLoop(string);
    }

    @Then("verify Payment Page is displayed with the contents")
    public void verifyPaymentPageIsDisplayedWithTheContents() {
        payments.paymentPageDetails();
    }

    @And("verify Loan Payment page displayed for Overdue Missed EMI")
    public void verifyLoanPaymentPageDisplayedForOverdueMissedEMI() {
        verifyRedirectionHeaderText("Select the loan you want to make a payment for");
        verifyFieldsDisplayedUsingText("Clear your outstanding EMIs below");

    }

    @Then("verify {string} is displayed where customer don’t have any LAN with overdue")
    public void verifyIsDisplayedWhereCustomerDonTHaveAnyLANWithOverdue(String string) {
        verifyFieldsDisplayedUsingText(string);
    }

    @And("selects a Payment Option {string} from Popup")
    public void selectsAPaymentOptionFromPopup(String string1) {
        payments.clickOnRadioButtonInPaymentOptionsUsingText(string1, "");

    }

    @And("verify subtext {string}is displayed for the respective {string}")
    public void verifySubtextIsDisplayedForTheRespective(String subtext, String Account) {
        payments.verifyAccountNumberMakePayments(Account, subtext, "");
    }

    @And("verify Overdue Details section is visible along with Labels")
    public void verifyOverdueDetailsSectionIsVisibleAlongWithLabels() {
        verifyFieldsDisplayedUsingTextAndForLoop("Overdue Details", "");
        verifyValueUsingLabel("//ul/li/p", "EMI Overdue", "/parent::li/child::strong", "");
        verifyValueUsingLabel("//ul/li/p", "Other Charges", "/parent::li/child::strong", "");
    }

    @And("verify the following button {string} is disabled in the page")
    public void verifyTheFollowingButtonIsDisabledInThePage(String string) {
        verifyButtonIsDisabledInThePageusingText(string);
    }

    @Then("verify if customer enter valid amount i.e. Total overdues amount in Enter Amount to pay text field and click on Proceed to Pay button")
    public void verifyIfCustomerEnterValidAmountIETotalOverduesAmountInEnterAmountToPayTextFieldAndClickOnProceedToPayButton() {

        payments.verifyEnterAmtTextBoxwithOverdueAmount();
        navigateToBack();

    }

    @And("verify  validation message is displayed when customer does not enter amount Enter Amount to pay field  and click on Proceed to Pay button")
    public void verifyValidationMessageIsDisplayedWhenCustomerDoesNotEnterAmountEnterAmountToPayFieldAndClickOnProceedToPayButton() {

        payments.verifyEnterAmtTextBoxwithNoValue();

    }

    @Then("verify if customer enter more than Maximum Amount, then Error Msg is displayed")
    public void verifyIfCustomerEnterMoreThanMaximumAmountThenErrorMsgIsDisplayed() {
        payments.verifymaxAmountErrorMsgOverdue();
    }

    @And("verify validation message is displayed when customer entered invalid data in Enter Amount to Pay Text field")
    public void verifyValidationMessageIsDisplayedWhenCustomerEnteredInvalidDataInEnterAmountToPayTextField() {
        payments.verifyEnterAmtTextBoxInvalidValues("abcdef,*&^%%$,000000");

    }

    @And("Customer clicks on Pay Now Button for a Loan Tile {string} from My Relations in Home Page")
    public void customerClicksOnPayNowButtonForALoanTileFromMyRelationsInHomePage(String string) {
        payments.clickOnPayNowButtonOverdue(string, "");
    }

    @And("verify the contents {string} along with labels are displayed in the section {string}")
    public void verifyTheContentsAlongWithLabelsAreDisplayedInTheSection(String labels, String title) {
        payments.verifyContactDetails(title, labels);

    }

    @And("verify Static msgs are displayed in the Advance EMI page")
    public void verifyStaticMsgsAreDisplayedInTheAdvanceEMIPage() {
        verifyFieldsDisplayedUsingLocatorWithComment(PaymentsPage.advEmiStatic1, getText(PaymentsPage.advEmiStatic1));
        verifyFieldsDisplayedUsingLocatorWithComment(PaymentsPage.advEmiStatic2, getText(PaymentsPage.advEmiStatic2));
        verifyFieldsDisplayedUsingLocatorWithComment(PaymentsPage.advEmiStatic3, getText(PaymentsPage.advEmiStatic3));
    }

    @And("verify Advance EMI Details are displayed in the Advance EMI page")
    public void verifyAdvanceEMIDetailsAreDisplayedInTheAdvanceEMIPage() {
        verifyFieldsDisplayedUsingTextAndForLoop("Advance EMI Details", "");
        verifyElementIsDisplayedUsingLocator(PaymentsPage.drpDownAdvanceEMI);
        verifyFieldsDisplayedUsingTextAndForLoop("You can pay upto a maximum of 5 EMIs in advance", "");
        verifyValueUsingLabel("//div[@class='ad_payment']/p", "Amount for Advance Payment", "/following-sibling::strong", "");


    }


    @And("verify Advance EMI Details dropdown contains {int} Options started by the following month")
    public void verifyAdvanceEMIDetailsDropdownContainsOptionsStartedByTheFollowingMonth(int num) {
        payments.verifyDropdownValuesInPayments(PaymentsPage.drpDownAdvanceEMI, num, "");
    }

    @And("verify Advance EMI Details dropdown contains {int} Options for {string}")
    public void verifyAdvanceEMIDetailsDropdownContainsOptionsFor(int num, String string) {
        payments.verifyNumberOfDropdownValues(PaymentsPage.drpDownAdvanceEMI, num, string, "");

    }

    @Then("verify the Amount displayed for the number of months {int} selected")
    public void verifyTheAmountDisplayedForTheNumberOfMonthsSelected(int months) {
        payments.verifyAdvancePaymentsAmount(months, "");
    }

    @And("verify Static msg displayed in Part Prepayment Page")
    public void verifyStaticMsgDisplayedInPartPrepaymentPage() {
        verifyFieldsDisplayedUsingLocatorWithComment(PaymentsPage.partPayStatic, getText(PaymentsPage.partPayStatic));

    }

    @And("verify Amount on PAY RS is displayed same as mentioned in previous screen under amount payable and payment cancelled page on Payment checkout page")
    public void verifyAmountOnPAYRSIsDisplayedSameAsMentionedInPreviousScreenUnderAmountPayableAndPaymentCancelledPageOnPaymentCheckoutPage() {
        payments.verifyAmountsSamePaymentJourney();
    }

    @And("Customer enters Part Payment Amount of more than one lakh {string}")
    public void customerEntersPartPaymentAmountOfMoreThanOneLakh(String Amount) {
        clearEditBox(PaymentsPage.enterAmount_PartPay);
        typeIn(PaymentsPage.enterAmount_PartPay, Amount);

    }

    @Then("verify popup is displayed for part payment paid during cut off period")
    public void verifyPopupIsDisplayedForPartPaymentPaidDuringCutOffPeriod() {
        verifyFieldsDisplayedUsingTextAndForLoop("Important !", "");
        verifyFieldsDisplayedUsingTextAndForLoop("You are making a part pre-payment after the cut-off period. This means that your EMI is under presentation to your bank for deduction. Excess EMI collected, if any, will get adjusted in your principal outstanding.", "");
        verifyButtonIsDisplayedInThePage("Cancel");
        verifyButtonIsDisplayedInThePage("Proceed to pay");


    }

    @Then("verify pop up has closed after click on Cancel CTA of part pay option")
    public void verifyPopUpHasClosedAfterClickOnCancelCTAOfPartPayOption() {
        if (!isElementDisplayed(PaymentsPage.imp_Popup_PartPay)) {
            testStepPassed("Popup Closed Successfully");
        } else {
            testStepFailed("Popup not Closed");
        }
    }

    @And("verify customer is able to view Labels in Payment Cancellation Page")
    public void verifyCustomerIsAbleToViewLabelsInPaymentCancellationPage() {
        verifyValueUsingLabel("//li//p[@class='a_mandateref_title']", "LOAN ACCOUNT NUMBER", "/following::p[@class='a_mandateref_desc']", "");
        verifyValueUsingLabel("//li//p[@class='a_mandateref_title']", "AMOUNT", "/following::p[@class='a_mandateref_desc']", "");
        verifyValueUsingLabel("//li//p[@class='a_mandateref_title']", "Date", "/following::p[@class='a_mandateref_desc']", "");
        verifyValueUsingLabel("//li//p[@class='a_mandateref_title']", "Time", "/following::p[@class='a_mandateref_desc']", "");
    }

    @Then("verify if customer having Business Loan Then Foreclosure charges are Applicable to customer while foreclosing the Loan")
    public void verifyIfCustomerHavingBusinessLoanThenForeclosureChargesAreApplicableToCustomerWhileForeclosingTheLoan() {
        if (!isElementDisplayed(PaymentsPage.radio_Foreclosure)) {
            testStepPassed(getRefOfXpath(PaymentsPage.radio_Foreclosure) + " is not displayed for B2B Loan Successfully");
        } else {
            testStepFailed(getRefOfXpath(PaymentsPage.radio_Foreclosure) + " is displayed for B2B Loan");
        }
    }

    @And("verify {double}% foreclosure charge is applicable for all Non-Flexi loans")
    public void verifyForeclosureChargeIsApplicableForAllNonFlexiLoans(int arg0) {
        verifyValueUsingLabel("//p", "Foreclosure Charges (4% + taxes)", "/following-sibling::strong", "");

    }

    @Then("verify Make Payments popup is displayed for that {string}")
    public void verifyMakePaymentsPopupIsDisplayedForThat(String string) {
        payments.verifyMakePaymentsPopup(string);
    }

    @Then("verify validation should be displayed when user added invalid minimum amount")
    public void verifyValidationShouldBeDisplayedWhenUserAddedInvalidMinimumAmount() {
        payments.verifyPartPrepaymentTextBoxWithNegative();
    }

    @Then("verify validation should be displayed when user added invalid minimum amount and invalid maximum amount")
    public void verifyValidationShouldBeDisplayedWhenUserAddedInvalidMinimumAmountAndInvalidMaximumAmount() {
        payments.verifyPartPrepaymentTextBoxWithNegative();

    }

    @Then("verify customer can pay Minimum amount and Maximum amount for part pre payment for Term loan")
    public void verifyCustomerCanPayMinimumAmountAndMaximumAmountForPartPrePaymentForTermLoan() {
        payments.verifyPartPrepaymentTextBoxWithPositive();
    }

    @Then("verify that by default Minimum Amount for Part Payment is autopopulated in Enter Amount Box")
    public void verifyThatByDefaultMinimumAmountForPartPaymentIsAutopopulatedInEnterAmountBox() {
        payments.verifyPartPrePaymentTextBoxAutoPopulatedValue();
    }


    @Then("verify Drop down options {string} are displayed in Payment Option dropdown for Term Loan")
    public void verifyDropDownOptionsAreDisplayedInPaymentOptionDropdownForTermLoan(String options) {
        verifyGetAllOptionsInDropDownAndCompare(PaymentsPage.dropDown_PartPayment, options);

    }

    @Then("verify the following button {string} is enabled in the page")
    public void verifyTheFollowingButtonIsEnabledInThePage(String string) {
        verifyButtonIsEnabledInThePageusingText(string);
    }

    @And("verify Customer selects a dropdown Option {string} in Payment Option dropdown")
    public void verifyCustomerSelectsADropdownOptionInPaymentOptionDropdown(String string) {
        selectDropDownUsingText(PaymentsPage.dropDown_PartPayment, string);
    }

    @Then("Verify Customer Redirected to Payment Page {string} in same Tab")
    public void verifyCustomerRedirectedToPaymentPageInSameTab(String string) {
        verifyRedirectionURLIfContains(string);
    }

    @And("verify {string} Payment method is disabled when total payable amount is >={int} lakh Rupees on payment checkout page")
    public void verifyPaymentMethodIsDisabledWhenTotalPayableAmountIsLakhRupeesOnPaymentCheckoutPage(String string, int arg1) {
        verifyButtonIsDisabledInThePageusingText(string);
    }

    @Then("verify when Customer enters No Amount in Amount Box")
    public void verifyWhenCustomerEntersNoAmountInAmountBox() {
        payments.verifyPartPrepaymentTextBoxWithNoValue();
    }

    //////////////13022023

    @And("verify Payment Method Section is displayed in Overdue Payment Page")
    public void verifyPaymentMethodSectionIsDisplayedInOverduePaymentPage() {
        verifyElementIsDisplayedOrNot(PaymentsPage.overdue_PaymentOption);
    }

    @And("verify the {string} under Payment Method")
    public void verifyTheUnderPaymentMethod(String Labels) {
        payments.verifyPaymentMethodOptions(Labels, "");

    }

    @And("verify subtext {string} for Online Payment modes")
    public void verifySubtextForOnlinePaymentModes(String string) {
        verifyFieldsDisplayedUsingText(string);

    }

    @And("selects the Loan Number {int} from Overdue Loans Page")
    public void selectsTheLoanNumberFromOverdueLoansPage(int num) {
        payments.clickOnOverdueLoanCheckBox(num, "");

    }

    @And("clicks on Payment Option {string} from the Payment Method")
    public void clicksOnPaymentOptionFromThePaymentMethod(String string) {
        payments.clickOnPaymentMethodCheckBox(string, "");
    }

    @And("verify the contents in Address page for Cash Payment")
    public void verifyTheContentsInAddressPageForCashPayment() {
        payments.verifyPaybyCashPageContents();
    }

    @And("verify the following Labels {string} are displayed in Address Page")
    public void verifyTheFollowingLabelsAreDisplayedInAddressPage(String Labels) {
        payments.verifyPaybyCashPageLabels(Labels, "");
    }

    @And("verify the following Labels {string} are displayed with Prefilled Values in Address Page")
    public void verifyTheFollowingLabelsAreDisplayedWithPrefilledValuesInAddressPage(String Labels) {
        payments.verifyPaybyCashPageLabelValues(Labels, "");
    }

    @And("Customer enters a value {string} for the Label {string}")
    public void customerEntersAValueForTheLabel(String str1, String str2) {
        payments.enterTextInAddressLabels(str2, str1, "");
    }

    @And("verify the button {string} is displayed in the page")
    public void verifyTheButtonIsDisplayedInThePage(String button) {
        verifyButtonIsDisplayedInThePage(button);
    }

    @And("verify the contents on Scheduled page")
    public void verifyTheContentsOnScheduledPage() {
        payments.verifySchedulePageContents("");
    }

    @And("Clear the Input for Labels {string}")
    public void clearTheInputForLabels(String options) {
        payments.clearTextInAddressLabels(options, "");
    }

    @Then("verify error messages are displayed")
    public void verifyErrorMessagesAreDisplayed() {

        verifyErrorMessageUsingText("Enter complete address line 1");
        verifyErrorMessageUsingText("Enter complete address line 2");
        verifyErrorMessageUsingText("Enter your 6-digit area pincode");
        verifyErrorMessageUsingText("Please enter valid city");
    }

    @And("verify Negative values for the Input {string}")
    public void verifyNegativeValuesForTheInput(String string) {
        payments.negativeValues(string, TestDataPayments.addressLineInvalid, TestDataPayments.alphaNumeric101, "");
    }

    @And("verify Negative values for the Field {string}")
    public void verifyNegativeValuesForTheField(String string) {
        payments.negativeValues(string, TestDataPayments.pinInvalid, "", "");

    }

    @And("verify {string} is Autopopulated on entry of {string} in Address Page")
    public void verifyIsAutopopulatedOnEntryOfInAddressPage(String str1, String str2) {
        payments.verifyValidCityPincode(str2, str1, "");
    }

    @And("verify Accepted values for the Input {string}")
    public void verifyAcceptedValuesForTheInput(String string) {
        payments.verifyTextBoxWithAcceptableValue1(string, TestDataPayments.alphaNumericmorethan1, "");
        payments.verifyTextBoxWithAcceptableValue2(string, TestDataPayments.alphaNumeric100, "");
    }

    @And("Customer clicks on {string} in RHS Section")
    public void customerClicksOnInRHSSection(String string) {
        payments.clickOnPaymentsRHS(string, "");

    }

    @Then("Below details should be displayed to the customer {int}.Customer name {int}.Payment gateway options and payment method as below {int}.Pay CTA with amount to be paid")
    public void belowDetailsShouldBeDisplayedToTheCustomerCustomerNamePaymentGatewayOptionsAndPaymentMethodAsBelowPayCTAWithAmountToBePaid(int arg0, int arg1, int arg2) {

        payments.paymentPageDetails();

    }

    @And("Worldline payment Gateway should be selected by default")
    public void worldlinePaymentGatewayShouldBeSelectedByDefault() {
        payments.defaultWorldline("", "");
    }

    @And("Selects a Payment Gateway{string}")
    public void selectsAPaymentGateway(String string) {
        payments.clickGateway(string, "");
    }

    @And("Selects a Payment Method{string}")
    public void selectsAPaymentMethod(String string) {
        payments.selectPayment(string, "");
    }

    @Then("Search Bar should be displayed for Net Banking")
    public void searchBarShouldBeDisplayedForNetBanking() {
        verifyElementIsDisplayedOrNot(PaymentsPage.searchBoxPaymentPage);
    }

    @And("Select {string} from list")
    public void selectFromList(String string) {
        typeInIfDisplayed(PaymentsPage.searchBoxPaymentPage, string);
        payments.clickOnBank(string, "");
    }

    @Then("Bank icon with green tick should be displayed under Your selection")
    public void bankIconWithGreenTickShouldBeDisplayedUnderYourSelection() {
        verifyElementIsDisplayedOrNot(PaymentsPage.bank_Selected);
        verifyElementIsDisplayedOrNot(PaymentsPage.bank_Selected_Green_Tick);
    }

    @And("Click on PAY CTA in Payment Page")
    public void clickOnPAYCTAInPaymentPage() {
        scrollToWebElement(PaymentsPage.pay_Amount);
        clickOnIfDisplayed(PaymentsPage.pay_Amount);
        waitForPageToLoad();
    }

    @And("clicks on Back CTA in UPI page")
    public void clicksOnBackCTAInUPIPage() {
        clickOnIfDisplayed(PaymentsPage.payU_Back);
    }

    @And("Click on {string} Button in UPI page")
    public void clickOnButtonInUPIPage(String btn) {
        clickOnButtonUsingTextUsingForLoop(btn);
    }

    @And("Clicks on Cancel Transaction Button")
    public void clicksOnCancelTransactionButton() {
        clickOn(PaymentsPage.cancel_Transaction_ccavenue_UPI);
    }

    @And("Click on Cancel CTA in worldline UPI page")
    public void clickOnCancelCTAInWorldlineUPIPage() {
        clickOn(PaymentsPage.cancel_Transaction_worldline_UPI);
    }

    @And("clicks on Back CTA in payu page")
    public void clicksOnBackCTAInPayuPage() {
        clickOn(PaymentsPage.payU_Back);

    }

    @And("Click on {string} Button in payu page")
    public void clickOnButtonInPayuPage(String btn) {
        clickOnButtonUsingTextUsingForLoop(btn);
        waitTime(5);
    }

    @And("Click on {string} Button in ccavenue page")
    public void clickOnButtonInCcavenuePage(String btn) {
        clickOnButtonUsingTextUsingForLoop(btn);
//        button
    }

    @And("Click on Cancel CTA in worldline page")
    public void clickOnCancelCTAInWorldlinePage() {
        clickOn(PaymentsPage.cancel_Transaction_worldline_UPI);
        waitTime(5);

    }

    @Then("Customer should be redirected to Payment Unsuccessful {string} Page")
    public void customerShouldBeRedirectedToPaymentUnsuccessfulPage(String string) {
        verifyRedirectionURLIfContains(string);

    }

    @And("Click on Cancel Button in ccavenue page")
    public void clickOnCancelButtonInCcavenuePage() {
        clickOn(PaymentsPage.cancel_CCavenuePage);
    }

    @And("Click on Cancel CTA in NetBanking Page")
    public void clickOnCancelCTAInNetBankingPage() {
        clickOn(PaymentsPage.cancel_Net_Banking);
        waitTime(5);
    }

    @And("Customer enters Overdue Amount of more than one lakh {string}")
    public void customerEntersOverdueAmountOfMoreThanOneLakh(String Amount) {
        clearEditBox(PaymentsPage.enterAmount_Field);
        typeIn(PaymentsPage.enterAmount_Field, Amount);

    }

    @And("verify {string} payment method is not displayed for amount >={int} lakh Rupees on payment checkout page")
    public void verifyPaymentMethodIsNotDisplayedForAmountLakhRupeesOnPaymentCheckoutPage(String label, int arg1) {
        payments.unvisiblePaymentMethod(label, "");
    }

    @And("verify {string} payment method is displayed & enabled for amount less than {int} lakh Rupees on payment checkout page")
    public void verifyPaymentMethodIsDisplayedEnabledForAmountLessThanLakhRupeesOnPaymentCheckoutPage(String label, int arg1) {
        payments.enabledPaymentMethod(label, "");
    }

    ///Parent,Linked

    @And("Clicks on tooltip for {string}")
    public void clicksOnTooltipFor(String label) {
        payments.clickOnTooltipAdv(label, "");
    }

    @Then("{string} with Labels-{string} and Charges{string}should be displayed")
    public void withLabelsAndChargesShouldBeDisplayed(String head, String labels, String charges) {
//        payments.advanceEMITooltipContents(head, labels, charges, "");
    }

    @Then("Below message to be displayed on Linked Loan Charges Breakup tooltip")
    public void belowMessageToBeDisplayedOnLinkedLoanChargesBreakupTooltip() {
        verifyFieldDisplayedUsingTagAndText("p", "You do not have any linked loan for this loan account number", "");
        verifyButtonIsDisplayedInThePage("OK");
    }

    @Then("Below content should be displayed for {string}")
    public void belowContentShouldBeDisplayedFor(String string) {
        verifyFieldDisplayedUsingTagAndText("strong", string, "");
        verifyFieldDisplayedUsingTagAndText("p", "Payment confirmation will be sent on this email ID and mobile number", "");
        verifyButtonIsDisplayedInThePage("Done");


    }

    @And("Clicks on tooltip for Foreclosure {string}")
    public void clicksOnTooltipForForeclosure(String label) {
        payments.clickOnTooltipForeclose(label, "");
    }

    @Then("{string} with Labels-{string} and Charges{string}should be displayed for {string}")
    public void withLabelsAndChargesShouldBeDisplayedFor(String Header, String Labels, String Charges, String Payment) {
        payments.advanceEMITooltipContents(Payment, Header, Labels, Charges, "");
    }

    @Then("{string} CTA should be disabled")
    public void ctaShouldBeDisabled(String string) {
        verifyButtonIsDisabledInThePageusingText(string);
    }

    @And("verify Pre-approved Offers section is displayed in Cancelled Page")
    public void verifyPreApprovedOffersSectionIsDisplayedInCancelledPage() {
        verifyElementIsDisplayedOrNot(PaymentsPage.paoPaymentCancel);
    }

    @And("verify Payment Failure reason is displayed")
    public void verifyPaymentFailureReasonIsDisplayed() {
        verifyElementIsDisplayedAndGetText(PaymentsPage.failedPaymentCancel);
    }

    @And("Click on {string} CTA in Popup")
    public void clickOnCTAInPopup(String string) {
        payments.clickOnButtonUsingTextUsingForLoopInPopUp(string);
    }

    @Then("Verify Customer Redirected to respective {string} in Same Tab without a back")
    public void verifyCustomerRedirectedToRespectiveInSameTabWithoutABack(String string) {
        verifyRedirectionURLIfContains(string);

    }

    @And("Customer clicks on {string} Button if displayed for Payments Popup")
    public void customerClicksOnButtonIfDisplayedForPaymentsPopup(String string) {

            payments.clickOnButtonUsingTextUsingForLoopifDisplayed(string);
    }

    @And("Below reason {string} should be displayed for cancelling payment")
    public void belowReasonShouldBeDisplayedForCancellingPayment(String msg) {
        verifyFieldsDisplayedUsingText(msg);

    }
}
