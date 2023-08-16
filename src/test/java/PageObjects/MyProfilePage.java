package PageObjects;

import base.ApplicationKeywords;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.util.logging.XMLFormatter;

public class MyProfilePage extends ApplicationKeywords {
    /*
    Xpaths
     */
    public static final String txtBox_EmiCard = "EMI Card Text Box#xpath=//input[@id='txtEMICard']";
    public static final String txtBox_BankAccount = "Bank A/C Number Text Box#xpath=//input[@id='txtBankAcc']";
    public static final String txtBox_Pan = "Pan Number Text Box#xpath=//input[@id='txtPanNo']";
    public static final String name_Customer = "Customer Name#xpath=//div[@class='first_vert_part']/p";
    public static final String firstLetter_Customer = "Customer FirstLetter#xpath=//div[@class='first_vert_part']/div[contains(text(),'')]";
    public static final String button_EditPan = "EditPan Button#xpath=//a[@class='mobile_cta_place panEdit']/self::a[normalize-space(text()='Edit PAN')]";
    public static final String button_PopUpCancel = "PopUp Cancel Button#xpath=//div[@class='ctas_div']/child::a[@id='cancelBtn']";
    //    public static final String button_PopUpProceed = "PopUp Proceed Button#xpath=//div[@class='ctas_div']/child::a[@id='cancelBtn']";
    public static final String button_PopUpProceed = "PopUp Proceed Button#xpath=//div[@class='ctas_div']/child::a[@id='confirmBtn']";
    public static final String field_ValidationMethodPage = "Validation Method Page Field#xpath=//h3[normalize-space()='Choose Validation Method']";
    public static final String field_VerifyyourDetails = "Verify your details Field#xpath=//h1[normalize-space(text())='Verify your details']";
    public static final String inputTextField_ValidationMethodPage = "Validation Method Page Input Text Field PAN#xpath=//div[@class='inputMainBlock']//label/following-sibling::input[@id='txtPANCard']";
    public static final String inputTextField_ValidationMethodPage_Doi = "Validation Method Page InputTextField DOI#xpath=//div[@class='inputMainBlock']/child::input[@id='doi_field']";
    public static final String confirmButton_ValidationPage = "Validation Page Proceed Button#xpath=//div[@class='bottom_cta']/child::button[@class='btn_sub_style btnVerify']";
    public static final String proceedButton = "Proceed Button#xpath=//button[normalize-space(text())='Proceed']";
    public static final String verifyButton = "Verify Button#xpath=//button[normalize-space(text())='Verify']";


    public static final String icon_Calendar = "Calendar Icon#xpath=//input[@id='bod_field']/following-sibling::img|//input[@id='doi_field']/following-sibling::img";
    public static final String icon_Calendar_Doi = "Calendar Icon DOI#xpath=//input[@id='doi_field']/following-sibling::img|//input[@id='doi_field']/following-sibling::img";
    public static final String icon_Calendar_DOB_Individual = "Calendar Icon DOB#xpath=//input[@id='update_bod']/following-sibling::img";
    public static final String icon_Calendar_DOI_Corporate = "Calendar Icon DOI#xpath=//input[@id='update_doi']/following-sibling::img";
    public static final String txtBox_Calendar = "Calendar TextBox#xpath=//input[@id='bod_field']|//input[@id='doi_field']";
    public static final String txtBox_Calendar_Doi = "Calendar TextBox DOI#xpath=//input[@id='doi_field']";
    public static final String txtBox_Calendar_DOB_Individual = "Calendar TextBox DOB Individual#xpath=//input[@id='update_bod']";
    public static final String txtBox_Calendar_DOI_Corporate = "Calendar TextBox DOI Individual#xpath=//input[@id='update_doi']";
    public static final String dropdown_YearInCalendar = "Calendar Year Dropdown#xpath=//table[@class='table-condensed']/thead/tr/th/select[@class='yearselect']";
    public static final String dropdown_MonthInCalendar = "Calendar Month Dropdown#xpath=//table[@class='table-condensed']/thead/tr/th/select[@class='monthselect']";

    //    public static final String txt_ThankYou = "Thank you for reaching out to us. - Message#xpath=//div[contains(text(),'Thank you for reaching out to us . Your service request no ')and(contains(text(),' is raised for updation of your PAN. We shall get back in the next 2 business day. Track your request through our request history.'))]";
    public static final String txt_ThankYou = "Thank you for reaching out to us. - Message#xpath=//div[contains(text(),'We have received your request to update your PAN')]";
    //    public static final String txt_ThankYouDOB = "Thank you for reaching out to us. - Message#xpath=//div[contains(text(),'Thank you for reaching out to us. Your service requests no ')and(contains(text(),' is raised for updation of your DOB We shall get back in the next 2 business day. Track your request through our request history.'))]";
    public static final String txt_ThankYouDOB = "Thank you for reaching out to us. - Message#xpath=//div[contains(text(),'We have received your request to update your DOB')]";
    public static final String txt_ThankYouDOI = "Thank you for reaching out to us. - Message#xpath=//div[contains(text(),'We have received your request to update your DOI')]";
    public static final String txt_ReqInProgress = "Request In Progress #xpath=//p[normalize-space(text())='Request in progress']";

    public static final String icon_Upload = "Upload Icon#xpath=//label[@class='doc_upload_label']|//label[@class='upload_selected_doc']";
    public static final String txtBox_Upload = "Upload TextBox#xpath=//input[@class='up_doc']";
    public static final String icon_SuccessIcon = "Success Icon#xpath=//label[@class='doc_upload_label']|//label[@class='upload_selected_doc']";
    public static final String icon_Bin = "Bin Icon#xpath=//a[contains(@class,'rm_doc')]";

    public static final String field_IndividualDOB = "DOBIndividual Field#xpath=//div[@id='dobidentification']/div[@class='fields']";
    public static final String field_CorporateDOI = "DOICorporate Field#xpath=//div[@id='doIidentification']/div[@class='fields']";
    public static final String button_EditDOB = "EditDOB Button#xpath=//div[@id='divdob']/descendant::a[@class='mobile_cta_place dobEdit']";
    public static final String button_EditDOI = "EditDOI Button#xpath=//div[@id='divdob']/descendant::a[@class='mobile_cta_place doiEdit']";


    public static final String dropDown_SelectDocuments = "Select Documents DropDown#xpath=//select[@class='doc_up_select']";
    public static final String field_GSTINNotAvailable = "GSTINNotAvailable Field#xpath=//div[@id='divgstin']/descendant::p[normalize-space()='Not Available']/parent::div";
    public static final String dropdown_State = "State Dropdown in GSTN#xpath=//label[normalize-space(text())='State']/following-sibling::select";
    public static final String dropdown_City = "City Dropdown in GSTN#xpath=//label[normalize-space(text())='City']/following-sibling::select";
    public static final String txtBox_GSTINDetails = "GSTINDetails TextBox#xpath=//input[@id='GstinNo']";
    public static final String txtBox_PincodeDetails = "GSTINDetails TextBox#xpath=//div[@class='gstin_part']/descendant::label[text()='Pincode']/following-sibling::input";
    public static final String txt_ThankYouGSTIN = "Thank you for reaching out to us. - Message#xpath=//div[contains(text(),'We have received your request to update your GST')]";
    public static final String address_Individual = "Address Individual#xpath=//div[@class='address_details_bl']//p";

    //04112022

    public static final String enter_DOB_UpdateDOB_Page = "Enter DOB field#xpath=//div[@class='inputMainBlock']/input[@id='update_bod']";
    public static final String enter_DOI_UpdateDOI_Page = "Enter DOI field#xpath=//div[@class='inputMainBlock']/input[@id='update_doi']";
    public static final String address_Kyc_Page = "KYC Verification page#xpath=//div[@class='col-12 pl-0']/span";
    //store Locator Page
    public static final String btn_Cancel_Popup = "Cancel Button In Popup#xpath=//button[normalize-space(text())='Proceed']/following-sibling::button[normalize-space(text())='Cancel']";


    public static final String close_PanAlreadyEntered = "Close Button In Popup PAN already entered#xpath=//span[normalize-space(text())='Entered PAN is already updated in our records']/ancestor::p/preceding-sibling::a/img";
    public static final String close_DOBAlreadyEntered = "Close Button In Popup DOB already entered#xpath=//span[normalize-space(text())='Entered DOB is already updated in our records']/ancestor::p/preceding-sibling::a/img";


    //    public static final String dropDown_SelectADocuments="Cancel Button In Popup#xpath=//select[@class='doc_up_select']";

    //div[@class='gstin_part']/descendant::label[text()='Pincode']/following-sibling::input


    /**
     * Common Xpaths
     */



