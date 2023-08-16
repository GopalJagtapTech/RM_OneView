package stepDefinitions;

import PageObjects.*;
import base.ApplicationKeywords;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;

public class PassbookSteps extends ApplicationKeywords {
    LoginPage login;
    HomePage home;
    PassbookPage Passbook;

    public PassbookSteps() {
        login = new LoginPage();
        home = new HomePage();
        Passbook = new PassbookPage();
    }

    @Then("verify Bills and recharge page is displayed when customer click on passbook icon from Bajaj finserv Wallet section on Home page")
    public void verify_bills_and_recharge_page_is_displayed_when_customer_click_on_passbook_icon_from_bajaj_finserv_wallet_section_on_home_page() {

//        home.clickOnEMICardIcons("Passbook");
        clickOnIfDisplayed(PassbookPage.cardIcon_Passbook);
        verifyRedirectionURLIfContains("https://experia-uat.bajajfinserv.in/Payments/passbook/index");
    }

    @Then("verify the options visible when customer is on Bills and Recharge section")
    public void verify_the_options_visible_when_customer_is_on_bills_and_recharge_section() {

        Passbook.verifyOptionsinPassbookPage();

    }

    @Then("verify View More Button is visible when customer having more than five transactions & able to view next five transaction after click on View More Button")
    public void verify_view_more_button_is_visible_when_customer_having_more_than_five_transactions_able_to_view_next_five_transaction_after_click_on_view_more_button() {
        Passbook.verifyTransactionNumberViewMore("Bills & Recharges","");
    }

    @Then("verify customer is able to view max twenty transactions")
    public void verify_customer_is_able_to_view_max_twenty_transactions() {
        Passbook.verifyTransactionNumberGreaterThan();
    }

    @Then("verify View More Button is not displayed when less than equal to five transaction is present")
    public void verify_view_more_button_is_not_displayed_when_less_than_equal_to_five_transaction_is_present() {

        Passbook.verifyTransactionNumberLessThan();
    }

    @Then("verify Filtering options are displayed when customer click on Filter icon")
    public void verify_filtering_options_are_displayed_when_customer_click_on_filter_icon() {
        clickOnIfDisplayed(PassbookPage.filter_Passbook);
        verifyElementIsDisplayedUsingLocator(PassbookPage.completeSection_Filter);

    }

    @Then("verify Filter window gets Closed when customer click on X Button")
    public void verify_filter_window_gets_closed_when_customer_click_on_x_button() {
        Passbook.verifyCrossButtonInFilter();
    }

    @Then("verify Filter window gets Closed when customer click on Anywhere on screen except filter window")
    public void verify_filter_window_gets_closed_when_customer_click_on_anywhere_on_screen_except_filter_window() {
        // Write code here that turns the phrase above into concrete actions
        throw new io.cucumber.java.PendingException();
    }

    @Then("verify after click on Filter icon All option from Status and payment mode is selected by-default")
    public void verify_after_click_on_filter_icon_all_option_from_status_and_payment_mode_is_selected_by_default() {
        clickOnIfDisplayed(PassbookPage.filter_Passbook);
        Passbook.verifySelectedTab(PassbookPage.statusAll_Button, "By Default Selected", "");
        Passbook.verifySelectedTab(PassbookPage.paymentAll_Button, "By Default Selected", "");
    }

    @Then("verify customer is able to view the transactions after click on Apply button with below selected options:-a. Status- All b. Payment Mode:- All")
    public void verify_customer_is_able_to_view_the_transactions_after_click_on_apply_button_with_below_selected_options_a_status_all_b_payment_mode_all() {
        clickOnButtonUsingTextUsingForLoop("Apply");
        waitForPageToLoad();
        Passbook.verifyTransactionAmountColorDebited("Debited from", "");
    }

    @Then("verify customer is able to view the transactions after click on Apply now button with below selected options:- a. Status- All b. Payment Mode:- Credit Cards")
    public void verify_customer_is_able_to_view_the_transactions_after_click_on_apply_now_button_with_below_selected_options_a_status_all_b_payment_mode_credit_cards() {
        clickOnIfDisplayed(PassbookPage.filter_Passbook);
        Passbook.selectFilterOptions("Status", "All", "");
        Passbook.selectFilterOptions("Payment Mode", "Credit Cards", "");
        clickOnButtonUsingTextUsingForLoop("Apply");
        Passbook.validateFilter(PassbookPage.logo_CreditCard, PassbookPage.all_Transactions, "");


    }

