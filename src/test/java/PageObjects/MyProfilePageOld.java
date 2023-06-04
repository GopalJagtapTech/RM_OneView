package PageObjects;

import base.ApplicationKeywords;

public class MyProfilePageOld extends ApplicationKeywords {
    /*
    Xpaths
     */
    public static final String txtBox_EmiCard = "EMI Card Text Box#xpath=//input[@id='txtEMICard']";
    public static final String txtBox_BankAccount = "Bank A/C Number Text Box#xpath=//input[@id='txtBankAcc']";
    public static final String txtBox_Pan = "Pan Number Text Box#xpath=//input[@id='txtPanNo']";
    public static final String name_Customer = "Customer Name#xpath=//div[@class='first_vert_part']/p";
    public static final String firstLetter_Customer = "Customer FirstLetter#xpath=//div[@class='first_vert_part']/div[contains(text(),'')]";
    public static final String button_EditPan = "EditPan Button#xpath=//a[@class='mobile_cta_place panEdit']/self::a[normalize-space(text()='Edit PAN')]";
    public static final String button_PopUpCancel = "PopUpCancel Button#xpath=//div[@class='ctas_div']/child::a[@id='cancelBtn']";
    public static final String button_PopUpConfirm = "PopUpConfirm Button#xpath=//div[@class='ctas_div']/child::a[@id='confirmBtn']";
    public static final String field_ValidationMethodPage = "Validation Method Page Field#xpath=//h3[normalize-space()='Choose Validation Method']";
    public static final String inputTextField_ValidationMethodPage = "Validation Method Page InputTextField DOB#xpath=//div[@class='inputMainBlock']/child::input[@id='bod_field']";
    public static final String inputTextField_ValidationMethodPage_Doi = "Validation Method Page InputTextField DOI#xpath=//div[@class='inputMainBlock']/child::input[@id='doi_field']";
    public static final String confirmButton_ValidationPage = "Validation Page Confirm Button#xpath=//div[@class='bottom_cta']/child::button[@class='btn_sub_style btnVerify']";
    public static final String confirmButton = "Confirm Button#xpath=//button[normalize-space(text())='CONFIRM']";
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

    public static final String txt_ThankYou = "Thank you for reaching out to us. - Message#xpath=//div[contains(text(),'Thank you for reaching out to us . Your service request no ')and(contains(text(),' is raised for updation of your PAN. We shall get back in the next 2 business day. Track your request through our request history.'))]";
    public static final String txt_ThankYouDOB = "Thank you for reaching out to us. - Message#xpath=//div[contains(text(),'Thank you for reaching out to us. Your service requests no ')and(contains(text(),' is raised for updation of your DOB We shall get back in the next 2 business day. Track your request through our request history.'))]";
    public static final String txt_ReqInProgress = "Request In Progress #xpath=//p[normalize-space(text())='Request in progress']";

    public static final String icon_Upload = "UPload Icon#xpath=//label[@class='doc_upload_label']|//label[@class='upload_selected_doc']";
    public static final String txtBox_Upload = "UPload TextBox#xpath=//input[@class='up_doc']";
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
    public static final String txt_ThankYouGSTIN = "Thank you for reaching out to us. - Message#xpath=//div[contains(text(),'Thank you for reaching out to us for GSTIN , you can check status in next 48 hours.')]";

    //div[@class='gstin_part']/descendant::label[text()='Pincode']/following-sibling::input


    /**
     * Common Xpaths
     */



    /*
    End
     */
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
//                typeIn(locator1, "0000000000000");
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
            typeIn(textBoxlocator, positiveValue);
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
            String locatorTextBox = "" + optionName + " Text Box Label#xpath=//div[@class='inputMainBlock']/label[contains(text(),'" + optionName + "')]/following-sibling::input|//label[contains(translate(., 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), '" + optionLower + "')]/following-sibling::input|//div[@class='PANSECTIONDIV']/descendant::input[@id='txtPanNo']|//div[@class='gstin_part']/descendant::label[text()='" + optionName + "']/following-sibling::input";
            if (isElementDisplayed(locatorTextBox)) {
                clickOn(locatorTextBox);
                String[] split = invalidValues.split(",");
                for (int i = 0; i < split.length; i++) {
                    String value = split[i];
                    clearEditBox(locatorTextBox);
                    typeIn(locatorTextBox, value);
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
                typeIn(locator, lowerThanAcceptedValidValue);
                if (isElementPresent(confirmButton)) {
                    verifyButtonIsDisabled("CONFIRM");
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
                typeIn(locator, value);
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
                typeIn(locator, value);
                verifyErrorMessageUsingText(errorMsgText);
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
            String btn_Confirm = verifyButtonIsEnabled("CONFIRM");
            clickOnIfDisplayed(btn_Confirm);
            waitForPageToLoad();
            waitTime(5);
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
                typeIn(locator, validData);
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
                String locator = "OTP Text Box" + i + "#xpath=//input[@id='OTP-digit-" + i + "']";
                if (isElementDisplayed(locator)) {
                    typeIn(locator, String.valueOf(sixDigitOtp.charAt(i - 1)));
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
            scrollToWebElement(locator);
            if (isElementDisplayed(locator)) {
                clearEditBox(locator);
                typeIn(locator, value);
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
        String accNumber="";
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
                verifyColorOfRadioButton(locator,"border","#ff6700","By Default single Radio Button selected");
                accNumber = getText(txt_LoanAccNumber_Next);
            } else {
                String txt_NotAvailable = "Loan Account Number is NOt Available#xpath=//*[normalize-space(text())='Loan Account Number is not available']";
                if (isElementDisplayed(txt_NotAvailable)) {
                    manualScreenshot("Loan Account Number is Not Available in this Customer Id");
                    accNumber=null;
                } else {
                    testStepFailed("Loan Account Number selection for GSTIN is Failed");
                    accNumber=null;
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

    public void verifyAndGetSummaryGstinUsingLabel(String label,String expected) {
        try {
            String locator=""+label+" value#xpath=//ul/li/p[normalize-space(text())='"+label+"']/following-sibling::strong";
            if (isElementDisplayed(locator)) {
                manualScreenshot(locator.split("#")[0]+" is Displayed Successfully");
                String actual = getText(locator).trim();
                if (expected.contains(actual)) {
                    manualScreenshot(locator.split("#")[0]+" is Fetched from previous Page successfully");
                } else {
                    testStepFailed(locator.split("#")[0]+" is not fetched form previous page");
                    stepFailed("Current Value : "+actual);
                }
            } else {
                testStepFailed(locator.split("#")[0]+" is Not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Summary Gstin. Exception: "+e.getClass());
        }
    }
    public String getProfileName() {
        String nameProfile="";
        try {
            if (isElementDisplayed(HomePage.icon_Profile)) {
                clickOn(HomePage.icon_Profile);
                String txt_Name="Profile Name#xpath=//div[@class='nm_scs']/p";
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
            testStepFailed("Failed in get Profile name. Exception: "+e.getClass());
        }

        return nameProfile;
    }


}