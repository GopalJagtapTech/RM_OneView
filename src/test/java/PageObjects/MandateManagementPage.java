package PageObjects;

import base.ApplicationKeywords;

public class MandateManagementPage extends ApplicationKeywords {
    /*
Xpaths
 */
    public static final String icon_HamburgerMenu = "Hamburger Menu in Home Page#xpath=//a[@class='hem_menu']/img";

    public static final String field_Geturcibil = "Get Your Cibil Section in Cibil Page#xpath=//a[normalize-space(text())='GET YOUR CIBIL SCORE']/ancestor::nav[@class='main-nav float-right d-none d-lg-block']";
    public static final String icon_Hamburger = "Hamburger Menu Icon#xpath=//a[@class='hem_menu']";
    public static final String msg_NoLoanCArds = "Message Dispalyed#xpath=//p[normalize-space()='You do not have any active loan relation']";
    public static final String msg_NoDepositCArds = "Message Dispalyed#xpath=//p[normalize-space()='You do not have any active deposit']";
    public static final String header_EMandatePage = "EMandate Page Header#xpath=//h2[@class='heading head_MasPro_Name']";
    public static final String active_ProceedButton = "Active Proceed Button in Mandate Management Page-#xpath=//button[@class='a_btn_sub_style proceedbtn']";
    public static final String first_check_Box = "First Check Box in -#xpath=//label[@class='checkupgrade']/input/following-sibling::i[1]";


        /*
    Methods
     */