    @Then("verify customer is able to view the transactions after click on Apply now button with below selected options:- a. Status- All b. Payment Mode:- Debit Cards")
    public void verify_customer_is_able_to_view_the_transactions_after_click_on_apply_now_button_with_below_selected_options_a_status_all_b_payment_mode_debit_cards() {
        clickOnIfDisplayed(PassbookPage.filter_Passbook);
        Passbook.selectFilterOptions("Status", "All", "");
        Passbook.selectFilterOptions("Payment Mode", "Debit Cards", "");
        clickOnButtonUsingTextUsingForLoop("Apply");
        Passbook.validateFilter(PassbookPage.logo_DeditCard, PassbookPage.all_Transactions, "");
    }

    @Then("verify customer is able to view the transactions after click on Apply now button with below selected options:-a. Status- All b. Payment Mode:- UPI")
    public void verify_customer_is_able_to_view_the_transactions_after_click_on_apply_now_button_with_below_selected_options_a_status_all_b_payment_mode_upi() {
        clickOnIfDisplayed(PassbookPage.filter_Passbook);
        Passbook.selectFilterOptions("Status", "All", "");
        Passbook.selectFilterOptions("Payment Mode", "UPI", "");
        clickOnButtonUsingTextUsingForLoop("Apply");
        Passbook.validateFilter(PassbookPage.logo_Upi, PassbookPage.all_Transactions, "");
    }

    @Then("verify customer is able to view the transactions after click on Apply now button with below selected options:-a. Status- All b. Payment Mode:- Wallet")
    public void verify_customer_is_able_to_view_the_transactions_after_click_on_apply_now_button_with_below_selected_options_a_status_all_b_payment_mode_wallet() {
        clickOnIfDisplayed(PassbookPage.filter_Passbook);
        Passbook.selectFilterOptions("Status", "All", "");
        Passbook.selectFilterOptions("Payment Mode", "Wallet", "");
        clickOnButtonUsingTextUsingForLoop("Apply");
        Passbook.validateFilter(PassbookPage.logo_Wallet, PassbookPage.all_Transactions, "");
    }

    @Then("verify customer is able to view the transactions after click on Apply now button with below selected options:-a. Status- All b. Payment Mode:- Net Banking")
    public void verify_customer_is_able_to_view_the_transactions_after_click_on_apply_now_button_with_below_selected_options_a_status_all_b_payment_mode_net_banking() {
        clickOnIfDisplayed(PassbookPage.filter_Passbook);
        Passbook.selectFilterOptions("Status", "All", "");
        Passbook.selectFilterOptions("Payment Mode", "NetBanking", "");
        clickOnButtonUsingTextUsingForLoop("Apply");
        Passbook.validateFilter(PassbookPage.logo_NetBanking, PassbookPage.all_Transactions, "");
    }

    //////////FAiled
    @Then("verify customer is able to view the transactions after click on Apply now button with below selected options:-a. Status- Failed b. Payment Mode:- All")
    public void verify_customer_is_able_to_view_the_transactions_after_click_on_apply_now_button_with_below_selected_options_a_status_failed_b_payment_mode_all() {
        clickOnIfDisplayed(PassbookPage.filter_Passbook);
        Passbook.selectFilterOptions("Status", "Failed", "");
        Passbook.selectFilterOptions("Payment Mode", "All", "");
        clickOnButtonUsingTextUsingForLoop("Apply");
        Passbook.verifyTransactionsUsingStatus("Failed", "", "");
    }

