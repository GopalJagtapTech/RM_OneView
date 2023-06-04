package PageObjects;

import base.ApplicationKeywords;
import org.apache.commons.validator.GenericValidator;
import org.openqa.selenium.Keys;

public class VoucherRedeemPage extends ApplicationKeywords {


    /*
    Xpaths
     */

    public static final String field_Geturcibil = "Get Your Cibil Section in Cibil Page#xpath=//a[normalize-space(text())='GET YOUR CIBIL SCORE']/ancestor::nav[@class='main-nav float-right d-none d-lg-block']";
    public static final String icon_Hamburger = "Hamburger Menu Icon#xpath=//a[@class='hem_menu']";
    public static final String txtBox_MobNo = "Mobile Number Input Box#xpath=//label[normalize-space(text())='Mobile Number']/following-sibling::input";
    public static final String city_Dropdown = "City DropDown#xpath=//label[normalize-space(text())='City']/../select";
    public static final String txtBox_Email = "Email ID Input Box#xpath=//label[normalize-space(text())='Email Id']/following-sibling::input";
    public static final String editBtn_Email = "Edit Button on Email ID#xpath=//a[@class='p_email_update']";
    public static final String btn_UpdateEmail = "Update Email Button#xpath=//a[normalize-space()='Update Email ID']";



        /*
    Methods
     */

