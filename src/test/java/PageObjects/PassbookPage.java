package PageObjects;


import base.ApplicationKeywords;
import org.apache.commons.validator.GenericValidator;
import org.openqa.selenium.support.Color;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class PassbookPage extends ApplicationKeywords {
    /*
    Xpaths
     */

    public static final String filter_Passbook = "Filter Passbook#xpath=//div[@class='filter_passbook']/a";
    public static final String bills_And_Recharge_List = "Bills And Recharge#xpath=//div[@class='passbook_list_data']";
    public static final String faq_Icon = "FAQ Icon#xpath=//a/p[contains(text(),'FAQ')]";
    public static final String raise_A_Request_Icon = "Raise A Request#xpath=//a/p[text()='Raise a Request']";
    public static final String preapproved_Offers_List = "PreApproved Offer List#xpath=//div[@role='listbox']";
    public static final String search_Passbook = "Passbook Search#xpath=//input[@id='searchInPassbook']";
    public static final String btnViewMore_Passbook = "Passbook ViewMoreBtn#xpath=//div[@class='passbook_list']//a[@id='showMoreBBPS']";
    public static final String wallet_Passbook = "Passbook Wallet#xpath=//div[@class='passbook_tab']//a[@id='walletTabValue']";
    public static final String RHS_NeedAssistance = "NeedAssistance RHS#xpath=//strong[normalize-space()='Need assistance?']";
    public static final String cardIcon_Passbook = "Passbook CardIcon#xpath=//p[text()='Passbook']/preceding-sibling::img";


    public static final String tab_BillsAndRecharges_Passbook = "Bills and Recharges tab in PassBook#xpath=//a[normalize-space(text())='Bills and Recharges']";
    public static final String tab_Wallet_Passbook = "Wallet tab in PassBook#xpath=//a[normalize-space(text())='Wallets']";
    public static final String txt_NoTransactions_PassBook = "No Transactions Found Text fo Filter#xpath=//div[contains(text(),'No transaction found.')]";

    public static final String logo_Wallet = "Wallet Transactions#xpath=//img[contains(@src,'wallet-2.svg')]";
    public static final String logo_CreditCard = "Credit Card Transactions#xpath=//img[contains(@src,'images/Card.png')]";
    public static final String logo_DeditCard = "Debit Card Transactions#xpath=//img[contains(@src,'images/Card.png')]";
    public static final String logo_NetBanking = "Net Banking Transactions#xpath=//img[contains(@src,'images/globe-internet-network-planet.png')]";
    public static final String logo_Upi = "UPI Transactions#xpath=//img[contains(@src,'images/upi.png')]";
    public static final String viewMore_Button = "ViewMore Button in Transactions#xpath=//a[@class='pass-showmore']";
    public static final String statusAll_Button = "Status All Button in Filter#xpath=//strong[normalize-space(text())='Status']/parent::div/following-sibling::ul/li/a[normalize-space(text())='All']";
    public static final String paymentAll_Button = "Payment All Button in Filter#xpath=//strong[normalize-space(text())='Payment Mode']/parent::div/following-sibling::ul/li/a[normalize-space(text())='All']";
    public static final String crossButton_Filter = "Cross Button in Filter#xpath=//div[@class='filter_box_title']//a";
    public static final String completeSection_Filter = "Complete Section in Filter#xpath=//div[@class='passbook_filter_box']";

    public static final String all_Transactions = "All Transactions#xpath=//div[@class='listclass']";
    public static final String failed_Transactions = "Failed Transactions Transactions#xpath=//div[@class='listclass']/following-sibling::i[normalize-space(text())='Failed']";
    public static final String pending_Transactions = "Pending Transactions Transactions#xpath=//div[@class='listclass']/following-sibling::i[normalize-space(text())='Pending']";

    //WALLET
    public static final String logo_WalletTransaction = "WalletTransaction Logo#xpath=//div[@class='passbook_list']//li[@class='filterWalletLi']//div[@class='comlogo']";
    public static final String companyData_WalletTransaction = "WalletTransaction CompanyData#xpath=//div[@class='passbook_list']//li[@class='filterWalletLi']//div[@class='company_data']";
    public static final String paymentData_WalletTransaction = "WalletTransaction PaymentData#xpath=//div[@class='passbook_list']//li[@class='filterWalletLi']//div[@class='paymentdata']";
    public static final String paymentAmount_WalletTransaction = "WalletTransaction PaymentAmount#xpath=//div[@class='passbook_list']//li[@class='filterWalletLi']//div[@class='paymentdata']/child::strong";


    /*
    Methods
     */
/*
Bills & Recharges
 */
    public void verifyOptionsinPassbookPage() {

        try {
            verifyElementIsDisplayedUsingLocator(filter_Passbook);
//            verifyElementIsDisplayedUsingLocator(preapproved_Offers_List);
            verifyElementIsDisplayedUsingLocator(search_Passbook);
            verifyElementIsDisplayedUsingLocator(wallet_Tab);
            verifyElementIsDisplayedUsingLocator(bills_Tab);
            verifyElementIsDisplayedUsingLocator(static_Msg);
            verifyElementIsDisplayedUsingLocator(download_App);
            verifyElementIsDisplayedUsingLocator(tiles_Section);
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verifyOptionsinPassbookPage.Exception:" + e.getClass());
        }

    }


    public void verifyCrossButtonInFilter() {
        try {
            clickOnIfDisplayed(crossButton_Filter);
            if (!isElementDisplayed(completeSection_Filter)) {
                testStepPassed("Filter section is closed successfully on click of cross Butto ");

            } else {
                testStepFailed("Filter section not closed on click of cross Button");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verifyCrossButtonInFilter.Exception:" + e.getClass());

        }


    }


    public void verifySelectedTab(String locator, String comment, String extra) {
        try {
            String selectedLocator = "" + locator.split("#")[0] + " Selected tab#xpath=" + locator.split("#xpath=")[1] + "/parent::li[@class='active']";
//String nonSelectedLocator=""+locator.split("#")[0]+" non selected tab#xpath="+locator.split("#xpath=")[1]+"/parent::li[not(contains(@class,'active'))]";
            if (isElementDisplayed(locator)) {
                manualScreenshot(locator.split("#")[0] + " is Displayed successfully");
                if (isElementPresent(selectedLocator)) {
                    manualScreenshot(locator.split("#")[0] + " is " + comment + " successfully");
                } else {
                    testStepFailed(locator.split("#")[0] + " is Not " + comment);
                }
            } else {
                manualScreenshot(locator.split("#")[0] + " is Not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify selected Tab " + getRefOfXpath(locator) + ". Exception: " + e.getClass());
        }
    }

    public void selectFilterOptions(String statusOption, String selectOption, String extra) {
        try {
            String locator = "Status: " + statusOption + " - Option: " + selectOption + " in Filter#xpath=//strong[normalize-space(text())='" + statusOption.trim() + "']/parent::div/following-sibling::ul/li/a[normalize-space(text())='" + selectOption.trim() + "']";
            clickOnIfDisplayed(locator);
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in select Fiter Options Status - " + statusOption + " Option - " + selectOption + " . Exception: " + e.getClass());
        }
    }

    public void verifyTransactionsUsingStatus(String statusText, String comment, String extra) {
        try {
            String locator = "" + statusText + " Transactions#xpath=//div[@class='listclass']/following-sibling::i[normalize-space(text())='" + statusText.trim() + "']";
            String all = "All Transactions#xpath=//div[@class='listclass']";
            if (!isElementDisplayed(txt_NoTransactions_PassBook)) {
                if (sizeOfLocator(locator) == sizeOfLocator(all)) {
                    manualScreenshot(getRefOfXpath(locator) + " in Filter is verified successfully");
                    for (int i = 1; i <= sizeOfLocator(locator); i++) {
                        String loc = "" + statusText + " Transactions : " + i + "#xpath=(//div[@class='listclass']/following-sibling::i[normalize-space(text())='" + statusText.trim() + "'])[" + i + "]";
                        if (statusText.equalsIgnoreCase("Failed")) {
                            verifyLocatorColorUsingCssValue(loc, "#ffe6e6", "Red", "background-color");
                        } else {
                            verifyLocatorColorUsingCssValue(loc, "#002953", "Grey", "background-color");
                        }
                        if (i == 5) {
                            break;
                        }
                    }
                } else {
                    stepFailed("No Of All Transactions: " + sizeOfLocator(all));
                    stepFailed("No Of " + statusText + " Transactions: " + sizeOfLocator(locator));
                    testStepFailed(getRefOfXpath(locator) + " in Filter is Not Verified");
                }
            } else {
                manualScreenshot(getText(txt_NoTransactions_PassBook) + ". There is No Transactions available for This filter");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify " + statusText + " Transactions in Filter. Exception: " + e.getClass());
        }
    }

    public void verifySuccessTransactions(String extra) {
        try {
            String locator = "Other Than Success Transactions#xpath=//div[@class='listclass']/following-sibling::*";
            String all = "All Transactions#xpath=//div[@class='listclass']";
            if (!isElementDisplayed(txt_NoTransactions_PassBook)) {
                if (sizeOfLocator(locator) == 0) {
                    manualScreenshot(getRefOfXpath(locator) + " in Filter is verified successfully");
                    testStepInfo("Num of Success Transactions: " + sizeOfLocator(all));
                } else {
                    testStepFailed(getRefOfXpath(locator) + " in Filter is Not Verified");
                }
            } else {
                manualScreenshot(getText(txt_NoTransactions_PassBook) + ". There is No Transactions available for This filter");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Success Transactions in Filter. Exception: " + e.getClass());
        }
    }

    public void verifyTransactionAmountColor(String transactionType, String extra) {
        try {
            if (isElementDisplayed(txt_NoTransactions_PassBook)) {
                manualScreenshot(getText(txt_NoTransactions_PassBook) + ". There is No Transactions available for This filter");
                return;
            }
            String common = "" + transactionType + "#xpath=//p[normalize-space(text())='Debited from' or ('Refunded to')]/ancestor::div[@class='listclass']/preceding-sibling::strong";
            for (int i = 1; i <= sizeOfLocator(common); i++) {
                String companyLogo = "Company Logo " + i + "#xpath=(//div[@class='comlogo'])[" + i + "]";
                String companyName = "Company Name " + i + "#xpath=(//div[@class='company_data']/strong)[" + i + "]";
                String dateofTransaction = "Date of Transaction " + i + "#xpath=(//div[@class='company_data']//p[@class='datetext'])[" + i + "]";
                verifyElementIsPresentAndGetText(companyLogo);
                verifyElementIsPresentAndGetText(companyName);
                verifyElementIsPresentAndGetText(dateofTransaction);
                String locator = "" + transactionType + " Amount: " + i + "#xpath=(//p[normalize-space(text())='Debited from']|//p[normalize-space(text())='Refunded to'])[" + i + "]";
                String transaction = getTextPresent(locator).trim();
                if (transactionType.equalsIgnoreCase("Debited from")) {
                    verifyLocatorColorUsingCssValue(locator, "", "Red", "color");
                    String arrow = "" + transaction + " Icon#xpath=//p[normalize-space(text())='" + transaction + "']/ancestor::div[@class='listclass']/preceding-sibling::strong/img[@src='https://experia-uat.bajajfinserv.in/UI/images/path.svg']";
                    verifyLocatorColorUsingCssValue(arrow, "", "Red", "color");
                } else {
                    verifyLocatorColorUsingCssValue(locator, "", "Green", "color");
                    String arrow = "" + transaction + " Icon#xpath=//p[normalize-space(text())='" + transaction + "']/ancestor::div[@class='listclass']/preceding-sibling::strong/img[@src='../../../layout/images/path_green.svg']";
                    verifyLocatorColorUsingCssValue(arrow, "", "Green", "color");
                }

            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Transaction Amount Color - Transaction Type - " + transactionType + ". Exception: " + e.getClass());
        }
    }

    public void verifyTransactionAmountColorDebited(String transactionType, String extra) {
        try {
            if (isElementDisplayed(txt_NoTransactions_PassBook)) {
                manualScreenshot(getText(txt_NoTransactions_PassBook) + ". There is No Transactions available for This filter");
                return;
            }
            String common = "" + transactionType + "#xpath=//p[normalize-space(text())='" + transactionType.trim() + "']/ancestor::div[@class='listclass']/preceding-sibling::strong";
            for (int i = 1; i <= 5; i++) {
                String companyLogo = "Company Logo " + i + "#xpath=(//div[@class='comlogo'])[" + i + "]";
                String companyName = "Company Name " + i + "#xpath=(//div[@class='company_data']/strong)[" + i + "]";
                String dateofTransaction = "Date of Transaction " + i + "#xpath=(//div[@class='company_data']//p[@class='datetext'])[" + i + "]";
                verifyElementIsPresentAndGetText(companyLogo);
                verifyElementIsPresentAndGetText(companyName);
                verifyElementIsPresentAndGetText(dateofTransaction);
                String amount = "" + transactionType + " Amount: " + i + "#xpath=(//p[normalize-space(text())='" + transactionType.trim() + "']/ancestor::div[@class='listclass']/preceding-sibling::strong)[" + i + "]";
//                String transaction = getTextPresent(locator).trim();
                verifyLocatorColorUsingCssValue(amount, "#b40000", "Red", "color");
                String arrow = "" + transactionType + " Icon#xpath=//p[normalize-space(text())='" + transactionType.trim() + "']/ancestor::div[@class='listclass']/preceding-sibling::strong/img[contains(@src,'images/path.svg')]";
                verifyLocatorColorUsingCssValue(arrow, "#b40000", "Red", "color");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Transaction Amount Color Debited- Transaction Type - " + transactionType + ". Exception: " + e.getClass());
        }
    }

    public void verifyTransactionAmountColorCredited(String transactionType, String extra) {
        try {
            if (isElementDisplayed(txt_NoTransactions_PassBook)) {
                manualScreenshot(getText(txt_NoTransactions_PassBook) + ". There is No Transactions available for This filter");
                return;
            }
            String common = "" + transactionType + "#xpath=//p[normalize-space(text())='Refunded to']/ancestor::div[@class='listclass']/preceding-sibling::strong";
            for (int i = 1; i <= sizeOfLocator(common); i++) {
                String companyLogo = "Company Logo " + i + "#xpath=(//div[@class='comlogo'])[" + i + "]";
                String companyName = "Company Name " + i + "#xpath=(//div[@class='company_data']/strong)[" + i + "]";
                String dateofTransaction = "Date of Transaction " + i + "#xpath=(//div[@class='company_data']//p[@class='datetext'])[" + i + "]";
                verifyElementIsPresentAndGetText(companyLogo);
                verifyElementIsPresentAndGetText(companyName);
                verifyElementIsPresentAndGetText(dateofTransaction);
                String locator = "" + transactionType + " Amount: " + i + "#xpath=(//p[normalize-space(text())='Refunded to'])[" + i + "]";
                String transaction = getTextPresent(locator).trim();

                verifyLocatorColorUsingCssValue(locator, "", "Green", "color");
                String arrow = "" + transaction + " Icon#xpath=//p[normalize-space(text())='" + transaction + "']/ancestor::div[@class='listclass']/preceding-sibling::strong/img[@src='../../../layout/images/path_green.svg']";
                verifyLocatorColorUsingCssValue(arrow, "", "Green", "color");


            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Transaction Amount Color Credited- Transaction Type - " + transactionType + ". Exception: " + e.getClass());
        }
    }

//    public void verifyTransactionAmountColor(String transactionType, String extra) {
//        try {
//            if (isElementDisplayed(txt_NoTransactions_PassBook)) {
//                manualScreenshot(getText(txt_NoTransactions_PassBook) + ". There is No Transactions available for This filter");
//                return;
//            }
//            String common = "" + transactionType + "#xpath=//p[normalize-space(text())='" + transactionType + "']/ancestor::div[@class='listclass']/preceding-sibling::strong";
//            for (int i = 1; i <= sizeOfLocator(common); i++) {
//                String locator = "" + transactionType + " Amount: " + i + "#xpath=(//p[normalize-space(text())='" + transactionType + "']/ancestor::div[@class='listclass']/preceding-sibling::strong)[" + i + "]";
//                verifyGetTextContainsIfPresent(locator, "Rs. ");
//                if (transactionType.equalsIgnoreCase("Debited from")) {
//                    verifyLocatorColorUsingCssValue(locator, "", "Red", "color");
//                    String arrow = "" + transactionType + " Icon#xpath=//p[normalize-space(text())='" + transactionType + "']/ancestor::div[@class='listclass']/preceding-sibling::strong/img[@src='../../../layout/images/path.svg']";
//                    verifyLocatorColorUsingCssValue(arrow, "", "Red", "color");
//                } else {
//                    verifyLocatorColorUsingCssValue(locator, "", "Green", "color");
//                    String arrow = "" + transactionType + " Icon#xpath=//p[normalize-space(text())='" + transactionType + "']/ancestor::div[@class='listclass']/preceding-sibling::strong/img[@src='../../../layout/images/path_green.svg']";
//                    verifyLocatorColorUsingCssValue(arrow, "", "Green", "color");
//                }
//            }
//        } catch (Exception e) {
//            e.printStackTrace();
//            testStepFailed("Failed in verify Transaction Amount Color - Transaction Type - " + transactionType + ". Exception: " + e.getClass());
//        }
//    }


    public Boolean verifyElementIsPresentAndGetText(String locator) {
        Boolean flag = false;
        try {
            if (isElementPresent(locator)) {
                flag = true;
                manualScreenshot(locator.split("#")[0] + "-" + getTextPresent(locator));
            } else {
                testStepFailed(locator.split("#")[0] + " is Not Present");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verifyElementIsPresentAndGetText . Exception: " + e.getClass());
        }
        return flag;
    }


    public void verifycompanyDetails() {
        try {
            String common = "Company Logo#xpath=//div[@class='comlogo']";
            for (int i = 1; i <= sizeOfLocator(common); i++) {
                String companyLogo = "Company Logo " + i + "#xpath=(//div[@class='comlogo'])[" + i + "]";
                String companyName = "Company Name " + i + "#xpath=(//div[@class='company_data']/strong)[" + i + "]";
                String dateofTransaction = "Date of Transaction " + i + "#xpath=(//div[@class='company_data']//p[@class='datetext'])[" + i + "]";
                verifyElementIsPresentAndGetText(companyLogo);
                verifyElementIsPresentAndGetText(companyName);
                verifyElementIsPresentAndGetText(dateofTransaction);
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verifycompanyDetails. Exception: " + e.getClass());
        }

    }

    public void verifyTransactionNumberViewMore(String Transactiontype, String extra) {
        try {
            String common = "Company Logo#xpath=//div[@class='comlogo']";
            String taponTransact = "Transaction section#xpath=//div[@class='passbook_list_data']";
            int tiles = sizeOfLocator(common);
            testStepInfo("Total Transactions in " + Transactiontype + " is:" + tiles);
            scrollToWebElement(viewMore_Button);
            verifyElementIsDisplayedOrNot(viewMore_Button);
            testStepInfo(getRefOfXpath(viewMore_Button) + " is Displayed successfully for more than 5 transactions. i.e: " + tiles);
            clickOn(viewMore_Button);
            for (int i = 6; i <= tiles; i++) {
                String tilemore = "Transaction num: " + i + "#xpath=(//div[@class='comlogo'])[" + i + "]";
                clickOn(taponTransact);
                pageDown();
                verifyElementIsDisplayedOrNot(tilemore);
                if (i >= 10) {
                    break;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verifyTransaction Number View More. Exception: " + e.getClass());
        }

    }

    public void verifyTransactionNumberGreaterThan() {
        try {
            String common = "Company Logo#xpath=//div[@class='comlogo']";
            String taponTransact = "Transaction section#xpath=//div[@class='passbook_list_data']";
            String viewMorefourth = "View More#xpath=//a[@class='pass-showmore' and @style='display: none;']";
            int tiles = sizeOfLocator(common);
            if (tiles == 20) {
                testStepInfo("No of Transactions -" + sizeOfLocator(common));
                for (int i = 5; i <= tiles; i += 5) {
                    String common1 = "Tile Number: " + i + "#xpath=(//div[@class='comlogo'])[" + i + "]";
                    scrollToWebElement(viewMore_Button);
                    testStepInfo(getRefOfXpath(viewMore_Button) + " is Displayed successfully for more than 5 transactions. i.e: " + i);
                    clickOn(viewMore_Button);
                    clickOn(taponTransact);
                    pageDown();
                    scrollToWebElement(common1);
                    verifyElementIsDisplayedOrNot(common1);
                    if (i == 15) {
                        break;
                    }
                }
                if (isElementPresent(viewMorefourth) && isElementNotDisplayedWithWait(viewMorefourth)) {
                    testStepPassed(getRefOfXpath(viewMorefourth) + " is not Displayed successfully for the 4th time");

                }

            } else {
                testStepFailed("No of Transactions -" + tiles);

            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verifyTransactionNumberGreaterThan. Exception: " + e.getClass());
        }

    }

    public void verifyTransactionNumberLessThan() {
        try {
            String common = "Company Logo#xpath=//div[@class='comlogo']";
            if (sizeOfLocator(common) < 5) {
                if (!isElementPresent(viewMore_Button)) {
                    testStepPassed("View More Button is not present for less than 5 transactions");
                } else {
                    testStepFailed("View More Button is present for less than 5 transactions");
                }

            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verifyTransactionNumberLessThan. Exception: " + e.getClass());
        }

    }

    public void validateFilter(String locator, String statusLocator, String extra) {
        try {
            if (isElementDisplayed(txt_NoTransactions_PassBook)) {
                testStepFailed(getText(txt_NoTransactions_PassBook) + ". There is No Transactions available for This filter");
                return;
            }
//        String all="All Transactions#xpath=//div[@class='listclass']";
            int all1 = 0;
            if (statusLocator.equalsIgnoreCase("success")) {
                all1 = getSuccessTransactionsCount();
            } else {
                all1 = sizeOfLocator(statusLocator);
            }

            int loc = sizeOfLocator(locator);
            if (loc >= 1) {
                if (all1 == loc) {
                    testStepPassed("" + getRefOfXpath(statusLocator) + " Count: " + all1);
                    testStepPassed(getRefOfXpath(locator) + " Count: " + loc);
                    manualScreenshot(getRefOfXpath(locator) + " is Filtered Successfully");
                } else {
                    stepFailed("" + getRefOfXpath(statusLocator) + " Count: " + all1);
                    stepFailed(getRefOfXpath(locator) + " Count: " + loc);
                    testStepFailed(getRefOfXpath(locator) + " is Not Filtered");
                }
            } else {
                testStepFailed("There are no Records for this type of Filter");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in Validate Filter : " + getRefOfXpath(locator) + " - " + getRefOfXpath(statusLocator) + ". Exception: " + e.getClass());
        }
    }


    public int getSuccessTransactionsCount() {
        int count_Success = 0;
        try {
            String failedAndPending = "Failed and Pending Transactions#xpath=//div[@class='listclass']/following-sibling::i";
            String all = "All Transaction#xpath=//div[@class='listclass']";
            count_Success = sizeOfLocator(all) - sizeOfLocator(failedAndPending);
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in get success transaction count. Exception: " + e.getClass());
        }
        return count_Success;
    }


//    public void validateFilter(String locator, String statusLocator, String extra) {
//        try {
//            if (isElementDisplayed(txt_NoTransactions_PassBook)) {
//                manualScreenshot(getText(txt_NoTransactions_PassBook) + ". There is No Transactions available for This filter");
//                return;
//            }
////        String all="All Transactions#xpath=//div[@class='listclass']";
//            int all1 = sizeOfLocator(statusLocator);
//            int loc = sizeOfLocator(locator);
//            if (all1 == loc) {
//                testStepPassed("" + getRefOfXpath(statusLocator) + " Count: " + all1);
//                testStepPassed(getRefOfXpath(locator) + " Count: " + loc);
//                manualScreenshot(getRefOfXpath(locator) + " is Filtered Successfully");
//            } else {
//                stepFailed("" + getRefOfXpath(statusLocator) + " Count: " + all1);
//                stepFailed(getRefOfXpath(locator) + " Count: " + loc);
//                testStepFailed(getRefOfXpath(locator) + " is Not Filtered");
//            }
//        } catch (Exception e) {
//            e.printStackTrace();
//            testStepFailed("Failed in Validate Filter : " + getRefOfXpath(locator) + " - " + getRefOfXpath(statusLocator) + ". Exception: " + e.getClass());
//        }
//    }

    public void verifyClearAllFilterButtonPassbook() {
        try {
            if (isElementDisplayed(filter_Passbook)) {
                clickOnIfDisplayed(PassbookPage.filter_Passbook);
                clickOnButtonUsingTextUsingForLoop("Clear All");
                waitForPageToLoad();
                clickOnIfDisplayed(PassbookPage.filter_Passbook);
                verifySelectedTab(PassbookPage.statusAll_Button, "By Default Selected", "");
                verifySelectedTab(PassbookPage.paymentAll_Button, "By Default Selected", "");
                testStepPassed("Clear All working succesfully in Passbook Filter");
            } else {
                testStepFailed("Clear All not working in Passbook Filter");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verifyClearAllFilterButtonPassbook. Exception: " + e.getClass());
        }

    }

    ////////////////////////////
    public void verifyReceiptDetails() {
        try {
            String locator = "Receipt Details in Transaction Page#xpath=//div[@class='reciept_box']/div//li";
            for (int i = 1; i <= sizeOfLocator(locator); i++) {
                String Receipt = "Receipt Details in Transaction Page " + i + "#xpath=(//div[@class='reciept_box']/div//li)[" + i + "]";
                verifyElementIsPresentAndGetText(Receipt);
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verifyReceiptDetails. Exception: " + e.getClass());
        }

    }

    public void verifyLeftSideOfTransactionSection() {

        try {

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verifyLeftSideOfTransactionSection. Exception: " + e.getClass());
        }


    }

    public void verifyTransactionsOrderInDateWise(String extra) {
        try {
            Boolean flag = true;
            String allDates = "All dates#xpath=//div[@class='company_data']//p[@class='datetext']";
            for (int i = 1; i < sizeOfLocator(allDates); i++) {
                String dateofTransaction1 = "Date of Transaction " + i + "#xpath=(//div[@class='company_data']//p[@class='datetext'])[" + i + "]";
                String dateofTransaction2 = "Date of Transaction " + i + 1 + "#xpath=(//div[@class='company_data']//p[@class='datetext'])[" + (i + 1) + "]";
                Date d1 = getDateUsingString(getTextPresent(dateofTransaction1).trim());
                Date d2 = getDateUsingString(getTextPresent(dateofTransaction2).trim());
                flag = compareDates(d1, d2, false);
                if (!flag) {
                    testStepFailed("Transaction Date Order is Wrong for " + i + " and " + (i + 1) + " Date of Transactions");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Transaction Oreder. Exception: " + e.getClass());
        }
    }

    /*
    WALLET
     */

    public void verifyWalletTransaction() {
        try {
            if (isElementDisplayed(wallet_Passbook)) {
                clickOn(wallet_Passbook);
            } else {
                testStepFailed("Wallet is not present");
            }
            verifyElementIsDisplayedUsingLocator(bills_And_Recharge_List);

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Wallet Transaction" + e.getClass());
        }
    }
///////10012023


    public void verifyfilterPassbook(String Header, String OptionswithHash, String extra) {
        try {
            String header = "Header section#xpath=//strong[normalize-space(text())='" + Header.trim() + "']/parent::div";
            if (isElementDisplayed(header)) {
                manualScreenshot(Header + "is displayed Successfully");
                verifyFieldsUsingCommonXpathAndMultipleTextWithHash("//strong[normalize-space(text())='" + Header.trim() + "']/parent::div/following-sibling::ul//li//a", OptionswithHash, "");

            } else {
                testStepFailed(getRefOfXpath(completeSection_Filter) + " is not Displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify filter Passbook" + e.getClass());
        }
    }

    public void clickOnPassbookTab(String Tabtext, String extra) {
        try {
            String tab = "Tab- " + Tabtext + "#xpath=//div[@class='passtab_text']/ul/li/a[normalize-space(text())='" + Tabtext.trim() + "']";
            if (isElementDisplayed(tab)) {
                clickOn(tab);
                waitForPageToLoad();
            } else {
                testStepFailed(getRefOfXpath(tab) + " is not Displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in click On Passbook Tab" + e.getClass());
        }
    }

    public static final String download_App = "Download App Section#xpath=//div[@class='a_downloadapp_topsection']";
    public static final String qrCode_download_App = "Download App QR Code#xpath=//img[@id='walletQRCode']";
    public static final String qrCode_Closer = "Close Button QR Popup#xpath=//strong[normalize-space(text())='Scan and Download']/preceding-sibling::a[@class='dialog_closer']";

    public static final String wallet_Tab = "Wallet Tab#xpath=//div[@class='passtab_text']/ul/li/a[normalize-space(text())='Wallet']";
    public static final String bills_Tab = "Bills & Recharges Tab#xpath=//div[@class='passtab_text']/ul/li/a[normalize-space(text())='Bills and Recharge']";
    public static final String static_Msg = "Static Msg from AEM#xpath=//div[@class='boxwidth mobilenone']";
    public static final String tiles_Section = "Static Msg from AEM#xpath=//div[@class='passbook_list_data']";

    public void popupCloser() {
        try {
            if (!isElementDisplayed(qrCode_download_App)) {
                manualScreenshot(getRefOfXpath(qrCode_download_App) + "is closed successfully on click of X Button");
            } else {
                testStepFailed(getRefOfXpath(qrCode_download_App) + " is not Closed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in popup Closer" + e.getClass());
        }
    }


    public void clickOnPassbookFilterOptions(String StatusOption, String PaymentOption, String extra) {
        try {
            String status_Option = "Status Option: " + StatusOption + " in Filter#xpath=//strong[normalize-space(text())='Status']/parent::div/following-sibling::ul//li//a[normalize-space(text())='" + StatusOption.trim() + "']";
            String payment_Option = "Payment Mode Option: " + PaymentOption + " in Filter#xpath=//strong[normalize-space(text())='Payment Mode']/parent::div/following-sibling::ul//li//a[normalize-space(text())='" + PaymentOption.trim() + "']";
            if (isElementDisplayed(status_Option)) {
                clickOn(status_Option);
//                scrollToWebElement(payment_Option);
                clickOn(payment_Option);
            } else {
                testStepFailed(getRefOfXpath(status_Option) + " is not Displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in click On Passbook Filter Options" + e.getClass());
        }
    }
//input[@id='searchInPassbook']


    public void verifySearchFilter(String searchText, String extra) {
        try {
            String tiles = "Filtered tiles#xpath=//div[@class='passbook_list_data']/ul/li[not(@style='display: none;')]";
            String noRecords = "No Records#xpath=//div[normalize-space(text())='No Records Found']";
            if (isElementPresent(tiles)) {
                int size = findWebElementsForSize(tiles);
                manualScreenshot("Number of tiles displayed for the Search term " + size);
                for (int i = 1; i <= size; i++) {
                    String tiles1 = "Filtered tiles#xpath=(//div[@class='passbook_list_data']/ul/li[not(@style='display: none;')])[" + i + "]";
                    if (isElementPresent(tiles1)) {
                        String text = getText(tiles1);
                        if (text.contains(searchText)) {
                            testStepPassed("Search Box input has filtered the tiles successfully for Tile No: " + i);
                        } else {
                            testStepFailed("Search Box input has not filtered the tiles successfully for Tile No: " + i);
                        }

                    }
                }
            } else {
                if (isElementDisplayed(noRecords)) {
                    testStepInfo(getTextPresent(noRecords) + " for this Search Option " + searchText);
                } else
                    testStepFailed(getRefOfXpath(tiles) + " is not Displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Search Filter" + e.getClass());
        }
    }

    /////////13012023
    public void verifyBillsSuccessTopPart(String transactionType, String transactionClass, String extra) {
        try {
            String toptab = "Top Section in " + transactionType + " Transaction#xpath=//div[@class='" + transactionClass.trim() + "']";
            String bills_Symbol = "BBPS Image#xpath=//div[@class='" + transactionClass.trim() + "']/img[@class='bbps']";
            String success_Text = "" + transactionType + " Field#xpath=//div[@class='" + transactionClass.trim() + "']/div/strong";
            String success_OrderId = "Order ID#xpath=//div[@class='" + transactionClass.trim() + "']/div/p";
            String transaction_Amount = "Amount#xpath=//div[@class='" + transactionClass.trim() + "']/div/following-sibling::i";
            if (isElementDisplayed(toptab)) {
                manualScreenshot(getRefOfXpath(toptab) + " is Displayed Successfully");
                verifyElementIsDisplayedOrNot(bills_Symbol);
                verifyElementIsPresentAndGetText(success_Text);
                verifyElementIsPresentAndGetText(success_OrderId);
                verifyElementIsPresentAndGetText(transaction_Amount);
                if (transactionType.equalsIgnoreCase("Success")) {
                    String success_Tick = "Success Tick Mark#xpath=//div[@class='" + transactionClass.trim() + "']/img[contains(@src,'/success-24')]";
                    verifyElementIsDisplayedOrNot(success_Tick);
                    verifyLocatorColorUsingCssValue(toptab, "#26c165", "Green", "background-color");

                }
                if (transactionType.equalsIgnoreCase("Failed")) {
                    String failed_Cross = "Failed Image#xpath=//div[@class='" + transactionClass.trim() + "']/img[contains(@src,'/failed')]";
                    verifyElementIsDisplayedOrNot(failed_Cross);
                    verifyLocatorColorUsingCssValue(toptab, "#ed1d25", "Red", "background-color");
                }
                if (transactionType.equalsIgnoreCase("Pending")) {
                    String failed_Cross = "Pending Image#xpath=//div[@class='" + transactionClass.trim() + "']/img[contains(@src,'/done-tick-mark.svg')]";
                    verifyElementIsDisplayedOrNot(failed_Cross);
                    verifyLocatorColorUsingCssValue(toptab, "#ff6700", "Orange", "background-color");

                }
            } else {
                testStepFailed(getRefOfXpath(toptab) + " is not Displayed");
            }


        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("failed in verify Bills Success Top Part. Exception: " + e.getClass());

        }
    }

    public void verifyBillsSuccessTransactionDetails(String transactionType, String extra) {
        try {
            String Header = "Transaction Details Header#xpath=//div[@class='reciept_box_title']/strong";
            String dnld_ReceiptSection = "Download Receipt Section#xpath=//div[@class='download_reciept']";
            String dnld_ReceiptText = "Receipt Text#xpath=//div[@class='download_reciept']/p";
            String dnld_ReceiptCTA = "Download Receipt CTA#xpath=//div[@class='download_reciept']/a";
            if (isElementDisplayed(Header)) {
                manualScreenshot(getRefOfXpath(Header) + " is Displayed Successfully. Text: " + getTextPresent(Header));
                verifyValueUsingLabel("//div[@class='reciept_box_title']/following-sibling::div/ul/li/p", "Order ID", "/following-sibling::strong", "");
                verifyValueUsingLabel("//div[@class='reciept_box_title']/following-sibling::div/ul/li/p", "Biller Reference Number", "/following-sibling::strong", "");
                verifyValueUsingLabel("//div[@class='reciept_box_title']/following-sibling::div/ul/li/p", "Transaction Reference Number", "/following-sibling::strong", "");
                verifyValueUsingLabel("//div[@class='reciept_box_title']/following-sibling::div/ul/li/p", "Payment Status", "/following-sibling::strong", "");
                verifyValueUsingLabel("//div[@class='reciept_box_title']/following-sibling::div/ul/li/p", "Biller Status", "/following-sibling::strong", "");
                verifyValueUsingLabel("//div[@class='reciept_box_title']/following-sibling::div/ul/li/p", "Mobile Number", "/following-sibling::strong", "");
                verifyValueUsingLabel("//div[@class='reciept_box_title']/following-sibling::div/ul/li/p", "Generated On", "/following-sibling::strong", "");
                verifyValueUsingLabel("//div[@class='reciept_box_title']/following-sibling::div/ul/li/p", "Paid On", "/following-sibling::strong", "");
                if (transactionType.equalsIgnoreCase("Success")) {
                    String dnld_ReceiptImage = "Download Receipt Image#xpath=//div[@class='download_reciept']/img[contains(@src,'/ricipt.png')]";
                    verifyElementIsDisplayedOrNot(dnld_ReceiptSection);
                    verifyElementIsPresentAndGetText(dnld_ReceiptText);
                    verifyElementIsDisplayedOrNot(dnld_ReceiptCTA);
                    verifyElementIsDisplayedOrNot(dnld_ReceiptImage);
                }
                if (transactionType.equalsIgnoreCase("Failed")) {
                    String dnld_ReceiptImage = "Download Receipt Image#xpath=//div[@class='download_reciept']/img[contains(@src,'/ricipt.png')]";
                    verifyElementIsDisplayedOrNot(dnld_ReceiptSection);
                    verifyElementIsPresentAndGetText(dnld_ReceiptText);
                    verifyElementIsDisplayedOrNot(dnld_ReceiptCTA);
                    verifyElementIsDisplayedOrNot(dnld_ReceiptImage);
                }
                if (transactionType.equalsIgnoreCase("Pending")) {
                    manualScreenshot(transactionType + " Transaction does not have Receipt Section");
                }

            } else {
                testStepFailed(getRefOfXpath(Header) + " is not Displayed");
            }


        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("failed in verify Bills Success Transaction Details. Exception: " + e.getClass());

        }
    }

    public void verifyBillsTransactionsLHSTop(String transactionType, String extra) {
        try {
            String paymentmade = "Payment Made Section#xpath=//div[@class='payment_made']";
            if (isElementDisplayed(paymentmade)) {
                manualScreenshot(getRefOfXpath(paymentmade) + " is Displayed Successfully");
                verifyFieldDisplayedUsingTagAndText("strong", "Payment made through", "");
                if (transactionType.equalsIgnoreCase("Success")) {
                    String label = "Label: #xpath=//div[@class='payment_made_title']/following-sibling::div/ul/li/p";
                    String value = "Label Value: #xpath=//div[@class='payment_made_title']/following-sibling::div/ul/li/p/following-sibling::strong";
                    verifyElementIsDisplayedAndGetText(label);
                    verifyElementIsDisplayedAndGetText(value);
                }
                if (transactionType.equalsIgnoreCase("Failed") || transactionType.equalsIgnoreCase("Pending")) {
                    String label1 = "Label 1: #xpath=(//div[@class='payment_made_title']/following-sibling::div/ul/li/p)[1]";
                    String label2 = "Label 2: #xpath=(//div[@class='payment_made_title']/following-sibling::div/ul/li/p)[2]";
                    String value1 = "Label Value 1: #xpath=(//div[@class='payment_made_title']/following-sibling::div/ul/li/p/following-sibling::strong)[1]";
                    String value2 = "Label Value 2: #xpath=(//div[@class='payment_made_title']/following-sibling::div/ul/li/p/following-sibling::strong)[2]";
                    verifyElementIsDisplayedAndGetText(label1);
                    verifyElementIsDisplayedAndGetText(value1);
                    verifyElementIsDisplayedAndGetText(label2);
                    verifyElementIsDisplayedAndGetText(value2);
                }

            } else {
                testStepFailed(getRefOfXpath(paymentmade) + " is not Displayed");
            }


        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("failed in verify Bills Transaction LHS Top. Exception: " + e.getClass());

        }
    }

    public void verifyBillsTransactionsLHSDown(String transactionType, String extra) {
        try {
            String section_Bill = "Bill Section for " + transactionType + " #xpath=//div[@class='MobileBill']";
            String bill_Type = "Bill Type #xpath=//div[@class='MobileBill']/div/strong";
            String bill_Date = "Bill Date #xpath=//div[@class='MobileBill']/div/strong/following-sibling::p";
            String logo_Company = "Company Logo #xpath=//div[@class='comlogo']/img";
            String name_Company = "Company Name: #xpath=//div[@class='companyname']/strong";
            String num_Company = "Number: #xpath=//div[@class='companyname']/strong/following-sibling::p";
            String amount_Bill = "Bill Amount #xpath=//div[@class='companyname']/following-sibling::i";
            String static_Text = "Bill Amount#xpath=//div[@class='ifyouhave ifyouhaveone']/p";
            if (isElementDisplayed(section_Bill)) {
                manualScreenshot(getRefOfXpath(section_Bill) + " is Displayed Successfully");
                verifyElementIsDisplayedAndGetText(bill_Type);
                verifyElementIsDisplayedAndGetText(bill_Date);
                verifyElementIsDisplayedOrNot(logo_Company);
                verifyElementIsDisplayedAndGetText(name_Company);
                verifyElementIsDisplayedAndGetText(num_Company);
                verifyElementIsDisplayedAndGetText(amount_Bill);
                if (transactionType.equalsIgnoreCase("Success") || transactionType.equalsIgnoreCase("Failed")) {
                    verifyElementIsDisplayedAndGetText(static_Text);
                }
            } else {
                testStepFailed(getRefOfXpath(section_Bill) + " is not Displayed");
            }


        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("failed in verify Bills Transaction LHS Down. Exception: " + e.getClass());

        }
    }


    ////Failed

    public void verifyBillsFailedTopPart(String extra) {
        try {
            String toptab = "Top Section in Failed Transaction#xpath=//div[@class='payment_successful PaymentFailed']";
            String failed_Cross = "Failed Image#xpath=//div[@class='payment_successful PaymentFailed']/img[@src='./Bills Failed Transaction_files/failed']";
            String bills_Symbol = "BBPS Image#xpath=//div[@class='payment_successful PaymentFailed']/img[@class='bbps']";
            String failed_Text = "Failed Field#xpath=//div[@class='payment_successful PaymentFailed']/div/strong";
            String failed_OrderId = "Order ID#xpath=//div[@class='payment_successful PaymentFailed']/div/p";
            String transaction_Amount = "Amount#xpath=//div[@class='payment_successful PaymentFailed']/div/following-sibling::i";
            if (isElementDisplayed(toptab)) {
                manualScreenshot(getRefOfXpath(toptab) + " is Displayed Successfully");
                verifyElementIsDisplayedOrNot(failed_Cross);
                verifyElementIsDisplayedOrNot(bills_Symbol);
                verifyElementIsPresentAndGetText(failed_Text);
                verifyElementIsPresentAndGetText(failed_OrderId);
                verifyElementIsPresentAndGetText(transaction_Amount);
            } else {
                testStepFailed(getRefOfXpath(toptab) + " is not Displayed");
            }


        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("failed in verify Bills Failed Top Part. Exception: " + e.getClass());

        }
    }

    public void verifyBillsFailedTransactionDetails(String extra) {
        try {
            String Header = "Transaction Details Header#xpath=//div[@class='reciept_box_title']/strong";
            String dnld_ReceiptSection = "Download Receipt Section#xpath=//div[@class='download_reciept']";
            String dnld_ReceiptImage = "Download Receipt Image#xpath=//div[@class='download_reciept']/img[@src='./Bills Failed Transaction_files/ricipt.png']";
            String dnld_ReceiptText = "Receipt Text#xpath=//div[@class='download_reciept']/p";
            String dnld_ReceiptCTA = "Download Receipt CTA#xpath=//div[@class='download_reciept']/a";
            if (isElementDisplayed(Header)) {
                manualScreenshot(getRefOfXpath(Header) + " is Displayed Successfully. Text: " + getTextPresent(Header));
                verifyValueUsingLabel("//div[@class='reciept_box_title']/following-sibling::div/ul/li/p", "Order ID", "/following-sibling::strong", "");
                verifyValueUsingLabel("//div[@class='reciept_box_title']/following-sibling::div/ul/li/p", "Biller Reference Number", "/following-sibling::strong", "");
                verifyValueUsingLabel("//div[@class='reciept_box_title']/following-sibling::div/ul/li/p", "Transaction Reference Number", "/following-sibling::strong", "");
                verifyValueUsingLabel("//div[@class='reciept_box_title']/following-sibling::div/ul/li/p", "Payment Status", "/following-sibling::strong", "");
                verifyValueUsingLabel("//div[@class='reciept_box_title']/following-sibling::div/ul/li/p", "Biller Status", "/following-sibling::strong", "");
                verifyValueUsingLabel("//div[@class='reciept_box_title']/following-sibling::div/ul/li/p", "Mobile Number", "/following-sibling::strong", "");
                verifyValueUsingLabel("//div[@class='reciept_box_title']/following-sibling::div/ul/li/p", "Generated On", "/following-sibling::strong", "");
                verifyValueUsingLabel("//div[@class='reciept_box_title']/following-sibling::div/ul/li/p", "Paid On", "/following-sibling::strong", "");
                verifyElementIsDisplayedOrNot(dnld_ReceiptSection);
                verifyElementIsDisplayedOrNot(dnld_ReceiptImage);
                verifyElementIsPresentAndGetText(dnld_ReceiptText);
                verifyElementIsDisplayedOrNot(dnld_ReceiptCTA);

            } else {
                testStepFailed(getRefOfXpath(Header) + " is not Displayed");
            }


        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("failed in verify Bills Success Transaction Details. Exception: " + e.getClass());

        }
    }

    //////////////20012023
    public static final String dnld_ReceiptCTA = "Download Receipt CTA#xpath=//div[@class='download_reciept']/a";

    public void clickOnPassbookTileBills(String StatusOption, String extra) {
        try {
            String tile = "Tile 1 in : " + StatusOption + " Transactions#xpath=(//div[@class='paymentdata']/parent::a)[1]";
            if (isElementDisplayed(tile)) {
                clickOn(tile);
            } else {
                testStepFailed(getRefOfXpath(tile) + " is not Displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in click On Passbook Tile Bills" + e.getClass());
        }
    }


    public void verifyWalletTopPart(String transactionType, String transactionClass, String extra) {
        try {
            String toptab = "Top Section in " + transactionType + " Transaction#xpath=//div[@class='" + transactionClass.trim() + "']";
            String bills_Symbol = "BBPS Image#xpath=//div[@class='" + transactionClass.trim() + "']/img[@class='bbps']";
            String success_Text = "" + transactionType + " Field#xpath=//div[@class='" + transactionClass.trim() + "']/div/strong";
            String success_OrderId = "Order ID#xpath=//div[@class='" + transactionClass.trim() + "']/div/p";
            String transaction_Amount = "Amount#xpath=//div[@class='" + transactionClass.trim() + "']/div/following-sibling::i";
            if (isElementDisplayed(toptab)) {
                manualScreenshot(getRefOfXpath(toptab) + " is Displayed Successfully");
                verifyElementIsDisplayedOrNot(bills_Symbol);
                verifyElementIsPresentAndGetText(success_Text);
                verifyElementIsPresentAndGetText(success_OrderId);
                verifyElementIsPresentAndGetText(transaction_Amount);
                if (transactionType.equalsIgnoreCase("Success")) {
                    String success_Tick = "Success Tick Mark#xpath=//div[@class='" + transactionClass.trim() + "']/img[contains(@src,'/success-24')]";
                    verifyElementIsDisplayedOrNot(success_Tick);
                    verifyLocatorColorUsingCssValue(toptab, "#26c165", "Green", "background-color");
                }

            } else {
                testStepFailed(getRefOfXpath(toptab) + " is not Displayed");
            }


        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("failed in verify Wallet Top Part. Exception: " + e.getClass());

        }
    }


    public void verifyWalletTransactionDetails(String transactionType, String extra) {
        try {
            String Header = "Transaction Details Header#xpath=//div[@class='reciept_box_title']/strong";
            String dnld_ReceiptSection = "Download Receipt Section#xpath=//div[@class='download_reciept']";
            String dnld_ReceiptText = "Receipt Text#xpath=//div[@class='download_reciept']/p";
            String dnld_ReceiptCTA = "Download Receipt CTA#xpath=//div[@class='download_reciept']/a";
            String dnld_ReceiptImage = "Download Receipt Image#xpath=//div[@class='download_reciept']/img[contains(@src,'/ricipt.png')]";

            if (isElementDisplayed(Header)) {
                manualScreenshot(getRefOfXpath(Header) + " is Displayed Successfully. Text: " + getTextPresent(Header));
                verifyValueUsingLabel("//div[@class='reciept_box_title']/following-sibling::div/ul/li/p", "Order ID", "/following-sibling::strong", "");
                verifyValueUsingLabel("//div[@class='reciept_box_title']/following-sibling::div/ul/li/p", "Payment Status", "/following-sibling::strong", "");
                verifyValueUsingLabel("//div[@class='reciept_box_title']/following-sibling::div/ul/li/p", "Biller Status", "/following-sibling::strong", "");
                verifyValueUsingLabel("//div[@class='reciept_box_title']/following-sibling::div/ul/li/p", "Mobile Number", "/following-sibling::strong", "");
                verifyValueUsingLabel("//div[@class='reciept_box_title']/following-sibling::div/ul/li/p", "Generated On", "/following-sibling::strong", "");
                verifyValueUsingLabel("//div[@class='reciept_box_title']/following-sibling::div/ul/li/p", "Paid On", "/following-sibling::strong", "");
                verifyElementIsDisplayedOrNot(dnld_ReceiptSection);
                verifyElementIsPresentAndGetText(dnld_ReceiptText);
                verifyElementIsDisplayedOrNot(dnld_ReceiptCTA);
                verifyElementIsDisplayedOrNot(dnld_ReceiptImage);
            } else {
                testStepFailed(getRefOfXpath(Header) + " is not Displayed");
            }


        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("failed in verify Wallet Transaction Details. Exception: " + e.getClass());

        }
    }


    public void verifyMobileNumberTransactions() {
        try {
            String mobileNumber = "Mobile Number in Transaction Details #xpath=//div[@class='reciept_box_title']/following-sibling::div/ul/li/p[normalize-space(text())='Mobile Number']/following-sibling::strong";
            if (isElementDisplayed(mobileNumber)) {
                testStepInfo("Mobile Number is displayed Successfully " + getTextPresent(mobileNumber));
                String mobile = getTextPresent(mobileNumber);
                if (mobile.length() == 10) {
                    testStepPassed(getRefOfXpath(mobileNumber) + " is in 10 Digit format");
                } else {
                    testStepFailed(getRefOfXpath(mobileNumber) + " is in wrong format");
                }

            } else {
                testStepFailed(getRefOfXpath(mobileNumber) + " is not Displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("failed in verify MobileNumber Transactions. Exception: " + e.getClass());

        }
    }

    public Boolean verifyLocatorColorUsingCssValueusingPresent(String objectLocator, String expectedColorHexValue, String expectedColor, String cssValue) {
        Boolean flag = false;
        try {
            scrollToWebElementIfPresent(objectLocator);
            if (isElementPresent(objectLocator)) {
                manualScreenshot(objectLocator.split("#")[0] + " is Displayed Successfully");
                String color = findWebElement(objectLocator).getCssValue(cssValue);
                String hex = Color.fromString(color).asHex();
                testStepInfo(hex);
                if (hex.equals(expectedColorHexValue)) {
                    flag = true;
                    manualScreenshot(objectLocator.split("#")[0] + " - " + expectedColor + " Color Verified Successfully");
                } else {
                    testStepFailed(objectLocator.split("#")[0] + " - " + expectedColor + " Color is Not Verified");
                }
            } else {
                testStepFailed(objectLocator.split("#")[0] + " is Not Displayed Successfully");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Element Color Using Css Value :  " + getRefOfXpath(objectLocator) + ". Exception: " + e.getClass());
        }
        return flag;
    }


    public void verifyWalletCreditedTo(String transactions, String extra) {
        try {
            String transaction = "" + transactions + " transaction in Wallet#xpath=//div[@class='listclass']//p[normalize-space(text())='Credited to']";
            if (isElementPresent(transaction)) {
                int size = sizeOfLocator(transaction);
                testStepInfo("Total Credited Transactions in Wallet are " + size);
                for (int i = 1; i <= size; i++) {
                    String Amount = "Amount for " + transactions + " transaction " + i + " in Wallet#xpath=(//p[normalize-space(text())='Credited to']/ancestor::div[@class='listclass']/parent::div[@class='paymentdata']//strong)[" + i + "]";
                    String downArrow = "Down Arrow for " + transactions + " transaction " + i + " in Wallet#xpath=(//div[@class='paymentdata']//strong//img[contains(@src,'/path_green.svg')])[" + i + "]";
                    verifyAmountWithRs("(//p[normalize-space(text())='Credited to']/ancestor::div[@class='listclass']/parent::div[@class='paymentdata']//strong)[" + i + "]", "Amount for " + transactions + " transaction " + i + " in Wallet", ".", "");
                    verifyLocatorColorUsingCssValueusingPresent(Amount, "#00b500", "Green", "color");
                    if (isElementDisplayed(viewMore_Button)) {
                        clickOn(viewMore_Button);
                    }

                    if (isElementPresent(downArrow)) {
                        verifyLocatorColorUsingCssValueusingPresent(downArrow, "#00b500", "Green", "color");

                    } else {
                        testStepPassed(getRefOfXpath(downArrow) + " is not verified");
                    }
                }
            } else {
                testStepFailed(getRefOfXpath(transaction) + " is not Present");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("failed in verify Wallet Credited To. Exception: " + e.getClass());

        }
    }

    public void verifyWalletDebitedfrom(String transactions, String extra) {
        try {
            String transaction = "" + transactions + " transaction in Wallet#xpath=//div[@class='listclass']//p[normalize-space(text())='Debited from']";
            if (isElementPresent(transaction)) {
                int size = sizeOfLocator(transaction);
                testStepInfo("Total Credited Transactions in Wallet are " + size);
                for (int i = 1; i <= size; i++) {
                    String Amount = "Amount for " + transactions + " transaction " + i + " in Wallet#xpath=(//p[normalize-space(text())='Debited from']/ancestor::div[@class='listclass']/parent::div[@class='paymentdata']//strong)[" + i + "]";
                    String upArrow = "Up Arrow for " + transactions + " transaction " + i + " in Wallet#xpath=(//div[@class='paymentdata']//strong//img[contains(@src,'/path.svg')])[" + i + "]";
                    verifyAmountWithRs("(//p[normalize-space(text())='Debited from']/ancestor::div[@class='listclass']/parent::div[@class='paymentdata']//strong)[" + i + "]", "Amount for " + transactions + " transaction " + i + " in Wallet", ".", "");
                    verifyLocatorColorUsingCssValueusingPresent(Amount, "#b40000", "Red", "color");
                    if (isElementDisplayed(viewMore_Button)) {
                        clickOn(viewMore_Button);
                    }

                    if (isElementPresent(upArrow)) {
                        verifyLocatorColorUsingCssValueusingPresent(upArrow, "#b40000", "Red", "color");

                    } else {
                        testStepPassed(getRefOfXpath(upArrow) + " is not verified");
                    }
                }
            } else {
                testStepFailed(getRefOfXpath(transaction) + " is not Present");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("failed in verify Wallet Credited To. Exception: " + e.getClass());

        }
    }

    public void verifyWalletTransactionTileContents(String extra) {
        try {
            String transaction = "Transactions in Wallet#xpath=//div[@class='comlogo']";
            if (isElementPresent(transaction)) {
                int size = sizeOfLocator(transaction);
                testStepInfo("Total Transactions in Wallet are " + size);
                for (int i = 1; i <= size; i++) {
                    String logo = "Logo for transaction " + i + " in Wallet#xpath=(//div[@class='comlogo']/img)[" + i + "]";
                    String trans = "Transaction Details for transaction " + i + " in Wallet#xpath=(//div[@class='company_data'])[" + i + "]";
                    String paydata = "Payment Data for transaction " + i + " in Wallet#xpath=(//div[@class='paymentdata'])[" + i + "]";
                    String Arrow = "Arrow for transaction " + i + " in Wallet#xpath=(//div[@class='paymentdata']/strong/img)[" + i + "]";
                    String paytype = "Payment type image for transaction " + i + " in Wallet#xpath=(//div[@class='listclass']/ul/li/img)[" + i + "]";
                    verifyElementIsDisplayedOrNot(logo);
                    verifyElementIsDisplayedAndGetText(trans);
                    verifyElementIsDisplayedAndGetText(paydata);
                    verifyElementIsDisplayedOrNot(Arrow);
                    verifyElementIsDisplayedOrNot(paytype);
                    if (isElementDisplayed(viewMore_Button)) {
                        clickOn(viewMore_Button);
                    }

                }
            } else {
                testStepFailed(getRefOfXpath(transaction) + " is not Present");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("failed in verify Wallet Transaction Tile Contents. Exception: " + e.getClass());

        }
    }


    //////For APPKeywords
    public void verifyAmountWithRs(String locatorXPath, String locatorLabel, String symbol, String extra) {
        try {
            String locator = "" + locatorLabel + "#xpath=" + locatorXPath + "";
            verifyElementIsPresentAndGetText(locator);
            String valueAmount = getTextPresent(locator);
            String[] split = valueAmount.split("Rs. ");
            String value = split[1].replaceAll(symbol, "");
            Boolean s = true;
            for (int i = 0; i < value.length(); i++) {
                if (!Character.isDigit(value.charAt(i))) {
                    s = false;
                }
            }
            if (s) {
                testStepPassed(locatorLabel + " value has only digits verified successfully");
            } else {
                stepFailed(locatorLabel + " value has only digits is not verified");
            }

        } catch (ArrayIndexOutOfBoundsException e) {
            e.printStackTrace();
            testStepFailed("There is no space between Rs. and Amount. Exception: " + e.getClass());
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify " + locatorLabel + " Amount with Rs. and Digits -. Exception: " + e.getClass());
        }
    }


    public void verifyDateFormat(String locatorXPath, String locatorLabel, String format, String extra) {
        try {
            String locator = "" + locatorLabel + "#xpath=" + locatorXPath + "";
            verifyElementIsPresentAndGetText(locator);
            String value = getTextPresent(locator);
            boolean flag = GenericValidator.isDate(value, format, true);
            if (flag) {
                testStepPassed(locatorLabel + " Value has Date Format as expected verified successfully. " + format);
            } else {
                stepFailed(locatorLabel + " Value has Date Format is not verified");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed i verify value is Date Format. Exception: " + e.getClass());
        }
    }

    public Boolean verifyElementIsDisplayedAndGetText(String locator) {
        Boolean flag = false;
        try {
            if (isElementPresent(locator)) {
                flag = true;
                scrollToWebElement(locator);
                verifyElementIsDisplayedOrNot(locator);
                testStepInfo(locator.split("#")[0] + "-" + getTextPresent(locator));
            } else {
                testStepFailed(locator.split("#")[0] + " is Not Present");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verifyElementIsPresentAndGetText . Exception: " + e.getClass());
        }
        return flag;
    }

/////////0708

    public void verifyOptionsinPassbookPageNtb() {

        try {
            verifyElementIsDisplayedUsingLocator(filter_Passbook);
//            verifyElementIsDisplayedUsingLocator(preapproved_Offers_List);
            verifyElementIsDisplayedUsingLocator(search_Passbook);
            verifyElementIsDisplayedUsingLocator(wallet_Tab);
            verifyElementIsDisplayedUsingLocator(bills_Tab);
            verifyElementIsDisplayedUsingLocator(static_Msg);
//            verifyElementIsDisplayedUsingLocator(download_App);
            verifyElementIsDisplayedUsingLocator(tiles_Section);
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verifyOptionsinPassbookPage.Exception:" + e.getClass());
        }

    }

    ///////080823
    public void verifyOptionsinPassbookPagePTB() {

        try {
            verifyElementIsDisplayedUsingLocator(filter_Passbook);
            verifyElementIsDisplayedUsingLocator(preapproved_Offers_List);
            verifyElementIsDisplayedUsingLocator(search_Passbook);
            verifyElementIsDisplayedUsingLocator(wallet_Tab);
            verifyElementIsDisplayedUsingLocator(bills_Tab);
            verifyElementIsDisplayedUsingLocator(static_Msg);
//            verifyElementIsDisplayedUsingLocator(download_App);
            verifyElementIsDisplayedUsingLocator(tiles_Section);
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Options in PassbookPage PTB.Exception:" + e.getClass());
        }

    }

//////////////////////0808
public void verifyTransactionTileContents(String type,String extra) {
    try {
        String transaction = "Transactions in "+type+"#xpath=//div[@class='comlogo']";
        if (isElementPresent(transaction)) {
            int size = sizeOfLocator(transaction);
            testStepInfo("Total Transactions in "+type+" are " + size);
            for (int i = 1; i <= 5; i++) {
                String logo = "Logo for transaction " + i + " in "+type+"#xpath=(//div[@class='comlogo']/img)[" + i + "]";
                String trans = "Transaction Details for transaction " + i + " in "+type+"#xpath=(//div[@class='company_data'])[" + i + "]";
                String paydata = "Payment Data for transaction " + i + " in "+type+"#xpath=(//div[@class='paymentdata'])[" + i + "]";
                String Arrow = "Arrow for transaction " + i + " in "+type+"#xpath=(//div[@class='paymentdata']/strong/img)[" + i + "]";
                String paytype = "Payment type image for transaction " + i + " in "+type+"#xpath=(//div[@class='listclass']/ul/li/img)[" + i + "]";
                verifyElementIsDisplayedOrNot(logo);
                verifyElementIsDisplayedAndGetText(trans);
                verifyElementIsDisplayedAndGetText(paydata);
                verifyElementIsDisplayedOrNot(Arrow);
                verifyElementIsDisplayedOrNot(paytype);
                if (isElementDisplayed(viewMore_Button)) {
                    clickOn(viewMore_Button);
                }

            }
        } else {
            testStepFailed(getRefOfXpath(transaction) + " is not Present");
        }

    } catch (Exception e) {
        e.printStackTrace();
        testStepFailed("failed in verify Transaction Tile Contents. Exception: " + e.getClass());

    }
}




}