    @Then("verify customer is able to view the transactions after click on Apply now button with below selected options:-a. Status- Failed b. Payment Mode:- Credit Cards")
    public void verify_customer_is_able_to_view_the_transactions_after_click_on_apply_now_button_with_below_selected_options_a_status_failed_b_payment_mode_credit_cards() {
        clickOnIfDisplayed(PassbookPage.filter_Passbook);
        Passbook.selectFilterOptions("Status", "Failed", "");
        Passbook.selectFilterOptions("Payment Mode", "Credit Cards", "");
        clickOnButtonUsingTextUsingForLoop("Apply");
        Passbook.validateFilter(PassbookPage.logo_CreditCard, PassbookPage.failed_Transactions, "");

    }

    @Then("verify customer is able to view the transactions after click on Apply now button with below selected options:-a. Status- Failed b. Payment Mode:- Debit Cards")
    public void verify_customer_is_able_to_view_the_transactions_after_click_on_apply_now_button_with_below_selected_options_a_status_failed_b_payment_mode_debit_cards() {
        clickOnIfDisplayed(PassbookPage.filter_Passbook);
        Passbook.selectFilterOptions("Status", "Failed", "");
        Passbook.selectFilterOptions("Payment Mode", "Debit Cards", "");
        clickOnButtonUsingTextUsingForLoop("Apply");
        Passbook.validateFilter(PassbookPage.logo_DeditCard, PassbookPage.failed_Transactions, "");

    }

    @Then("verify customer is able to view the transactions after click on Apply now button with below selected options:-a. Status- Failed b. Payment Mode:- UPI")
    public void verify_customer_is_able_to_view_the_transactions_after_click_on_apply_now_button_with_below_selected_options_a_status_failed_b_payment_mode_upi() {
        clickOnIfDisplayed(PassbookPage.filter_Passbook);
        Passbook.selectFilterOptions("Status", "Failed", "");
        Passbook.selectFilterOptions("Payment Mode", "UPI", "");
        clickOnButtonUsingTextUsingForLoop("Apply");
        Passbook.validateFilter(PassbookPage.logo_Upi, PassbookPage.failed_Transactions, "");

    }

    @Then("verify customer is able to view the transactions after click on Apply now button with below selected options:-a. Status- Failed b. Payment Mode:- Wallet")
    public void verify_customer_is_able_to_view_the_transactions_after_click_on_apply_now_button_with_below_selected_options_a_status_failed_b_payment_mode_wallet() {
        clickOnIfDisplayed(PassbookPage.filter_Passbook);
        Passbook.selectFilterOptions("Status", "Failed", "");
        Passbook.selectFilterOptions("Payment Mode", "Wallet", "");
        clickOnButtonUsingTextUsingForLoop("Apply");
        Passbook.validateFilter(PassbookPage.logo_Wallet, PassbookPage.failed_Transactions, "");

    }

    @Then("verify customer is able to view the transactions after click on Apply now button with below selected options:-a. Status- Failed b. Payment Mode:- Net Banking")
    public void verify_customer_is_able_to_view_the_transactions_after_click_on_apply_now_button_with_below_selected_options_a_status_failed_b_payment_mode_net_banking() {
        clickOnIfDisplayed(PassbookPage.filter_Passbook);
        Passbook.selectFilterOptions("Status", "Failed", "");
        Passbook.selectFilterOptions("Payment Mode", "NetBanking", "");
        clickOnButtonUsingTextUsingForLoop("Apply");
        Passbook.validateFilter(PassbookPage.logo_NetBanking, PassbookPage.failed_Transactions, "");

    }


    //////////Pending
    @Then("verify customer is able to view the transactions after click on Apply now button with below selected options:-a. Status- Pending b. Payment Mode:- All")
    public void verify_customer_is_able_to_view_the_transactions_after_click_on_apply_now_button_with_below_selected_options_a_status_pending_b_payment_mode_all() {
        clickOnIfDisplayed(PassbookPage.filter_Passbook);
        Passbook.selectFilterOptions("Status", "Pending", "");
        Passbook.selectFilterOptions("Payment Mode", "All", "");
        clickOnButtonUsingTextUsingForLoop("Apply");
        Passbook.verifyTransactionsUsingStatus("Pending", "", "");

    }