    public void clickOnHamburgerListMenus(String ListMenu) {
        String listMenus = "Hamburger Menu:" + ListMenu + "#xpath=//div[@class='BFLmenu_listbox']/descendant::div[@class='list_text']/strong[normalize-space(text())='" + ListMenu + "']";
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

    public void verifyVoucherPageRedirection() {
        String header = "Header in Redeem Voucher Page#xpath=//div[@class='select_loan']/strong";
        try {
            if (isElementDisplayed(header)) {
                testStepPassed("Customer is redirected to Redeem Voucher Page");
                manualScreenshot("Header Text:" + getTextPresent(header));

            } else {
                testStepFailed(getRefOfXpath(header) + "is not Displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Voucher Page Redirection .Exception:" + e.getClass());
        }

    }

    public void verifyVoucherPageContents() {
        String header = "Header in Redeem Voucher Page#xpath=//div[@class='select_loan']/strong";
        String disabledConfirmButton = "Disabled Confirm Button in Voucher Redeem Page#xpath=//button[@id='requestOTPnow' and @disabled='disabled']";

        try {
            if (isElementDisplayed(header)) {
                verifyElementIsDisplayedOrNot(header);
                verifyFieldsDisplayedUsingText("Enter your details below to claim your rewards");
                verifyFieldsDisplayedUsingText("Did You Know?");
                verifyFieldsDisplayedUsingText("You can shop at the Bajaj Finserv EMI Store or at any partner store to use your vouchers and avail cashbacks");
                verifyFieldsDisplayedUsingText("Quick Benefits");
                verifyFieldsDisplayedUsingText("Cashback is credited directly to your Bajaj Finserv Wallet");
                verifyFieldsDisplayedUsingText("Utility vouchers cover mobile recharges, DTH recharges and electricity bill payments");
                verifyElementIsDisplayedOrNot(disabledConfirmButton);
                verifyRhs("Need assistance?", "Help & Support#Document Center", "");

            } else {
                testStepFailed(getRefOfXpath(header) + "is not Displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Voucher Page Contents .Exception:" + e.getClass());
        }

    }

    public void verifyConfirmButtonDisabled() {
        String activeConfirmButton = "Active Confirm Button in Voucher Redeem Page#xpath=//button[@id='requestOTPnow' and normalize-space(text())='CONFIRM']";
        String disabledConfirmButton = "Disabled Confirm Button in Voucher Redeem Page#xpath=//button[@id='requestOTPnow' and @disabled='disabled']";
        String city_Dropdown = "City DropDown#xpath=//label[normalize-space(text())='City']/../select";

        try {
            if (isElementDisplayed(disabledConfirmButton)) {
                testStepPassed(getRefOfXpath(disabledConfirmButton) + "is in Disabled condition on not selecting City Parameter");
            } else {
                testStepFailed(getRefOfXpath(disabledConfirmButton) + "is not Displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Confirm Button Disabled .Exception:" + e.getClass());
        }

    }

    public void verifyConfirmButton() {
        String activeConfirmButton = "Active Confirm Button in Voucher Redeem Page#xpath=//button[@id='requestOTPnow' and normalize-space(text())='CONFIRM']";
        String disabledConfirmButton = "Disabled Confirm Button in Voucher Redeem Page#xpath=//button[@id='requestOTPnow' and @disabled='disabled']";
        String city_Dropdown = "City DropDown#xpath=//label[normalize-space(text())='City']/../select";

        try {
            if (isElementDisplayed(disabledConfirmButton)) {
                selectDropDownUsingText(city_Dropdown, "BANGALORE");
                Boolean flag = verifyElementIsDisplayedOrNot(activeConfirmButton);
                if (flag) {
                    manualScreenshot("Confirm Button is enabled on selection of City Successfully");
                } else {
                    testStepFailed("Failed to verify Confirm Button");
                }
            } else {
                testStepFailed(getRefOfXpath(disabledConfirmButton) + "is not Displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Confirm Button .Exception:" + e.getClass());
        }

    }


    public void verifyMobileMasked() {

        try {
            if (isElementDisplayed(txtBox_MobNo)) {
                String mobNo = findWebElement(txtBox_MobNo).getAttribute("value");
//                verifyMaskedAndUnmaskedFormat(mobNo,"X",0,4,true,"");
//                verifyMaskedAndUnmaskedFormat(mobNo,"X",7,0,false,"");
                verifyMaskedAndUnmaskedFormatUsingValue(mobNo, "Mobile Number", "X", 0, 4, true, "0");
                verifyMaskedAndUnmaskedFormatUsingValue(mobNo, "Mobile Number", "X", 0, 4, false, "1");

            } else {
                testStepFailed(getRefOfXpath(txtBox_MobNo) + "is not Displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Mobile Masked .Exception:" + e.getClass());
        }

    }

    public void verifyFieldisDisabled(String locator) {

        try {
            if (isElementDisplayed(locator)) {
                Boolean flag = findWebElement(locator).isEnabled();
                if (!flag) {
                    testStepPassed(getRefOfXpath(locator) + " is in Disabled Condition(Non Editable)");
                } else {
                    testStepFailed(getRefOfXpath(locator) + " is in Enabled Condition(Editable)");
                }
            } else {
                testStepFailed(getRefOfXpath(locator) + "is not Displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Field is Disabled .Exception:" + e.getClass());
        }

    }

    public void dropdownSearchOption(String ThreeLetters, String selectedOption) {
        String activeConfirmButton = "Active Confirm Button in Voucher Redeem Page#xpath=//button[@id='requestOTPnow' and normalize-space(text())='CONFIRM']";

        try {
            if (isElementDisplayed(city_Dropdown)) {
//                selectDropDownUsingText(city_Dropdown,"HYD");
                findWebElement(city_Dropdown).click();
                findWebElement(city_Dropdown).sendKeys(ThreeLetters);
                findWebElement(city_Dropdown).sendKeys(Keys.ENTER);
//                Boolean flag = verifyElementIsDisplayedUsingLocator(activeConfirmButton);
                getSelectedOptionInDropDown(city_Dropdown, selectedOption);

            } else {
                testStepFailed(getRefOfXpath(city_Dropdown) + "is not Displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in dropdown Search Option .Exception:" + e.getClass());
        }

    }

    public void verifyConfirmCTA(String ThreeLetters) {
        String activeConfirmButton = "Active Confirm Button in Voucher Redeem Page#xpath=//button[@id='requestOTPnow' and normalize-space(text())='CONFIRM']";

        try {
            if (isElementDisplayed(city_Dropdown)) {
//                selectDropDownUsingText(city_Dropdown,"HYD");
                findWebElement(city_Dropdown).click();
                findWebElement(city_Dropdown).sendKeys(ThreeLetters);
                findWebElement(city_Dropdown).sendKeys(Keys.ENTER);
                verifyElementIsDisplayedUsingLocator(activeConfirmButton);

            } else {
                testStepFailed(getRefOfXpath(city_Dropdown) + "is not Displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in dropdown Search Option .Exception:" + e.getClass());
        }

    }

    public void verifyEditMailRedirection() {
        String mail_profilepage = "Email ID in My Profile Page#xpath=//div[@id='DivEmail']//div[@class='fields']//i[normalize-space(text())='Primary Email ID']/following-sibling::p";
        try {
            if (isElementDisplayed(editBtn_Email)) {
                String email = findWebElement(txtBox_Email).getAttribute("value");
                clickOn(editBtn_Email);
                waitForPageToLoad();
                verifyElementIsDisplayedUsingLocator(mail_profilepage);
                String mailprofile = getTextUsingLocator(mail_profilepage);
                if (email.equals(mailprofile)) {
                    testStepPassed("Redirection successfull to My Profile Page and Mail Id is matched for the Customer");
                } else {
                    testStepFailed("Redirection not Successfull");
                }

            } else {
                testStepFailed(getRefOfXpath(editBtn_Email) + "is not Displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Edit Mail Redirection .Exception:" + e.getClass());
        }

    }

    public void verifyUpdateMailRedirection() {
        String mail_profilepage = "Email ID in My Profile Page#xpath=//div[@id='DivEmail']//div[@class='fields']//i[normalize-space(text())='Primary Email ID']/following-sibling::p";
        try {
            if (isElementDisplayed(btn_UpdateEmail)) {
                clickOn(btn_UpdateEmail);
                waitForPageToLoad();
                if (isElementDisplayed(mail_profilepage)) {
                    testStepPassed("Redirection successfull to My Profile Page");
                } else {
                    testStepFailed("Redirection not Successfull");
                }

            } else {
                testStepFailed(getRefOfXpath(btn_UpdateEmail) + "is not Displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Update Mail Redirection  .Exception:" + e.getClass());
        }

    }


    public void verifyDidYouKnow() {
        String dyk = "Did you Know Header#xpath=//h3[normalize-space()='Did You Know?']";
        try {
            if (isElementDisplayed(dyk)) {
                verifyElementIsDisplayedUsingLocator(dyk);
                verifyFieldsDisplayedUsingText("You can shop at the Bajaj Finserv EMI Store or at any partner store to use your vouchers and avail cashbacks");
            } else {
                testStepFailed(getRefOfXpath(dyk) + "is not Displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Did You Know .Exception:" + e.getClass());
        }

    }

    public void verifyQuickBenefits() {
        String qb = "Quick Benefits Header#xpath=//h3[normalize-space()='Quick Benefits']";
        String dyk = "Did you Know Header#xpath=//h3[normalize-space()='Did You Know?']";

        try {
            if (isElementDisplayed(qb)) {
                verifyLocatorPresentInBelowOfAnotherLocator(qb, dyk);
                verifyFieldsDisplayedUsingText("Cashback is credited directly to your Bajaj Finserv Wallet");
                verifyFieldsDisplayedUsingText("Utility vouchers cover mobile recharges, DTH recharges and electricity bill payments");
            } else {
                testStepFailed(getRefOfXpath(qb) + "is not Displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Quick Benefits .Exception:" + e.getClass());
        }

    }

    public void verifyHelpandSupport() {
        String hs = "Help & Support#xpath=//p[normalize-space()='Help & Support']/parent::a";
        String rarheader = "Raise a Request Header#xpath=//strong[normalize-space()='My Raised Requests']";

        try {
            if (isElementDisplayed(hs)) {
                clickOn(hs);
                waitForPageToLoad();
                if (isElementDisplayed(rarheader)) {
                    testStepPassed("Customer Redirected to RAR Page");
                } else {
                    testStepFailed("Customer not Redirected to RAR Page");
                }
            } else {
                testStepFailed(getRefOfXpath(hs) + "is not Displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Help and Support .Exception:" + e.getClass());
        }

    }

    public void verifyDocumentCenter() {
        String dc = "Help & Support#xpath=//p[normalize-space()='Document Center']/parent::a";
        String docheader = "Document Page header#xpath=//h1[@id='LoanDataid']";

        try {
            if (isElementDisplayed(dc)) {
                clickOn(dc);
                waitForPageToLoad();
                if (isElementDisplayed(docheader)) {
                    testStepPassed("Customer Redirected to Document Page");
                } else {
                    testStepFailed("Customer not Redirected to Document Page");
                }
            } else {
                testStepFailed(getRefOfXpath(dc) + "is not Displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Document Center .Exception:" + e.getClass());
        }

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
            testStepFailed("Failed i verify value is Date Format. Exception: " + e.getClass());
        }
    }

    public void verifyVoucherValidityDate() {
        try {
            String date = "Date in Voucher Card#xpath=//p[@class='expiresin_val']/child::i";
            String date1 = getTextPresent(date);
            String value = date1.replace("th", "");

            verifyValueisDateFormat("Voucher card Validity", value, "dd MMM yyyy", "");


        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed i verify Voucher Validity Date. Exception: " + e.getClass());
        }
    }


    public void verifyEmailMasked() {

        try {
            if (isElementDisplayed(txtBox_Email)) {
                String email = findWebElement(txtBox_Email).getAttribute("value");
                String[] mail = email.split("@");
                String splitmail = mail[0];

            } else {
                testStepFailed(getRefOfXpath(txtBox_Email) + "is not Displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Email Masked .Exception:" + e.getClass());
        }

    }


}