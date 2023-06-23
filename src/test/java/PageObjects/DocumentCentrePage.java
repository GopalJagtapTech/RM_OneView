package PageObjects;

import base.ApplicationKeywords;
import org.openqa.selenium.JavascriptExecutor;

import java.util.*;

public class DocumentCentrePage extends ApplicationKeywords {

    /*
    Xpaths
     */
    public static final String text_DocPage = "Tab Title#xpath=//h1[@id='LoanDataid']";
    public static final String header_RARPage = "Header RAR Page#xpath=//strong[normalize-space(text())='My Raised Requests']";
    public static final String header_PassbookPage = "Header Passbook Page#xpath=//div[@class='passbook_tab']";


    /*
    Methods
     */

    public void dcPageRedirection() {
        try {
            if (isElementDisplayed(text_DocPage)) {
                testStepPassed("User successfully Redirected to Documentation Centre Page");
            } else {
                testStepFailed("Failed to redirect to Documentation Centre Page");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in dc Page Redirection .Exception:" + e.getClass());
        }
    }

//    public void verifyDCPageTabs(String tabname) {
//        String tab = "Tab: " + tabname + " in Mandate Management Page#xpath=//ul[@class='j_doc_tabs']/descendant::a[normalize-space(text())='" + tabname + "']";
//        try {
//            if (isElementDisplayed(tab)) {
//                manualScreenshot(getRefOfXpath(tab) + "is Displayed Successfully");
//            } else {
//                testStepFailed(getRefOfXpath(tab) + "is not Displayed");
//            }
//        } catch (Exception e) {
//            e.printStackTrace();
//            testStepFailed("Failed in verify DCPage Tabs .Exception:" + e.getClass());
//        }
//    }

    public void verifyDCPageTabs(String tabnames) {
        try {
            String[] split = tabnames.split(",");
            for (int i = 0; i < split.length; i++) {
                String text = split[i];
                String tab = "Tab: " + text + " in Mandate Management Page#xpath=//ul[@class='j_doc_tabs']/descendant::a[normalize-space(text())='" + text + "']";
                if (isElementDisplayed(tab)) {
                    manualScreenshot(getRefOfXpath(tab) + "is Displayed Successfully");
                } else {
                    testStepFailed(getRefOfXpath(tab) + "is not Displayed");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify DCPage Tabs .Exception:" + e.getClass());
        }
    }


    public void verifyDefaultLoansTabDCPage() {
        String activeLoansTab = "Loans Tab #xpath=//li[@id='LoansTab' and @class='active']";
        try {
            if (isElementDisplayed(activeLoansTab)) {
                manualScreenshot("Loans Tab is selected by Default in Document Centre Page");
            } else {
                testStepFailed(getRefOfXpath(activeLoansTab) + "is not selected by Default");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Default Loans Tab DC Page .Exception:" + e.getClass());
        }
    }

    public void verifyCardsDisplayedDCPage(String cardName, String cardDetails) {
        String cards = "Cards in Document Center Page:" + cardName + "#xpath=//div[@class='j_loan_grids']//div[@class='j_loantype']/descendant::p[contains(text(),'" + cardDetails + "')]";
        try {
            if (isElementDisplayed(cards)) {
                testStepPassed(getRefOfXpath(cards) + "is Displayed Successfully. Count=" + sizeOfLocator(cards));
            } else {
                testStepFailed(getRefOfXpath(cards) + "is not Displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Cards Displayed DC Page.Exception:" + e.getClass());
        }
    }

    public void verifyCardsDetailsDCPage(String cardName, String cardDetails) {
        String cards = "Cards in Document Center Page:" + cardName + "#xpath=//div[@class='j_loan_grids']//div[@class='j_loantype']/descendant::p[contains(text(),'" + cardDetails + "')]";
        try {
            if (isElementDisplayed(cards)) {
                testStepInfo(getRefOfXpath(cards) + "is Displayed Successfully. Count=" + sizeOfLocator(cards));
                for (int i = 1; i <= sizeOfLocator(cards); i++) {
                    String cardname = "" + cardName + i + " Name:#xpath=(//div[@class='j_loan_grids']//div[@class='j_loantype']/descendant::p[contains(text(),'" + cardDetails + "')]/preceding-sibling::h4)[" + i + "]";
                    String cardnumber = "" + cardDetails + ":#xpath=(//div[@class='j_loan_grids']//div[@class='j_loantype']/descendant::p[contains(text(),'" + cardDetails + "')]/span)[" + i + "]";
                    String loanAmt = " Amount: #xpath=(//div[@class='j_loan_grids']//div[@class='j_loantype']/descendant::p[contains(text(),'" + cardDetails + "')]/following::h5)[" + i + "]";
                    String loanAmtvalue = " Amount Value #xpath=(//div[@class='j_loan_grids']//div[@class='j_loantype']/descendant::p[contains(text(),'" + cardDetails + "')]/following::h5/following-sibling::p)[" + i + "]";
                    if (isElementPresent(cardname)) {
                        scrollToWebElement(cardname);
                        testStepPassed(getRefOfXpath(cardname) + getTextPresent(cardname) + " is Displayed Successfully");
                    } else {
                        testStepFailed(getRefOfXpath(cardname) + " is not Displayed");
                    }
                    if (isElementPresent(cardnumber)) {
                        testStepPassed(getRefOfXpath(cardnumber) + getTextPresent(cardnumber) + " is Displayed Successfully");
                    } else {
                        testStepFailed(getRefOfXpath(cardnumber) + " is not Displayed");
                    }
                    if (isElementPresent(loanAmt)) {
                        testStepPassed(getRefOfXpath(loanAmt) + getTextPresent(loanAmt) + " is Displayed Successfully");
                    } else {
                        testStepFailed(getRefOfXpath(loanAmt) + " is not Displayed");
                    }
                    if (isElementPresent(loanAmtvalue)) {
                        testStepPassed(getRefOfXpath(loanAmt) + getTextPresent(loanAmtvalue) + " is Displayed Successfully");
                    } else {
                        testStepFailed(getRefOfXpath(loanAmtvalue) + " is not Displayed");
                    }
                }

            } else {
                testStepFailed(getRefOfXpath(cards) + "is not Displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Cards Details DC Page.Exception:" + e.getClass());
        }
    }


    public void clickOnDCCards(String cardNumber) {
        try {
            String card = "Card : #xpath=//span[contains(text(),'" + cardNumber.trim() + "')]/ancestor::div[@class='j_loan_box']//a";
//            if (isElementDisplayed(card)) {
//                clickOn(card);
            clickOnButtonUsingLocatorUsingForLoop(card);
//                clickOnButtonUsingLocatorUsingForLoopWithoutFail(card);
            waitForPageToLoad();
//            } else {
//                testStepFailed("Failed to click on Card : " + cardNumber);
//            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in click ON DC Cards .Exception:" + e.getClass());
        }
    }

    public void redirectionToLoanDocPage(String cardNumber) {
        try {
            String cardTitle = "Card : #xpath=//span[contains(text(),'" + cardNumber + "')]/ancestor::div[@class='details_loans_data']";
            if (isElementDisplayed(cardTitle)) {
                testStepPassed("User successfully redirected to Document Page ");
            } else {
                testStepFailed("Failed to redirect to Document Page : " + cardNumber);
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in redirection To Loan DocPage .Exception:" + e.getClass());
        }
    }

    public void verifyLoanDocPageContents(String cardNumber) {
        try {
            String cardTitle = "Card : #xpath=//span[contains(text(),'" + cardNumber + "')]/ancestor::div[@class='details_loans_data']";
            String middleSection = "Middle Section fetched from AEM#xpath=//p[normalize-space(text())='What are these documents?']/parent::div";

            verifyFieldsDisplayedUsingLocatorWithComment(cardTitle, getTextPresent(cardTitle));
            verifyDocContentsLogoandDownloadCTA();
            verifyFieldsDisplayedUsingLocator(middleSection);
            verifyRhs("Quick Actions", "Help and Support#Passbook", "");


        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in Loan DocPage Contents .Exception:" + e.getClass());
        }
    }


    public void verifyDocContentsLogoandDownloadCTA() {
        try {
            String cards = "Cards #xpath=//div[@class='j_documents_grid']";
            for (int i = 1; i <= sizeOfLocator(cards); i++) {
                String doclogo = "Doc Logo of Doc Number " + i + " #xpath=(//div[@class='j_documents_grid']/descendant::img[@class='dc_rc'])[" + i + "]";
                String downloadcta = "Download CTA of Doc Number " + i + " #xpath=(//div[@class='j_documents_grid']/descendant::img[@class='dc_d'])[" + i + "]";
                if (isElementDisplayed(cards)) {
                    testStepInfo("Number of Documents Displayed are :" + sizeOfLocator(cards));
                    if (isElementDisplayed(doclogo)) {
                        testStepPassed(getRefOfXpath(doclogo) + "is verified Successfully");
                    } else {
                        testStepFailed(getRefOfXpath(doclogo) + "is not verified");
                    }
                    if (isElementDisplayed(downloadcta)) {
                        testStepPassed(getRefOfXpath(downloadcta) + "is verified Successfully");
                    } else {
                        testStepFailed(getRefOfXpath(downloadcta) + "is not verified");
                    }

                } else {
                    testStepFailed(getRefOfXpath(cards) + "is not Displayed");
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Doc Contents Logo and Download CTA .Exception:" + e.getClass());
        }
    }

    public void downloadFileandverifyFormat(String fileName, String downloadedFileName) {
        try {
            String file = "File: " + fileName + " #xpath=//div[@class='j_text_pd']/p[normalize-space(text())='" + fileName + "']/parent::div/following-sibling::img";
            if (isElementDisplayed(file)) {
                clickOn(file);
                waitTime(4);
                verifyDownLoadAndDeleteLatestFileNameFromLocalMachine(downloadedFileName);
                if (downloadedFileName.contains("pdf")) {
                    testStepInfo(getRefOfXpath(file) + "is Downloaded in pdf format on Click on Download CTA");
                } else {
                    testStepFailed(getRefOfXpath(file) + "is not in the Required format");
                }

            } else {
                testStepFailed(getRefOfXpath(file) + "is not Displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in download File and verify Format .Exception:" + e.getClass());
        }
    }

    public void downloadFileandverifyFormatOnFileClick(String fileName, String downloadedFileName) {
        try {
            String file = "File: " + fileName + " #xpath=//div[@class='j_text_pd']/p[normalize-space(text())='" + fileName + "']/ancestor::a";
            if (isElementDisplayed(file)) {
                clickOn(file);
                verifyDownLoadAndDeleteLatestFileNameFromLocalMachine(downloadedFileName);
                if (downloadedFileName.contains("pdf")) {
                    testStepInfo(getRefOfXpath(file) + "is Downloaded in pdf format on Click on file");
                } else {
                    testStepFailed(getRefOfXpath(file) + "is not in the Required format");
                }

            } else {
                testStepFailed(getRefOfXpath(file) + "is not Displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in download File and verify Format On File Click.Exception:" + e.getClass());
        }
    }

    public void clickOnDocCentreTabs(String tabname) {
        String dctabs = "Mandate Management Tabs#xpath=//div[@class='j_tab_rela']";
        String tab = "Tab: " + tabname + "#xpath=//ul[@class='j_doc_tabs']//a[normalize-space(text())='" + tabname + "']";
        try {
            if (isElementDisplayed(tab)) {
                clickOn(tab);
            } else {
                testStepFailed(getRefOfXpath(tab) + "is not Displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in click On MandManage Tabs .Exception:" + e.getClass());
        }
    }

    public void verifyListofDocspresent(String docswithComma) {
        String dctabs = "Mandate Management Tabs#xpath=//div[@class='j_tab_rela']";
        try {
            String[] split = docswithComma.split(",");
            for (int i = 0; i < split.length; i++) {
                String text = split[i];
                String locator = "" + text + "#xpath=//div[@class='j_text_pd']/p[normalize-space(text())='" + text + "']";
                verifyFieldsDisplayedUsingLocator(locator);

            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify List of Docs present .Exception:" + e.getClass());
        }
    }

    public void verifyListofDocspresentInsurance(String docswithComma) {
        String dctabs = "Mandate Management Tabs#xpath=//div[@class='j_tab_rela']";
        String nodocs = "No Documents#xpath=//p[normalize-space(text())='For your policy documents, please connect with Insurance Partner.']";
        try {
            if (isElementDisplayed(nodocs)) {
                manualScreenshot(getText(nodocs));
            } else {
                String[] split = docswithComma.split(",");
                for (int i = 0; i < split.length; i++) {
                    String text = split[i];
                    String locator = "" + text + "#xpath=//div[@class='j_text_pd']/p[normalize-space(text())='" + text + "']";
                    verifyFieldsDisplayedUsingLocator(locator);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify List of Docs present .Exception:" + e.getClass());
        }
    }

    public void verifyRHSRedirection(String option, String locator) {
        String rhs = "RHS option: " + option + " #xpath=//p[normalize-space(text())='" + option + "']/parent::div[@class='storepart']/parent::a";
        try {
            if (isElementPresent(rhs)) {
                clickOn(rhs);
                waitForPageToLoad();
                if (isElementDisplayed(locator)) {
                    testStepPassed("User is successfully redirected to " + option + " page ");
                } else {
                    testStepFailed("User is not redirected to " + option + " page");
                }
            } else {
                testStepFailed(getRefOfXpath(rhs) + "is not Displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify RHS Redirection .Exception:" + e.getClass());
        }
    }

    public void clickOnRhsDocCenter(String option, String extra) {
        String label_RHS = "RHS Option " + option + " #xpath=//p[normalize-space(text())=\"" + option.trim() + "\"]/parent::div[@class='storepart']/parent::a|//p[normalize-space(text())=\"" + option.trim() + "\"]/parent::a";
        try {
            if (isElementPresent(label_RHS)) {
                clickOn(label_RHS);
                waitForPageToLoad();
            } else {
                testStepFailed(getRefOfXpath(label_RHS) + " is not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in click On Rhs Doc Center. Exception:" + e.getClass());
        }
    }


    public static final String filter_DocPage = "Filter in Document Page#xpath=//a[@class='j_fiter_open']/img";
    public static final String btn_Clearall = "Clear All in Filter#xpath=//input[@value='Clear All']";
    public static final String btn_Apply = "Apply in Filter Doc Page#xpath=//input[@value='Apply']";
    public static final String close_Filter = "Close in Filter Doc Page#xpath=//a[@class='j_filter_close']";
    public static final String middlesection_why = "What are these documents section in Doc Page#xpath=//p[normalize-space(text())='What are these documents?']/ancestor::div[@class='j_right_why_sec']";


    public void clickOnFilterStatus(String status) {
        try {
            String checkBox_Status = "Filter Status Check Box - " + status + "#xpath=//div[@class='j_full_rect']/descendant::div[@class='j_select_rel_sta']/descendant::i[normalize-space(text())='" + status.trim() + "']/parent::label";
            String checkBox_StatusActive = "Filter Status Check Box Active#xpath=//div[@class='j_full_rect']/descendant::div[@class='j_select_rel_sta']/descendant::i[normalize-space(text())='Active']/parent::label";
            if (isElementDisplayed(checkBox_Status)) {
                if (status.equalsIgnoreCase("Active")) {
                    manualScreenshot("Active filter is by default selected");
                } else {
//                clickOn(checkBox_StatusActive);
                    clickOn(checkBox_Status);
                }
            } else {
                testStepFailed(getRefOfXpath(checkBox_Status) + "is not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in click on Relationship status. Exception: " + e.getClass());
        }

    }

    public void verifyFilterOptionsDocPage(String textOptions, String statusOptions, String extra) {
        try {
            String textWithHash = textOptions.replaceAll(",", "#");
            String statusOptionsWithHash = statusOptions.replaceAll(",", "#");
            verifyTextElementUsingOptionsTextUsingHash(textWithHash);
            verifyFieldsUsingCommonXpathAndMultipleTextWithHash("//div[@class='j_full_rect']/descendant::div[@class='j_select_rel_sta']/descendant::i", statusOptionsWithHash, "");

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Filter Options DocPage. Exception: " + e.getClass());
        }

    }

    public void verifyFilterisClosedDocPage() {
        try {
            if (!isElementDisplayed(btn_Apply) && !isElementDisplayed(btn_Clearall)) {
                testStepPassed("Filter Closed Successfully");
            } else {
                testStepFailed("Filter is not closed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Filter Closed Doc Page. Exception: " + e.getClass());
        }

    }

    public void verifyFilterStatusDocPage(String status, String type, String cardDetails) {
        try {
            String nodocs = "Docs for" + status + "#xpath=//span[normalize-space(text())='You do not have any " + status.trim() + " " + type.trim() + " with us']|//span[normalize-space(text())='You do not have any " + status.trim() + " " + type.trim() + " with Us']";
            String cards = "Cards in Document Center Page:" + status + " " + type + "#xpath=//div[@class='j_loan_grids']//div[@class='j_loantype']/descendant::p[contains(text(),'" + cardDetails + "')]";

            if (isElementDisplayed(nodocs)) {
                manualScreenshot(getText(nodocs));

            } else {
                if (type.equalsIgnoreCase("ALl")) {
                    manualScreenshot(getRefOfXpath(cards) + " is Displayed Successfully. Count= " + sizeOfLocator(cards));
                } else {
                    manualScreenshot(getRefOfXpath(cards) + " is Displayed Successfully. Count= " + sizeOfLocator(cards));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Filter Status DocPage . Exception: " + e.getClass());
        }

    }

    public void verifyFilterStatusDocPageNew(String status, String type, String cardDetails) {
        try {
            String nodocs = "Docs for" + status + "#xpath=//span[normalize-space(text())='You do not have any " + status.trim() + " " + type.trim() + " with us']|//span[normalize-space(text())='You do not have any " + status.trim() + " " + type.trim() + " with Us']";
            String cards = "Cards in Document Center Page:" + status + " " + type + "#xpath=//div[@class='j_loan_grids']//div[@class='j_loantype']/descendant::p[contains(text(),'" + cardDetails + "')]";
            int size = sizeOfLocator(cards);
            if (size == 0) {
                testStepInfo("***************TEST DATA ISSUE***************************");
                testStepFailed("There are No Documents displayed for the given Filter: " + type + " " + status + " Count:" + size);

            } else {
                manualScreenshot(getRefOfXpath(cards) + " is Displayed Successfully. Count= " + size);
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Filter Status DocPage New. Exception: " + e.getClass());
        }

    }


    /////////01022023
    public void byDefaultSelectedTab(String Tab, String extra) {
        String activeTab = "" + Tab + " Tab #xpath=//a[normalize-space(text())='" + Tab.trim() + "']/parent::li[@class='active']";
        try {
            if (isElementDisplayed(activeTab)) {
                testStepPassed(Tab + " Tab is selected by Default in Document Centre Page");
            } else {
                testStepFailed(getRefOfXpath(activeTab) + "is not selected by Default");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in by Default Selected Tab .Exception:" + e.getClass());
        }

    }


    public void unClickOnFilterStatus(String status, String extra) {
        try {
            String checkBox_Status = "Filter Status Check Box - " + status + "#xpath=//div[@class='j_full_rect']/descendant::div[@class='j_select_rel_sta']/descendant::i[normalize-space(text())='" + status.trim() + "']/parent::label";
            String checkBox_StatusActive = "Filter Status Check Box Active#xpath=//div[@class='j_full_rect']/descendant::div[@class='j_select_rel_sta']/descendant::i[normalize-space(text())='Active']/parent::label";
            if (isElementDisplayed(checkBox_Status)) {
                clickOn(checkBox_Status);
            } else {
                testStepFailed(getRefOfXpath(checkBox_Status) + "is not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in un Click on Filter status. Exception: " + e.getClass());
        }

    }


    public void verifyFilterButtonsDocPage() {
        try {
            if (isElementDisplayed(btn_Apply) && isElementDisplayed(btn_Clearall)) {
                testStepPassed(getRefOfXpath(btn_Apply) + " & " + getRefOfXpath(btn_Clearall) + " are displayed Successfully");
            } else {
                testStepFailed("Filter Buttons are not displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Filter Buttons Doc Page. Exception: " + e.getClass());
        }

    }

    public void verifyFilterNudge(String transaction, String type, String extra) {
        try {
            if (transaction.equalsIgnoreCase("Loans")) {
                String tiles = "Tiles for " + transaction + " " + type + " #xpath=//div[@class='j_loan_box'][@style='display: block;']";
                if (isElementPresent(tiles)) {
                    int count = sizeOfLocator(tiles);
                    testStepInfo(getRefOfXpath(tiles) + " is " + count);
                    for (int i = 1; i <= count; i++) {
                        String nudge = "Nudge for Tile " + i + " #xpath=(//div[@class='j_loan_box'][@style='display: block;']/descendant::i[@class='nudge' and normalize-space(text())='" + type.trim() + "'])[" + i + "]";
                        if (isElementDisplayed(nudge)) {
                            testStepPassed(getRefOfXpath(nudge) + " is Displayed Successfully");
                            verifyLocatorColorUsingCssValue(nudge, "#002953", "Blue", "background-color");
                        } else {
                            testStepFailed(getRefOfXpath(nudge) + " is not Displayed");
                        }

                    }

                } else {
                    testStepFailed(getRefOfXpath(tiles) + " is not Displayed");
                }
            }

            if (transaction.equalsIgnoreCase("Deposits")) {
                String tiles = "Tiles for " + transaction + " " + type + " #xpath=//div[@id='FDActive'][not(@style='display: none;')]";
                if (isElementPresent(tiles)) {
                    int count = sizeOfLocator(tiles);
                    testStepInfo(getRefOfXpath(tiles) + " is " + count);
                    for (int i = 1; i <= count; i++) {
                        String nudge = "Nudge for Tile " + i + " #xpath=(//div[@id='FDActive'][not(@style='display: none;')]/descendant::i[@class='nudge' and normalize-space(text())='" + type.trim() + "'])[" + i + "]";
                        if (isElementDisplayed(nudge)) {
                            testStepPassed(getRefOfXpath(nudge) + " is Displayed Successfully");
                            verifyLocatorColorUsingCssValue(nudge, "#002953", "Blue", "background-color");
                        } else {
                            testStepFailed(getRefOfXpath(nudge) + " is not Displayed");
                        }

                    }

                } else {
                    testStepFailed(getRefOfXpath(tiles) + " is not Displayed");
                }
            }

            if (transaction.equalsIgnoreCase("Insurance")) {
                String tiles = "Tiles for " + transaction + " " + type + " #xpath=//div[@id='InsuranceActive'][not(@style='display: none;')]";
                if (isElementPresent(tiles)) {
                    int count = sizeOfLocator(tiles);
                    testStepInfo(getRefOfXpath(tiles) + " is " + count);
                    for (int i = 1; i <= count; i++) {
                        String nudge = "Nudge for Tile " + i + " #xpath=(//div[@id='InsuranceActive'][not(@style='display: none;')]/descendant::i[@class='nudge' and normalize-space(text())='" + type.trim() + "'])[" + i + "]";
                        if (isElementDisplayed(nudge)) {
                            testStepPassed(getRefOfXpath(nudge) + " is Displayed Successfully");
                            verifyLocatorColorUsingCssValue(nudge, "#002953", "Blue", "background-color");
                        } else {
                            testStepFailed(getRefOfXpath(nudge) + " is not Displayed");
                        }

                    }

                } else {
                    testStepFailed(getRefOfXpath(tiles) + " is not Displayed");
                }
            }


        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Filter Nudge. Exception: " + e.getClass());
        }

    }

    public void downloadDocumentDocCenter(String fileName, String extra) {
        try {
            String file = "File: " + fileName + " #xpath=//div[@class='j_text_pd']/p[normalize-space(text())='" + fileName + "']/parent::div/following-sibling::img";
            if (isElementDisplayed(file)) {
                clickOn(file);
                waitTime(4);
            } else {
                testStepFailed(getRefOfXpath(file) + "is not Displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in download Document Doc Center.Exception:" + e.getClass());
        }
    }

    public void clickOnTileViewDetailsIcon(String accountNo, String extra) {
        try {

            String iconViewDetails = " " + accountNo + " No. Tile#xpath=//div/descendant::p[contains(text(),'" + accountNo + "')]/ancestor::div[@class='deposit_name']/descendant::img[contains(@src,'/icons-view-details.svg')]";

            if (isElementPresent(iconViewDetails)) {
                scrollToWebElement(iconViewDetails);
            } else {
                stepFailed(getRefOfXpath(iconViewDetails) + " is Not Present in this customer Id");
                return;
            }
            if (isElementDisplayed(iconViewDetails)) {
                clickOn(iconViewDetails);
                waitForPageToLoad();
            } else {
                testStepFailed(getRefOfXpath(iconViewDetails) + " is Not Displayed");
                return;
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in click on Tile view Details icon for  -" + accountNo + ". Exception: " + e.getClass());
        }
    }

    //////////////////////24052023/////////////////////

    public void docCenterTiles(String docType, String Options, String extra) {
        try {
            if (docType.equalsIgnoreCase("Loans")) {
                String tiles = "Total Cards for " + docType + ":#xpath=//div[@class='j_loan_box'][@id='LoansActive']";
                if (isElementDisplayed(tiles)) {
                    testStepInfo(getRefOfXpath(tiles) + " are " + sizeOfLocator(tiles));
                    String[] split = Options.split(",");
                    for (int i = 0; i < split.length; i++) {
                        String nudge = split[i];
                        String tilestype = "Documents for " + nudge + " " + docType + ":#xpath=//span[normalize-space(text())='" + nudge.trim() + "']/preceding-sibling::p/ancestor::div[@class='j_loan_box' and @id='LoansActive']";
                        if (isElementDisplayed(tilestype)) {
                            testStepInfo(getRefOfXpath(tilestype) + " are: " + sizeOfLocator(tilestype));
                        } else {
                            testStepFailed(getRefOfXpath(tilestype) + " are not Displayed ");
                        }

                    }

                } else {
                    testStepFailed(getRefOfXpath(tiles) + " are not Displayed ");
                }


            }

            if (docType.equalsIgnoreCase("Deposits")) {
                String tiles = "Total Cards for " + docType + ":#xpath=//div[@class='j_loan_box'][@id='FDActive']";
                if (isElementDisplayed(tiles)) {
                    testStepInfo(getRefOfXpath(tiles) + " are " + sizeOfLocator(tiles));
                    String[] split = Options.split(",");
                    for (int i = 0; i < split.length; i++) {
                        String nudge = split[i];
                        String tilestype = "Documents for " + nudge + " " + docType + ":#xpath=//span[normalize-space(text())='" + nudge.trim() + "']/preceding-sibling::p/ancestor::div[@class='j_loan_box' and @id='FDActive']";
                        if (isElementDisplayed(tilestype)) {
                            testStepInfo(getRefOfXpath(tilestype) + " are: " + sizeOfLocator(tilestype));
                        } else {
                            testStepFailed(getRefOfXpath(tilestype) + " are not Displayed ");
                        }

                    }

                } else {
                    testStepFailed(getRefOfXpath(tiles) + " are not Displayed ");
                }


            }

            if (docType.equalsIgnoreCase("Insurance")) {
                String tiles = "Total Cards for " + docType + ":#xpath=//div[@class='j_loan_box'][@id='InsuranceActive']";
                if (isElementDisplayed(tiles)) {
                    testStepInfo(getRefOfXpath(tiles) + " are " + sizeOfLocator(tiles));
                    String[] split = Options.split(",");
                    for (int i = 0; i < split.length; i++) {
                        String nudge = split[i];
                        String tilestype = "Documents for " + nudge + " " + docType + ":#xpath=//span[normalize-space(text())='" + nudge.trim() + "']/preceding-sibling::p/ancestor::div[@class='j_loan_box' and @id='InsuranceActive']";
                        if (isElementDisplayed(tilestype)) {
                            testStepInfo(getRefOfXpath(tilestype) + " are: " + sizeOfLocator(tilestype));
                        } else {
                            testStepFailed(getRefOfXpath(tilestype) + " are not Displayed ");
                        }

                    }

                } else {
                    testStepFailed(getRefOfXpath(tiles) + " are not Displayed ");
                }


            }


        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in doc Center Tiles. Exception: " + e.getClass());
        }
    }

    //i[normalize-space(text())='Closed']/preceding-sibling::input[@type='checkbox']

    public void verifyFilterCheckBoxesSelected(String Cardtype, String Options, String extra) {
        try {
            String split[] = Options.split(",");
            for (int i = 0; i < split.length; i++) {
                String option = split[i];
                String checkBox = "Check Box for " + option + " " + Cardtype + ":#xpath=//i[normalize-space(text())='" + option.trim() + "']/preceding-sibling::input[@type='checkbox']";
                verifyCheckBoxIsSelectedUsingLocator(checkBox, "");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Filter CheckBoxes Selected. Exception: " + e.getClass());
        }
    }

    public void verifyCardOrders(String Cardtype, String extra) {
        try {

            if (Cardtype.equalsIgnoreCase("Loans")) {
                List<String> list = new ArrayList<String>();
//                Map<Integer,String> map=new HashMap<>();
                String cardNudge = "Card Nudge#xpath=//div[@class='j_loan_box'][@id='LoansActive'][@style='display: block;']/descendant::div[@class='j_loan_amt']/child::span";
                for (int i = 1; i <= sizeOfLocator(cardNudge); i++) {
                    String cardtype = getTextPresent(cardNudge);
                    list.add(cardtype);
//                    map.put(i, cardtype);
                }
                testStepInfo("Total Cards: " + list.size());
                for (int i = 0; i < list.size(); i++) {
                    String tag = list.get(i);
                    if (tag.equalsIgnoreCase("Active")) {
                        testStepInfo("Card Number " + i + "is Active");
//                        list.remove(i);
                        if (list.get(i).equalsIgnoreCase("Closed")) {
                            testStepInfo("Closed Cards Number have started");
                            testStepInfo("Card Number " + i + "is Closed");
//                            list.remove(i);
                            if (list.get(i).equalsIgnoreCase("Active")) {
                                testStepFailed("Card Number " + i + "is Active,but is displaying after Closed Cards");
                                break;
                            } else {
                                testStepPassed("Cards are displaying as per required order");
                            }
                        }
                    }
                }


            }

            if (Cardtype.equalsIgnoreCase("Deposits")) {
                List<String> list = new LinkedList<>();
                String cardNudge = "Card Nudge#xpath=//div[@class='j_loan_box'][@id='FDActive']/descendant::div[@class='j_loan_amt']/child::span";
                for (int i = 1; i <= sizeOfLocator(cardNudge); i++) {
                    String cardtype = getTextPresent(cardNudge);
                    list.add(cardtype);
                }
                testStepInfo("Total Cards: " + list.size());
                for (int i = 0; i < list.size(); i++) {
                    if (list.get(i).equalsIgnoreCase("OPEN")) {
                        testStepInfo("Card Number " + i + "is Active");
                        list.remove(i);
                        if (list.get(i).equalsIgnoreCase("PRE-MATURED")) {
                            testStepInfo("Matured/Prematured Cards Number have started");
                            testStepInfo("Card Number " + i + "is PRE-MATURED");
                            list.remove(i);
                            if (list.get(i).equalsIgnoreCase("OPEN")) {
                                testStepFailed("Card Number " + i + "is Active,but is displaying after PRE-MATURED Cards");
                                break;
                            } else {
                                testStepPassed("Cards are displaying as per required order");
                            }
                        }
                    }
                }


            }


        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Card Orders. Exception: " + e.getClass());
        }


    }

    public void verifyCardOrders2(String Cardtype, String extra) {
        try {
            if (Cardtype.equalsIgnoreCase("Loans")) {
                String activeCards = "Active Loan Cards#xpath=//div[@id='LoansActive']/descendant::div[@class='j_loan_amt']/child::span[normalize-space(text())='ACTIVE']";
                int Active = sizeOfLocator(activeCards);
                if (Active == 0) {
                    testStepFailed("No Active Cards for this Customer");
                    testStepFailed("*****************TEST DATA ISSSUE********************");
                } else {
                    testStepInfo(getRefOfXpath(activeCards) + " Count is:" + Active);
                    String cardNudge = "Card Nudge#xpath=//div[@id='LoansActive']/descendant::div[@class='j_loan_amt']/child::span";
                    int size = sizeOfLocator(cardNudge);
                    testStepInfo("Total Cards Count: " + size);
                    for (int i = 1; i <= Active; i++) {
                        String cardNudge1 = "Card Nudge#xpath=(//div[@id='LoansActive']/descendant::div[@class='j_loan_amt']/child::span[normalize-space(text())='ACTIVE'])[" + i + "]";
                        waitTime(3);
                        if (isElementPresent(cardNudge1)) {
                            testStepPassed("Card Number " + i + " is Active and is displaying before Closed Card Types");

                        } else {
                            testStepFailed("Card Number " + i + " is not Active and is displaying before Active Card Types");

                        }

                    }

                }
            }

            if (Cardtype.equalsIgnoreCase("Deposits")) {
                String activeCards = "Active Deposit Cards#xpath=//div[@id='FDActive']/descendant::div[@class='j_loan_amt']/child::span[normalize-space(text())='OPEN']";
                int Active = sizeOfLocator(activeCards);
                if (Active == 0) {
                    testStepFailed("No Active Cards for this Customer");
                    testStepFailed("*****************TEST DATA ISSSUE********************");
                } else {
                    testStepInfo(getRefOfXpath(activeCards) + " Count is:" + Active);
                    String cardNudge = "Card Nudge#xpath=//div[@id='FDActive']/descendant::div[@class='j_loan_amt']/child::span";
                    int size = sizeOfLocator(cardNudge);
                    testStepInfo("Total Cards Count: " + size);
                    for (int i = 1; i <= Active; i++) {
                        String cardNudge1 = "Card Nudge#xpath=(//div[@id='FDActive']/descendant::div[@class='j_loan_amt']/child::span[normalize-space(text())='OPEN'])[" + i + "]";
                        waitTime(3);
                        if (isElementPresent(cardNudge1)) {
                            testStepPassed("Card Number " + i + " is Open and is displaying before Matured/Pre-Matured Card Types");

                        } else {
                            testStepFailed("Card Number " + i + " is not Open and is displaying before Open Card Types");

                        }

                    }

                }
            }


        } catch (
                Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Card Orders 2. Exception: " + e.getClass());
        }


    }


    public void insuranceCardsOrder() {
        try {
            String activeCards = "Active Insurance Cards#xpath=//div[@class='j_loan_box'][@id='InsuranceActive']/descendant::div[@class='j_loan_amt']/child::span[normalize-space(text())='ACTIVE']";
            int Active = sizeOfLocator(activeCards);
            if (Active == 0) {
                testStepFailed("No Active Cards for this Customer");
                testStepFailed("*****************TEST DATA ISSSUE********************");
            } else {
                testStepInfo(getRefOfXpath(activeCards) + " Count is:" + Active);
                String cardNudge = "Card Nudge#xpath=//div[@class='j_loan_box'][@id='InsuranceActive']/descendant::div[@class='j_loan_amt']/child::span";
                int size = sizeOfLocator(cardNudge);
                testStepInfo("Total Cards Count: " + size);
                for (int i = 1; i <= Active; i++) {
                    String cardNudge1 = "Card Nudge#xpath=(//div[@class='j_loan_box'][@id='InsuranceActive']/descendant::div[@class='j_loan_amt']/child::span[normalize-space(text())='ACTIVE'])[" + i + "]";
                    waitTime(3);
                    if (isElementPresent(cardNudge1)) {
                        testStepPassed("Card Number " + i + " is Active and is displaying before Other Card Types");

                    } else {
                        testStepFailed("Card Number " + i + " is not Active and is displaying before Active Card Types");

                    }

                }

            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in insurance Cards Order. Exception: " + e.getClass());
        }


    }


}