    @Then("verify customer is able to view the transactions after click on Apply now button with below selected options:-a. Status- Pending b. Payment Mode:- Credit Cards")
    public void verify_customer_is_able_to_view_the_transactions_after_click_on_apply_now_button_with_below_selected_options_a_status_pending_b_payment_mode_credit_cards() {
        clickOnIfDisplayed(PassbookPage.filter_Passbook);
        Passbook.selectFilterOptions("Status", "Pending", "");
        Passbook.selectFilterOptions("Payment Mode", "Credit Cards", "");
        clickOnButtonUsingTextUsingForLoop("Apply");
        Passbook.validateFilter(PassbookPage.logo_CreditCard, PassbookPage.pending_Transactions, "");
        Passbook.verifyTransactionsUsingStatus("Pending", "", "");

    }

    @Then("verify customer is able to view the transactions after click on Apply now button with below selected options:-a. Status- Pending b. Payment Mode:- Debit Cards")
    public void verify_customer_is_able_to_view_the_transactions_after_click_on_apply_now_button_with_below_selected_options_a_status_pending_b_payment_mode_debit_cards() {
        clickOnIfDisplayed(PassbookPage.filter_Passbook);
        Passbook.selectFilterOptions("Status", "Pending", "");
        Passbook.selectFilterOptions("Payment Mode", "Debit Cards", "");
        clickOnButtonUsingTextUsingForLoop("Apply");
        Passbook.validateFilter(PassbookPage.logo_DeditCard, PassbookPage.pending_Transactions, "");

    }

    @Then("verify customer is able to view the transactions after click on Apply now button with below selected options:-a. Status- Pending b. Payment Mode:- UPI")
    public void verify_customer_is_able_to_view_the_transactions_after_click_on_apply_now_button_with_below_selected_options_a_status_pending_b_payment_mode_upi() {
        clickOnIfDisplayed(PassbookPage.filter_Passbook);
        Passbook.selectFilterOptions("Status", "Pending", "");
        Passbook.selectFilterOptions("Payment Mode", "UPI", "");
        clickOnButtonUsingTextUsingForLoop("Apply");
        Passbook.validateFilter(PassbookPage.logo_Upi, PassbookPage.pending_Transactions, "");

    }

    @Then("verify customer is able to view the transactions after click on Apply now button with below selected options:-a. Status- Pending b. Payment Mode:- Wallet")
    public void verify_customer_is_able_to_view_the_transactions_after_click_on_apply_now_button_with_below_selected_options_a_status_pending_b_payment_mode_wallet() {
        clickOnIfDisplayed(PassbookPage.filter_Passbook);
        Passbook.selectFilterOptions("Status", "Pending", "");
        Passbook.selectFilterOptions("Payment Mode", "Wallet", "");
        clickOnButtonUsingTextUsingForLoop("Apply");
        Passbook.validateFilter(PassbookPage.logo_Wallet, PassbookPage.pending_Transactions, "");
        Passbook.verifyTransactionsUsingStatus("Pending", "", "");


    }

    @Then("verify customer is able to view the transactions after click on Apply now button with below selected options:-a. Status- Pending b. Payment Mode:- Net Banking")
    public void verify_customer_is_able_to_view_the_transactions_after_click_on_apply_now_button_with_below_selected_options_a_status_pending_b_payment_mode_net_banking() {
        clickOnIfDisplayed(PassbookPage.filter_Passbook);
        Passbook.selectFilterOptions("Status", "Pending", "");
        Passbook.selectFilterOptions("Payment Mode", "NetBanking", "");
        clickOnButtonUsingTextUsingForLoop("Apply");
        Passbook.validateFilter(PassbookPage.logo_NetBanking, PassbookPage.pending_Transactions, "");

    }


    //////////Success

    @Then("verify customer is able to view the transactions after click on Apply now button with below selected options:-a. Status- Success b. Payment Mode:- All")
    public void verify_customer_is_able_to_view_the_transactions_after_click_on_apply_now_button_with_below_selected_options_a_status_success_b_payment_mode_all() {
        clickOnIfDisplayed(PassbookPage.filter_Passbook);
        Passbook.selectFilterOptions("Status", "Success", "");
        Passbook.selectFilterOptions("Payment Mode", "All", "");
        clickOnButtonUsingTextUsingForLoop("Apply");
        Passbook.verifySuccessTransactions("");
    }