    public void clickOnHamburgerListMenuswithArrow(String ListMenu) {
        String listMenus = "Hamburger Menu:" + ListMenu + "#xpath=//div[@class='BFLmenu_listbox']/descendant::div[@class='list_text']/strong[normalize-space(text())='" + ListMenu + "']/parent::div/following-sibling::div";
        try {
            if (isElementDisplayed(icon_Hamburger)) {
                clickOn(icon_Hamburger);
                if (isElementDisplayed(listMenus)) {
                    clickOn(listMenus);
                } else {
                    testStepFailed(getRefOfXpath(listMenus) + "is not Displayed");
                }

            } else {
                testStepFailed(getRefOfXpath(icon_Hamburger) + "is not Displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in Click on Hamburger List Menus .Exception:" + e.getClass());
        }
    }

    public void clickOnHamburgerListMenus(String ListMenu) {
        String listMenus = "Hamburger Menu:" + ListMenu + "#xpath=//div[@class='BFLmenu_listbox']/descendant::div[@class='list_text']/strong[normalize-space(text())='" + ListMenu + "']/parent::div";
        try {
            if (isElementDisplayed(listMenus)) {
                clickOn(listMenus);
                waitForPageToLoad();
            } else {
                testStepFailed(getRefOfXpath(listMenus) + "is not Displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in Click on Hamburger List Menus .Exception:" + e.getClass());
        }
    }

    public void clickOnDocumentationSubListMenus(String SubListMenu) {
        String sublistMenus = "Documentation:" + SubListMenu + "#xpath=//div[@class='BFLmenu_listbox']/descendant::li[@data-group-name='Documentation']/a[normalize-space(text())='" + SubListMenu + "']";
        try {
            if (isElementDisplayed(sublistMenus)) {
                clickOn(sublistMenus);
                waitForPageToLoad();
            } else {
                testStepFailed(getRefOfXpath(sublistMenus) + "is not Displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in Click on Documentation SubList Menus .Exception:" + e.getClass());
        }
    }

    public void verifyMandateManagementRedirection() {
        String mmtabs = "Mandate Management Tabs#xpath=//div[@class='j_tab_rela']";
        try {
            if (isElementDisplayed(mmtabs)) {
                manualScreenshot("Customer is redirected to Mandate Management Page Successfully");
            } else {
                testStepFailed(getRefOfXpath(mmtabs) + "is not Displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Mandate Management Redirection .Exception:" + e.getClass());
        }
    }

    public void verifyManManageTabs(String tabname) {
        String tab = "Tab: " + tabname + " in Mandate Management Page #xpath=//ul[@class='cus_j_tabslider']/descendant::a[normalize-space(text())='" + tabname.trim() + "']";
        try {
            if (isElementDisplayed(tab)) {
                manualScreenshot(getRefOfXpath(tab) + "is Displayed Successfully");
            } else {
                testStepFailed(getRefOfXpath(tab) + "is not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify ManManage Tabs .Exception:" + e.getClass());
        }
    }

    public void verifyDefaultLoansTab() {
        String activeLoansTab = "Loans Tab#xpath=//a[@id='Loanstab']/parent::li[@class='loantabs active']";
        try {
            if (isElementDisplayed(activeLoansTab)) {
                manualScreenshot("Loans and EMI Network Card Tab is selected by Default in Mandate Management Page");
            } else {
                testStepFailed(getRefOfXpath(activeLoansTab) + "is not selected by Default");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Default Loans Tab .Exception:" + e.getClass());
        }
    }

    public void clickOnMandManageTabs(String tabname) {
        String mmtabs = "Mandate Management Tabs#xpath=//div[@class='j_tab_rela']";
        String tab = "Tab: " + tabname + "#xpath=//ul[@class='cus_j_tabslider']//a[normalize-space(text())='" + tabname + "']";
        try {
            if (isElementPresent(tab)) {
                scrollToWebElement(tab);
                clickOn(tab);
            } else {
                testStepFailed(getRefOfXpath(tab) + "is not Displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in click On MandManage Tabs .Exception:" + e.getClass());
        }
    }

    public void verifyCardsDisplayed(String cardName, String cardDetails) {
        String cards = "Cards in Mandate Management Page:" + cardName + "#xpath=//div[@class='j_lf_main']//div[@class='j_loan_details']/descendant::p[contains(text(),'" + cardDetails + "')]";
        try {
            if (isElementDisplayed(cards)) {
                testStepPassed(getRefOfXpath(cards) + "is Displayed Successfully. Count=" + sizeOfLocator(cards));
            } else {
                testStepFailed(getRefOfXpath(cards) + "is not Displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Cards Displayed .Exception:" + e.getClass());
        }
    }

    public void verifyNameandNumber(String cardDetails, String cardNumber) {
        String name = "Name on the Card:#xpath=//div[@class='j_lf_main']//div[@class='j_loan_details']/descendant::p[contains(text(),'" + cardDetails + "') and contains(text(),'" + cardNumber + "')]/preceding-sibling::h3";
        String number = "Number on the Card-#xpath=//div[@class='j_lf_main']//div[@class='j_loan_details']/descendant::P[contains(text(),'" + cardDetails + "') and contains(text(),'" + cardNumber + "')]/preceding-sibling::h3/following-sibling::p";

        try {
            if (isElementDisplayed(name)) {
                testStepPassed(getRefOfXpath(name) + getTextPresent(name) + "is Displayed Successfully");
                if (isElementDisplayed(number)) {
                    testStepPassed(getRefOfXpath(number) + getTextPresent(number) + "is Displayed Successfully");
                } else {
                    testStepFailed(getRefOfXpath(number) + "is not Displayed");
                }
            } else {
                testStepFailed(getRefOfXpath(name) + "is not Displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Name and Number .Exception:" + e.getClass());
        }
    }

    public void verifyumrn(String cardDetails, String cardNumber) {
        String umrn1 = "EMIs Paid#xpath=(//div[@class='j_lf_main']//div[@class='j_loan_details']/descendant::p[contains(text(),'" + cardDetails + "') and contains(text(),'" + cardNumber + "')]/following::div[@class='j_emi_umrn'])/p[1]";
        String umrn2 = "UMRN Number#xpath=(//div[@class='j_lf_main']//div[@class='j_loan_details']/descendant::p[contains(text(),'" + cardDetails + "') and contains(text(),'" + cardNumber + "')]/following::div[@class='j_emi_umrn'])/p[2]";

        try {
            if (isElementDisplayed(umrn1)) {
                testStepPassed(getTextPresent(umrn1) + "is Displayed Successfully");
                if (isElementDisplayed(umrn2)) {
                    testStepPassed(getTextPresent(umrn2) + "is Displayed Successfully");
                } else {
                    testStepFailed(getRefOfXpath(umrn2) + "is not Displayed");
                }

            } else {
                testStepFailed(getRefOfXpath(umrn1) + "is not Displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify umrn .Exception:" + e.getClass());
        }
    }

    public void verifyamount(String cardDetails, String amountType, String cardNumber) {
        String amount = "" + amountType + "#xpath=//div[@class='j_lf_main']//div[@class='j_loan_details']/descendant::p[contains(text(),'" + cardDetails + "') and contains(text(),'" + cardNumber + "')]/following::div[@class='j_emi_details']/i[normalize-space(text())='" + amountType + "']";
        String amount1 = "Amount value-#xpath=//div[@class='j_lf_main']//div[@class='j_loan_details']/descendant::p[contains(text(),'" + cardDetails + "') and contains(text(),'" + cardNumber + "')]/following::div[@class='j_emi_details']/i[normalize-space(text())='" + amountType + "']/parent::div/child::p";

        try {
            if (isElementDisplayed(amount)) {
                testStepPassed(getRefOfXpath(amount) + "is Displayed Successfully");
                if (isElementDisplayed(amount1))
                    testStepPassed(getRefOfXpath(amount1) + getTextPresent(amount1) + "is Displayed Successfully");
                else {
                    testStepFailed(getRefOfXpath(amount1) + "is not Displayed");
                }

            } else {
                testStepFailed(getRefOfXpath(amount) + "is not Displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Name and Number .Exception:" + e.getClass());
        }
    }

    public void verifyLabel(String cardDetails, String cardNumber) {
        String label = "Label#xpath=//div[@class='j_lf_main']//div[@class='j_loan_details']/descendant::p[contains(text(),'" + cardDetails + "') and contains(text(),'" + cardNumber + "')]/following::div[@class='j_bank_sep']//div";
        String value = "Label value-#xpath=/following-sibling::p";

        try {
            verifyValueUsingLabel("//div[@class='j_lf_main']//div[@class='j_loan_details']/descendant::p[contains(text(),'" + cardDetails + "') and contains(text(),'" + cardNumber + "')]/following::div[@class='j_bank_sep']//div", "Bank Name", "/following-sibling::p", "");
            verifyValueUsingLabel("//div[@class='j_lf_main']//div[@class='j_loan_details']/descendant::p[contains(text(),'" + cardDetails + "') and contains(text(),'" + cardNumber + "')]/following::div[@class='j_bank_sep']//div", "Account Number", "/following-sibling::p", "");
            verifyValueUsingLabel("//div[@class='j_lf_main']//div[@class='j_loan_details']/descendant::p[contains(text(),'" + cardDetails + "') and contains(text(),'" + cardNumber + "')]/following::div[@class='j_bank_sep']//div", "IFSC", "/following-sibling::p", "");

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Label .Exception:" + e.getClass());
        }
    }


    public void verifyLoanCard(String cardDetails, String cardNumber, String amountType) {
        try {

            verifyNameandNumber(cardDetails, cardNumber);
            verifyamount(cardDetails, amountType, cardNumber);
            verifyumrn(cardDetails, cardNumber);
            verifyLabel(cardDetails, cardNumber);

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Loan Card .Exception:" + e.getClass());
        }
    }

    public void verifySDPCard(String cardDetails, String cardNumber, String amountType) {
        try {

            verifyNameandNumber(cardDetails, cardNumber);
            verifyamount(cardDetails, amountType, cardNumber);
            verifyLabel(cardDetails, cardNumber);

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify SDP Card .Exception:" + e.getClass());
        }
    }

    public void clickOnMultipleCheckBox(String cardType) {

        String checkBox = "Check Box in Mandate Management Page-#xpath=//input[@type='checkbox' and @name='" + cardType + "']/parent::label";
        String activeProceed = "Active Proceed Button in Mandate Management Page-#xpath=//button[@class='a_btn_sub_style proceedbtn']";
        try {
            if (isElementPresent(checkBox)) {
                for (int i = 1; i <= 2; i++) {
                    String checkBox1 = "Check Box in Mandate Management Page- CheckBox " + i + " -#xpath=(//input[@type='checkbox' and @name='" + cardType + "']/parent::label)[" + i + "]";
//                    String checkBox1 = "Check Box in Mandate Management Page " + i + "-#xpath=(//input[@type='checkbox' and @name='" + cardType + "']/parent::label/child::i)[" + i + "]";
                    clickOn(checkBox1);
                }
                scrollToWebElement(activeProceed);
                if (isElementDisplayed(activeProceed)) {
                    testStepInfo("Proceed Button is Active");
                    testStepPassed("Customer is able to select multiple Cards at a time");
                } else {
                    testStepFailed("Customer is not able to select multiple Cards at a time");
                }

            } else {
                testStepFailed("Check Box in Mandate Management Page is not Present");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in click On Multiple Check Box .Exception:" + e.getClass());
        }
    }

    public void clickOnIndividualCheckBox(String cardType, String cardNumber) {

        String checkBox = "Check Box in Mandate Management Page-#xpath=//input[@type='checkbox' and @name='" + cardType + "' and @value='" + cardNumber + "' ]/parent::label";
        String activeProceed = "Active Proceed Button in Mandate Management Page-#xpath=//button[@class='a_btn_sub_style proceedbtn']";
        try {
            if (isElementPresent(checkBox)) {
                clickOn(checkBox);
            }
            scrollToWebElement(activeProceed);
            if (isElementDisplayed(activeProceed)) {
                testStepInfo("Proceed Button is Active");
                testStepPassed("Customer is able to select the Card");
            } else {
                testStepFailed("Customer is not able to select the Card");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in click On Individual Check Box .Exception:" + e.getClass());
        }
    }

    public void verifyCheckBox(String cardType, String cardNumber) {

        String checkBox = "Check Box in Mandate Management Page-#xpath=//input[@type='checkbox' and @name='" + cardType + "' and @value='" + cardNumber + "' ]/parent::label";
        String checkBox1 = "Check Box in Mandate Management Page -#xpath=//input[@type='checkbox' and @name='" + cardType + "' and @value='" + cardNumber + "' ]/parent::label/child::i";
        String activeProceed = "Active Proceed Button in Mandate Management Page-#xpath=//button[@class='a_btn_sub_style proceedbtn']";
        try {
            if (isElementPresent(checkBox)) {
                verifyLocatorColorUsingCssValueUsingPresent(checkBox1, "#000000", "Transparent", "background-color");
                clickOn(checkBox);
                waitTime(1);
                verifyLocatorColorUsingCssValueUsingPresent(checkBox1, "#ff6700", "Orange", "background-color");
                clickOnMandManageTabs("Systematic Deposit Plan");
                waitTime(1);
                clickOnMandManageTabs("Loans and Insta EMI Card");
                waitTime(1);
                verifyLocatorColorUsingCssValueUsingPresent(checkBox1, "#000000", "Transparent", "background-color");

            } else {
                testStepFailed(getRefOfXpath(checkBox) + "is not Displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Check Box .Exception:" + e.getClass());
        }
    }

    ///////280723

    public static final String chkBoxLoans_Mandate = "Loans Check Box in Mandate Management Page-#xpath=//input[@class='mandate-checkbox']/parent::label";
    public static final String custId_Box = "Customer ID for Loans in Mandate Management Page-#xpath=//i[@class='chkblur']";
    public static final String cancel_PlsNote = "Cancel Button in Please Note-#xpath=//a[@class='stroke_cta']";
    public static final String proceed_PlsNote = "Proceed Button in Please Note-#xpath=//a[@id='MandateBtn']";

    //strong[contains(text(),'10366008')]/parent::i/..//input
    public void verifyCustIdMandate(String id, String extra) {
        try {
            String locatorErrMsg = "Cust Id: " + id + "#xpath=//strong[contains(text(),'" + id.trim() + "')]/parent::i";
            String section = "Cust Id: Section:#xpath=//strong[contains(text(),'" + id.trim() + "')]/parent::i/../..";
            if (isElementDisplayed(locatorErrMsg)) {
                manualScreenshot(getRefOfXpath(locatorErrMsg) + "is displayed successfully");
                getTextPresent(section);
            } else {
                testStepFailed(getRefOfXpath(locatorErrMsg) + " error message is not displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Cust Id Mandate. Exception: " + e.getClass());
        }
    }

    public void checkBoxUnselected(String id, String extra) {
        try {
            String locator = "Check Box for Cust Id: " + id + "#xpath=//strong[contains(text(),'" + id.trim() + "')]/parent::i/..//input";
            verifyCheckBoxIsNotSelectedUsingLocator(locator, "");
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in check Box Unselected. Exception: " + e.getClass());
        }
    }

    public void loanTileUnselected(String num, String extra) {
        try {
            String locator = "Loan Tile: " + num + "#xpath=//input[@type='checkbox' and @name='loan' and @value='" + num.trim() + "' ]/parent::label";
            verifyCheckBoxIsNotSelectedUsingLocator(locator, "");
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in loan Tile Unselected. Exception: " + e.getClass());
        }
    }


    public void clickCheckBoxUsingId(String id, String extra) {
        try {
            String locator = "Check Box for Cust Id: " + id + "#xpath=//strong[contains(text(),'" + id.trim() + "')]/parent::i/..//input";
            clickOn(locator);
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in click Check Box UsingId. Exception: " + e.getClass());
        }
    }

    public void mandatePopupClose() {
        try {
            String locator = "Please Note Popup#xpath=//span[@id='custmsg']";
            String locator1 = "Please Note Popup in Mandate Page#xpath=//h6[contains(text(),'Please Note')]";
            if (!isElementDisplayed(locator) && isElementDisplayed(custId_Box)) {
                testStepPassed(getRefOfXpath(locator) + " is Closed Successfully");
            } else {
                testStepFailed(getRefOfXpath(locator) + " is not closed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in mandate Popup Close. Exception: " + e.getClass());
        }
    }

    public void checkBoxSelection(String extra) {
        try {
            String locator = "Check Box for Tiles.#xpath=//input[@name='loan']";
            int size = sizeOfLocator(locator);
            testStepInfo("Total Tiles for this Customer: " + size);
            for (int i = 1; i <= size; i++) {
                String locator1 = "Check Box for Tile Number:" + i + "#xpath=(//input[@name='loan'])[" + i + "]";
                String locator2 = "Greyed Out Tile for Tile Number:" + i + "#xpath=(//div[@class='j_lf_main blurDiv'])[" + i + "]";
                verifyCheckBoxIsSelectedUsingLocator(locator1, "");
                verifyElementIsDisplayedOrNot(locator2);
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in check Box Selection. Exception: " + e.getClass());
        }
    }

    public void mandateFeesandCharges() {
        try {
            String locator = "Popup Contents#xpath=//strong[normalize-space(text())='Fees and Charges']/../following-sibling::div[@class='p_Unable_text']";
            verifyFieldDisplayedUsingTagAndText("strong", "Fees and Charges", "");
            verifyElementIsDisplayedAndGetText(locator);
            verifyButtonIsDisplayedInThePage("Okay");
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in mandate Fees and Charges. Exception: " + e.getClass());
        }
    }

}