    /*
    End
     */
    public void verifyFieldsDisplayedUsingText(String fieldText) {
        try {
            String field = "";
            if (fieldText.equalsIgnoreCase("Date of Birth") || fieldText.equalsIgnoreCase("Insta EMI Card") || fieldText.equalsIgnoreCase("Bank Account") || fieldText.equalsIgnoreCase("PAN")) {
                field = "" + fieldText + "#xpath=//a[normalize-space(text())='" + fieldText.trim()
                        + "']|//*[@placeholder='" + fieldText.trim() + "']";
            } else {
                field = "" + fieldText + "#xpath=//*[normalize-space(text())='" + fieldText.trim()
                        + "']|//*[@placeholder='" + fieldText.trim() + "']|//a[normalize-space(text())='" + fieldText.trim() + "']";
            }

            Boolean flag = scrollToWebElementIfPresent(field);
            if (flag) {
                if (isElementDisplayed(field)) {
                    testStepPassed(fieldText + " is Verified Successfully");
                } else {
                    testStepFailed(fieldText + " is Not Verified");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Fields Displayed Using Text " + fieldText + ". Exception: " + e.getClass());
        }
    }


    public Boolean clickOnButtonInProfilePage(String buttonLabel, String buttonText) {
        Boolean flag = false;
        try {
            String button = "" + buttonLabel + " - " + buttonText + " Button#xpath=//i[normalize-space(text())='" + buttonLabel + "']/../../following-sibling::div[@class='edit_cta']/a[normalize-space(text())='" + buttonText + "']";
            scrollToWebElement(button);
            if (isElementDisplayed(button)) {
                manualScreenshot(button.split("#")[0] + " is Displayed successfullly");
                clickOn(button);
                waitForPageToLoad();
                flag = true;
            } else {
                testStepFailed(button.split("#")[0] + " is Not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in Click on Button. Exception: " + e.getClass());
        }
        return flag;
    }

    public void verifyLabelInMyProfile(String labelOption) {
        try {
            String label = "" + labelOption + " Label#xpath=//i[normalize-space(text())='" + labelOption + "']";
            verifyLocatorIsDisplayedOrNot(label);
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Label in My Profile Page. Exception: " + e.getClass());
        }

    }

    public String verifyValueInMyProfile(String labelOption) {
        String value = "";

        try {
//            for (int i = 1; i <=findWebElements(labelValue1).size() ; i++) {

            String labelValue1 = "" + labelOption + " value#xpath=//i[normalize-space(text())='" + labelOption + "']/following-sibling::p";
//                String labelValue = "" + labelOption + " value#xpath=(//i[normalize-space(text())='" + labelOption + "']/following-sibling::p)["+i+"]";
//            Boolean flag2 = verifyLocatorIsDisplayedOrNot(labelValue);
//            if (flag2) {

            String value1 = getText(labelValue1);
            value = value1;
//            }
//            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Value in My Profile Page. Exception: " + e.getClass());
        }
        return value;
    }

    public void verifyIconInMyProfile(String labelOption) {
        try {
            String labelIcon = "" + labelOption + " Icon#xpath=//i[normalize-space(text())='" + labelOption + "']/../../img";
            verifyLocatorIsDisplayedOrNot(labelIcon);
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Icon in My Profile Page. Exception: " + e.getClass());
        }
    }

    public Boolean verifyLocatorIsDisplayedOrNot(String locator) {
        Boolean flag = false;
        try {
            scrollToWebElement(locator);
            if (isElementDisplayed(locator)) {
                manualScreenshot(locator.split("#")[0] + " is Displayed successfully");
            } else {
                testStepFailed(locator.split("#")[0] + " is Not displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify locator is displayed or Not. Exception: " + e.getClass());
        }
        return flag;
    }

    public void verifyMaskedFormatForInitial(String value, String name, int f_start, int f_end) {
        try {
            String ex = "";
            value = value.trim();
            String first = value.substring(f_start - 1, f_end);
            for (int i = 0; i < f_end; i++) {
                ex = ex + "X";
            }
            if (first.equals(ex)) {
                manualScreenshot(name + " : First " + f_end + " characters masked successfully : " + value);
            } else {
                testStepFailed(name + " : First " + f_end + " characters is Not Masked: " + value);
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Masked Format Initial. Exception: " + e.getClass());
        }
    }

    public void verifyMaskedFormatForEnd(String value, String name, int no_ofCharacters) {
        try {
            String ex = "";
            value = value.trim();
            String first = value.substring(value.length() - no_ofCharacters);
            for (int i = 0; i < no_ofCharacters; i++) {
                ex = ex + "X";
            }
            if (first.equals(ex)) {
                manualScreenshot(name + " : Last " + (no_ofCharacters) + " characters masked successfully : " + value);
            } else {
                testStepFailed(name + " : Last " + (no_ofCharacters) + " characters is Not Masked: " + value);
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Masked Format End. Exception: " + e.getClass());
        }
    }

    public void verifyUnMaskedFormat(String value, String name, int f_end, int noOfEndCharacters, int noOfX) {
        try {
            String ex = "";
            value = value.trim();
            String substring1 = value.substring(f_end);
            substring1 = substring1.substring(0, value.length() - noOfEndCharacters - 2);
            for (int i = 0; i < noOfX; i++) {
                ex = ex + "X";
            }
            if (!substring1.contains(ex)) {
                manualScreenshot(name + " : Un Masked Values verified successfully : " + value);
            } else {
                testStepFailed(name + " : Un Masked Values are not verified : " + value);
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Un Masked Format. Exception: " + e.getClass());
        }
    }

    /**
     * Page: Validation Page
     */
    public void verifyProfileValidationOptions(String optionName) {
        try {
            String locator = "" + optionName + " Button#xpath=//ul[contains(@class,'tab_design_cta')]/descendant::a[normalize-space(text())='" + optionName + "']";
            if (isElementDisplayed(locator)) {
                manualScreenshot(locator.split("#")[0] + " is Displayed successfully");
                clickOn(locator);
                verifyLocatorColor(locator, "#002a53");
                verifyProfileTextBoxLabel(optionName);
            } else {
                testStepFailed(locator.split("#")[0] + " is not Displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed  in verify Profile validation options. Exception: " + e.getClass());
        }
    }

    public void verifyProfileTextBoxLabel(String optionName) {
        try {
            String optionLower = optionName.toLowerCase();
            String locator = "" + optionName + " Text Box Label#xpath=//div[contains(@class,'inputMainBlock')]/label[contains(text(),'" + optionName + "')]|//label[contains(translate(., 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), '" + optionLower + "')]";
            String locator1 = "" + optionName + " Text Box Label#xpath=//div[@class='inputMainBlock']/label[contains(text(),'" + optionName + "')]/following-sibling::input|//label[contains(translate(., 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), '" + optionLower + "')]/following-sibling::input";
//            String locator = "" + optionName + " Text Box Label#xpath=//div[@class='inputMainBlock']/label[contains(text(),'" + optionName + "')]";
            if (isElementDisplayed(locator)) {
                testStepPassed(getText(locator));
                manualScreenshot(locator.split("#")[0] + " is Displayed successfully");
//                clickOn(locator1);
//                typeInIfDisplayed(locator1, "0000000000000");
//                String text = getText(locator1);
//                testStepPassed(text);

            } else {
                testStepFailed(locator.split("#")[0] + " is not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Profile Text BOX label. Exception: " + e.getClass());
        }

    }


    public void verifyButtonIsEnableOrNot(String textBoxlocator, String buttonLocator, String positiveValue) {
        try {
            verifyButtonIsDisabled("CONFIRM");
            clickOn(textBoxlocator);
            typeInIfDisplayed(textBoxlocator, positiveValue);
            String btn_Confirm = verifyButtonIsEnabled("CONFIRM");
            clickOn(btn_Confirm);
            waitForPageToLoad();
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Button is Enable or Not. Exception: " + e.getClass());
        }
    }

    public void verifyButtonIsDisabled(String buttonText) {
        try {
            String button = "" + buttonText + " Button#xpath=//button[normalize-space(text())='" + buttonText + "'and(@disabled)]";
            if (isElementDisplayed(button)) {
                manualScreenshot(buttonText + " button is Disabled successfully without value");
            } else {
                testStepFailed(buttonText + " Button is not disabled without value");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Locator Is Disabled. Exception: " + e.getClass());
        }
    }

    public void verifyButtonIsDisabledInVerificationPage(String buttonText) {
        try {
            String button = "" + buttonText + " Button#xpath=//button[normalize-space(text())='" + buttonText + "'and(@disabled)]|//button[normalize-space(text())='Verify'and(@disabled)]";
            if (isElementDisplayed(button)) {
                manualScreenshot(buttonText + " button is Disabled successfully without value");
            } else {
                testStepFailed(buttonText + " Button is not disabled without value");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Locator Is Disabled. Exception: " + e.getClass());
        }
    }

    public String verifyButtonIsEnabled(String buttonText) {
        String button1 = "";
        try {
            String button = "" + buttonText + " Button#xpath=//button[normalize-space(text())='" + buttonText + "'and(@disabled)]";
            button1 = "" + buttonText + " Button#xpath=//button[normalize-space(text())='" + buttonText + "']";
            if (isElementDisplayed(button1) && findWebElement(button1).isEnabled()) {
                manualScreenshot(buttonText + " button is Enabled successfully with valid value");
            } else {
                testStepFailed(buttonText + " Button is not Enabled with valid value");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Locator Is Enabled. Exception: " + e.getClass());
        }
        return button1;
    }

    /*
     *11/05/2022
     *
     */
    public void verifyProfileNameIsNonEditable() {

        try {
            String locator = "Customer Name#xpath=//div[@class='first_vert_part']/p";
            if (isElementDisplayed(locator)) {
                manualScreenshot("Name is non editable");
            } else {
                testStepFailed("Name is editable");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed to verify that Name is Non Editable. Exception: " + e.getClass());
        }


    }

    public void verifyInputBoxEntry(String button) {

        try {
            String locator = "Customer Name#xpath=//div[@class='first_vert_part']/p";
            if (isElementDisplayed(locator)) {
                manualScreenshot("Name is non editable");
            } else {
                testStepFailed("Name is editable");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed to verify that Name is Non Editable. Exception: " + e.getClass());
        }


    }


    public void validateProfileTextBoxOptions(String optionName) {
        try {
            String locator = "" + optionName + " Button#xpath=//ul[@class='tab_design_cta Validate_UserProfile']/descendant::a[normalize-space(text())='" + optionName + "']";
            if (isElementDisplayed(locator)) {
                clickOn(locator);
                verifyProfileTextBoxLabel(optionName);
            } else {
                testStepFailed(locator.split("#")[0] + " is not Displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed  in validate Profile TextBox options. Exception: " + e.getClass());
        }
    }

    public void validateTextBox(String optionName, String invalidValues, String lower, String more, int noOfAcceptedDigits, String errValue, String errMsgText) {
        try {
            String optionLower = optionName.toLowerCase();
            String locatorTextBox = "" + optionName + " Text Box Label#xpath=//div[@class='inputMainBlock']/label[contains(text(),'" + optionName + "')]/following-sibling::input|//label[contains(translate(., 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), '" + optionLower + "')]/following-sibling::input|//div[@class='PANSECTIONDIV']/descendant::input[@id='txtPanNo']|//div[@class='gstin_part']/descendant::label[text()='" + optionName + "']/following-sibling::input|//input[@id='EnterDOBdate_Individual']";
            if (isElementDisplayed(locatorTextBox)) {
                clickOn(locatorTextBox);
                String[] split = invalidValues.split(",");
                for (int i = 0; i < split.length; i++) {
                    String value = split[i];
                    clearEditBox(locatorTextBox);
                    typeInIfDisplayed(locatorTextBox, value);

                    if (!getText(locatorTextBox).contains(value)) {
                        manualScreenshot(locatorTextBox.split("#")[0] + " is Not Accepted Invalid Value successfully");
                    } else {
                        testStepFailed(locatorTextBox.split("#")[0] + " is Accepted Invalid Value Wrongly");
                    }
                }
                if (!optionName.equalsIgnoreCase("Pincode")) {
                    validateTextBoxWithLowerThanAcceptedValue(locatorTextBox, lower);
                }

                validateTextBoxWithMoreThanAcceptedValue(locatorTextBox, more, noOfAcceptedDigits);
//                clickUsingMouse();
                verifyErrorMessageForInvalidData(locatorTextBox, errValue, errMsgText);
            } else {
                testStepFailed(locatorTextBox.split("#")[0] + " is not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in validate Text BOX. Exception: " + e.getClass());
        }
    }

    public void validateTextBoxWithLowerThanAcceptedValue(String locator, String lowerThanAcceptedValidValue) {
        try {
            String[] split = lowerThanAcceptedValidValue.split(",");
            for (int i = 0; i < split.length; i++) {
                String value = split[i];
                clearEditBox(locator);
                typeInIfDisplayed(locator, value);
//                clickUsingMouse();
                if (isElementPresent(proceedButton)) {
                    verifyButtonIsDisabled("Proceed");
                } else if (isElementPresent(verifyButton)) {
                    verifyButtonIsDisabled("Verify");
                } else {
                    testStepFailed("Button is not present");
                }

            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in validate TextBox With Lower Than Accepted Value");
        }

    }

    public void validateTextBoxWithMoreThanAcceptedValue(String locator, String moreThanAcceptedValidValue, int noOfAcceptedDigits) {
        try {
            String[] split = moreThanAcceptedValidValue.split(",");
            for (int i = 0; i < split.length; i++) {
                String value = split[i];
                clearEditBox(locator);
                typeInIfDisplayed(locator, value);
                if (findWebElement(locator).getAttribute("value").trim().length() == noOfAcceptedDigits) {
                    manualScreenshot(locator.split("#")[0] + " is only accepted " + noOfAcceptedDigits + " digits successfully.");
                    testStepPassed("Accepted Value : " + findWebElement(locator).getAttribute("value"));
                } else {
                    testStepFailed("Accepted Value : " + findWebElement(locator).getAttribute("value"));
                    testStepFailed(locator.split("#")[0] + " is accepted more than " + noOfAcceptedDigits + " digits wrongly");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in validate TextBox With More Than Accepted Value");
        }
    }

    public void verifyErrorMessageForInvalidData(String locator, String value, String errorMsgText) {
        try {
            String[] split = value.split(",");

            for (int i = 0; i < split.length; i++) {
                value = split[i];
                clearEditBox(locator);
                typeInIfDisplayed(locator, value);
                if (errorMsgText.equalsIgnoreCase("Enter valid date") | errorMsgText.equalsIgnoreCase("Minimum 18 years of age to be eligible") | errorMsgText.equalsIgnoreCase("Please enter valid EMI Card Number.") | errorMsgText.equalsIgnoreCase("Details entered are not in the correct format.")) {
                    clickUsingMouse();
                } else if (errorMsgText.equalsIgnoreCase("Please enter valid Bank Acc Number.")) {
                    verifyButtonIsDisabled("Proceed");
                } else {
                    testStepInfo("***");
                    verifyErrorMessageUsingText(errorMsgText);
                }


//                verifyErrorMessageUsingText(errorMsgText);
            }


        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Error Message For Invalid Data. Exception: " + e.getClass());
        }
    }

    /**
     * Calendar
     */
    public void verifyCalendar() {
        try {
            String activeDate = "Day Active#xpath=//table[@class='table-condensed']/tbody/tr/td[contains(@class,'active start-date active end-date available')]";
            String disableDate = "Day Disable#xpath=//table[@class='table-condensed']/tbody/tr/td[contains(@class,'active start-date active end-date available')]/following-sibling::td[@class='off disabled'or'weekend off disabled']";
            String disable = "Day Disable present#xpath=//table[@class='table-condensed']/tbody/tr/td[contains(@class,'active start-date active end-date available')]/following-sibling::td";
            String past18YearsDate = generatePastYears(18, "dd/MM/yyyy");
            if (isElementDisplayed(icon_Calendar) || isElementDisplayed(icon_Calendar_Doi)) {
                if (isElementDisplayed(icon_Calendar)) {
                    clickOn(icon_Calendar);
                } else {
                    clickOn(icon_Calendar_Doi);
                }

                manualScreenshot("");
                if (isElementDisplayed(disable)) {
                    if (isElementPresent(disableDate)) {
                        manualScreenshot("18 years less than date disabled successfully");
                    } else {
                        testStepFailed("18 years less than date enabled wrongly");
                    }
                }

                if (isElementDisplayed(activeDate)) {
                    clickOn(activeDate);
                    waitTime(3);
                    if (isElementDisplayed(txtBox_Calendar) || isElementDisplayed(txtBox_Calendar_Doi)) {
                        if (isElementDisplayed(txtBox_Calendar)) {
                            if ((findWebElement(txtBox_Calendar).getAttribute("value")).equals(past18YearsDate)) {
                                manualScreenshot("Calendar able to select 18 years past date successfully : " + getText(txtBox_Calendar));
                            } else {
                                testStepFailed("Calendar not showing 18 years past date : " + getText(txtBox_Calendar));
                            }
                        } else {
                            if ((findWebElement(txtBox_Calendar_Doi).getAttribute("value")).equals(past18YearsDate)) {
                                manualScreenshot("Calendar able to select 18 years past date successfully : " + getText(txtBox_Calendar));
                            } else {
                                testStepFailed("Calendar not showing 18 years past date : " + getText(txtBox_Calendar_Doi));
                            }
                        }

                    } else {
                        testStepFailed("Calendar Text Box is not Displayed");
                    }

                } else {
                    testStepFailed("Active Date is not Displayed");
                }
            } else {
                testStepFailed(icon_Calendar.split("#")[0] + " is Not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify calendar. Exception: " + e.getClass());
        }
    }

    public void verifyCalendarDoi() {
        try {
            String activeDate = "Day Active#xpath=//table[@class='table-condensed']/tbody/tr/td[contains(@class,'active start-date active end-date available')]";
            String disableDate = "Day Disable#xpath=//table[@class='table-condensed']/tbody/tr/td[contains(@class,'active start-date active end-date available')]/following-sibling::td[@class='off disabled'or'weekend off disabled']";
            String disable = "Day Disable present#xpath=//table[@class='table-condensed']/tbody/tr/td[contains(@class,'active start-date active end-date available')]/following-sibling::td";
//        String past18YearsDate = generatePastYears(18,"dd/MM/yyyy");
            String today = generateTodayDate("dd/MM/yyyy");
            if (isElementDisplayed(icon_Calendar_Doi)) {
                clickOn(icon_Calendar_Doi);
                manualScreenshot("");
                if (isElementDisplayed(disable)) {
                    if (isElementPresent(disableDate)) {
                        manualScreenshot("Future date disabled successfully");
                    } else {
                        testStepFailed("Future date enabled wrongly");
                    }
                }

                if (isElementDisplayed(activeDate)) {
                    clickOn(activeDate);
                    if (findWebElement(txtBox_Calendar_Doi).getAttribute("value").trim().equals(today)) {
                        manualScreenshot("Calendar able to select Today date successfully : " + getText(txtBox_Calendar_Doi));
                    } else {
                        testStepFailed("Calendar not showing Today date : " + getText(txtBox_Calendar_Doi));
                    }
                } else {
                    testStepFailed("Active Date is not Displayed");
                }
            } else {
                testStepFailed(icon_Calendar_Doi.split("#")[0] + " is Not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify calendar. Exception: " + e.getClass());
        }
    }

    public void verifyCalendarUsingLocator(String locator, String txtBoxLocator) {
        try {
            String activeDate = "Day Active#xpath=//table[@class='table-condensed']/tbody/tr/td[contains(@class,'active start-date active end-date available')]";
            String disableDate = "Day Disable#xpath=//table[@class='table-condensed']/tbody/tr/td[contains(@class,'active start-date active end-date available')]/following-sibling::td[@class='off disabled'or'weekend off disabled']";
            String disable = "Day Disable present#xpath=//table[@class='table-condensed']/tbody/tr/td[contains(@class,'active start-date active end-date available')]/following-sibling::td";
            String past18YearsDate = generatePastYears(18, "dd/MM/yyyy");
            scrollToWebElement(locator);
            if (isElementDisplayed(locator)) {
                clickOn(locator);
                manualScreenshot("");
                if (isElementDisplayed(disable)) {
                    if (isElementPresent(disableDate)) {
                        manualScreenshot("18 years less than date disabled successfully");
                    } else {
                        testStepFailed("18 years less than date enabled wrongly");
                    }
                }

                if (isElementDisplayed(activeDate)) {
                    clickOn(activeDate);
                    waitTime(3);
                    if ((findWebElement(txtBoxLocator).getAttribute("value")).equals(past18YearsDate)) {
                        manualScreenshot("Calendar able to select 18 years past date successfully : " + getText(txtBoxLocator));
                    } else {
                        testStepFailed("Calendar not showing 18 years past date : " + getText(txtBoxLocator));
                    }
                } else {
                    testStepFailed("Active Date is not Displayed");
                }
            } else {
                testStepFailed(locator.split("#")[0] + " is Not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify calendar using locator. Exception: " + e.getClass());
        }
    }

    public void selectCalendarDate(String yearIn_yyyy, String monthIn_Mmm, String dayIn_d) {
        try {
            String day = "Day : " + dayIn_d + " #xpath=//table[@class='table-condensed']/tbody/tr/td[@class='available'and(normalize-space(text())='" + dayIn_d + "')]|//table[@class='table-condensed']/tbody/tr/td[@class='weekend available'and(normalize-space(text())='" + dayIn_d + "')]";
            if (isElementPresent(icon_Calendar)) {
                scrollToWebElement(icon_Calendar);
            } else if (isElementPresent(icon_Calendar_Doi)) {
                scrollToWebElement(icon_Calendar_Doi);
            } else if (isElementPresent(icon_Calendar_DOB_Individual)) {
                scrollToWebElement(icon_Calendar_DOB_Individual);
            } else if (isElementPresent(icon_Calendar_DOI_Corporate)) {
                scrollToWebElement(icon_Calendar_DOI_Corporate);
            }

            if (isElementDisplayed(icon_Calendar)) {
                clickOn(icon_Calendar);
            } else if (isElementDisplayed(icon_Calendar_Doi)) {
                clickOn(icon_Calendar_Doi);
            } else if (isElementDisplayed(icon_Calendar_DOB_Individual)) {
                clickOn(icon_Calendar_DOB_Individual);
            } else if (isElementDisplayed(icon_Calendar_DOI_Corporate)) {
                clickOn(icon_Calendar_DOI_Corporate);
            } else {
                testStepFailed("Calendar Icon is Not Displayed");
                return;
            }
            selectDropDownUsingText(dropdown_YearInCalendar, yearIn_yyyy);
            selectDropDownUsingText(dropdown_MonthInCalendar, monthIn_Mmm);
            clickOnIfDisplayed(day);
//            String btn_Confirm = verifyButtonIsEnabled("CONFIRM");
//            clickOnIfDisplayed(btn_Confirm);
//            waitForPageToLoad();
//            waitTime(5);
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in select Date in calendar. Exception: " + e.getClass());
        }

    }

    public void selectCalendarDateDOB_DOI(String yearIn_yyyy, String monthIn_Mmm, String dayIn_d) {
        try {
            String day = "Day : " + dayIn_d + " #xpath=//table[@class='table-condensed']/tbody/tr/td[@class='available'and(normalize-space(text())='" + dayIn_d + "')]|//table[@class='table-condensed']/tbody/tr/td[@class='weekend available'and(normalize-space(text())='" + dayIn_d + "')]";
            if (isElementPresent(icon_Calendar)) {
                scrollToWebElement(icon_Calendar);
            } else if (isElementPresent(icon_Calendar_Doi)) {
                scrollToWebElement(icon_Calendar_Doi);
            } else if (isElementPresent(icon_Calendar_DOB_Individual)) {
                scrollToWebElement(icon_Calendar_DOB_Individual);
            }

            if (isElementDisplayed(icon_Calendar)) {
                clickOn(icon_Calendar);
            } else if (isElementDisplayed(icon_Calendar_Doi)) {
                clickOn(icon_Calendar_Doi);
            } else if (isElementDisplayed(icon_Calendar_DOB_Individual)) {
                clickOn(icon_Calendar_DOB_Individual);
            } else {
                testStepFailed("Calendar Icon is Not Displayed");
                return;
            }
            selectDropDownUsingText(dropdown_YearInCalendar, yearIn_yyyy);
            selectDropDownUsingText(dropdown_MonthInCalendar, monthIn_Mmm);
            clickOnIfDisplayed(day);
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in select Date in calendar. Exception: " + e.getClass());
        }

    }


    /**
     * Page: Update PAN Details Page
     */
//verifyProfileTextBoxLabel
    // verifyButtonIsEnableOrNot for positive flow
    public void verifyUpdatePanOptions(String optionName) {
        try {
            String locator = "" + optionName + " Button#xpath=//ul[contains(@class,'tab_design_cta')]/descendant::a[normalize-space(text())='" + optionName + "']";
            if (isElementDisplayed(locator)) {
                manualScreenshot(locator.split("#")[0] + " is Displayed successfully");
                clickOn(locator);
                verifyLocatorColor(locator, "#002a53");
            } else {
                testStepFailed(locator.split("#")[0] + " is not Displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed  in verify Profile validation options. Exception: " + e.getClass());
        }
    }


    public void verifyTextBoxWithValidData(String locatorText, String validData, String buttonText) {
        try {
            String optionLower = locatorText.toLowerCase();
            String locator = "" + locatorText + " TextBox#xpath=//div[contains(@class,'inputMainBlock')]/label[contains(text(),'" + locatorText + "')]/following-sibling::input|//label[contains(translate(., 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), '" + optionLower + "')]/following-sibling::input";
            if (isElementDisplayed(locator)) {
                clearEditBox(locator);
                typeInIfDisplayed(locator, validData);
                String button = verifyButtonIsEnabled(buttonText);
                clickOn(button);
                waitForPageToLoad();
                waitTime(10);
            } else {
                testStepFailed(locator.split("#")[0] + " is not displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify text box with Valid Data. Exception: " + e.getClass());
        }

    }

    public void verifyName() {
        try {
            String firstName = "First name#xpath=//div[@class='first_vert_part']/p";
            String icon_FirstName = "First name First Letter#xpath=//div[@class='first_vert_part']/div";
            String fName = null;
            String fLetter = null;
            scrollToWebElement(icon_FirstName);
            if (isElementDisplayed(firstName)) {
                fName = getText(firstName).trim();
                testStepPassed("First Name is : " + fName);
            } else {
                testStepFailed("First Name is Not Displayed");
            }
            if (isElementDisplayed(icon_FirstName)) {
                fLetter = getText(icon_FirstName).trim();
                testStepPassed("Icon with First Letter is : " + fLetter);

            } else {
                testStepFailed("Icon with First Letter is Not Displayed");
            }
//            if (String.valueOf(fName.indexOf(0)).equals(fLetter.trim())) {
            if (fName.substring(0, 1).equals(fLetter)) {
                manualScreenshot("Icon showing Name of the First letter is verified successfully");
            } else {
//                    testStepFailed(fName.substring(0,1));
                testStepFailed("Icon showing Name of the First letter is Not verified");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify name. Exception: " + e.getClass());
        }
    }

    /////////////////ALLIGNMENT & FONT

    private void verifyAlignmentUsingTag(String tag, String OptionsTextWithComma) {
        try {
            String[] split = OptionsTextWithComma.split(",");
            int temp = 0;

            for (int i = 0; i < split.length; i++) {
                String option = split[i];
                String locator = "" + option + " Button#xpath=" + tag + "[normalize-space(text())='" + option.trim() + "']";
                if (isElementDisplayed(locator)) {

                    int y = getLocatorY_Position(locator);
//             testStepPassed(y+" : "+i+"");//
                    if (i != 0) {
                        if (y == temp) {
                            testStepPassed(split[i - 1] + " button position: " + temp);
                            testStepPassed(split[i] + " button position: " + y);
                            manualScreenshot(split[i - 1] + " button and " + split[i] + " button Alignment verified successfully");
                        } else {
                            testStepFailed(split[i - 1] + " button position: " + temp);
                            testStepFailed(split[i] + " button position: " + y);
                            manualScreenshot(split[i - 1] + " button and " + split[i] + " button Alignment is NOT verified");
                        }
                    }
                    temp = y;
                } else {
                    testStepFailed(locator.split("#")[0] + " is Not Displayed");
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Alignment Using tag. Exception: " + e.getClass());
        }
    }

    private void verifyLocatorSizeUsingTag(String tag, String OptionsTextWithComma) {
        try {
            String[] split = OptionsTextWithComma.split(",");
            int temp = 0;

            for (int i = 0; i < split.length; i++) {
                String option = split[i];
                String locator = "" + option + " Button#xpath=" + tag + "[normalize-space(text())='" + option.trim() + "']";
                if (isElementDisplayed(locator)) {

                    int y = getLocatorHeight(locator);
//                testStepPassed(y+" : "+i+"");//
                    if (i != 0) {
                        if (y == temp) {
                            testStepPassed(split[i - 1] + " button Height: " + temp);
                            testStepPassed(split[i] + " button Height: " + y);
                            manualScreenshot(split[i - 1] + " button size and " + split[i] + " button size are verified successfully");
                        } else {
                            testStepFailed(split[i - 1] + " button Height: " + temp);
                            testStepFailed(split[i] + " button Height: " + y);
                            manualScreenshot(split[i - 1] + " button size and " + split[i] + " button Height are NOT verified");
                        }
                    }
                    temp = y;
                } else {
                    testStepFailed(locator.split("#")[0] + " is Not Displayed");
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify locator size Using tag. Exception: " + e.getClass());
        }
    }

    private void verifyFontUsingTag(String tag, String OptionsTextWithComma) {
        try {
            String[] split = OptionsTextWithComma.split(",");
            String temp = "";

            for (int i = 0; i < split.length; i++) {
                String option = split[i];
                String locator = "" + option + " Button#xpath=" + tag + "[normalize-space(text())='" + option.trim() + "']";

                if (isElementDisplayed(locator)) {
                    String y = validateFont(locator);
//                    testStepPassed(y + " : " + i + "");//
                    if (i != 0) {
                        if (y.equals(temp)) {
                            testStepPassed(split[i - 1] + " button Font: " + temp);
                            testStepPassed(split[i] + " button Font: " + y);
                            manualScreenshot(split[i - 1] + " button Font and " + split[i] + " button Font is verified successfully");
                        } else {
                            testStepFailed(split[i - 1] + " button Font: " + temp);
                            testStepFailed(split[i] + " button Font: " + y);
                            manualScreenshot(split[i - 1] + " button Font and " + split[i] + " button Font is NOT verified");
                        }
                    }
                    temp = y;

                } else {
                    testStepFailed(locator.split("#")[0] + " is Not Displayed");
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Font Using tag. Exception: " + e.getClass());
        }
    }

    private void verifyFontSizeUsingTag(String tag, String OptionsTextWithComma) {
        try {
            String[] split = OptionsTextWithComma.split(",");
            String temp = "";

            for (int i = 0; i < split.length; i++) {
                String option = split[i];
                String locator = "" + option + " Button#xpath=" + tag + "[normalize-space(text())='" + option.trim() + "']";
                if (isElementDisplayed(locator)) {

                    String y = validateFontSize(locator);
//                testStepPassed(y+" : "+i+"");//
                    if (i != 0) {
                        if (y.equals(temp)) {
                            testStepPassed(split[i - 1] + " button Font Size: " + temp);
                            testStepPassed(split[i] + " button Font Size: " + y);
                            manualScreenshot(split[i - 1] + " button Font Size and " + split[i] + " button Font Size is verified successfully");
                        } else {
                            testStepFailed(split[i - 1] + " button Font Size: " + temp);
                            testStepFailed(split[i] + " button Font Size: " + y);
                            manualScreenshot(split[i - 1] + " button Font Size and " + split[i] + " button Font Size is NOT verified");
                        }
                    }
                    temp = y;
                } else {
                    testStepFailed(locator.split("#")[0] + " is Not Displayed");
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Font Size Using tag. Exception: " + e.getClass());
        }
    }

    private void verifyFontTextAlignUsingTag(String tag, String OptionsTextWithComma) {
        try {
            String[] split = OptionsTextWithComma.split(",");
            String temp = "";

            for (int i = 0; i < split.length; i++) {
                String option = split[i];
                String locator = "" + option + " Button#xpath=" + tag + "[normalize-space(text())='" + option.trim() + "']";
                if (isElementDisplayed(locator)) {
                    String y = validateFontTextAlign(locator);
//                testStepPassed(y+" : "+i+"");//
                    if (i != 0) {
                        if (y.equals(temp)) {
                            testStepPassed(split[i - 1] + " button Text Align: " + temp);
                            testStepPassed(split[i] + " button Text Align: " + y);
                            manualScreenshot(split[i - 1] + " button Text Align and " + split[i] + " button Text Align is verified successfully");
                        } else {
                            testStepFailed(split[i - 1] + " button Text Align: " + temp);
                            testStepFailed(split[i] + " button Text Align: " + y);
                            manualScreenshot(split[i - 1] + " button Text Align and " + split[i] + " button Text Align is NOT verified");
                        }
                    }
                    temp = y;
                } else {
                    testStepFailed(locator.split("#")[0] + " is Not Displayed");
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Font Text Align Using tag. Exception: " + e.getClass());
        }
    }


    public void verfiyFontInProfilePage(String tag, String OptionsTextWithComma) {
        try {
            verifyAlignmentUsingTag(tag, OptionsTextWithComma);
            verifyLocatorSizeUsingTag(tag, OptionsTextWithComma);
            verifyFontUsingTag(tag, OptionsTextWithComma);
            verifyFontSizeUsingTag(tag, OptionsTextWithComma);
            verifyFontTextAlignUsingTag(tag, OptionsTextWithComma);
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify buttons font in Profile Page. Exception: " + e.getClass());
        }

    }

    public void verifyRequestInProgress() {
        try {
            if (isElementPresent(txt_ReqInProgress)) {
                Boolean flag = false;
                for (int i = 1; i <= findWebElements(txt_ReqInProgress).size(); i++) {
                    String locator = "Request In Progress#xpath=(//p[normalize-space(text())='Request in progress'])[" + i + "]";
                    String text = "";
                    scrollToWebElement(locator);
                    if (isElementDisplayed(locator)) {
                        flag = true;
                        String locator1 = "Field Name#xpath=(//p[normalize-space(text())='Request in progress']/preceding-sibling::i)[" + i + "]";
                        if (isElementPresent(locator1)) {
                            text = getText(locator1);
                        }
                        manualScreenshot("Request in progress under " + text + " is displayed successfully");
                    }
                }
                if (!flag) {
                    testStepFailed("Request in progress is not dispalyed");
                }
            } else {
                testStepFailed(txt_ReqInProgress.split("#")[0] + " is not Present");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in request in Progress. Exception: " + e.getClass());
        }
    }

    public void clickOnEditButtonInMyProfilePage(String optionName) {
        try {
            String buttonEdit = "" + optionName + " Edit Button in My Profile Page#xpath=//i[normalize-space(text())='" + optionName + "']/ancestor::div[@class='edit_details_box']/../descendant::a[contains(@class,'cta')]";
            scrollToWebElement(buttonEdit);
            clickOnIfDisplayed(buttonEdit);
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("failed in click on Edit button in My Profile Page. Exception: " + e.getClass());
        }

    }

    public void enterOtpInTextBox(String sixDigitOtp) {
        try {
            for (int i = 1; i <= 6; i++) {
                String locator = "OTP Text Box " + i + "#xpath=//input[@id='OTP-digit-" + i + "']";
                if (isElementDisplayed(locator)) {
                    typeInIfDisplayed(locator, String.valueOf(sixDigitOtp.charAt(i - 1)));
                } else {
                    testStepFailed(locator.split("#")[0] + " is Not Displayed");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in enter otp in Text Box . Exception: " + e.getClass());
        }

    }

    public void clickOnButtonUsingTextIfOnlyDisplayed(String buttonText) {
        try {
            Boolean flag = false;
            String locator = "#xpath=//a[normalize-space(text())='" + buttonText + "']|//button[normalize-space(text())='" + buttonText + "']";
            for (int i = 1; i <= findWebElements(locator).size(); i++) {
                String button = "" + buttonText + " Button#xpath=(//a[normalize-space(text())='" + buttonText + "']|//button[normalize-space(text())='" + buttonText + "'])[" + i + "]";
                if (isElementDisplayed(button)) {
                    manualScreenshot(buttonText + " button is Displayed successfully");
                    clickOn(button);
                    waitForPageToLoad();
                    flag = true;
                }
            }
            if (!flag) {
                testStepFailed(buttonText + " button is ot Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in click on button using only if displayed. Exception: " + e.getClass());
        }

    }

    public void enterValueInTextBoxUsingLabel(String label, String value) {
        try {
            String locator = "" + label + " Text Box#xpath=//label[normalize-space(text())='" + label + "']/following-sibling::input";
            scrollToWebElementIfPresent(locator);
            if (isElementDisplayed(locator)) {
                clearEditBox(locator);
                typeInIfDisplayed(locator, value);
                waitTime(1);
                if (findWebElement(locator).getAttribute("value").equals(value)) {
                    manualScreenshot(label + " Text Box is able to edited successfully");
                } else {
                    testStepFailed(label + " Text Box is not able to edited with value: " + findWebElement(locator).getAttribute("value"));
                }
            } else {
                testStepFailed(label + " text Box is Not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in enter value in text Box using label. Exception: " + e.getClass());
        }
    }

    public void verifyColorOfRadioButton(String locator, String cssValue, String expectedValue, String comment) {
        try {
            String actualValue = validateCssValues(locator, cssValue);
            testStepPassed(actualValue);
            if (expectedValue.equals(actualValue)) {
                manualScreenshot(comment + " is verified successfully");
            } else {
                testStepFailed(comment + " is not verified");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Color of Radio Button. Exception: " + e.getClass());
        }
    }

    public String verifyRadioButtonsInGSTIN() {
        String accNumber = "";
        try {
            String locator = "Radio buttons in GSTN#xpath=//div[@class='loanAC_number']/descendant::span[@class='checkmark']";
            if (findWebElements(locator).size() > 1) {
                for (int i = 1; i <= 2; i++) {
                    String btnRadio_LoanAccNumber = "Radio button 1 in GSTN#xpath=(//div[@class='loanAC_number']/descendant::span[@class='checkmark'])[1]";
                    String btnRadio_LoanAccNumber_Next = "Radio button 2 in GSTN#xpath=(//div[@class='loanAC_number']/descendant::span[@class='checkmark'])[2]";
                    String txt_LoanAccNumber_Next = "Loan Account Numebr 2 in GSTN#xpath=(//div[@class='loanAC_number']/descendant::input[@type='radio'])[2]";
                    if (i == 1) {
                        verifyColorOfRadioButton(btnRadio_LoanAccNumber, "border", "#ff6700", "Radio Button 1 selected");
                        verifyColorOfRadioButton(btnRadio_LoanAccNumber_Next, "border", "##a3a3a3", "Radio Button 2 not selected");
                    } else {
                        clickOn(btnRadio_LoanAccNumber_Next);
                        verifyColorOfRadioButton(btnRadio_LoanAccNumber_Next, "border", "#ff6700", "Radio Button 2  selected");
                        verifyColorOfRadioButton(btnRadio_LoanAccNumber, "border", "##a3a3a3", "Radio Button 1 not selected");
                        accNumber = getText(txt_LoanAccNumber_Next);
                    }
                }
            } else if (findWebElements(locator).size() == 1) {
                String txt_LoanAccNumber_Next = "Loan Account Numebr 1 in GSTN#xpath=//div[@class='loanAC_number']/descendant::input[@type='radio']";
                verifyColorOfRadioButton(locator, "border", "#ff6700", "By Default single Radio Button selected");
                accNumber = getText(txt_LoanAccNumber_Next);
            } else {
                String txt_NotAvailable = "Loan Account Number is NOt Available#xpath=//*[normalize-space(text())='Loan Account Number is not available']";
                if (isElementDisplayed(txt_NotAvailable)) {
                    manualScreenshot("Loan Account Number is Not Available in this Customer Id");
                    accNumber = null;
                } else {
                    testStepFailed("Loan Account Number selection for GSTIN is Failed");
                    accNumber = null;
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify button is GSTN. Exception: " + getClass());
        }
        return accNumber;
    }

    public void verifyTextBoxChangedLowerCaseIntoUpperCase(String locator) {
        try {
            String value = findWebElement(locator).getAttribute("value");
            Boolean flag = true;
            for (int i = 0; i < value.length(); i++) {
                char c = value.charAt(i);
                if (Character.isLowerCase(c)) {
                    flag = false;
                }
            }
            if (flag) {
                manualScreenshot("All Characters are Upper case verified successfully");
            } else {
                testStepFailed("Lower case characters are present in GSTIN wrongly");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify TextBox Changed LowerCase Into UpperCase");
        }

    }

    public void verifyAndGetSummaryGstinUsingLabel(String label, String expected) {
        try {
            String locator = "" + label + " value#xpath=//ul/li/p[normalize-space(text())='" + label + "']/following-sibling::strong";
            if (isElementDisplayed(locator)) {
                manualScreenshot(locator.split("#")[0] + " is Displayed Successfully");
                String actual = getText(locator).trim();
                if (expected.contains(actual)) {
                    manualScreenshot(locator.split("#")[0] + " is Fetched from previous Page successfully");
                } else {
                    testStepFailed(locator.split("#")[0] + " is not fetched form previous page");
                    stepFailed("Current Value : " + actual);
                }
            } else {
                testStepFailed(locator.split("#")[0] + " is Not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Summary Gstin. Exception: " + e.getClass());
        }
    }

    public String getProfileName() {
        String nameProfile = "";
        try {
            if (isElementDisplayed(HomePage.icon_Profile)) {
                clickOn(HomePage.icon_Profile);
                String txt_Name = "Profile Name#xpath=//div[@class='nm_scs']/p";
                if (isElementDisplayed(txt_Name)) {
                    nameProfile = getText(txt_Name);
                } else {
                    testStepFailed("Profile Name is Not Displayed");
                }
            } else {
                testStepFailed("Profile Icon is not displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in get Profile name. Exception: " + e.getClass());
        }

        return nameProfile;
    }

    ///////////////////////////////////////////////
    public void verifyLabelIconsInMyProfile(String labelOption) {
        try {
            String label = "" + labelOption + " Label Icon#xpath=//i[normalize-space(text())='" + labelOption + "']/../../img";
            verifyLocatorIsDisplayedOrNot(label);
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Label Icon in My Profile Page. Exception: " + e.getClass());
        }

    }

    public void clickOnEditOrUpdateButtonUsingLabel(String label, String buttonText, String extra) {
        try {
            String btn = "" + label + " " + buttonText + " Button#xpath=//i[normalize-space(text())='" + label.trim() + "']/../../following-sibling::div/a[normalize-space(text())='" + buttonText.trim() + "']";
            if (isElementPresent(btn)) {
                scrollToWebElement(btn);
            }
            if (isElementDisplayed(btn)) {
                clickOn(btn);
                waitForPageToLoad();
            } else {
                testStepFailed(getRefOfXpath(btn) + " is Not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in click on Edit button Using label in My Profile page. Exception: " + e.getClass());
        }
    }


    public void verifyCustomerHasValueUsinglabels(String labelOptionWIthComma) {
        try {
            String[] split = labelOptionWIthComma.split(",");
            for (int i = 0; i < split.length; i++) {
                String labelOption = split[i].trim();
                String label = "" + labelOption + " Label Value#xpath=//i[normalize-space(text())='" + labelOption.trim() + "']/following-sibling::p";
                String btn_Edit = "" + labelOption + " Edit Button#xpath=//i[normalize-space(text())='" + labelOption.trim() + "']/../../following-sibling::div/a[normalize-space(text())='Edit']";
                String btn_Update = "" + labelOption + " Update Button#xpath=//i[normalize-space(text())='" + labelOption.trim() + "']/../../following-sibling::div/a[normalize-space(text())='Update']";
                if (isElementPresent(label)) {
                    scrollToWebElement(label);
                    if (isElementDisplayed(label)) {
                        String value = textGet(label);
                        if (!value.trim().equalsIgnoreCase("Not Available")) {
                            if (isElementDisplayed(btn_Edit)) {
                                manualScreenshot(getRefOfXpath(btn_Edit) + " is Displayed successfully. Value: " + value);
                            } else {
                                testStepFailed(getRefOfXpath(btn_Edit) + " is not displayed. Value: " + value);
                            }
                        } else {
                            if (isElementDisplayed(btn_Update)) {
                                manualScreenshot(getRefOfXpath(btn_Update) + " is Displayed successfully for Not Available value");
                            } else {
                                testStepFailed(getRefOfXpath(btn_Update) + " is not displayed for Not Available value");
                            }
                        }
                    } else {
                        testStepFailed(getRefOfXpath(label) + " is not displayed");
                    }
                } else {
                    testStepFailed(getRefOfXpath(label) + " is not present");
                }

            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify customer has values using labels in My Profile Page. Exception: " + e.getClass());
        }

    }

    public void clickOnButtonInPopup(String buttonText, String extra) {
        try {
            String btn = "" + buttonText + " button#xpath=//div[@id='ConfirmBox']/descendant::a[normalize-space(text())='" + buttonText.trim() + "']";
            if (isElementDisplayed(btn)) {
                clickOn(btn);
                waitForPageToLoad();
            } else {
                testStepFailed(getRefOfXpath(btn) + " is Not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Click on buttonin popup. Exception: " + e.getClass());
        }

    }

    public void clickOnValidationButton(String optionName) {
        try {
            String locator = "" + optionName + " Button#xpath=//ul[contains(@class,'tab_design_cta')]/descendant::a[normalize-space(text())='" + optionName + "']";
            if (isElementDisplayed(locator)) {
                clickOn(locator);
                waitForPageToLoad();
            } else {
                testStepFailed(locator.split("#")[0] + " is not Displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed  in verify Profile validation options. Exception: " + e.getClass());
        }
    }

    public void enterValidDataInValidationPageTextBox(String locatorText, String validData) {
        try {
            String optionLower = locatorText.toLowerCase();
            String locator = "" + locatorText + " TextBox#xpath=//div[contains(@class,'inputMainBlock')]/label[contains(text(),'" + locatorText + "')]/following-sibling::input|//label[contains(translate(., 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), '" + optionLower + "')]/following-sibling::input";
            if (isElementDisplayed(locator)) {
                clearEditBox(locator);
                typeInIfDisplayed(locator, validData);
//                String button = verifyButtonIsEnabled(buttonText);
//                clickOn(button);
//                waitForPageToLoad();
//                waitTime(10);
            } else {
                testStepFailed(locator.split("#")[0] + " is not displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify text box with Valid Data. Exception: " + e.getClass());
        }

    }

    public void verifySuccessMessage(String name) {
        try {
            String locator = "" + name + " Thank You Message After Submit#xpath=//*[contains(text(),'Thank you for reaching out to us . Your service request no ')and(contains(text(),' is raised for updation of your " + name + " We shall get back in the next 2 business day. Track your request through our request history.'))]";
            WebDriverWait wait = new WebDriverWait(driver, 30);
//            WebElement element = wait.until(ExpectedConditions.presenceOfElementLocated(By.xpath(locator.split("#xpath=")[1])));
//            WebElement element = wait.until(ExpectedConditions.visibilityOf(findWebElement(locator)));
            wait.until(ExpectedConditions.refreshed(ExpectedConditions.visibilityOf(findWebElement(locator))));
//            waitForThreeDotsDisAppear();
            verifyElementIsDisplayedUsingLocator(locator);
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify success message. Exception: " + e.getClass());
        }
    }

    public void verifyRequestInProgress(String name, String extra) {
        try {
            String txt_RequestInProgress = name + "Request In Progress#xpath=//i[normalize-space(text())='" + name + "']/following-sibling::p[normalize-space(text())='Request in progress']";
            verifyElementIsDisplayedUsingLocator(txt_RequestInProgress);
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Request in Progress. Exception: " + e.getClass());
        }
    }

    public void verifyTabOptionsInVerificationPage(String optionNames) {
        try {
            String[] names = optionNames.split(",");
            for (int i = 0; i < names.length; i++) {
                String locator = "" + names[i] + " Button#xpath=//ul[contains(@class,'tab_design_cta')]/descendant::a[normalize-space(text())='" + names[i].trim() + "']";
                if (isElementDisplayed(locator)) {
                    manualScreenshot(locator.split("#")[0] + " is Displayed successfully");
                } else {
                    testStepFailed(locator.split("#")[0] + " is not Displayed");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed  in verify tab Options in verification Page. Exception: " + e.getClass());
        }
    }

    public void verifyTabDefaultSelected(String optionName) {
        try {
            String locator = "" + optionName + " Button#xpath=//ul[contains(@class,'tab_design_cta')]/descendant::a[normalize-space(text())='" + optionName + "']";
            if (isElementDisplayed(locator)) {
                Boolean flag = verifyLocatorColorUsingCssValue(locator, "#002a53", "BLUE", "background-color");
                if (flag) {
                    testStepPassed(optionName + " Tab Default selected verified successfully");
                } else {
                    testStepPassed(optionName + " Tab Default selected is not verified");
                }
            } else {
                testStepFailed(locator.split("#")[0] + " is not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed  in verify Profile validation options. Exception: " + e.getClass());
        }
    }

    public void verifyTextBoxDisplayedUsingLabel(String label, String extra) {
        try {
            String txtBox_Locator = label + " Text Box#xpath=//label[normalize-space(text())='" + label + "']/following-sibling::input";
            if (isElementDisplayed(txtBox_Locator)) {
                testStepPassed(getRefOfXpath(txtBox_Locator) + " is Displayed successfully");
            } else {
                stepFailed(getRefOfXpath(txtBox_Locator) + " is Not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Text Box Displayed Uisng Label. Exception: " + e.getClass());
        }
    }

    public void verifyIconDisplayedUsingLabel(String label, String extra) {
        try {
            String txtBox_Locator = label + " Upload Icon#xpath=//label[@class='doc_upload_label']";
            if (isElementDisplayed(txtBox_Locator)) {
                testStepPassed(getRefOfXpath(txtBox_Locator) + " is Displayed successfully");
            } else {
                stepFailed(getRefOfXpath(txtBox_Locator) + " is Not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Icon Displayed Uisng Label. Exception: " + e.getClass());
        }
    }

    public void verifyButtonIsDisplayedUsingText(String label, String extra) {
        try {
            String btn_Locator = label + " Button#xpath=//button[normalize-space(text())='" + label.trim() + "']";
            if (isElementDisplayed(btn_Locator)) {
                testStepPassed(getRefOfXpath(btn_Locator) + " is Displayed successfully");
            } else {
                stepFailed(getRefOfXpath(btn_Locator) + " is Not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Icon Displayed Uisng Label. Exception: " + e.getClass());
        }
    }

    public void verifyAllowLocation() {
        try {
            String locator = "Location#xpath=//p[@class='fltename setcity']";
            if (isElementDisplayed(locator)) {
                manualScreenshot(getText(locator) + " is the Current Location of System verified");
            } else {
                testStepFailed(getText(locator) + " is the Current Location of System is not verified");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in get Location. Exception: " + e.getClass());
        }
    }

    public void verifyNotAllowLocation() {
        try {
            String locator = "Location#xpath=//h4[normalize-space(text())='Select city']";
            if (isElementPresent(locator)) {
                scrollToWebElement(locator);
            }
            if (isElementDisplayed(locator)) {
                manualScreenshot("Select city is Displayed successfully");
            } else {
                testStepFailed("Select city is Not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in get Location. Exception: " + e.getClass());
        }
    }


    //29_08_2022
    //Not Available

    public void verifyNotAvailableUsinglabels(String labelOptionWIthComma) {
        try {
            String[] split = labelOptionWIthComma.split(",");
            for (int i = 0; i < split.length; i++) {
                String labelOption = split[i].trim();
                String value = "" + labelOption + " Value#xpath=//i[normalize-space(text())='" + labelOption.trim() + "']/following-sibling::p";
                String btn_Edit = "" + labelOption + " Edit Button#xpath=//i[normalize-space(text())='" + labelOption.trim() + "']/../../following-sibling::div/a[normalize-space(text())='Edit']";
                String btn_Update = "" + labelOption + " Update Button#xpath=//i[normalize-space(text())='" + labelOption.trim() + "']/../../following-sibling::div/a[normalize-space(text())='Update']";
                Boolean flag = scrollToWebElementIfPresent(value);
                if (flag) {
                    if (isElementDisplayed(value)) {

                        if (isElementDisplayed(btn_Update)) {
                            if (textGet(value).trim().equalsIgnoreCase("Not Available") || textGet(value).trim().equalsIgnoreCase("NA")) {
                                manualScreenshot(getRefOfXpath(btn_Update) + " is Displayed successfully for Not Available value");
                            } else {
                                testStepFailed(getRefOfXpath(btn_Update) + " is not displayed for Not Available value");
                            }
                        } else if (textGet(value).trim().equalsIgnoreCase("Not Available") || textGet(value).trim().equalsIgnoreCase("NA")) {
                            if (isElementDisplayed(btn_Update)) {
                                manualScreenshot(getRefOfXpath(btn_Update) + " is Displayed successfully for Not Available value");
                            } else {
                                testStepFailed(getRefOfXpath(btn_Update) + " is not displayed for Not Available value");
                            }
                        } else if (isElementDisplayed(btn_Edit)) {
                            testStepFailed(getRefOfXpath(btn_Update) + " is Not Displayed for this customer Id");
                        } else {
                            stepFailed("Not Available Text Validation for " + labelOption + " is Failed");
                        }
                    } else {
                        testStepFailed(getRefOfXpath(value) + " is not displayed");
                    }

                } else {
                    testStepFailed(getRefOfXpath(value) + " is not present");
                }


            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Not Available Using labels in My Profile Page. Exception: " + e.getClass());
        }

    }

    public void verifyErrorMessageMyProfile(String optionName, String nagtiveValues, String negativeErrorMessage) {
        String optionLower = optionName.toLowerCase();
        try {
            String locatorTextBox = "" + optionName + " Text Box Label#xpath=//div[@class='inputMainBlock']/label[contains(text(),'" + optionName + "')]/following-sibling::input|//label[contains(translate(., 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), '" + optionLower + "')]/following-sibling::input|//div[@class='PANSECTIONDIV']/descendant::input[@id='txtPanNo']|//div[@class='gstin_part']/descendant::label[text()='" + optionName + "']/following-sibling::input|//input[@id='EnterDOBdate_Individual']";
            if (isElementPresent(locatorTextBox)) {
                String[] values = nagtiveValues.split(",");
                for (int i = 0; i < values.length; i++) {
                    String value = values[i];
                    clearEditBox(locatorTextBox);
                    typeIn(locatorTextBox, value);
                    waitTime(2);
                    if (negativeErrorMessage.equalsIgnoreCase("Enter valid date") | negativeErrorMessage.equalsIgnoreCase("Minimum 18 years of age to be eligible") | negativeErrorMessage.equalsIgnoreCase("Please enter valid EMI Card Number.") | negativeErrorMessage.equalsIgnoreCase("Details entered are not in the correct format.")) {
                        clickUsingMouse();
                        verifyErrorMessageUsingText(negativeErrorMessage);
                    } else if (negativeErrorMessage.equalsIgnoreCase("Please enter valid Bank Acc Number.")) {
                        verifyButtonIsDisabled("Proceed");
                    } else {
                        testStepInfo("***");
                        verifyErrorMessageUsingText(negativeErrorMessage);
                    }
//clickUsingMouse();

                }
            } else {
                testStepFailed(getRefOfXpath(locatorTextBox) + " is Not Present");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Error Message My Profile " + negativeErrorMessage + ". Exception: " + e.getClass());
        }
    }

    public void validateTextBoxSecond(String optionName, String invalidValues, String lower, String more, int noOfAcceptedDigits, String errValue, String errMsgText, String buttonText) {
        try {
            String optionLower = optionName.toLowerCase();
            String locatorTextBox = "";
            String locator = "" + optionName + " Text Box Label#xpath=//div[@class='inputMainBlock']/label[contains(text(),'" + optionName + "')]/following-sibling::input|//label[contains(translate(., 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), '" + optionLower + "')]/following-sibling::input|//div[@class='PANSECTIONDIV']/descendant::input[@id='txtPanNo']|//div[@class='gstin_part']/descendant::label[text()='" + optionName + "']/following-sibling::input|//label[normalize-space(text())='" + optionName.trim() + "']/following-sibling::input";
            int size = sizeOfLocator(locator);
            boolean flag = false;
            for (int i = 1; i <= size; i++) {
                String locatorTextBox1 = "" + optionName + " Text Box Label#xpath=(//div[@class='inputMainBlock']/label[contains(text(),'" + optionName + "')]/following-sibling::input|//label[contains(translate(., 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), '" + optionLower + "')]/following-sibling::input|//div[@class='PANSECTIONDIV']/descendant::input[@id='txtPanNo']|//div[@class='gstin_part']/descendant::label[text()='" + optionName + "']/following-sibling::input|//label[normalize-space(text())='" + optionName.trim() + "']/following-sibling::input)[" + i + "]";
                if (isElementDisplayed(locatorTextBox1)) {
                    flag = true;
                    locatorTextBox = locatorTextBox1;
                    break;
                }
            }
            if (!flag) {
                testStepFailed(optionName + " is not Displayed");
                return;
            }
            if (isElementDisplayed(locatorTextBox)) {
                clickOn(locatorTextBox);
                String[] split = invalidValues.split(",");
                for (int i = 0; i < split.length; i++) {
                    String value = split[i];
                    clearEditBox(locatorTextBox);
                    typeInIfDisplayed(locatorTextBox, value);
//                    clickUsingMouse();
                    if (!getText(locatorTextBox).contains(value)) {
                        manualScreenshot(locatorTextBox.split("#")[0] + " is Not Accepted Invalid Value successfully");
                    } else {
                        testStepFailed(locatorTextBox.split("#")[0] + " is Accepted Invalid Value Wrongly");
                    }
                }
                if (!optionName.equalsIgnoreCase("Pincode")) {
                    validateTextBoxWithLowerThanAcceptedValue(locatorTextBox, lower, buttonText);
                }

                validateTextBoxWithMoreThanAcceptedValue(locatorTextBox, more, noOfAcceptedDigits);

                verifyErrorMessageForInvalidData(locatorTextBox, errValue, errMsgText);
            } else {
                testStepFailed(locatorTextBox.split("#")[0] + " is not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in validate Text BOX Second. Exception: " + e.getClass());
        }
    }


    public void validateTextBoxWithLowerThanAcceptedValue(String locator, String lowerThanAcceptedValidValue, String buttonText) {
        try {
            String[] split = lowerThanAcceptedValidValue.split(",");
            for (int i = 0; i < split.length; i++) {
                String value = split[i];
                clearEditBox(locator);
                typeInIfDisplayed(locator, value);
//                clickUsingMouse();
                String button = buttonText + " Button#xpath=//*[normalize-space(text())='" + buttonText.trim() + "']";
                if (isElementPresent(button)) {
                    verifyButtonIsDisabled(buttonText);
                } else {
                    testStepFailed(buttonText + " Button is not present");
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in validate TextBox With Lower Than Accepted Value. Exception: " + e.getClass());
        }

    }

    public void clickUsingMouse() {
        try {
            String header = "header#xpath=//h1[normalize-space(text())='Verify your details']";
            Actions ac = new Actions(driver);
            ac.click(findWebElement(header)).perform();
//ac.moveByOffset(findWebElement(header).getLocation().getX(),findWebElement(header).getLocation().getY()).doubleClick().perform();
//            if (isElementPresent(header)) {
//                clickOn(header);
//                clickOn(header);
//            } else {
//                stepFailed("Header is Not Present for Error Click");
//            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in Click Uisng Mouse. Exception: " + e.getClass());
        }
    }

    public void raisedRequestsPopup(String option, String extra) {
        try {
            String locator = "My Profile " + option + " #xpath=//p[@id='servicemsg' and normalize-space(text())='We have already received a service request to update your " + option.trim() + "']";
            if (isElementDisplayed(locator)) {
                testStepPassed("Request is already raised for updating" + option);
                clickOnButtonUsingTextUsingForLoop("OK");
            } else {
                testStepFailed(getRefOfXpath(locator) + "Already Raised Request Popup is not Displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in raised Requests Popup. Exception: " + e.getClass());
        }
    }

/////13022023

    public static final String mult_Doc = "Multiple Dcoument Upload Section#xpath=//div[@class='doc_upload profile-frontback-upload']";
    public static final String front_Upload = "Front Upload#xpath=//div[@class='j_doc_upload_overflow']/descendant::label[contains(@class,'j_doc_label frontimg')]//input";
    public static final String back_Upload = "Back Upload#xpath=//div[@class='back-doc']/descendant::label[contains(@class,'j_doc_label')]/input";
    public static final String front_Delete = "Front Delete#xpath=//div[@class='front-doc']/descendant::a[@class='delete']";
    public static final String back_Delete = "Back Delete#xpath=//div[@class='back-doc']/descendant::a[@class='delete']";
    public static final String infoIcon_DocUploadPage = "Info Icon Doc page#xpath=//img[contains(@src,'images/icons-info.svg')]/parent::a";
    public static final String infoIcon_DocUploadPageCloseButton = "Info Icon Close Button#xpath=//img[contains(@src,'images/icons-cross.svg')]/parent::a[@class='a_close_cta']";


    public void emailMasked(String value, String extra) {
        try {
            String[] split = value.split("@");
            String mail = split[0];
            String domain = split[1];

            boolean isPassed = false;
            String startmail = mail.substring(0, 2);
            String middlemail = mail.substring(2, mail.length() - 2);
            String lastmail = mail.substring(mail.length() - 2, mail.length());
            String sequence = "";
            for (int i = 0; i < startmail.length(); i++) {
                char a = startmail.charAt(i);
                if (!(a == 'X')) {
                    isPassed = true;
                }
            }
            if (isPassed == true) {
                testStepPassed("First Two letters of the Customer Email is not in Masked State " + startmail);

            } else {
                testStepFailed("First Two letters of the Customer Email is in Masked State " + startmail);

            }

            for (int i = 0; i < middlemail.length(); i++) {
                char a = middlemail.charAt(i);
                if ((a == 'X')) {
                    isPassed = true;
                }
            }

            if (isPassed == true) {
                testStepPassed("Middle part of the Customer Email is in Masked State " + middlemail);

            } else {
                testStepFailed("Middle part of the Customer Email is not in Masked State " + middlemail);

            }


            for (int i = 0; i < lastmail.length(); i++) {
                char a = lastmail.charAt(i);
                if (!(a == 'X')) {
                    isPassed = true;
                }
            }

            if (isPassed == true) {
                testStepPassed("Last Two letters of the Customer Email is not in Masked State " + lastmail);

            } else {
                testStepFailed("Last Two letters of the Customer Email is in Masked State " + lastmail);

            }


            for (int i = 0; i < domain.length(); i++) {
                char a = domain.charAt(i);
                if (!(a == 'X')) {
                    isPassed = true;
                }
            }

            if (isPassed == true) {
                testStepPassed("Last Two letters of the Customer Email is not in Masked State " + lastmail);

            } else {
                testStepFailed("Last Two letters of the Customer Email is in Masked State " + lastmail);

            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in email Masked. Exception: " + e.getClass());
        }
    }

    public void addressMasked(String value, String extra) {
        try {
            String[] split = value.split("X, ");
            String firstPart = split[0];
            String midPart = split[1];
            String endPart = split[2];
            boolean pass = false;
            String first15 = firstPart.substring(0, 15);
            String second15 = firstPart.substring(15, firstPart.length());
            for (int i = 0; i < first15.length(); i++) {
                char a = first15.charAt(i);
                if (!(a == 'X')) {
                    pass = true;
                }
            }
            if (pass) {
                testStepPassed("First Fifteen letters of the Address is not in Masked State " + first15);
            } else {
                testStepFailed("First Fifteen letters of the Customer Email is in Masked State " + first15);
            }

            for (int i = 0; i < second15.length(); i++) {
                char a = second15.charAt(i);
                if ((a == 'X')) {
                    pass = true;
                }
            }
            if (pass) {
                testStepPassed("Other than First Fifteen letters of the Address(initial) is in Masked State " + second15);
            } else {
                testStepFailed("Other than First Fifteen letters of the Address(initial) is not in Masked State " + second15);
            }


            for (int i = 0; i < midPart.length(); i++) {
                char a = midPart.charAt(i);
                if ((a == 'X')) {
                    pass = true;
                }
            }
            if (pass) {
                testStepPassed("Middle part of the Address is in Masked State " + midPart);
            } else {
                testStepFailed("Middle part of the Address is not in Masked State " + midPart);
            }


            String[] split2 = endPart.split(" - ");
            String state = split2[0];
            String pin = split2[1];

            for (int i = 0; i < state.length(); i++) {
                char a = state.charAt(i);
                if (!(a == 'X')) {
                    pass = true;
                }
            }
            if (pass) {
                testStepPassed("State in the Address is not in Masked State " + state);
            } else {
                testStepFailed("State in the Address is in Masked State " + state);
            }


            for (int i = 0; i < pin.length(); i++) {
                char a = pin.charAt(i);
                if ((a == 'X')) {
                    pass = true;
                }
            }
            if (pass) {
                testStepPassed("Pincode in the Address is in Masked State " + pin);
            } else {
                testStepFailed("Pincode in the Address is not in Masked State " + pin);
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in address Masked. Exception: " + e.getClass());
        }
    }

    public void panMasked(String value, String extra) {
        try {
            String firstPart = value.substring(0, 2);
            String midPart = value.substring(2, 8);
            String endPart = value.substring(8, 10);
            boolean pass = false;

            for (int i = 0; i < firstPart.length(); i++) {
                char a = firstPart.charAt(i);
                if ((a == 'X')) {
                    pass = true;
                }
            }
            if (pass) {
                testStepPassed("First Two letters of the Pan is in Masked State " + firstPart);
            } else {
                testStepFailed("First Two letters of the Customer Pan is not in Masked State " + firstPart);
            }

            for (int i = 0; i < midPart.length(); i++) {
                char a = midPart.charAt(i);
                if (!(a == 'X')) {
                    pass = true;
                }
            }
            if (pass) {
                testStepPassed("Middle Six letters of the Pan is not in Masked State " + midPart);
            } else {
                testStepFailed("Middle Six letters of the Pan is in Masked State " + midPart);
            }


            for (int i = 0; i < endPart.length(); i++) {
                char a = midPart.charAt(i);
                if ((a == 'X')) {
                    pass = true;
                }
            }
            if (pass) {
                testStepPassed("Last Two Letters of the Pan is in Masked State " + endPart);
            } else {
                testStepFailed("Last Two Letters of the Pan is not in Masked State " + endPart);
            }


        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in Pan Masked. Exception: " + e.getClass());
        }
    }

    public void dOBPopupClose() {
        try {
            String locator = "Msg#xpath=//span[normalize-space(text())='Entered DOB is already updated in our records']";
            if (!isElementDisplayed(locator)) {
                testStepPassed("Popup is closed Successfully and Customer redirected to Same Screen");
            } else {
                testStepFailed("Popup is not closed");
            }


        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in dOB Popup Close. Exception: " + e.getClass());

        }

    }

    public void panPopupClose() {
        try {
            String locator = "Msg#xpath=//span[normalize-space(text())='Entered PAN is already updated in our records']";
            if (!isElementDisplayed(locator)) {
                testStepPassed("Popup is closed Successfully and Customer redirected to Same Screen");
            } else {
                testStepFailed("Popup is not closed");
            }


        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in dOB Popup Close. Exception: " + e.getClass());

        }

    }

    /////250723
    public void profilePTBContents(String label1, String label2, String Options, String extra) {
        try {
            String name = "Cust Name: #xpath=//div[@class='first_vert_part guest']//p/span[1]";
            String nameLetter = "Cust Name Logo: #xpath=//div[@class='first_vert_part guest']//div[@id='nameLetter']";
            verifyElementIsDisplayedAndGetText(name);
            verifyElementIsDisplayedAndGetText(nameLetter);
            verifyValueUsingLabel("//div[@class='flex_half order1'][@style='display:']/descendant::div[@class='fields']//i", label1, "/following-sibling::p", "");
            verifyValueUsingLabel("//div[@class='flex_half order3']/descendant::div[@class='fields']//i", label2, "/following-sibling::p", "");
            String Options2 = changedCommaToHash(Options, "");
            verifyFieldsUsingCommonXpathAndMultipleTextWithHash("//ul[@id='details_ul']/li/a", Options2, "");
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in profile PTB Contents. Exception: " + e.getClass());

        }


    }

    public static final String addNamePtb = "Add Button for Name #xpath=//span[@class='guestadd']";
    public static final String addNamePopUp = "Add Name Pop Up #xpath=//div[@id='guestAdd_modal']//div[@class='dialog_body']";
    public static final String addNameInput = "Add Name Pop Up Input #xpath=//input[@id='nameAdded']";
    public static final String addNamePopupCancel = "Add Name Pop Up Cancel Button #xpath=//a[@id='addName_cancel_button'][normalize-space(text())='Cancel']";
    public static final String addNamePopupSubmit = "Add Name Pop Up Submit Button #xpath=//button[@id='addName_button'][normalize-space(text())='SUBMIT']";
    public static final String name = "Cust Name: #xpath=//div[@class='first_vert_part guest']//p/span[1]";

    public void addNamePtbPopup() {
        try {
            String addNameInputLabel = "Add Name Input Box Label: #xpath=//input[@id='nameAdded']/preceding-sibling::label";
            verifyElementIsDisplayedOrNot(addNamePopUp);
            verifyFieldDisplayedUsingTagAndText("strong", "Add your full name", "");
            verifyElementIsDisplayedOrNot(addNameInput);
            verifyElementIsDisplayedAndGetText(addNameInputLabel);
            verifyElementIsDisplayedOrNot(addNamePopupCancel);
            verifyElementIsDisplayedOrNot(addNamePopupSubmit);
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in add Name Ptb Popup. Exception: " + e.getClass());

        }


    }

    public void profilePtbRedirection() {
        try {
            if (!isElementDisplayed(addNameInput) && isElementDisplayed(name)) {
                manualScreenshot("Customer redirected to Profile PTB page");
            } else {
                testStepFailed("Customer not redirected to Profile PTB page");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in profile Ptb Redirection. Exception: " + e.getClass());

        }


    }

    public void profilePtbNameChange(String cust, String extra) {
        try {
            String text = getTextPresent(name);
            if (text.equalsIgnoreCase(cust)) {
                testStepPassed(cust + " name has been added Successfully");
            } else {
                testStepFailed(cust + " name is not changed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in profile Ptb Name Change. Exception: " + e.getClass());

        }


    }

    public static final String addDOBProfilePtb = "Add Button for DOB #xpath=//i[normalize-space(text())='Date of Birth']/../../following::div[@class='edit_cta']/a";
    public static final String addDOBInputProfilePtb = "Add DOB Popup Input #xpath=//input[@id='EnterDOBdate_Individual']";
    public static final String addDOBCheckBoxProfilePtb = "Add DOB Popup CheckBox #xpath=//input[@type='checkbox'][@id='agreement_msg_dob']";
    public static final String addDOBProceedProfilePtb = "Add DOB Popup Proceed #xpath=//button[@id='dob_proceed']";
    public static final String addDOBCancelProfilePtb = "Add DOB Popup Cancel #xpath=//a[@id='dob_proceed_cancel']";

    public void profilePtbRedirectionDOBPopup() {
        try {
            if (!isElementDisplayed(addDOBCancelProfilePtb) && isElementDisplayed(name)) {
                manualScreenshot("Customer redirected to Profile PTB page");
            } else {
                testStepFailed("Customer not redirected to Profile PTB page");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in profile Ptb Redirection DOB Popup. Exception: " + e.getClass());

        }


    }

//    public static final String addPanProfilePtb = "Add Button for PAN #xpath=(//i[normalize-space(text())='Permanent Account Number (PAN)']/../../following::div[@class='edit_cta']/a)[1]";
//    public static final String addDOBInputProfilePtb = "Add DOB Popup Input #xpath=//input[@id='EnterDOBdate_Individual']";
//    public static final String addDOBCheckBoxProfilePtb = "Add DOB Popup CheckBox #xpath=//input[@type='checkbox'][@id='agreement_msg_dob']";
//    public static final String addDOBProceedProfilePtb = "Add DOB Popup Proceed #xpath=//button[@id='dob_proceed']";
//    public static final String addDOBCancelProfilePtb = "Add DOB Popup Cancel #xpath=//a[@id='dob_proceed_cancel']";

    /////Tabs

    public void verifySalariedLabels(String Options, String cta, String extra) {
        try {
            String docFront = "Document Upload Front page #xpath=//input[@id='front_salaried']/parent::label";
            String docBack = "Document Upload Back page #xpath=//input[@id='back_salaried']/parent::label";
            String chkBox = "Check Box for Salaried#xpath=//input[@id='agreement_msg_salaried']/parent::label";
            String Options2 = changedCommaToHash(Options, "");
            verifyFieldsUsingCommonXpathAndMultipleTextWithHash("//div[@class='con_add_bg']/descendant::label[@class='active']|//div[@class='con_add_bg']/descendant::label", Options2, "");
            verifyFieldDisplayedUsingTagAndText("strong", "Upload Salary Slip/Bank Statement", "");
            verifyElementIsDisplayedOrNot(docFront);
            verifyElementIsDisplayedOrNot(docBack);
            verifyElementIsDisplayedOrNot(chkBox);
            verifyButtonIsDisplayedInThePage(cta);
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Salaried Labels. Exception: " + e.getClass());

        }


    }

    public void verifyLabelsProfilePtb(String Options, String extra) {
        try {
            Boolean flag = false;

            String[] options = Options.split(", ");
            for (int i = 0; i < options.length; i++) {
                String text = options[i];
                String label = "For Label " + text + "#xpath=//div[@class='con_add_bg']/descendant::label[normalize-space(text())='" + text.trim() + "']";
                int size = sizeOfLocator(label);
                for (int j = 1; j <= size; j++) {
                    String label1 = "Label :" + text + "#xpath=(//div[@class='con_add_bg']/descendant::label[normalize-space(text())='" + text.trim() + "'])[" + j + "]";
                    if (isElementDisplayed(label1)) {
                        testStepPassed(getRefOfXpath(label1) + " is Displayed Successfully");
                        flag = true;
                        break;
                    }
                }
                if (!flag) {
                    testStepFailed(getRefOfXpath(label) + "  is not Displayed");
                }

            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Labels Profile Ptb. Exception: " + e.getClass());

        }


    }

    public void verifySalariedLabelsAsterics(String Options, String extra) {
        try {
            String[] options = Options.split(", ");
            for (int i = 0; i < options.length; i++) {
                String text = options[i];
                String asterics = "For Label " + text + " Asterics #xpath=//div[@class='con_add_bg']/descendant::label[@class='active'][normalize-space(text())='" + text.trim() + "']//span[contains(text(),'*')]|//div[@class='con_add_bg']/descendant::label[normalize-space(text())='" + text.trim() + "']//span[contains(text(),'*')]";
                verifyElementIsDisplayedOrNot(asterics);
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Salaried Labels Asterics. Exception: " + e.getClass());

        }
    }

    public void verifyAstericsForHeaderOptions(String Options, String extra) {
        try {
            String[] options = Options.split(", ");
            for (int i = 0; i < options.length; i++) {
                String text = options[i];
                String asterics = "For Header: " + text + " -Asterics #xpath=//strong[normalize-space(text())='" + text.trim() + "']//span[normalize-space(text())='*']";
                verifyElementIsDisplayedOrNot(asterics);
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Asterics For Header Options. Exception: " + e.getClass());

        }
    }

    public void verifySelfEmployedContents(String Options, String cta, String extra) {
        try {
            String docFront = "Document Upload Front page #xpath=//input[@id='front_selfEmployed']/parent::label";
            String docBack = "Document Upload Back page #xpath=//input[@id='back_selfEmployed']/parent::label";
            String chkBox = "Check Box for Self Employed#xpath=//input[@id='agreement_msg_selfEmployed']/parent::label";
            verifyLabelsProfilePtb(Options, "");
            verifyFieldDisplayedUsingTagAndText("strong", "Upload Business Registration Certificate/ GST Return", "");
            verifyElementIsDisplayedOrNot(docFront);
            verifyElementIsDisplayedOrNot(docBack);
            verifyElementIsDisplayedOrNot(chkBox);
            verifyButtonIsDisplayedInThePage(cta);

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Self Employed Contents. Exception: " + e.getClass());

        }


    }

    public void verifyProfessionalContents(String Options, String cta, String extra) {
        try {
            String docFront = "Document Upload Front page #xpath=//input[@id='front_professional']/parent::label";
            String docBack = "Document Upload Back page #xpath=//input[@id='back_professional']/parent::label";
            String chkBox = "Check Box for Professional#xpath=//input[@id='agreement_msg_professional']/parent::label";
            verifyLabelsProfilePtb(Options, "");
            verifyFieldDisplayedUsingTagAndText("strong", "Upload Degree Certificate/Visiting Card", "");
            verifyElementIsDisplayedOrNot(docFront);
            verifyElementIsDisplayedOrNot(docBack);
            verifyElementIsDisplayedOrNot(chkBox);
            verifyButtonIsDisplayedInThePage(cta);

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Professional Contents. Exception: " + e.getClass());

        }


    }

    public void verifyOthersContents(String Options, String cta, String extra) {
        try {
            String chkBox = "Check Box for Others#xpath=//input[@id='agreement_msg_others']/parent::label";
            verifyLabelsProfilePtb(Options, "");
            verifyElementIsDisplayedOrNot(chkBox);
            verifyButtonIsDisplayedInThePage(cta);

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Others Contents. Exception: " + e.getClass());

        }


    }

    public static final String input_DescriptionDetails = "Input Box for Description Details - Others Tab#xpath=//input[@id='description_others']";
    public static final String chkBox_Others = "Check Box for Others#xpath=//input[@id='agreement_msg_others']/parent::label";


    ///////Professional
    public static final String docFront_Professional = "Document Upload Front page #xpath=//input[@id='front_professional']";
    public static final String docFront_Professional_Delete = "Document Upload Front page Delete#xpath=//a[@id='delete_front_prof']";
    public static final String docBack_Professional = "Document Upload Back page #xpath=//input[@id='back_professional']";
    public static final String docBack_Professional_Delete = "Document Upload Back page Delete#xpath=//a[@id='delete_back_prof']";
    public static final String chkBox_Professional = "Check Box for Professional#xpath=//input[@id='agreement_msg_professional']/parent::label";
    public static final String mmbrshipNumberProfessional = "Membership Number Box for Professional#xpath=//input[@id='membership_professional']";

    public static final String entityNameSelf = "Entity name in Self Employed#xpath=//input[@id='entityName_selfEmployed']";
    public static final String gstNumberSelf = "GST Number in Self Employed#xpath=//input[@id='gst_selfEmployed']";
    public static final String docFront_Self = "Document Upload Front page #xpath=//input[@id='front_selfEmployed']";
    public static final String docFrontDelete_Self = "Document Upload Front page Delete #xpath=//a[@id='delete_front_se']";
    public static final String docBack_Self = "Document Upload Back page #xpath=//input[@id='back_selfEmployed']";
    public static final String docBackDelete_Self = "Document Upload Back page Delete #xpath=//a[@id='delete_back_se']";
    public static final String chkBox_Self = "Check Box for Self Employed#xpath=//input[@id='agreement_msg_selfEmployed']/parent::label";

    public static final String docFront_Salary = "Document Upload Front page #xpath=//input[@id='front_salaried']";
    public static final String docFrontDelete_Salary = "Document Upload Front page Delete#xpath=//a[@id='delete_front_sal']";
    public static final String docBack_Salary = "Document Upload Back page #xpath=//input[@id='back_salaried']";
    public static final String docBackDelete_Salary = "Document Upload Back page Delete#xpath=//a[@id='delete_back_sal']";
    public static final String chkBox_Salary = "Check Box for Salaried#xpath=//input[@id='agreement_msg_salaried']";
    public static final String compName_Salary = "Company Name Box for Salaried#xpath=//input[@id='compantyNameSalaried']";
    public static final String designation_Salary = "Designation Box for Salaried#xpath=//input[@id='designationSalaried']";
    public static final String email_Salary = "Email Box for Salaried#xpath=//input[@id='officialEmailIdSalaried']";


    public void selectDropdownOptionsProfilePtb(String option, String dropdown, String tab, String extra) {
        try {
            if (tab.equalsIgnoreCase("Professional") && dropdown.equalsIgnoreCase("Profession")) {
                //clickLabelsProfilePtb(dropdown,"");
                String opt = "Dropdown Option-" + option + " in " + dropdown + " Dropdown of " + tab + " Tab#xpath=//ul[@id='id_Profession_p']//li/a[normalize-space(text())='" + option.trim() + "']";
                if (isElementPresent(opt)) {
                    clickOn(opt);
                    manualScreenshot(getRefOfXpath(opt) + "is Clicked");
                } else {
                    testStepFailed(getRefOfXpath(opt) + "is not Clicked");
                }
            }

            if (tab.equalsIgnoreCase("Professional") && dropdown.equalsIgnoreCase("Medical Degree")) {
                //clickLabelsProfilePtb(dropdown,"");
                String opt = "Dropdown Option-" + option + " in " + dropdown + " Dropdown of " + tab + " Tab#xpath=//ul[@id='degreeT']//li/a[normalize-space(text())='" + option.trim() + "']";
                if (isElementPresent(opt)) {
                    clickOn(opt);
                    manualScreenshot(getRefOfXpath(opt) + "is Clicked");
                } else {
                    testStepFailed(getRefOfXpath(opt) + "is not Clicked");
                }
            }

            if (tab.equalsIgnoreCase("Professional") && dropdown.equalsIgnoreCase("Medical Specialisation")) {
                //clickLabelsProfilePtb(dropdown,"");
                String opt = "Dropdown Option-" + option + " in " + dropdown + " Dropdown of " + tab + " Tab#xpath=//ul[@id='specializationT']//li/a[normalize-space(text())='" + option.trim() + "']";
                if (isElementPresent(opt)) {
                    clickOn(opt);
                    manualScreenshot(getRefOfXpath(opt) + "is Clicked");
                } else {
                    testStepFailed(getRefOfXpath(opt) + "is not Clicked");
                }
            }

            if (tab.equalsIgnoreCase("Professional") && dropdown.equalsIgnoreCase("Years")) {
                //clickLabelsProfilePtb(dropdown,"");
                String opt = "Dropdown Option-" + option + " in " + dropdown + " Dropdown of " + tab + " Tab#xpath=//ul[@id='id_ul_ptb_years_p']//li/a[normalize-space(text())='" + option.trim() + "']";
                if (isElementPresent(opt)) {
                    clickOn(opt);
                    manualScreenshot(getRefOfXpath(opt) + "is Clicked");
                } else {
                    testStepFailed(getRefOfXpath(opt) + "is not Clicked");
                }
            }

            if (tab.equalsIgnoreCase("Professional") && dropdown.equalsIgnoreCase("Months")) {
                //clickLabelsProfilePtb(dropdown,"");
                String opt = "Dropdown Option-" + option + " in " + dropdown + " Dropdown of " + tab + " Tab#xpath=//ul[@id='id_ul_ptb_months_p']//li/a[normalize-space(text())='" + option.trim() + "']";
                if (isElementPresent(opt)) {
                    clickOn(opt);
                    manualScreenshot(getRefOfXpath(opt) + "is Clicked");
                } else {
                    testStepFailed(getRefOfXpath(opt) + "is not Clicked");
                }
            }

            if (tab.equalsIgnoreCase("Self-employed") && dropdown.equalsIgnoreCase("Business Structure")) {
                //clickLabelsProfilePtb(dropdown,"");
                String opt = "Dropdown Option-" + option + " in " + dropdown + " Dropdown of " + tab + " Tab#xpath=//ul[@id='id_businesstype_se']//li/a[normalize-space(text())='" + option.trim() + "']";
                if (isElementPresent(opt)) {
                    clickOn(opt);
                    manualScreenshot(getRefOfXpath(opt) + "is Clicked");
                } else {
                    testStepFailed(getRefOfXpath(opt) + "is not Clicked");
                }
            }

            if (tab.equalsIgnoreCase("Self-employed") && dropdown.equalsIgnoreCase("Years")) {
                //clickLabelsProfilePtb(dropdown,"");
                String opt = "Dropdown Option-" + option + " in " + dropdown + " Dropdown of " + tab + " Tab#xpath=//ul[@id='id_ul_ptb_years_se']//li/a[normalize-space(text())='" + option.trim() + "']";
                if (isElementPresent(opt)) {
                    clickOn(opt);
                    manualScreenshot(getRefOfXpath(opt) + "is Clicked");
                } else {
                    testStepFailed(getRefOfXpath(opt) + "is not Clicked");
                }
            }

            if (tab.equalsIgnoreCase("Self-employed") && dropdown.equalsIgnoreCase("Months")) {
                //clickLabelsProfilePtb(dropdown,"");
                String opt = "Dropdown Option-" + option + " in " + dropdown + " Dropdown of " + tab + " Tab#xpath=//ul[@id='id_ul_ptb_months_se']//li/a[normalize-space(text())='" + option.trim() + "']";
                if (isElementPresent(opt)) {
                    clickOn(opt);
                    manualScreenshot(getRefOfXpath(opt) + "is Clicked");
                } else {
                    testStepFailed(getRefOfXpath(opt) + "is not Clicked");
                }
            }

            if (tab.equalsIgnoreCase("Self-employed") && dropdown.equalsIgnoreCase("Business Type")) {
                //clickLabelsProfilePtb(dropdown,"");
                String opt = "Dropdown Option-" + option + " in " + dropdown + " Dropdown of " + tab + " Tab#xpath=//ul[@id='id_natureOfBusiness_se']//li/a[normalize-space(text())='" + option.trim() + "']";
                if (isElementPresent(opt)) {
                    clickOn(opt);
                    manualScreenshot(getRefOfXpath(opt) + "is Clicked");
                } else {
                    testStepFailed(getRefOfXpath(opt) + "is not Clicked");
                }
            }

            if (tab.equalsIgnoreCase("Self-employed") && dropdown.equalsIgnoreCase("Turnover range (INR)")) {
                //clickLabelsProfilePtb(dropdown,"");
                String opt = "Dropdown Option-" + option + " in " + dropdown + " Dropdown of " + tab + " Tab#xpath=//ul[@id='id_turnoverRange_se']//li/a[normalize-space(text())='" + option.trim() + "']";
                if (isElementPresent(opt)) {
                    clickOn(opt);
                    manualScreenshot(getRefOfXpath(opt) + "is Clicked");
                } else {
                    testStepFailed(getRefOfXpath(opt) + "is not Clicked");
                }
            }

            if (tab.equalsIgnoreCase("Salaried") && dropdown.equalsIgnoreCase("Years")) {
                //clickLabelsProfilePtb(dropdown,"");
                String opt = "Dropdown Option-" + option + " in " + dropdown + " Dropdown of " + tab + " Tab#xpath=//ul[@id='id_ul_ptb_years_s']//li/a[normalize-space(text())='" + option.trim() + "']";
                if (isElementPresent(opt)) {
                    clickOn(opt);
                    manualScreenshot(getRefOfXpath(opt) + "is Clicked");
                } else {
                    testStepFailed(getRefOfXpath(opt) + "is not Clicked");
                }
            }

            if (tab.equalsIgnoreCase("Salaried") && dropdown.equalsIgnoreCase("Months")) {
                //clickLabelsProfilePtb(dropdown,"");
                String opt = "Dropdown Option-" + option + " in " + dropdown + " Dropdown of " + tab + " Tab#xpath=//ul[@id='id_ul_ptb_months_s']//li/a[normalize-space(text())='" + option.trim() + "']";
                if (isElementPresent(opt)) {
                    clickOn(opt);
                    manualScreenshot(getRefOfXpath(opt) + "is Clicked");
                } else {
                    testStepFailed(getRefOfXpath(opt) + "is not Clicked");
                }
            }

            if (tab.equalsIgnoreCase("Salaried") && dropdown.equalsIgnoreCase("Net Salary Range LPA(INR)")) {
                //clickLabelsProfilePtb(dropdown,"");
                String opt = "Dropdown Option-" + option + " in " + dropdown + " Dropdown of " + tab + " Tab#xpath=//ul[@id='id_ul_ptb_netSalary_s']//li/a[normalize-space(text())='" + option.trim() + "']";
                if (isElementPresent(opt)) {
                    clickOn(opt);
                    manualScreenshot(getRefOfXpath(opt) + "is Clicked");
                } else {
                    testStepFailed(getRefOfXpath(opt) + "is not Clicked");
                }
            }


        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in select Dropdown Options Profile PTB. Exception: " + e.getClass());

        }


    }

    public void clickLabelsProfilePtb(String Option, String extra) {
        try {
            String label = "For Label #xpath=//div[@class='con_add_bg']/descendant::label[normalize-space(text())='" + Option.trim() + "']";
            int size = sizeOfLocator(label);
            for (int j = 0; j < size; j++) {
                String label1 = "Label :" + Option + "#xpath=(//div[@class='con_add_bg']/descendant::label[normalize-space(text())='" + Option.trim() + "'])[" + j + "]";
                scrollToWebElementIfPresent(label1);
                clickIfOnlyDisplayed(label1);
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in click Labels Profile Ptb. Exception: " + e.getClass());

        }


    }

    ////////2807


    public static final String editProfileInter = "Edit Profile CTA in Intermediate Page#xpath=//h5[normalize-space(text())='Edit profile']/parent::a";
    public static final String name_Intermediate = "Name Component: #xpath=//div[@class='guest_div']/descendant::h6";
    public static final String my_Relations = "My Relations Section #xpath=//p[normalize-space(text())='My Relations']/ancestor::div[@class='deposit_found blocktypes']";
    public static final String pao_Intermediate = "Pre Approved Offers in Intermediate page#xpath=//div[@class='finance_slider']";

    public void profileIntermediatePage() {
        try {
            String name = "Name Component: #xpath=//div[@class='guest_div']/descendant::h6";
            String shortCut = "Shortcut Component: #xpath=//div[@id='owl_car']";
            String myRel = "My Relations Component: #xpath=//div[@class='deposit_found blocktypes']";
            String pao = "Pre Approved Offers Component: #xpath=//div[@class='finance_slider']";
            String faq = "FAQ Component: #xpath=//div[@class='accordion_div']";

            verifyElementIsDisplayedAndGetText(name);
            verifyElementIsDisplayedOrNot(shortCut);
            verifyElementIsDisplayedOrNot(myRel);
            verifyElementIsDisplayedOrNot(pao);
            verifyElementIsDisplayedOrNot(faq);

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in profile Intermediate Page. Exception: " + e.getClass());

        }


    }

    public void profileIntermediatePagePAO() {
        try {
            String nextPao = "Next Button: #xpath=//button[normalize-space(text())='Next']";
            String prePao = "Previous Button: #xpath=//button[normalize-space(text())='Previous']";
            String slide4 = "Tile Number:4 #xpath=(//div[@class='finance_text'])[4]";
            String pao = "Pre Approved Offers Component: #xpath=//div[@class='finance_slider']";
            scrollToWebElement(pao);
//            if (isElementDisplayed(nextPao) && !isElementDisplayed(slide4)) {
//                testStepInfo(getRefOfXpath(nextPao) + " is Displayed");
//                testStepInfo(getRefOfXpath(slide4) + " is not Displayed");
                clickOn(nextPao);
                clickOn(nextPao);
                if (isElementDisplayed(slide4)) {
                    testStepPassed(getRefOfXpath(slide4) + " is Displayed on Click of Next Button");
//                    verifyElementIsDisplayedOrNot(prePao);
                    clickOn(prePao);
                    clickOn(prePao);
                    waitTime(3);
                    if (!isElementDisplayed(prePao)) {
                        testStepPassed(getRefOfXpath(slide4) + " is not Displayed on click of Previous Button");
                        testStepInfo("Left and Right Slider Buttons are working as expected");
                    } else {
                        testStepFailed(getRefOfXpath(slide4) + " is Displayed on click of Previous Button");
                    }

                } else {
                    testStepFailed(getRefOfXpath(slide4) + " is not Displayed on Click of Next Button");
                }
//            } else {
//                testStepFailed(getRefOfXpath(nextPao) + " is not Displayed");
//            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in profile Intermediate Page PAO. Exception: " + e.getClass());

        }


    }


}