    @Then("verify customer is able to view the transactions after click on Apply now button with below selected options:-a. Status- Success b. Payment Mode:- Credit Cards")
    public void verify_customer_is_able_to_view_the_transactions_after_click_on_apply_now_button_with_below_selected_options_a_status_success_b_payment_mode_credit_cards() {
        clickOnIfDisplayed(PassbookPage.filter_Passbook);
        Passbook.selectFilterOptions("Status", "Success", "");
        Passbook.selectFilterOptions("Payment Mode", "Credit Cards", "");
        clickOnButtonUsingTextUsingForLoop("Apply");
        Passbook.validateFilter(PassbookPage.logo_CreditCard, "Success", "");
    }

    @Then("verify customer is able to view the transactions after click on Apply now button with below selected options:-a. Status- Success b. Payment Mode:- Debit Cards")
    public void verify_customer_is_able_to_view_the_transactions_after_click_on_apply_now_button_with_below_selected_options_a_status_success_b_payment_mode_debit_cards() {
        clickOnIfDisplayed(PassbookPage.filter_Passbook);
        Passbook.selectFilterOptions("Status", "Success", "");
        Passbook.selectFilterOptions("Payment Mode", "Debit Cards", "");
        clickOnButtonUsingTextUsingForLoop("Apply");
        Passbook.validateFilter(PassbookPage.logo_DeditCard, "Success", "");

    }

    @Then("verify customer is able to view the transactions after click on Apply now button with below selected options:-a. Status- Success b. Payment Mode:- UPI")
    public void verify_customer_is_able_to_view_the_transactions_after_click_on_apply_now_button_with_below_selected_options_a_status_success_b_payment_mode_upi() {
        clickOnIfDisplayed(PassbookPage.filter_Passbook);
        Passbook.selectFilterOptions("Status", "Success", "");
        Passbook.selectFilterOptions("Payment Mode", "UPI", "");
        clickOnButtonUsingTextUsingForLoop("Apply");
        Passbook.validateFilter(PassbookPage.logo_Upi, "Success", "");

    }

    @Then("verify customer is able to view the transactions after click on Apply now button with below selected options:-a. Status- Success b. Payment Mode:- Wallet")
    public void verify_customer_is_able_to_view_the_transactions_after_click_on_apply_now_button_with_below_selected_options_a_status_success_b_payment_mode_wallet() {
        clickOnIfDisplayed(PassbookPage.filter_Passbook);
        Passbook.selectFilterOptions("Status", "Success", "");
        Passbook.selectFilterOptions("Payment Mode", "Wallet", "");
        clickOnButtonUsingTextUsingForLoop("Apply");
        Passbook.validateFilter(PassbookPage.logo_Wallet, "Success", "");

    }

    @Then("verify customer is able to view the transactions after click on Apply now button with below selected options:-a. Status- Success b. Payment Mode:- Net Banking")
    public void verify_customer_is_able_to_view_the_transactions_after_click_on_apply_now_button_with_below_selected_options_a_status_success_b_payment_mode_net_banking() {
        clickOnIfDisplayed(PassbookPage.filter_Passbook);
        Passbook.selectFilterOptions("Status", "Success", "");
        Passbook.selectFilterOptions("Payment Mode", "NetBanking", "");
        clickOnButtonUsingTextUsingForLoop("Apply");
        Passbook.validateFilter(PassbookPage.logo_NetBanking, "Success", "");

    }

    @Then("verify all selected options are deselected when customer click on Clear All Button")
    public void verify_all_selected_options_are_deselected_when_customer_click_on_clear_all_button() {
        Passbook.verifyClearAllFilterButtonPassbook();

    }

    @Then("verify customer is able to enter by putting data into the Search in passbook field")
    public void verify_customer_is_able_to_enter_by_putting_data_into_the_search_in_passbook_field() {
        // Write code here that turns the phrase above into concrete actions
        throw new io.cucumber.java.PendingException();
    }

    @Then("verify customer is able to search in passbook with valid data")
    public void verify_customer_is_able_to_search_in_passbook_with_valid_data() {
        // Write code here that turns the phrase above into concrete actions
        throw new io.cucumber.java.PendingException();
    }

    @Then("verify customer is able to search in passbook with in-valid data")
    public void verify_customer_is_able_to_search_in_passbook_with_in_valid_data() {
        // Write code here that turns the phrase above into concrete actions
        throw new io.cucumber.java.PendingException();
    }

//////////WALLET

    @Then("verify transaction to be displayed when Customer click on Wallets tab")
    public void verify_transaction_to_be_displayed_when_customer_click_on_wallets_tab() {

        clickOn(PassbookPage.wallet_Passbook);


    }

    /////////10012023
    @And("Customer clicks on Filter Icon")
    public void customerClicksOnFilterIcon() {
        clickOnIfDisplayed(PassbookPage.filter_Passbook);
    }

    @And("verify Filtering options are displayed for Bills & Recharges")
    public void verifyFilteringOptionsAreDisplayedForBillsRecharges() {
        verifyFieldsDisplayedUsingText("Filter your transactions by using the below parameters");
        Passbook.verifyfilterPassbook("Status", "All#Failed#Success#Pending", "");
        Passbook.verifyfilterPassbook("Payment Mode", "All#Credit Cards#Debit Cards#UPI#Wallet#NetBanking", "");
        verifymultipleButtonIsDisplayedInThePageusingText("Clear All,Apply", "");
        verifyElementIsDisplayedUsingLocator(PassbookPage.crossButton_Filter);
    }

    @And("customer selects filter options:-a. Status- Pending b. Payment Mode:- Net Banking")
    public void customerSelectsFilterOptionsAStatusPendingBPaymentModeNetBanking() {
        Passbook.selectFilterOptions("Status", "Pending", "");
        Passbook.selectFilterOptions("Payment Mode", "NetBanking", "");
        clickOnButtonUsingTextUsingForLoop("Apply");

    }

    @And("Clicks on the Tab {string} in Passbook Page")
    public void clicksOnTheTabInPassbookPage(String string) {
        Passbook.clickOnPassbookTab(string, "");
    }

    @And("Clicks on Download App Section")
    public void clicksOnDownloadAppSection() {
        clickOnIfDisplayed(PassbookPage.download_App);
    }

    @Then("verify Popup is displayed will all the contents")
    public void verifyPopupIsDisplayedWillAllTheContents() {
        verifyElementIsDisplayedOrNot(PassbookPage.qrCode_download_App);
        verifyFieldsDisplayedUsingTextAndForLoop("Scan and Download", "");
        verifyFieldsDisplayedUsingTextAndForLoop("Scan the below QR code to download", "");
        verifyElementIsDisplayedOrNot(PassbookPage.qrCode_Closer);
    }

    @And("clicks on Popup Close Button")
    public void clicksOnPopupCloseButton() {
        clickOnIfDisplayed(PassbookPage.qrCode_Closer);
    }

    @Then("verify Popup is closed in Passbook Page")
    public void verifyPopupIsClosedInPassbookPage() {
        Passbook.popupCloser();
    }

    @And("verify Filtering options are displayed for Wallet")
    public void verifyFilteringOptionsAreDisplayedForWallet() {
        verifyFieldsDisplayedUsingText("Filter your transactions by using the below parameters");
        Passbook.verifyfilterPassbook("Status", "All#Failed#Success#Pending", "");
        Passbook.verifyfilterPassbook("Payment Mode", "All#Credit Cards#Debit Cards#UPI#Wallet#NetBanking", "");
        verifymultipleButtonIsDisplayedInThePageusingText("Clear All,Apply", "");
        verifyElementIsDisplayedUsingLocator(PassbookPage.crossButton_Filter);

    }

    @And("Customer selects an Status Option:{string} and Payment Option:{string}")
    public void customerSelectsAnStatusOptionAndPaymentOption(String status, String payment) {
        Passbook.clickOnPassbookFilterOptions(status, payment, "");
    }

    @And("Clicks on {string} Button in Passbook Filter")
    public void clicksOnButtonInPassbookFilter(String string) {
        verifyButtonIsDisplayedInThePage(string);
        clickOnButtonUsingTextUsingForLoop(string);
    }

    @And("Searches for a text {string} in input box in Passbook Page")
    public void searchesForATextInInputBoxInPassbookPage(String string) {
        typeInIfDisplayed(PassbookPage.search_Passbook, string);
    }

    @Then("verify the tiles are filtered for the text {string}")
    public void verifyTheTilesAreFilteredForTheText(String string) {
        Passbook.verifySearchFilter(string,"");
    }

    @And("verify By default Bills and Recharge section is selected")
    public void verifyByDefaultBillsAndRechargeSectionIsSelected() {
        Passbook.verifySelectedTab(PassbookPage.tab_BillsAndRecharges_Passbook, "By Default Selected", "");

    }

    @And("verify the options visible when customer is on Wallet section")
    public void verifyTheOptionsVisibleWhenCustomerIsOnWalletSection() {
        Passbook.verifyOptionsinPassbookPage();

    }

    @Then("verify customer is able to view the transactions after click on Apply button with below selected options:-a. Status- All b. Payment Mode:- All - Debited")
    public void verifyCustomerIsAbleToViewTheTransactionsAfterClickOnApplyButtonWithBelowSelectedOptionsAStatusAllBPaymentModeAllDebited() {
        clickOnButtonUsingTextUsingForLoop("Apply");
        waitForPageToLoad();
        Passbook.verifyTransactionAmountColorDebited("Debited from", "");

    }

    @Then("verify customer is able to view the transactions after click on Apply button with below selected options:-a. Status- All b. Payment Mode:- All- Credited")
    public void verifyCustomerIsAbleToViewTheTransactionsAfterClickOnApplyButtonWithBelowSelectedOptionsAStatusAllBPaymentModeAllCredited() {
        clickOnButtonUsingTextUsingForLoop("Apply");
        waitForPageToLoad();
        Passbook.verifyTransactionAmountColorCredited("Credited to", "");

    }

    @And("Clicks on a {string} Transaction in Bills and Recharge")
    public void clicksOnATransactionInBillsAndRecharge(String string) {
        Passbook.clickOnPassbookTileBills(string,"");
    }

    @And("verify the Top Section in {string} Transaction")
    public void verifyTheTopSectionInTransaction(String string) {
        Passbook.verifyBillsSuccessTopPart(string,"payment_successful","");
    }

    @And("verify the Top Section in Success Transaction")
    public void verifyTheTopSectionInSuccessTransaction() {
        Passbook.verifyBillsSuccessTopPart("Success","payment_successful","");

    }

    @And("verify the Top Section in Failed Transaction")
    public void verifyTheTopSectionInFailedTransaction() {
        Passbook.verifyBillsSuccessTopPart("Failed","payment_successful PaymentFailed","");
    }

    @And("verify the Top Section in Pending Transaction")
    public void verifyTheTopSectionInPendingTransaction() {
        Passbook.verifyBillsSuccessTopPart("Pending","payment_successful pymentprocessing","");

    }

    @And("verify the Transaction Details in {string} Transaction")
    public void verifyTheTransactionDetailsInTransaction(String string) {
        Passbook.verifyBillsSuccessTransactionDetails(string,"");
    }

    @And("verify the Payment Made Details in {string} Transaction")
    public void verifyThePaymentMadeDetailsInTransaction(String string) {
        Passbook.verifyBillsTransactionsLHSTop(string,"");
    }

    @And("verify the Bills Section in {string} Transaction")
    public void verifyTheBillsSectionInTransaction(String string) {
        Passbook.verifyBillsTransactionsLHSDown(string,"");
    }

    @And("Customer clicks on Download Button of Receipt in Transaction Details")
    public void customerClicksOnDownloadButtonOfReceiptInTransactionDetails() {
        clickOnIfDisplayed(PassbookPage.dnld_ReceiptCTA);
    }

    @Then("verify the Receipt {string} is downloaded")
    public void verifyTheReceiptIsDownloaded(String string) {

        verifyDownLoadAndDeleteLatestFileNameFromLocalMachine(string);
    }


    @And("verify Amount Formats for all Amounts in Bills Transaction Page - Success")
    public void verifyAmountFormatsForAllAmountsInBillsTransactionPageSuccess() {
        verifyAmountWithRs("//div[@class='payment_text']/following-sibling::i","Amount in Top Section",".","");
        verifyAmountWithRs("//div[@class='payment_made_data']/descendant::strong","Amount in Payment Made Section",".","");
        verifyAmountWithRs("//div[@class='MobileBill']/descendant::i","Amount in Bill Section",".","");

    }


    @And("verify Date Formats for all Dates in Bills Transaction Page")
    public void verifyDateFormatsForAllDatesInBillsTransactionPage() {
        verifyDateFormat("//div[@class='reciept_box_title']/following-sibling::div/ul/li/p[normalize-space(text())='Generated On']/following-sibling::strong","Generated On in Transaction Details","dd MMMM yyyy, hh:mm aa","");
        verifyDateFormat("//div[@class='reciept_box_title']/following-sibling::div/ul/li/p[normalize-space(text())='Paid On']/following-sibling::strong","Paid On in Transaction Details","dd MMMM yyyy, hh:mm aa","");
        verifyDateFormat("//div[@class='MobileBill_date']//p","Bill Date","dd MMMM yyyy, hh:mm aa","");

    }

    @And("verify Mobile Number format in Transaction Details")
    public void verifyMobileNumberFormatInTransactionDetails() {
        Passbook.verifyMobileNumberTransactions();
    }

    @And("verify View More Button is visible when customer having more than five transactions & next five are visible on clicking view more")
    public void verifyViewMoreButtonIsVisibleWhenCustomerHavingMoreThanFiveTransactionsNextFiveAreVisibleOnClickingViewMore() {
        Passbook.verifyTransactionNumberViewMore("Wallet","");

    }

    @And("verify Amount Formats for all Amounts in Bills Transaction Page - Failed")
    public void verifyAmountFormatsForAllAmountsInBillsTransactionPageFailed() {
        verifyAmountWithRs("//div[@class='payment_text']/following-sibling::i","Amount in Top Section",".","");
        verifyAmountWithRs("(//div[@class='payment_made_data']/descendant::strong)[1]","Amount 1 in Payment Made Section",".","");
        verifyAmountWithRs("(//div[@class='payment_made_data']/descendant::strong)[2]","Amount 2 in Payment Made Section",".","");
        verifyAmountWithRs("//div[@class='MobileBill']/descendant::i","Amount in Bill Section",".","");

    }

    @And("verify Amount Formats for all Amounts in Bills Transaction Page - Pending")
    public void verifyAmountFormatsForAllAmountsInBillsTransactionPagePending() {
        verifyAmountWithRs("//div[@class='payment_text']/following-sibling::i","Amount in Top Section",".","");
        verifyAmountWithRs("(//div[@class='payment_made_data']/descendant::strong)[1]","Amount 1 in Payment Made Section",".","");
        verifyAmountWithRs("(//div[@class='payment_made_data']/descendant::strong)[2]","Amount 2 in Payment Made Section",".","");
        verifyAmountWithRs("//div[@class='MobileBill']/descendant::i","Amount in Bill Section",".","");

    }

    @And("verify the Amount part of Credited Transactions in Wallet")
    public void verifyTheAmountPartOfCreditedTransactionsInWallet() {
        Passbook.verifyWalletCreditedTo("Credited","");
    }

    @And("verify the Amount part of Debited Transactions in Wallet")
    public void verifyTheAmountPartOfDebitedTransactionsInWallet() {
        Passbook.verifyWalletDebitedfrom("Debited","");

    }

    @And("verify the contents in Transactions in Wallet")
    public void verifyTheContentsInTransactionsInWallet() {
        Passbook.verifyWalletTransactionTileContents("");
    }

    @And("verify the options visible when customer is on Bills and Recharge section for {string}")
    public void verifyTheOptionsVisibleWhenCustomerIsOnBillsAndRechargeSectionFor(String arg0) {
        Passbook.verifyOptionsinPassbookPagePTB();
    }

    @Then("{string} should be displayed along with below details for each transaction")
    public void shouldBeDisplayedAlongWithBelowDetailsForEachTransaction(String str) {
        Passbook.verifyTransactionTileContents(str,"");
    }
}
