package PageObjects;

import base.ApplicationKeywords;
import io.cucumber.java.en.And;
import org.apache.commons.validator.GenericValidator;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;

import java.util.*;

public class FDServicesPage extends ApplicationKeywords {

    /*
    XPaths
     */
    public static final String dropdown_RelationShip_Nominee = "Nominee RelationShip DropDown#xpath=//select[@id='ddlSelect']";
    public static final String toggle_Yes_Nominee = "Nominee YES Toggle Button#xpath=//div[@class='switch_toggle']/ul[@id='p_nominee_add']/li/a[normalize-space(text())='YES']";
    public static final String toggle_No_Nominee = "Nominee NO Toggle Button#xpath=//div[@class='switch_toggle']/ul[@id='p_nominee_add']/li/a[normalize-space(text())='NO']";
    public static final String toggle_Yes_Guardian = "Guardian YES Toggle Button#xpath=//div[@class='switch_toggle']/ul[@id='p_guardian_niminee']/li/a[normalize-space(text())='YES']";
    public static final String toggle_No_Guardian = "Guardian NO Toggle Button#xpath=//div[@class='switch_toggle']/ul[@id='p_guardian_niminee']/li/a[normalize-space(text())='NO']";
    public static final String txt_acconutNo_FD = "FD Registered Bank Account No.#xpath=//p[normalize-space(text())='Registered Bank Account']/following-sibling::strong";
    public static final String btn_sliderNext = "Next Slider Button#xpath=//div[contains(@class,'RelationshipBox')]/button[@aria-label='Next']";
    public static final String btn_EditNominee = "Edit Nominee Button#xpath=//a[normalize-space(text())='Edit Nominee' and not(@onclick='return false;')]";
    public static final String btn_Cancel = "Cancel Button#xpath=//input[@value='Cancel']";
    public static final String btn_GotIt = "Got It Button#xpath=//*[normalize-space(text())='Got It']";
    public static final String btn_GenerateOtp = "Generate OTP Button#xpath=//input[@value='Generate OTP']";
    public static final String btn_Submit = "Submit Button#xpath=//input[@value='Submit']";
    public static final String txt_GuardianDetailsTitle = "Guardian Details Title#xpath=//strong[normalize-space(text())='Guardian Details']";
    public static final String txt_Nominee_FD = "FD Nominee Title#xpath=//strong[contains(text(),'Nominee')]";
    public static final String city_Nominee = "Nominee City#xpath=//input[@id='NomineeCity']";
    public static final String state_Nominee = "Nominee State#xpath=//input[@id='NomineeState']";
    public static final String icon_Close = "Close Icon#xpath=//img[@src='https://experia-uat.bajajfinserv.in/UI/images/modal-cross.svg']";
    public static final String logo_Fd = "Fixed Deposit Logo#xpath=//div[@class='fixed_deposit_section']/descendant::img[contains(@src,'fixed-deposit-10')]";
    //    public static final String logo_Fd = "Fixed Deposit Logo#xpath=//div[@class='fixed_deposit_section']/descendant::img[@src='https://cms-assets.bajajfinserv.in/is/image/bajajfinancestage/fixed-deposit-10?scl=1&fmt=png-alpha']";
    public static final String logo_sdp = "Fixed Deposit Logo#xpath=//div[@class='fixed_deposit_section']/descendant::img[@src='https://cms-assets.bajajfinserv.in/is/image/bajajfinancestage/fixed-deposit-9?scl=1&fmt=png-alpha']";

    public static final String txt_AddNominee_SecondPara = "Add Nominee second paragraph#xpath=//p[normalize-space(text())='f you do not add a nominee, your rightful heir(s) may be asked to produce a court order or a succession certificate to claim the FD on maturity. .']/span[text()='I']";
    public static final String icon_Calendar_Nominee = "Nominee Calendar Icon#xpath=//img[@src='https://experia-uat.bajajfinserv.in/UI/images/icons-date.svg']";
    public static final String icon_Calendar_Guardian = "Guardian Calendar Icon#xpath=(//img[@src='https://experia-uat.bajajfinserv.in/UI/images/icons-date.svg'])[2]";
    public static final String txtBox_Calendar_Nominee = "Nominee Calendar Text box#xpath=//input[@id='txtdob']";
    public static final String txtBox_Calendar_Guardian = "Guardian Calendar Text box#xpath=//input[@id='gurdob']";
    public static final String btn_ResendOtp_Disabled = "Resend OTP Button#xpath=//a[@class='resend-otp disabled']";
    public static final String timer = "OTP Timer#xpath=//p[@class='otp-timer'and(normalize-space(text())='In 00:')]/span/i[@class='logincounter']";
    public static final String enableResendOtp = "Resend Otp Button Enable#xpath=//a[@class='resend-otp']";
    public static final String icon_Close_OTP = "Close Otp Icon#xpath=//a[@class='close_otp']/img";
    public static final String content2 = "Otp Sent to this Mobile Number#xpath=//p[contains(text(),'An OTP has been sent to your registered mobile number')]";
    public static final String content1 = "Otp Verification#xpath=//h4[normalize=space(text())='OTP Verification']";
    public static final String content3 = "Enter One Time Password#xpath=//p[normalize=space(text())='Enter One Time Password']";
    public static final String btn_Submit_Otp = "Submit Button#xpath=//input[@id='btnfinalsubmit']";
    public static final String btn_NextSlider = "Next Slider Button#xpath=//button[@aria-label='Next'and(@aria-disabled='false')]";
    public static final String errorMsgExceedOtpLimit = "You have entered wrong OTP multiple times Error Message#xpath=//p[contains(text(),'You have entered wrong OTP multiple times.')]";
    public static final String nomineeRhsTitle = "Why should I add a nominee? RHS title#xpath=(//strong[normalize-space(text())='Why should I add a nominee?'])[2]";
    public static final String nomineeRhsFirstOption = "Why should I add a nominee? RHS 1st Option Text#xpath=((//strong[normalize-space(text())='Why should I add a nominee?'])[2]/../following-sibling::div//li)[1]";
    public static final String nomineeRhsSecondOption = "Why should I add a nominee? RHS 2nd Option Text#xpath=((//strong[normalize-space(text())='Why should I add a nominee?'])[2]/../following-sibling::div//li)[2]";


//    public static final String logo_Fd="FD Product Logo#xpath=//img[@src='https://cms-assets.bajajfinserv.in/is/image/bajajfinancestage/fixed-deposit-10?scl=1&fmt=png-alpha']";

    /*
    Common Xpaths
     */
    public static final String fd_JointAccount_Common = "//div[@class='Relationship_Details']/descendant::div[@class='Relationshipbox_title']/strong[normalize-space(text())='Joint Account Holder Details']/../following-sibling::div/descendant::strong";
    public static final String fd_SubTitle_Common = "//div[@class='Relationship_Details']/descendant::div[@class='Relationshipbox_title']/strong";
    public static final String fd_topSectionLabel_Common = "//div[@class='fixed_deposit_section']/descendant::p";
    public static final String fd_SuccessPageNomineeDetails_Common = "//strong[normalize-space(text())='Nominee details']/../..//p";
    /*
    Methods
     */


    public void clickOnHomeMyRelationTileUsingText(String cardText, String RedirectTitleText, String extra) {
        try {
            String card = "" + cardText + " Card view Details Button#xpath=//p[normalize-space(text())='" + cardText + "']/ancestor::div[@class='grid_box']/following-sibling::div[@class='bottom_tags']/a[normalize-space(text())='View Details']";
            if (isElementDisplayed(card)) {
                String currentUrl = driver.getCurrentUrl();
                clickOn(card);
                waitForPageToLoad();
                String locator = "" + cardText + " Page title#xpath=//div[@class='fixed_deposit_section']/descendant::strong[normalize-space(text())='" + RedirectTitleText + "']";
                Boolean flag = verifyFieldsDisplayedUsingLocatorWithComment(locator, cardText + " My Relation Tile Redirection");
                if (!flag && currentUrl.equals(driver.getCurrentUrl())) {
                    return;
                }
            } else {
                testStepFailed(cardText + " Card is Not showing for Home My Relations Tile in this Customer Id");
                return;
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in click On Home Card Using Text. Exception: " + e.getClass());
        }
    }

    public Boolean clickOnMyRelationTabUsingText(String tabText, String extra) {
        Boolean flag = false;
        try {
            String tabLocator = "" + tabText + " tab#xpath=//div[@class='tab_link']/descendant::a[normalize-space(text())='" + tabText + "']";
            String tabLocatorActive = "" + tabText + " tab active#xpath=//div[@class='tab_link']/descendant::a[normalize-space(text())='" + tabText + "']/parent::li[@class='active']";
            if (isElementDisplayed(tabLocator)) {
                clickOn(tabLocator);
                waitForPageToLoad();
                if (isElementPresent(tabLocatorActive)) {
                    manualScreenshot(getRefOfXpath(tabLocator) + " is Clicked successfully");
                    flag = true;
                } else {
                    testStepFailed(getRefOfXpath(tabLocator) + " is Not Clicked successfully");
                }
            } else {
                testStepFailed(getRefOfXpath(tabLocator) + " is Not Present in this Customer Id");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in click on My Relation Tab using text " + tabText + ". Exception: " + e.getClass());
        }
        return flag;
    }

    public void clickOnMyRelationTileViewDetailsIcon(String subTitle, String accountNo, String extra) {
        try {
//            String iconViewDetails = subTitle + " " + accountNo + " No. Tile#xpath=//h2[contains(text(),'" + subTitle + "')]/../following-sibling::div/descendant::p[contains(text(),'" + accountNo + "')]/ancestor::div[@class='deposit_name']/descendant::img[@src='https://experia-uat.bajajfinserv.in/UI/images/icons-view-details.svg']|//strong[contains(text(),'" + subTitle + "')]/following-sibling::p[contains(text(),'" + accountNo + "')]/ancestor::div[@class='deposit_name']/descendant::img[@src='https://experia-uat.bajajfinserv.in/UI/images/icons-view-details.svg']";
//            String iconViewDetails = subTitle + " " + accountNo + " No. Tile#xpath=//h2[contains(text(),'" + subTitle + "')]/../following-sibling::div/descendant::p[contains(text(),'" + accountNo + "')]/ancestor::div[@class='deposit_name']/descendant::img[contains(@src,'/icons-view-details.svg')]|//strong[contains(text(),'" + subTitle + "')]/following-sibling::p[contains(text(),'" + accountNo + "')]/ancestor::div[@class='deposit_name']/descendant::img[contains(@src,'/icons-view-details.svg')]";

            String iconViewDetails = subTitle + " " + accountNo + " No. Tile#xpath=//h2[contains(text(),'" + subTitle + "')]/../following-sibling::div/descendant::p[contains(text(),'" + accountNo + "')]/ancestor::div[@class='deposit_name']/descendant::img[contains(@src,'/icons-view-details.svg')]|//strong[contains(text(),'" + subTitle + "')]/following-sibling::p[contains(text(),'" + accountNo + "')]/ancestor::div[@class='deposit_name']/descendant::img[contains(@src,'/icons-view-details.svg')]|//strong[contains(text(),'"+subTitle+"')]/ancestor::div/following-sibling::div[@class='deposit_amount']/descendant::strong[contains(text(),'"+accountNo+"')]/ancestor::div[@class='deposit_amount']/preceding-sibling::div[@class='deposit_name']/descendant::img[contains(@src,'/icons-view-details.svg')]";
//            String iconViewDetails = subTitle + " " + accountNo + " No. Tile#xpath=//h2[contains(text(),'" + subTitle + "')]/../following-sibling::div/descendant::p[contains(text(),'" + accountNo + "')]/ancestor::div[@class='deposit_name']/descendant::img[contains(@src,'/icons-view-details.svg')]|//strong[contains(text(),'" + subTitle + "')]/following-sibling::p[contains(text(),'" + accountNo + "')]/ancestor::div[@class='deposit_name']/descendant::img[contains(@src,'/icons-view-details.svg')]|//strong[contains(text(),'"+subTitle+"')]/ancestor::div/following-sibling::div[@class='deposit_amount']/descendant::strong[contains(text(),'"+accountNo+"')]/ancestor::div[@class='deposit_amount']/preceding-sibling::div[@class='deposit_name']/descendant::img[contains(@src,'/icons-view-details.svg')]";

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
            testStepFailed("Failed in click on My Relation Tile view Details icon for " + subTitle + "-" + accountNo + ". Exception: " + e.getClass());
        }
    }

    public static final String accordianIcon1 = "Joint Account Holder Details 1 Accordian Icon#xpath=//div[@class='Relationship_points']//div[contains(@class,'First_Joint')]//strong[normalize-space(text())='First Joint Account Holder']/following-sibling::img[contains(@src,'/images/dropdown.svg')]";
    public static final String hide1 = "Joint Account Holder Details 1 hide#xpath=//div[@class='Relationship_points']//div[contains(@class,'First_Joint')]//strong[normalize-space(text())='First Joint Account Holder']/../following-sibling::ul[contains(@class,'paddtop') and @style='display: none;']";
    public static final String display1 = "Joint Account Holder Details 1 Display#xpath=//div[@class='Relationship_points']//div[contains(@class,'First_Joint')]//strong[normalize-space(text())='First Joint Account Holder']/../following-sibling::ul[contains(@class,'paddtop') and @style='display: block;']";
    public static final String accordianIcon2 = "Joint Account Holder Details 2 Accordian Icon#xpath=//div[@class='Relationship_points']//div[contains(@class,'First_Joint')]//strong[normalize-space(text())='Second Joint Account Holder']/following-sibling::img[contains(@src,'/images/dropdown.svg')]";
    public static final String hide2 = "Joint Account Holder Details 2 Hide#xpath=//div[@class='Relationship_points']//div[contains(@class,'First_Joint')]//strong[normalize-space(text())='Second Joint Account Holder']/../following-sibling::ul[contains(@class,'paddtop') and @style='display: none;']";
    public static final String display2 = "Joint Account Holder Details 2 display#xpath=//div[@class='Relationship_points']//div[contains(@class,'First_Joint')]//strong[normalize-space(text())='Second Joint Account Holder']/../following-sibling::ul[contains(@class,'paddtop') and @style='display: block;']";

    public void verifyCollapseAccordianIconInFD() {
        try {
            String countPolicies = "Joint Account Holder Count#xpath=//div[contains(@class,'First_Joint')]";
            if (sizeOfLocator(countPolicies) > 1) {
                clickOn(accordianIcon2);
                if (isElementDisplayed(accordianIcon1) && isElementPresent(hide1)) {
                    manualScreenshot("Joint Account Holder 1 Details are hidden successfully");
                    clickOn(accordianIcon1);
                    if (isElementDisplayed(display1)) {
                        manualScreenshot("Joint Account Holder 1 is Displayed after Clicking Joint Account Holder 1 Accordian icon successfully");
                    } else {
                        testStepFailed("Joint Account Holder 1 is not Displayed after Clicking Joint Account Holder 1 Accordian icon");
                    }
                    if (isElementPresent(hide2)) {
                        manualScreenshot("Joint Account Holder 2 Details are Collapsed After clicking Joint Account Holder 1 Accordian Icon successfully");
                    }
                    clickOn(accordianIcon1);
                    if (isElementPresent(hide1) && isElementPresent(hide2)) {
                        manualScreenshot("Both the Joint Account Holders are collapsed at same time verified successfully");
                    } else {
                        testStepFailed("Both Joint Account Holder are not hidden at a same time");
                    }
                } else {
                    testStepFailed("Joint Account Holder 1 Deatils are not hidden");
                }
            } else {
                testStepFailed("There is no two Joint Account Holder in this customer Id");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Collapse Accordian Icon in FD. Exception: " + e.getClass());
        }
    }


    public void verifyMyRelationTileRedirectionUsingAccountNumber(String accontNumber, String servicesname, String extra) {
        try {
            String txt_AccountNumber = "" + servicesname + " Account Number " + accontNumber + "#xpath=//div[@class='fixed_deposit_text']/p[contains(text(),'" + accontNumber + "')]";
            if (!isElementDisplayed(txt_AccountNumber)) {
                hardRefresh();
            } else {
                testStepInfo("Page Redirected without hard Refresh");
            }
            if (isElementDisplayed(txt_AccountNumber)) {
                manualScreenshot(getRefOfXpath(txt_AccountNumber) + " is Redirected successfully");
            } else {
                testStepFailed(getRefOfXpath(txt_AccountNumber) + " is Not Redirected");
                skipSteps("Not Redirected to Expected");
                verifyLogout();
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Redirection using Number. Eception: " + e.getClass());
        }
    }

    public void verifyComponentsOfServicesPage(String title, String splitText) {
        try {
            testStepInfo("*************** " + title + " ***************");
            String[] split = splitText.split(",");
            String topSection = "" + split[0] + " Top Section#xpath=//strong[normalize-space(text())='" + split[0].trim() + "']/ancestor::div[@class='fixed_deposit_section']";
            verifyFieldsDisplayedUsingLocator(topSection);
            String relationShipSection = "" + split[1] + " Section#xpath=//strong[normalize-space(text())='" + split[1].trim() + "']/ancestor::div[@class='Relationship_Details']";
            String relationShipTitle = "" + split[1] + " Title#xpath=//strong[normalize-space(text())='" + split[1].trim() + "']";
            verifyFieldsDisplayedUsingLocator(relationShipSection);
            verifyFieldsDisplayedUsingLocator(relationShipTitle);

            String thingsYouCanDoSection = "" + split[2] + " Right Side Section#xpath=//p[normalize-space(text())='" + split[2].trim() + "']/../..";
            String thingsYouCanDoTitle = "" + split[2] + " Title#xpath=//p[normalize-space(text())='" + split[2].trim() + "']";
            if (split[2].toLowerCase().contains("need help")) {
                thingsYouCanDoSection = "" + split[2] + " Right Side Section#xpath=//strong[normalize-space(text())='" + split[2].trim() + "']/../..";
                thingsYouCanDoTitle = "" + split[2] + " Title#xpath=//strong[normalize-space(text())='" + split[2].trim() + "']";
            }
            verifyFieldsDisplayedUsingLocator(thingsYouCanDoSection);
            verifyFieldsDisplayedUsingLocator(thingsYouCanDoTitle);
            String faqSection = "" + split[3] + "#xpath=//strong[normalize-space(text())='" + split[3].trim() + "']";
            verifyFieldsDisplayedUsingLocatorWithScroll(faqSection);
            String cibilScoreSection = "" + split[4] + " Section#xpath=//strong[normalize-space(text())='" + split[4].trim() + "']/ancestor::div[@class='cibilscore']";
            String cibilScoreTitle = "" + split[4] + " Title#xpath=//strong[normalize-space(text())='" + split[4].trim() + "']";
            verifyFieldsDisplayedUsingLocatorWithScroll(cibilScoreSection);
            verifyFieldsDisplayedUsingLocatorWithScroll(cibilScoreTitle);
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Components of Sevices Page. Exception: " + e.getClass());
        }

    }

    public void verifyAccountNumberOfServices(String numberText, String extra) {
        try {
            String locator = "" + numberText + "#xpath=//div[@class='fixed_deposit_section']/descendant::p[contains(text(),'" + numberText + "')]";
            if (isElementDisplayed(locator)) {
                testStepPassed(getText(locator));
                manualScreenshot(getRefOfXpath(locator + " is Displayed successfully"));
            } else {
                testStepFailed(getRefOfXpath(locator) + " is not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Account Number of Services. Exception: " + e.getClass());
        }
    }


    public void verifyAmountOfServices(String amountText, String extra) {
        try {
            String section = "" + amountText + " section Backround#xpath=//div[@class='fixed_deposit_amount']";
            String txt_Amount = "" + amountText + " section#xpath=//p[normalize-space(text())='" + amountText.trim() + "']";
            String amountWithRs = "" + amountText + " Value#xpath=//p[normalize-space(text())='" + amountText.trim() + "']/following-sibling::strong";
            verifyLocatorColorUsingCssValue(section, "#e5eaf7", "Grey", "background-color");
            Boolean flag = verifyFieldsDisplayedUsingLocator(txt_Amount);
            if (flag) {
                if (isElementDisplayed(amountWithRs)) {
                    String amountValue = getText(amountWithRs).trim();
                    testStepPassed(getRefOfXpath(amountWithRs) + "is Displayed successfully. Value: " + amountValue);
                    if (amountValue.startsWith("Rs. ")) {
                        testStepPassed(amountText + " is Displayed with Prefix Text of 'Rs. ' successfully");
                    } else {
                        stepFailed(amountText + " is Not Displayed with Prefix Text of 'Rs. '");
                    }
                    verifyAmountWithRs(amountText, amountValue);
                } else {
                    stepFailed(getRefOfXpath(amountWithRs + " is Not displayed"));
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Amount of Services. Exception: " + e.getClass());
        }
    }

    public void verifyAmountWithRs(String label, String valueAmount) {
        try {
            String[] split = valueAmount.split("Rs. ");
            String value = split[1].replaceAll(",", "");
            Boolean s = true;
            for (int i = 0; i < value.length(); i++) {
                if (!Character.isDigit(value.charAt(i))) {
                    s = false;
                }
            }
            if (s) {
                testStepPassed(label + " value has only digits verified successfully");
            } else {
                stepFailed(label + " value has only digits is not verified");
            }

        } catch (ArrayIndexOutOfBoundsException e) {
            e.printStackTrace();
            testStepFailed("There is no space between Rs. and Amount. Exception: " + e.getClass());
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify " + label + " Amount with Rs. and Digits - " + valueAmount + ". Exception: " + e.getClass());
        }
    }

    public void verifyDigitsOnly(String label, String valueAmount) {
        try {
            String value = valueAmount.trim();
            boolean s = true;
            for (int i = 0; i < value.length(); i++) {
                if (!Character.isDigit(value.charAt(i))) {
                    s = false;
                }
            }
            if (s) {
                testStepPassed(label + " value has only digits verified successfully");
            } else {
                stepFailed(label + " value has only digits is not verified");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify " + label + " Digits only - " + valueAmount + ". Exception: " + e.getClass());
        }
    }


    public void verifyDigitsWithPercentage(String label, String valueAmount) {
        try {
            if (valueAmount.trim().endsWith("%")) {
                testStepPassed(label + " is end with % symbol verified successfully");
            } else {
                stepFailed(label + " is end with % symbol is not verified");
            }
            String[] split = valueAmount.split("%");
            String value = split[0].replaceAll("\\.", "").trim();
            Boolean s = true;
            for (int i = 0; i < value.length(); i++) {
                if (!Character.isDigit(value.charAt(i))) {
                    s = false;
                }
            }
            if (s) {
                testStepPassed(label + " value has only digits verified successfully");
            } else {
                stepFailed(label + " value has only digits is not verified");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify " + label + " digits with Percentage - " + valueAmount + ". Exception: " + e.getClass());
        }
    }

    public void verifyDigitsWithMonths(String label, String valueAmount) {
        try {
            String[] split = valueAmount.trim().split(" ");
            String value = split[0];
            Boolean s = true;
            for (int i = 0; i < value.length(); i++) {
                if (!Character.isDigit(value.charAt(i))) {
                    s = false;
                }
            }
            if (s) {
                testStepPassed(label + " value has digits verified successfully");
            } else {
                stepFailed(label + " value has digits is not verified");
            }

            if (split[1].equalsIgnoreCase("Months")) {
                testStepPassed(label + " value end with Months verified successfully");
            } else {
                stepFailed(label + " value end with Months is not verified");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify " + label + " Digits with Months - " + valueAmount + ". Exception: " + e.getClass());
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

    public void verifyValueInUnMaskedFormat(String value, String name, String maskedSymbol, String extra) {
        try {
            if (!value.contains(maskedSymbol)) {
                testStepPassed(name + " value not in Masked Format verified Successfully.");
                testStepPassed(name + " Value: " + value);
            } else {
                stepFailed(name + " value not in Masked Format is Not verified");
                stepFailed(name + " Value: " + value);
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Value is Unmasked Format. Exceptiion: " + e.getClass());
        }

    }

    //////////////FD Receipts//////////////
//using verifyLabelsInTopSectionOfServices method in Application keywords
//09_08_2022
    public void verifyDeliveryStatus() {
        try {
            String title = "Delivery status title#xpath=//strong[normalize-space(text())='Delivery Status']";
            verifyElementIsDisplayedUsingLocator(title);
            String slide = "Slide#xpath=//div[@class='p_Delivery_BG']";
            Boolean flag = verifyElementIsDisplayedUsingLocator(title);
            if (flag) {
                verifyLocatorColorUsingCssValue(slide, "", "Green", "background-color");
            }
            String commonLabel = "Common Label#xpath=//div[@class='p_treckpoints']//p";
            String labels = "FD Booked#Dispatched#In Transit#Out For Delivery#Delivered";
            List<String> list = new LinkedList<>();
            if (isElementPresent(commonLabel)) {
                for (int i = 1; i < sizeOfLocator(commonLabel); i++) {
                    String label = "Common Label " + i + "#xpath=(//div[@class='p_treckpoints']//p)[" + i + "]";
                    if (isElementDisplayed(label)) {
                        list.add(textGet(label));
                    }
                }
            } else {
                testStepFailed(getRefOfXpath(commonLabel) + " is Not Displayed");
            }
            testStepInfo("Values: " + list);
            String[] labelText = labels.split("#");
            for (int i = 0; i < labelText.length; i++) {
                String text = labelText[i];
                if (list.contains(text)) {
                    testStepPassed(text + " is Displayed Successfully");
                } else {
                    stepFailed(text + " is Not Displayed");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify delivery status. Exception: " + e.getClass());
        }
    }

    public static final String viewMoreButton = "View More Button#xpath=//a[normalize-space(text())='View More'and(@class='viewmoretext')]";
    public static final String viewLessButton = "View Less Button#xpath=//a[normalize-space(text())='View Less'and(@class='viewlesstext')]";
    public static final String options = "Rows#xpath=//li[@class='Before7']/p";

    //09_08_2022
    public void verifyViewMore() {
        try {

            if (isElementDisplayed(viewMoreButton)) {
                if (sizeOfLocator(options) == 7) {
                    testStepPassed("View More button is Displayed for More than 7 dispatches successfully");
                } else {
                    stepFailed("View More button is not Displayed for Less than 7 dispatches");
                }
            } else if (sizeOfLocator(options) < 7) {
                testStepPassed("View More button is not Displayed for less than 7 dispatches successfully");
            } else if (sizeOfLocator(options) == 7) {
                stepFailed("view more button is not displayed for more than 7 dispatches");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify View More. Exception: " + e.getClass());
        }
    }

    //09_08_2022
    public void verifyViewMoreAndViewLess() {
        try {
            if (isElementDisplayed(viewMoreButton)) {
                clickOn(viewMoreButton);
                scrollToWebElementIfPresent(viewLessButton);
                if (isElementDisplayed(viewLessButton)) {
                    testStepPassed(getRefOfXpath(viewLessButton) + " is Displayed after click on view More Button successfully");
                } else {
                    stepFailed(getRefOfXpath(viewLessButton) + " is not Displayed after click on view More Button");
                }
                clickOn(viewLessButton);
                if (!isElementDisplayed(viewMoreButton)) {
                    testStepPassed(getRefOfXpath(viewMoreButton) + " is Displayed after click on view Less Button successfully");
                } else {
                    stepFailed(getRefOfXpath(viewLessButton) + " is not Displayed after click on view Less Button");
                }
            } else {
                testStepFailed(getRefOfXpath(viewMoreButton) + " is Not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify view more amd view less buttons. Exception: " + e.getClass());
        }
    }


    //10_08_2022
    public void verifyAddressMasked(String value, String label, String title) {
        try {
            if (value.trim().startsWith("XXXXXXXXXX")) {
                testStepPassed(label + " in " + title + " first 10 characters masked successfully");
            } else {
                stepFailed(label + " in " + title + " first 10 characters masked is Not verified");
            }

            if (value.trim().endsWith("XXXXXX")) {
                testStepPassed(label + " in " + title + " Last 6 characters (PINCODE) masked successfully");
            } else {
                stepFailed(label + " in " + title + " Last 6 characters (PINCODE) masked is Not verified");
            }
            Boolean flag = true;
            String[] split = value.trim().split("-");
            String city = split[1].trim();
            for (int i = 0; i < city.length(); i++) {
                if (city.charAt(i) != 'X') {
                    flag = false;
                }
            }
            if (flag) {
                testStepPassed("City Characters are masked verified successfully");
            } else {
                stepFailed("City Characters are masked is not verified");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Address masked format. Exception: " + e.getClass());
        }
    }


    public void verifyTextBoxAcceptAlphabetsOnlyUsingLabel(String label, String followingPath, String value, int switchCase, String extra) {
        try {
            String txtBoxLocator = TypeInUsingLabelText(label, followingPath, value, "");
            if (isElementDisplayed(txtBoxLocator)) {
                String value1 = textGet(txtBoxLocator);
                validateTextBoxAcceptOnly(value1, getRefOfXpath(txtBoxLocator), switchCase, "");
            } else {
                testStepFailed(getRefOfXpath(txtBoxLocator) + " is Not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("failed in verify " + label + " Text Box Accept Alphabets. Exception: " + e.getClass());
        }
    }

    public void verifyHintMsgUsingLabel(String errMsg, String label, String extra) {
        try {
            String errMsgLocator = label + "  Text: " + errMsg + "#xpath=//label[normalize-space(text())='" + label.trim() + "']/following-sibling::*[normalize-space(text())='" + errMsg + "']";
            if (isElementDisplayed(errMsgLocator)) {
                testStepPassed(getRefOfXpath(errMsgLocator) + " is Displayed successfully");
            } else {
                testStepFailed(getRefOfXpath(errMsgLocator) + " is Not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Hint Mgs Using Label. Exception: " + e.getClass());
        }
    }

    public void clickOnToggleButton(String buttonText, String label, String extra) {
        try {
//String buttonToggle=buttonText+" Toggle Button#xpath=//strong[normalize-space(text())=\""+label.trim()+"\"]/../../following-sibling::div//*[normalize-space(text())='"+buttonText.trim()+"']";
            String buttonToggle = "";
            if (label.equalsIgnoreCase("Address Details")) {
                buttonToggle = buttonText + " Toggle Button#xpath=//strong[normalize-space(text())=\"" + label.trim() + "\"]/../following-sibling::div//*[normalize-space(text())='" + buttonText.trim() + "']";
            } else {
                buttonToggle = buttonText + " Toggle Button#xpath=//strong[normalize-space(text())=\"" + label.trim() + "\"]/../../following-sibling::div//*[normalize-space(text())='" + buttonText.trim() + "']";
            }
            if (isElementDisplayed(buttonToggle)) {
                clickOn(buttonToggle);
                verifyLocatorColorUsingCssValue(buttonToggle, "#000000", "Blue", "background-color");
            } else {
                testStepFailed(getRefOfXpath(buttonToggle) + " is not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in click on Toggle Button. Exception: " + e.getClass());
        }
    }

    public void verifyDefaultToggleButton(String buttonText, String label, String extra) {
        try {
            String buttonToggle = "";
//            if (label.equalsIgnoreCase("Address Details")) {
            buttonToggle = buttonText + " Toggle Button#xpath=//strong[normalize-space(text())=\"" + label.trim() + "\"]/../following-sibling::div//*[normalize-space(text())='" + buttonText.trim() + "']/parent::li[@class='active']";
//            }
//            else {
//                buttonToggle=buttonText+" Toggle Button#xpath=//strong[normalize-space(text())=\""+label.trim()+"\"]/../../following-sibling::div//*[normalize-space(text())='"+buttonText.trim()+"']/parent::li[@class='active']";
//            }
            if (isElementDisplayed(buttonToggle)) {
                testStepPassed(getRefOfXpath(buttonToggle) + " is Default");
                verifyLocatorColorUsingCssValue(buttonToggle, "#000000", "Blue", "background-color");
            } else {
                testStepFailed(getRefOfXpath(buttonToggle) + " is not Default");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in Default Toggle Button. Exception: " + e.getClass());
        }
    }


    public String verifyYesToggleButton(String title, String extra) {
        String address = "";
        try {
            String addressLocator = "";
            if (title.equalsIgnoreCase("Address Details")) {
                addressLocator = title + "#xpath=//strong[normalize-space(text())=\"" + title.trim() + "\"]/../following-sibling::div//*[normalize-space(text())='Address']/following-sibling::p";
            } else {
                addressLocator = title + "#xpath=//strong[normalize-space(text())=\"" + title.trim() + "\"]/../../following-sibling::div//*[normalize-space(text())='Address']/following-sibling::p";
            }
            Boolean flag = scrollToWebElementIfPresent(addressLocator);
            if (flag) {
                if (isElementDisplayed(addressLocator)) {
                    if (textGet(addressLocator).contains("XXXXXX")) {
                        address = textGet(addressLocator);
                        manualScreenshot(address + " Fetched successfully After click on YES Toggle Button");
                    } else {
                        testStepFailed(getRefOfXpath(addressLocator) + " is Not Fetched After click on YES Toggle Button");
                    }
                } else {
                    testStepFailed(getRefOfXpath(addressLocator) + " is Not Displayed");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify YES toggle button. Exception: " + e.getClass());
        }
        return address;
    }

    public void verifyNoToggleButton(String title, String expectedText, String extra) {
        try {
            String addressLocator = "";
            if (title.equalsIgnoreCase("Address Details")) {
//                addressLocator = label + "#xpath=//strong[normalize-space(text())='" + title.trim() + "']/../..//strong[normalize-space(text())=\"" + label.trim() + "\"]";
                addressLocator = title + " : " + expectedText + "#xpath=//strong[normalize-space(text())='" + title.trim() + "']/../following-sibling::div//strong[normalize-space(text())='" + expectedText.trim() + "']";
            } else {
                addressLocator = title + " : " + expectedText + "#xpath=//strong[normalize-space(text())='" + title.trim() + "']/../../following-sibling::div//strong[normalize-space(text())='" + expectedText.trim() + "']";
            }
            Boolean flag = scrollToWebElementIfPresent(addressLocator);
            if (flag) {
                if (isElementDisplayed(addressLocator)) {
                    manualScreenshot(getRefOfXpath(addressLocator) + " is Displayed for 'NO' Toggle Button.");
                } else {
                    testStepFailed(getRefOfXpath(addressLocator) + " is Not Displayed. No Toggle button is not working");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify NO toggle button. Exception: " + e.getClass());
        }
    }


    public String enterAddressTextBoxUsingTitleAndLabel(String title, String label, String value, String extra) {
        String txtBox_Locator = "";
        try {
            txtBox_Locator = title + " - " + label + " Text Box#xpath=//strong[normalize-space(text())='" + title.trim() + "']/../following-sibling::div//label[normalize-space(text())='" + label.trim() + "']/following-sibling::input";
            if (isElementDisplayed(txtBox_Locator)) {
                clearEditBox(txtBox_Locator);
                typeIn(txtBox_Locator, value);
            } else {
                testStepFailed(getRefOfXpath(txtBox_Locator) + " is Not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in enter Address Text box Using Title and Label " + label + ". Exception: " + e.getClass());
        }
        return txtBox_Locator;
    }

    public String valueIsAutoPopulatedUsingTitleAndLabel(String title, String label, String value, String extra) {
        String txtBox_Locator = "";
        try {
            txtBox_Locator = title + " - " + label + " Text Box#xpath=//strong[normalize-space(text())='" + title.trim() + "']/../following-sibling::div//label[normalize-space(text())='" + label.trim() + "']/following-sibling::input[not(@hidden)]";
            if (title.toLowerCase().contains("guardian")) {
                txtBox_Locator = title + " - " + label + " Text Box#xpath=//strong[normalize-space(text())='" + title.trim() + "']/../../following-sibling::div//label[normalize-space(text())='" + label.trim() + "']/following-sibling::input[not(@hidden)]";
            }
//            txtBox_Locator = title + " - " + label + " Text Box#xpath=//strong[normalize-space(text())='" + title.trim() + "']/../following-sibling::div//label[normalize-space(text())='" + label.trim() + "']/following-sibling::input";
            if (isElementDisplayed(txtBox_Locator)) {
                String value1 = getTextUsingLocator(txtBox_Locator);
                if (value1.trim().equalsIgnoreCase(value.trim())) {
                    testStepPassed(getRefOfXpath(txtBox_Locator) + " value is Auto populated successfully");
                } else {
                    stepFailed(getRefOfXpath(txtBox_Locator) + " value is Not Auto populated");
                }
            } else {
                testStepFailed(getRefOfXpath(txtBox_Locator) + " is Not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in value is Auto Populated Using Title and Label " + label + ". Exception: " + e.getClass());
        }
        return txtBox_Locator;
    }


    public void validateTextBoxInAddress(String locator, String errMsgText, String extra) {
        try {
            String errMsg = getRefOfXpath(locator) + " " + errMsgText + "#xpath=" + getCommonPathOfLocator(locator) + "/following-sibling::div[normalize-space(text())='" + errMsgText.trim() + "']";
            Boolean flag = scrollToWebElementIfPresent(errMsg);
            if (flag) {
                if (isElementDisplayed(errMsg)) {
                    manualScreenshot(errMsgText + "is Displayed successfully");
                } else {
                    testStepFailed(getRefOfXpath(errMsg) + " is Not Displayed");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Validate text box in Address. Exception: " + e.getClass());
        }
    }

    public void verifyMajorCalendarUsingLocator(String locator, String txtBoxLocator) {
        try {
            String activeDate = "Day Active#xpath=//div[contains(@class,'daterangepicker')and(contains(@style,'display: block;'))]//table[@class='table-condensed']/tbody/tr/td[contains(@class,'active start-date active end-date available')]";
            String disableDate = "Day Disable#xpath=//div[contains(@class,'daterangepicker')and(contains(@style,'display: block;'))]//table[@class='table-condensed']/tbody/tr/td[contains(@class,'active start-date active end-date available')]/following-sibling::td[@class='off disabled'or'weekend off disabled']";
            String disable = "Day Disable present#xpath=//div[contains(@class,'daterangepicker')and(contains(@style,'display: block;'))]//table[@class='table-condensed']/tbody/tr/td[contains(@class,'active start-date active end-date available')]/following-sibling::td";
            String past18YearsDate = generatePastYears(18, "dd/MM/yyyy");
            scrollToWebElementIfPresent(locator);
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
            testStepFailed("Failed in verify Major calendar using locator. Exception: " + e.getClass());
        }
    }


    public void verifyMinorCalendarUsingLocator(String locator, String txtBoxLocator) {
        try {
            String activeDate = "Day Active#xpath=//div[contains(@class,'daterangepicker')and(contains(@style,'display: block;'))]//table[@class='table-condensed']/tbody/tr/td[contains(@class,'active start-date active end-date available')]";
            String disableDate = "Day Disable#xpath=//div[contains(@class,'daterangepicker')and(contains(@style,'display: block;'))]//table[@class='table-condensed']/tbody/tr/td[contains(@class,'active start-date active end-date available')]/following-sibling::td[@class='off disabled'or'weekend off disabled']";
            String disable = "Day Disable present#xpath=//div[contains(@class,'daterangepicker')and(contains(@style,'display: block;'))]//table[@class='table-condensed']/tbody/tr/td[contains(@class,'active start-date active end-date available')]/following-sibling::td";
            String today = generateTodayDate("dd/MM/yyyy");
            if (isElementDisplayed(locator)) {
                clickOn(locator);
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
                    if (findWebElement(txtBoxLocator).getAttribute("value").trim().equals(today)) {
                        manualScreenshot("Calendar able to select Today date successfully : " + getText(txtBoxLocator));
                    } else {
                        testStepFailed("Calendar not showing Today date : " + getText(txtBoxLocator));
                    }
                } else {
                    testStepFailed("Active Date is not Displayed");
                }
            } else {
                testStepFailed(locator.split("#")[0] + " is Not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify minor calendar using Locator. Exception: " + e.getClass());
        }
    }


    public static final String dropdown_YearInCalendar = "Calendar Year Dropdown#xpath=//div[contains(@class,'calendar')and(contains(@style,'display: block;'))]//table[@class='table-condensed']/thead/tr/th/select[@class='yearselect']";
    public static final String dropdown_MonthInCalendar = "Calendar Month Dropdown#xpath=//div[contains(@class,'calendar')and(contains(@style,'display: block;'))]//table[@class='table-condensed']/thead/tr/th/select[@class='monthselect']";

    public void selectCalendarDateUsingLocator(String locator, String yearIn_yyyy, String monthIn_Mmm, String dayIn_d) {
        try {
            String day = "Day : " + dayIn_d + " #xpath=//div[contains(@class,'daterangepicker')and(contains(@style,'display: block;'))]//table[@class='table-condensed']/tbody/tr/td[@class='available'and(normalize-space(text())='" + dayIn_d + "')]|//div[contains(@class,'daterangepicker')and(contains(@style,'display: block;'))]//table[@class='table-condensed']/tbody/tr/td[@class='weekend available'and(normalize-space(text())='" + dayIn_d + "')]";
            Boolean flag = scrollToWebElementIfPresent(locator);
            if (flag) {
                if (isElementDisplayed(locator)) {
                    clickOn(locator);
                    waitTime(3);
                    selectDropDownUsingText(dropdown_YearInCalendar, yearIn_yyyy);
                    selectDropDownUsingText(dropdown_MonthInCalendar, monthIn_Mmm);
                    clickOnIfDisplayed(day);
                } else {
                    testStepFailed(getRefOfXpath(locator) + " is Not Displayed");
                    return;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in select Date in calendar Using Locator. Exception: " + e.getClass());
        }

    }

    public static final String successMsg_AddNominee = "Add Nominee Success Message#xpath=//strong[normalize-space(text())='Request successful']";
    public static final String doYouKnow_AddNominee = "Do you know? Msg#xpath=//strong[normalize-space(text())='Do you know?']";
    public static final String timelineMsg_AddNominee = "Add Nominee TimeLine Message#xpath=//p[normalize-space(text())='Your nominee details for the deposit will be updated in 1 business day']";
    public static final String txt_DoYouKnowExplaination_AddNominee = "Do You Know Detail#xpath=//p[normalize-space(text())='In case of an untimely demise of the deposit holder, the nomination facility ensures that your funds are easily transferred to the nominee or the legal heir(s), eliminating the hassles of producing a court order or a succession certificate.']";
    public static final String tickMark_AddNominee = "Add Nominee Success Tick Mark#xpath=//img[@data-savepage-src='https://experia-uat.bajajfinserv.in/UI/images/tick_check.png']";

    public void verifyTextBoxNotAcceptedInvalidValue(String locatorTextBox, String invalidValues, String extra) {
        try {
            Boolean flag = scrollToWebElementIfPresent(locatorTextBox);//new
            if (flag) {
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
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verfy " + getRefOfXpath(locatorTextBox) + " not accepted invalid value. Exception: " + e.getClass());
        }
    }

    public Map<String, String> verifyRelationShipGuardianDetails(String labelValuesWithHash) {
        Map<String, String> map = new LinkedHashMap<>();
        try {
            for (int i = 0; i < 3; i++) {
                if (isElementDisplayed(btn_NextSlider)) {
                    if (isElementPresent(FDServicesPage.btn_NextSlider)) {
                        clickOn(FDServicesPage.btn_NextSlider);
                        waitTime(2);
                    } else {
                        break;
                    }
                }
            }
            String title = "FD Guardian Details Sub Title#xpath=//div[@class='Relationship_Details']/descendant::p[normalize-space(text())='Guardian Details']";
            Boolean flag = verifyElementIsDisplayedUsingLocator(title);
            if (flag) {
                String[] values = labelValuesWithHash.split("#");
                for (int i = 0; i < values.length; i++) {
                    String label = values[i].trim();
                    String value = verifyValueUsingLabel(getCommonPathOfLocator(title) + "/../following-sibling::div/p", label.trim(), "/following-sibling::strong", "");
                    map.put(label.trim(), value);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify  Relationship Guardian Details with " + labelValuesWithHash + ". Exception: " + e.getClass());
        }
        return map;
    }

    public void verifyErrorMessageInFdNomineePageUsingLabel(String titleLikeNomineeOrGuardian, String label, String errmsgText, String extra) {
        try {
            String locator = "";
            if (!titleLikeNomineeOrGuardian.equals("")) {
                locator = titleLikeNomineeOrGuardian + " " + label + " Error Messgae#xpath=//strong[normalize-space(text())='Provide " + titleLikeNomineeOrGuardian + " Address']/../following-sibling::div//label[normalize-space(translate(., 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'))='" + label.toLowerCase().trim() + "']/following-sibling::*[normalize-space(translate(., 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'))='" + errmsgText.toLowerCase().trim() + "']";
            } else {
                locator = label + " Error Messgae#xpath=//label[normalize-space(translate(., 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'))='" + label.toLowerCase().trim() + "']/following-sibling::*[normalize-space(translate(., 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'))='" + errmsgText.toLowerCase().trim() + "']";
            }
            Boolean flag = scrollToWebElementIfPresent(locator);
            if (flag) {
                if (isElementDisplayed(locator)) {
                    testStepPassed("Error Message: " + errmsgText);
                    manualScreenshot(getRefOfXpath(locator) + " is verified successfuly");
                } else {
                    stepFailed("Error Message: " + errmsgText);
                    testStepFailed(getRefOfXpath(locator) + " is Not verified");
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Error Message for " + label + ". Exception: " + e.getClass());
        }
    }

    ///////// Renew your FD///////////////
    public static final String txtBox_BrokerCode = "Broker Code text Box#xpath=//input[@id='brokercode']";
    public static final String txtBox_BrokerName = "Broker Name text Box#xpath=//input[@id='brokername']";
    public static final String link_ViewInterestRates = "View Interest Rates Under Select Tenor (In Months)#xpath=//p[normalize-space(text())='Select Tenor (In Months)']/following-sibling::a[normalize-space(text())='View Interest Rates']";

    //09_08_2022
    public void verifySelectOptionsBox(String title, String labelsWithComma, String extra) {
        try {
            String titleLocator = title + "#xpath=//*[normalize-space(text())='" + title.trim() + "']";
            Boolean flag = verifyElementIsDisplayedUsingLocator(titleLocator);
            if (flag) {
                String[] split = labelsWithComma.split(",");
                for (int i = 0; i < split.length; i++) {
                    String label = split[i];
                    String selectionBox = label + " Selection Box Under " + title + " Title#xpath=" + getCommonPathOfLocator(titleLocator) + "/../..//i[normalize-space(text())='" + label.trim() + "']";
                    verifyElementIsDisplayedUsingLocator(selectionBox);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Select Option  Box. Exception: " + e.getClass());
        }
    }

    //09_08_2022
    public void clickOnSelectOptionsBox(String title, String labelsWithComma, String extra) {
        try {
            String titleLocator = title + "#xpath=//*[normalize-space(text())='" + title.trim() + "']";
            String[] split = labelsWithComma.split(",");
            for (int i = 0; i < split.length; i++) {
                String label = split[i];
                String selectionBox = label + " Selection Box Under " + title + " Title#xpath=" + getCommonPathOfLocator(titleLocator) + "/../..//i[normalize-space(text())='" + label.trim() + "']";
                String selectionBoxActive = label + " Selection Box Under " + title + " Title#xpath=" + getCommonPathOfLocator(titleLocator) + "/../..//i[normalize-space(text())='" + label.trim() + "']/parent::label[@class='active']";
                if (isElementDisplayed(selectionBox)) {
                    clickOn(selectionBox);
                    if (isElementPresent(selectionBoxActive)) {
                        manualScreenshot(selectionBox + " is Selected Successfully");
                        verifyLocatorColorUsingCssValue(selectionBoxActive, "#002a53", "Blue", "background-color");
                    } else {
                        testStepFailed(selectionBox + " is Not Selected");
                    }
                } else {
                    stepFailed(getRefOfXpath(selectionBox) + " is Not Displayed");
                }

            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Select Option  Box. Exception: " + e.getClass());
        }
    }


    //09_08_2022
    public void verifyBadgeInSelectionBox(String title, String optionText, String extra) {
        try {
            String titleLocator = title + "#xpath=//*[normalize-space(text())='" + title.trim() + "']";
            String selectionBox = "Badge with " + optionText + " Selection Box Under " + title + " Title#xpath=" + getCommonPathOfLocator(titleLocator) + "/../..//i[normalize-space(text())='" + optionText.trim() + "']/following-sibling::img[@class='j_tnr_badge']";
            if (isElementDisplayed(selectionBox)) {
                manualScreenshot(getRefOfXpath(selectionBox) + " is verified successfully");
            } else {
                testStepFailed(getRefOfXpath(selectionBox) + " is not verified");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Badge In Selection box. Exception: " + e.getClass());
        }
    }

    public Map<String, String> verifyLabelsAndGetValues(String title, String labelWithHash, String extra) {
        Map<String, String> map = new LinkedHashMap<>();
        try {
            String[] split = labelWithHash.split("#");
            for (int i = 0; i < split.length; i++) {
                String label = split[i].trim();
                String labelLoc = title + " " + label + "#xpath=//*[normalize-space(text())='" + title.trim() + "']/../following-sibling::*//*[normalize-space(text())='" + label.trim() + "']";
                Boolean flag = verifyFieldsDisplayedUsingLocatorWithScroll(labelLoc);
                if (flag) {
                    String value = verifyGetValueUsingLabelCommonPathLocator(labelLoc);
                    map.put(label, value);
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("failed in verify Lables and get values. Exception: " + e.getClass());
        }
        return map;
    }

    public String verifyGetValueUsingLabelCommonPathLocator(String commonLocator) {
        String value = "";
        try {
            String valueLoc = getRefOfXpath(commonLocator) + " value#xpath=" + getCommonPathOfLocator(commonLocator) + "/following-sibling::p|" + getCommonPathOfLocator(commonLocator) + "/p|" + getCommonPathOfLocator(commonLocator) + "/following-sibling::div/p[contains(text(),'Rs. ')]";
            Boolean flag = scrollToWebElementIfPresent(valueLoc);
            if (flag) {
                if (isElementDisplayed(valueLoc)) {
                    value = textGet(valueLoc);
                } else {
                    testStepFailed(getRefOfXpath(valueLoc) + " is not displayed");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Get Value Using Label and title. Exception: " + e.getClass());
        }
        return value;
    }

    public void verifyNudge(String nudgeText, String hexColor, String colorName, String extra) {
        try {
            String nudgeLoc = nudgeText + " Nudge#xpath=//strong/i[normalize-space(text())='" + nudgeText.trim() + "']";
            if (isElementDisplayed(nudgeLoc)) {
                manualScreenshot(nudgeText + " Nudge Displayed successfully");
            } else {
                testStepFailed(nudgeText + " Nudge is Not Displayed");
            }
            verifyLocatorColorUsingCssValue(nudgeLoc, hexColor, colorName, "background-color");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }


    public void verifyRelationShipSubTitleDetailsIsNotDisplayed(String commonXpath, String titleFirst, String subTitleText, String labelXpath, String valueXpath, String labelValuesWithHash, String extra) {
        try {
            String title = titleFirst + " " + subTitleText + " Sub Title#xpath=" + commonXpath + "[normalize-space(text())='" + subTitleText.trim() + "']";
            Boolean flag = verifyElementIsDisplayedUsingLocator(title);
            if (flag) {
                String[] values = labelValuesWithHash.split("#");
                for (int i = 0; i < values.length; i++) {
                    String label = values[i].trim();
                    String labelLoc = "" + label + " Label#xpath=" + getCommonPathOfLocator(title) + "[normalize-space(text())='" + label.trim() + "']";
                    verifyElementIsNotPresentUsingLocator(labelLoc);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify  Relationship Sub Title Details " + titleFirst + " - " + subTitleText + " with " + labelValuesWithHash + " is Not displayed. Exception: " + e.getClass());
        }

    }


    public void clickOnRhsOptions(String title, String optionText, String extra) {
        try {
            String optionLocator1 = optionText + " Option in " + title + " RHS#xpath=//*[normalize-space(text())='" + title.trim() + "']/../following-sibling::div//*[normalize-space(text())=\"" + optionText.trim() + "\"]|//*[contains(text(),'" + title.trim() + "')]/../following-sibling::div//*[normalize-space(text())=\"" + optionText.trim() + "\"]";
            boolean flag = false;
            for (int j = 1; j <= sizeOfLocator(optionLocator1); j++) {
                String optionLocator = optionText + " Option in " + title + " RHS#xpath=(" + getCommonPathOfLocator(optionLocator1) + ")[" + j + "]";
                if (isElementDisplayed(optionLocator)) {
                    flag = true;
                    clickOn(optionLocator);
                    waitForPageToLoad();
                    break;
                }
            }
            if (!flag) {
                testStepFailed(getRefOfXpath(optionLocator1) + " is Not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void redirectionToViewDocumentsPage(String name, String accNumber, String extra) {
        try {
            String cardTitle = name + " " + accNumber + "#xpath=//p[normalize-space(text())='" + name + "']/span[normalize-space(text())='" + accNumber.trim() + "']";
            if (isElementDisplayed(cardTitle)) {
                testStepPassed("View Documents Redirected to " + getRefOfXpath(cardTitle) + " successfully");
            } else {
                testStepFailed("View Documents is not Redirected to " + getRefOfXpath(cardTitle));
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in redirection To view documents Page .Exception:" + e.getClass());
        }
    }

    public List<String> verifyDocumentsNames() {
        List<String> list = new ArrayList<>();
        try {
            String docs = "Documents Names Common#xpath=//img[contains(@src,'/ricipt.svg')]/following-sibling::div/p";
            int size = sizeOfLocator(docs);
            for (int i = 1; i <= size; i++) {
                String docsName = "Documents Name " + i + " #xpath=(//img[contains(@src,'/ricipt.svg')]/following-sibling::div/p)[" + i + "]";
//                String downloadIcon="Documents Name Download Icon#xpath=("+getCommonPathOfLocator(docs)+"/../following-sibling::img[contains(@src,'/download_doc.svg')])["+i+"]";
                if (isElementDisplayed(docsName)) {
                    String name = getText(docsName);
                    testStepPassed(getRefOfXpath(docsName) + " : " + name);
                    list.add(name.toLowerCase().trim());
                } else {
                    testStepFailed(getRefOfXpath(docsName) + " is not displayed");
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in Verify Documents names. Exception: " + e.getClass());

        }
        return list;
    }

    public void verifyDownloadDocumentsInViewDocuments(List<String> namesDocuments, String extra) {
        try {

            if (namesDocuments == null) {
                testStepFailed("Documents Names are not verified");
                return;
            }
            String doc1 = "statement of account,FD_SOAReport.pdf";
            String doc2 = "Interest Certificate,IC.pdf";

//            String docname = doc1.split(",")[0].toLowerCase().trim();
//            if (namesDocuments.contains(docname)) {
//                namesDocuments.remove(docname);
//                String locatorDownloadIcon= docname +" Document#xpath=//p[normalize-space(translate(., 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'))='"+docname.toLowerCase().trim()+"']/../following-sibling::img[contains(@src,'/download_doc.svg')]";
//verifyDownLoadAndDeleteLatestFileNameFromLocalMachine(doc1.split(",")[1].trim());
//            }


            verifyDocIsDisplayedAndClickDownLoadIcon(namesDocuments, doc1);

//            if (namesDocuments.size()!=0) {
//                for (int i = 0; i < namesDocuments.size(); i++) {
//                    testStepFailed(namesDocuments.get(i)+" is New Document which added in document section");
//                }
//            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify DownLoad Documents in view Documents page. Exception: " + e.getClass());
        }
    }

    public void verifyDocIsDisplayedAndClickDownLoadIcon(List<String> namesDocuments, String doc1) {
        try {
            String docname = doc1.split(",")[0].toLowerCase().trim();
            if (namesDocuments.contains(docname)) {
                namesDocuments.remove(docname);
                String filename = doc1.split(",")[1].trim();
                deleteFileIfPresentFromLocalMachineWithoutFail(filename);
                String locatorDownloadIcon = docname + " Document#xpath=//p[normalize-space(translate(., 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'))='" + docname.toLowerCase().trim() + "']/../following-sibling::img[contains(@src,'/download_doc.svg')]";
                clickOnIfDisplayed(locatorDownloadIcon);
                verifyDownLoadAndDeleteLatestFileNameFromLocalMachine(filename);
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify " + doc1 + " Document is Displayed and downloaded. Exception: " + e.getClass());
        }
    }


//    public void verifyDocIsDisplayedAndClickDownLoadIcon(List<String> namesDocuments,String doc1) {
//        try {
//            String docname = doc1.split(",")[0].toLowerCase().trim();
//            if (namesDocuments.contains(docname)) {
//                namesDocuments.remove(docname);
//                String locatorDownloadIcon= docname +" Document#xpath=//p[normalize-space(translate(., 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'))='"+docname.toLowerCase().trim()+"']/../following-sibling::img[contains(@src,'/download_doc.svg')]";
//                verifyDownLoadAndDeleteLatestFileNameFromLocalMachine(doc1.split(",")[1].trim());
//            }
//        } catch (Exception e) {
//            e.printStackTrace();
//            testStepFailed("Failed in verify "+doc1+" Document is Displayed and downloaded. Exception: "+e.getClass());
//        }
//    }

    public boolean clickOnRenewSelectBox(String optionText, String extra) {
        boolean f1 = false;
        try {
            String selectBoxLocator = optionText + " Option#xpath=//i[normalize-space(text())='" + optionText.trim() + "']/parent::label";
            if (isElementDisplayed(selectBoxLocator)) {
                clickOn(selectBoxLocator);
                f1 = true;
                Boolean flag = verifyLocatorColorUsingCssValue(selectBoxLocator, "#002a53", "Blue", "background-color");
                if (flag) {
                    testStepPassed(getRefOfXpath(selectBoxLocator) + " is selected successfully");
                } else {
                    testStepFailed(getRefOfXpath(selectBoxLocator) + " is not selected");
                }
            } else {
                testStepFailed(getRefOfXpath(selectBoxLocator) + " is Not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in click on Selectbox . Exception: " + e.getClass());
        }
        return f1;
    }

    public void verifyInterestRateCalculationInRenewalPlan(String selectPlan, String selectMonths, String selectPayout, String expectedInterestRate) {
        try {
            testStepInfo("******************************************************************************");
            String interestLoc = "Interest Rate (Per Annum)#xpath=//p[@id='intRate']";
            String maturityAmonuntLoc = "Maturity Amount (Interest + Principal)#xpath=//p[@id='maturityAmt']";
            String renewAmountLoc = "Renewal Amount " + selectPlan + "#xpath=//div[@class='j_input_renewal']//input";
            String editIcon = "Renewal Amount Edit Pencil Icon#xpath=//div[@class='j_pencil_d']//img[contains(@src,'/edit.svg')]";
            clickOnRenewSelectBox(selectPlan, "");
            clickOnRenewSelectBox(selectMonths, "");
            clickOnRenewSelectBox(selectPayout, "");
            Boolean flag = scrollToWebElementIfPresent(maturityAmonuntLoc);
            if (flag) {
                if (isElementDisplayed(renewAmountLoc) && isElementDisplayed(maturityAmonuntLoc) && isElementDisplayed(interestLoc)) {
                    int matAmt = Integer.parseInt(textGet(maturityAmonuntLoc).trim().replaceAll(",", ""));
                    String interest = textGet(interestLoc).trim();
                    double intrst = Double.parseDouble(interest.replaceAll("%", ""));
                    double renAmt = Double.parseDouble(getAttributeValue(renewAmountLoc).trim());
                    if (selectPlan.equalsIgnoreCase("Partial Renewal")) {
                        clickOn(editIcon);
                        clearEditBox(renewAmountLoc);
                        typeInIfPresent(renewAmountLoc, String.valueOf(((int) renAmt - 1)));
                        waitTime(2);
                        renAmt = Double.parseDouble(getAttributeValue(renewAmountLoc).trim());
                    }
                    if (!interest.equals(expectedInterestRate)) {
                        stepFailed("Expected Interest Rate: " + expectedInterestRate);
                        stepFailed("Actual Interest Rate: " + interest);
                        stepFailed("Plan: " + selectPlan);
                        stepFailed("select tenure Months: " + selectMonths);
                        stepFailed("Select Interest Payout: " + selectPayout);
                        testStepFailed("Interest Value has changed for following criteria");
                    }
                    int year = (Integer.parseInt(selectMonths.trim())) / 12;
                    int actualAmount = 0;
                    if (!selectPayout.equalsIgnoreCase("maturity")) {
                        //new
                        double actualMatAmount = (renAmt * intrst * year) / 100;
                        actualAmount = (int) (actualMatAmount + renAmt);
                    } else {
                        for (int i = 1; i <= year; i++) {
                            double actualMatAmount = (renAmt * intrst) / 100;
                            renAmt = actualMatAmount + renAmt;
                        }
                        actualAmount = (int) renAmt;
                    }

                    //newend


                    if (matAmt >= (actualAmount - 2) && matAmt <= (actualAmount + 2)) {
//                if (matAmt == actualAmount) {
                        testStepPassed("Expected Maturity Amount: " + matAmt);
                        testStepPassed("Actual Maturity Amount: " + actualAmount);
                        testStepPassed("Plan: " + selectPlan);
                        testStepPassed("select tenure Months: " + selectMonths);
                        testStepPassed("Select Interest Payout: " + selectPayout);
                        testStepPassed("Interest Value: " + intrst);
                        manualScreenshot("Expected Maturity Amount is Displayed successfully for Above Criteria");
                    } else {
                        stepFailed("Expected Maturity Amount: " + matAmt);
                        stepFailed("Actual Maturity Amount: " + actualAmount);
                        stepFailed("Plan: " + selectPlan);
                        stepFailed("select tenure Months: " + selectMonths);
                        stepFailed("Select Interest Payout: " + selectPayout);
                        stepFailed("Interest Value: " + intrst);
                        testStepFailed("Expected Maturity Amount is Not Showing for Above criteria");
                    }
                } else {
                    testStepFailed("One Of The Following Field is Not Displayed: " + getRefOfXpath(interestLoc) + " (OR) " + getRefOfXpath(maturityAmonuntLoc) + " (OR) " + getRefOfXpath(renewAmountLoc));
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Interest Rate Calculation. Exception: " + e.getClass());
        }
    }

    public void verifyDefaultSelectBoxInRenew(String optionText, String nameSection) {
        try {
            String selectBoxLocator = optionText + " Option in " + nameSection + "#xpath=//i[normalize-space(text())='" + optionText.trim() + "']/parent::label";
            if (isElementDisplayed(selectBoxLocator)) {
                Boolean flag = verifyLocatorColorUsingCssValue(selectBoxLocator, "#002a53", "Blue", "background-color");
                if (flag) {
                    testStepPassed(getRefOfXpath(selectBoxLocator) + " is Default selected verified successfully");
                } else {
                    testStepFailed(getRefOfXpath(selectBoxLocator) + " is not Default selected");
                }
            } else {
                testStepFailed(getRefOfXpath(selectBoxLocator) + " is Not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify  " + optionText + " in " + nameSection + " is Default Selected. Exception: " + e.getClass());
        }
    }

    public void verifyBadgeInBox(String title, String optionText, String extra) {
        try {

            String selectionBox = "Badge with " + optionText + " Selection Box Under " + title + " Title#xpath=//i[normalize-space(text())='" + optionText.trim() + "']/following-sibling::img[@class='j_tnr_badge']";
            if (isElementDisplayed(selectionBox)) {
                manualScreenshot(getRefOfXpath(selectionBox) + " is verified successfully");
            } else {
                testStepFailed(getRefOfXpath(selectionBox) + " is not verified");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Badge In Selection box. Exception: " + e.getClass());
        }
    }

    public void verifyRenewTextBox(String errLocator, String extra) {
        try {
            String txtBoxLocator = "Renew Amount Text box in Renew Plan#xpath=//*[normalize-space(text())='Renewal Amount']/../following-sibling::div//input";
            String editButtonRenewAmount = "Edit Button in FD Renew Amount#xpath=//*[@class='j_pencil_d']/a/img[contains(@src,'/edit.svg')]";
            clickOnRenewSelectBox("Principal + Interest", "");
            String renewAmount = getTextUsingLocator(txtBoxLocator).trim();
            if (renewAmount != null) {
                int amount = Integer.parseInt(renewAmount);
                boolean f1 = clickOnRenewSelectBox("Partial Renewal", "");
                if (f1) {
                    boolean f2 = clickOnIfDisplayed(editButtonRenewAmount);
                    if (f2) {
                        clearEditBox(txtBoxLocator);
                        testStepInfo("***************** Greater than Maturity Amount *****************");
                        typeInIfDisplayed(txtBoxLocator, String.valueOf(amount + 1));
                        verifyErrorMessageUsingLocator(errLocator);
                        clearEditBox(txtBoxLocator);
                        testStepInfo("***************** Less than 15K Amount *****************");
                        typeInIfDisplayed(txtBoxLocator, "14999.5");
                        verifyErrorMessageUsingLocator(errLocator);
                        clearEditBox(txtBoxLocator);
                        typeInIfDisplayed(txtBoxLocator, "14999");
                        verifyErrorMessageUsingLocator(errLocator);
                    }
                }

            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Renew Aomunt Text Box. Exception: " + e.getClass());
        }
    }

    public void verifyRenewTextBoxNonCumulative(String errLocator, String extra) {
        try {
            String txtBoxLocator = "Renew Amount Text box in Renew Plan#xpath=//*[normalize-space(text())='Renewal Amount']/../following-sibling::div//input";
            String editButtonRenewAmount = "Edit Button in FD Renew Amount#xpath=//*[@class='j_pencil_d']/a/img[contains(@src,'/edit.svg')]";
            clickOnRenewSelectBox("Principal", "");
            String renewAmount = getTextUsingLocator(txtBoxLocator).trim();
            if (renewAmount != null) {
                int amount = Integer.parseInt(renewAmount);
                boolean f1 = clickOnRenewSelectBox("Partial Renewal", "");
                if (f1) {
                    boolean f2 = clickOnIfDisplayed(editButtonRenewAmount);
                    if (f2) {
                        clearEditBox(txtBoxLocator);
                        testStepInfo("***************** Greater than Maturity Amount *****************");
                        typeInIfDisplayed(txtBoxLocator, String.valueOf(amount + 1));
                        verifyErrorMessageUsingLocator(errLocator);
                        clearEditBox(txtBoxLocator);
                        testStepInfo("***************** Less than 15K Amount *****************");
                        typeInIfDisplayed(txtBoxLocator, "14999.5");
                        verifyErrorMessageUsingLocator(errLocator);
                        clearEditBox(txtBoxLocator);
                        typeInIfDisplayed(txtBoxLocator, "14999");
                        verifyErrorMessageUsingLocator(errLocator);
                    }
                }

            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Renew Aomunt Text Box. Exception: " + e.getClass());
        }
    }


    public void verifyRenewTextBoxValidValidation(String errLocator, String extra) {
        try {
            String txtBoxLocator = "Renew Amount Text box in Renew Plan#xpath=//*[normalize-space(text())='Renewal Amount']/../following-sibling::div//input";
            String editButtonRenewAmount = "Edit Button in FD Renew Amount#xpath=//*[@class='j_pencil_d']/a/img[contains(@src,'/edit.svg')]";
            clickOnRenewSelectBox("Principal + Interest", "");
            String renewAmount = getAttributeValueIfDisplayed(txtBoxLocator).trim();
            if (renewAmount != null) {
                int amount = Integer.parseInt(renewAmount);
                boolean f1 = clickOnRenewSelectBox("Partial Renewal", "");
                if (f1) {
                    boolean f2 = clickOnIfDisplayed(editButtonRenewAmount);
                    if (f2) {
                        clearEditBox(txtBoxLocator);
                        testStepInfo("***************** Less than Maturity Amount *****************");
                        typeInIfDisplayed(txtBoxLocator, String.valueOf(amount - 1));
                        verifyErrorMessageIsNotDisplayedUsingLocator(errLocator, String.valueOf(amount - 1));
                        clearEditBox(txtBoxLocator);
                        testStepInfo("***************** Greater than 15K Amount *****************");
                        typeInIfDisplayed(txtBoxLocator, "15000");
                        verifyErrorMessageIsNotDisplayedUsingLocator(errLocator, "15000");
                        clearEditBox(txtBoxLocator);
                        typeInIfDisplayed(txtBoxLocator, "15001");
                        verifyErrorMessageIsNotDisplayedUsingLocator(errLocator, "15001");
                    }
                }

            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Renew Aomunt Text Box Valid Validation. Exception: " + e.getClass());
        }
    }

    public void verifyRenewTextBoxValidValidationNonCumulative(String errLocator, String extra) {
        try {
            String txtBoxLocator = "Renew Amount Text box in Renew Plan#xpath=//*[normalize-space(text())='Renewal Amount']/../following-sibling::div//input";
            String editButtonRenewAmount = "Edit Button in FD Renew Amount#xpath=//*[@class='j_pencil_d']/a/img[contains(@src,'/edit.svg')]";
            clickOnRenewSelectBox("Principal", "");
            String renewAmount = getAttributeValueIfDisplayed(txtBoxLocator).trim();
            if (renewAmount != null) {
                int amount = Integer.parseInt(renewAmount);
                boolean f1 = clickOnRenewSelectBox("Partial Renewal", "");
                if (f1) {
                    boolean f2 = clickOnIfDisplayed(editButtonRenewAmount);
                    if (f2) {
                        clearEditBox(txtBoxLocator);
                        testStepInfo("***************** Less than Maturity Amount *****************");
                        typeInIfDisplayed(txtBoxLocator, String.valueOf(amount - 1));
                        verifyErrorMessageIsNotDisplayedUsingLocator(errLocator, String.valueOf(amount - 1));
                        clearEditBox(txtBoxLocator);
                        testStepInfo("***************** Greater than 15K Amount *****************");
                        typeInIfDisplayed(txtBoxLocator, "15000");
                        verifyErrorMessageIsNotDisplayedUsingLocator(errLocator, "15000");
                        clearEditBox(txtBoxLocator);
                        typeInIfDisplayed(txtBoxLocator, "15001");
                        verifyErrorMessageIsNotDisplayedUsingLocator(errLocator, "15001");
                    }
                }

            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Renew Aomunt Text Box Valid Validation. Exception: " + e.getClass());
        }
    }


    public void verifyAllCombinationOfRenewalPlans(String selectPlan, String selectMonths, String selectPayout) {
        try {
            testStepInfo("******************************************************************************");
            String interestLoc = "Interest Rate (Per Annum)#xpath=//p[@id='intRate']";
            String tenureTextBox = "Renew Tenure Custom Text Box#xpath=//input[@id='CustomTenor']";
            String maturityAmonuntLoc = "Maturity Amount (Interest + Principal)#xpath=//p[@id='maturityAmt']";
            String renewAmountLoc = "Renewal Amount " + selectPlan + "#xpath=//div[@class='j_input_renewal']//input";
            String editIcon = "Renewal Amount Edit Pencil Icon#xpath=//div[@class='j_pencil_d']//img[contains(@src,'/edit.svg')]";
            String btnProceed = "Proceed Button in FD Renew Plan#xpath=//button[normalize-space(text())='PROCEED']";
            String planPageUrl = driver.getCurrentUrl();
            clickOnRenewSelectBox(selectPlan, "");
            if (selectPlan.toLowerCase().contains("partial")) {
                clickOnIfDisplayed(editIcon);
                clearEditBox(renewAmountLoc);
                typeInIfDisplayed(renewAmountLoc, "15001");
            }
            clickOnRenewSelectBox(selectMonths, "");
            if (selectMonths.toLowerCase().contains("custom")) {
                typeInIfDisplayed(tenureTextBox, "25");
            }
            clickOnRenewSelectBox(selectPayout, "");
            clickOnIfDisplayed(btnProceed);
            waitForPageToLoad();
            if (driver.getCurrentUrl().contains("MyAccountFixedDeposit/FixedDeposit/FDRenewalSummary")) {
                testStepPassed(selectPlan);
                testStepPassed(selectMonths);
                testStepPassed(selectPayout);
                manualScreenshot("Above Options Redirected Successfully");
            } else {
                stepFailed(selectPlan);
                stepFailed(selectMonths);
                stepFailed(selectPayout);
                testStepFailed("Above Options is Not Redirected");
            }
            redirectToUrl(planPageUrl, "");
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Interest Rate Calculation. Exception: " + e.getClass());
        }
    }



///////////////Mustaq Lafd//////////////////////////////
    //    Mustaq- 12122022


    public static final String btn_ResendOtp = "Resend OTP Button#xpath=//a[@class='resend-otp disabled']";


    //MUSTAQ- 22112022

    public static final String lafd_Headertitle = "Header Label#xpath=//h1[normalize-space()='Existing Fixed Deposit Details']";
    public static final String lafd_label = "Loan against Fixed Deposit Label#xpath=//h2[@class='lafd']";
    public static final String lafd_txtboxenterAmount = "Enter Amount Text Box#xpath=//h2[@class='lafd']/following::input[@id='txtAmount']";
    public static final String lafd_infoicon = "Info Icon#xpath=//img[contains(@src,'/icons-info.svg')]/parent::a";
    public static final String minmax = "Min and Max Amount Field#xpath=//div[@class='field_hint']";
    public static final String req_Raised = "Request Raised#xpath=//div[@class='req_raised']";


    public void redirectionToLAFDpage(String cardNumber) {
        try {
            String cardTitle = "Card : #xpath=//p[contains(text(),'" + cardNumber + "')]/ancestor::ul[@class='j_fd_details']";
            if (isElementDisplayed(cardTitle)) {
                testStepPassed("User successfully redirected to LAFD Page " + cardNumber);
            } else {
                testStepFailed("Failed to redirect to LAFD Page : " + cardNumber);
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in redirection To LAFD page .Exception:" + e.getClass());
        }
    }


    public void verifyFDLafdPageRedirection() {
        try {

            if (isElementDisplayed(lafd_Headertitle)) {
                verifyElementIsDisplayedOrNot(lafd_label);
                verifyValueUsingLabel("//i", "FD Number", "/following-sibling::p", "");
            } else {
                testStepFailed("Failed to verify" + getRefOfXpath(lafd_Headertitle));
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify FD Lafd Page Redirection . Eception: " + e.getClass());
        }
    }

    public void verifyFDLafdDetails() {
        try {
            String fdamount = "FD Eligibility Amount#xpath=//p[@class='eligible_data']";

            if (isElementDisplayed(lafd_label)) {
                verifyDisplayedAndPrintValueUsingLocator(fdamount, "");
                verifyElementIsDisplayedOrNot(lafd_infoicon);
                verifyElementIsDisplayedOrNot(lafd_txtboxenterAmount);
                verifyFieldsDisplayedUsingText("OTP authentication required from");
                verifyValueUsingLabel("//p", "Primary Account Holder", "/following-sibling::p", "");

            } else {
                testStepFailed(getRefOfXpath(lafd_label) + "is not Displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify FD Lafd Details. Eception: " + e.getClass());
        }
    }

    public void verifyFDLafdMinandMaxAmount() {
        try {
            String minmax = "Min and Max Amount Field#xpath=//div[@class='field_hint']";

            if (isElementDisplayed(minmax)) {
                verifyDisplayedAndPrintValueUsingLocator(minmax, "");
                testStepInfo("Min Value is:" + getMinValueOfLAFD(minmax));
                testStepInfo("Max Value is:" + getMaxValueOfLAFD(minmax));
            } else {
                testStepFailed(getRefOfXpath(minmax) + "is not Displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify FD Min and Max Amount. Eception: " + e.getClass());
        }
    }

    public void verifyLocatorPresentInRightSideOfAnotherLocatorFdPage(String locator, String anotherLocator, int plusMinusValue) {
        try {
            int locator1X = getLocatorX_Position(locator);
            int locator1Y = getLocatorY_Position(locator);
            int locator1Width = getLocatorWidth(locator);
//		int locator1Height = getLocatorHeight(locator);

            int locator2X = getLocatorX_Position(anotherLocator);
            int locator2Y = getLocatorY_Position(anotherLocator);
            int locator2Width = getLocatorWidth(anotherLocator);
//		int locator2Height = getLocatorHeight(anotherLocator);

//		int windowHeight = getWindowHeight();
//		int windowWidth = getWindowWidth();

            int pos1 = locator2X + locator2Width;
            int pos2 = locator1X - plusMinusValue;

            scrollToWebElementIfPresent(locator);
            if (pos2 < pos1) {
                manualScreenshot(locator.split("#")[0] + " is Present on Right Side of " + anotherLocator.split("#")[0] + " is Verified Successfully");
            } else {
                testStepFailed(locator.split("#")[0] + " is Not Present on Right Side of " + anotherLocator.split("#")[0]);
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("verify Locator " + getRefOfXpath(locator) + " Present In Right Side Of Another Locator Fd Page" + getRefOfXpath(anotherLocator) + " Failed. Exception: " + e.getClass());
        }
    }


    public void verifyLAFDToolTipPosition() {
        try {

            if (isElementDisplayed(lafd_infoicon)) {
                verifyLocatorPresentInRightSideOfAnotherLocatorFdPage(lafd_infoicon, lafd_txtboxenterAmount, 0);

            } else {
                testStepFailed(getRefOfXpath(lafd_infoicon) + "is not Displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify LAFD Tool Tip Position. Eception: " + e.getClass());
        }
    }

    public void verifyLafdBankDetails() {
        try {
            String bankdetails = "Bank Details Header#xpath=//div[@class='j_bank_details class_insert_after']//h2[normalize-space(text())='Bank Details']";
            if (isElementDisplayed(bankdetails)) {
                verifyValueUsingLabel("//ul[@class='j_fd_summ_det rm_margin_border']/li/i", "Account Number", "/following-sibling::p", "");
                verifyValueUsingLabel("//ul[@class='j_fd_summ_det rm_margin_border']/li/i", "Account Type", "/following-sibling::p", "");
                verifyValueUsingLabel("//ul[@class='j_fd_summ_det rm_margin_border']/li/i", "Bank Name", "/following-sibling::p", "");
                verifyValueUsingLabel("//ul[@class='j_fd_summ_det rm_margin_border']/li/i", "Branch Name", "/following-sibling::p", "");
                verifyValueUsingLabel("//ul[@class='j_fd_summ_det rm_margin_border']/li/i", "IFSC", "/following-sibling::p", "");

            } else {
                testStepFailed(getRefOfXpath(bankdetails) + "is not Displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify LAFD Bank Details. Eception: " + e.getClass());
        }
    }

    public void verifyLafdBankAccountMasked() {
        try {
            String bankacctno = "Bank Account Number#xpath=//ul[@class='j_fd_summ_det rm_margin_border']/li/i[normalize-space(text())='Account Number']/following-sibling::p";
            if (isElementDisplayed(bankacctno)) {
                verifyMaskedAndUnmaskedFormat(bankacctno, "X", 0, 4, true, "");
                verifyMaskedAndUnmaskedFormat(bankacctno, "X", 7, 0, false, "");
            } else {
                testStepFailed(getRefOfXpath(bankacctno) + "is not Displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify LAFD Bank Account Masked. Eception: " + e.getClass());
        }
    }

    public void verifyBankAccountMaskedFormatInFdRhsLafd() {
        try {
            String bankacctno = "Bank Account Number#xpath=//ul[@class='j_fd_summ_det rm_margin_border']/li/i[normalize-space(text())='Account Number']/following-sibling::p";
            String text = getText(bankacctno).trim();
            if (!(text.charAt(text.length() - 1) == 'X') && !(text.charAt(text.length() - 2) == 'X') && !(text.charAt(text.length() - 3) == 'X') && !(text.charAt(text.length() - 4) == 'X')) {
                manualScreenshot("Last 4 digits in bank account Unmasked format verified successfully");
            } else {
                testStepFailed("Last 4 digits in bank account Unmasked format is not verified");
            }
            String text2 = text.substring(0, text.length() - 4);
            String mask = "";
            for (int i = 1; i <= text2.length(); i++) {
                mask = mask + "X";
            }

            if (text2.equalsIgnoreCase(mask)) {
                manualScreenshot("Other than Last 4 digits in bank account masked format verified successfully");
            } else {
                testStepFailed("Other than Last 4 digits in bank account masked format is not verified");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify bank account Masked FormatIn Fd Rhs Lafd. Exception: " + e.getClass());
        }
    }


    public void verifyLafdGenerateOtpCta() {
        try {
            MyProfilePage myprofile = new MyProfilePage();
            String genotp = "Generate OTP#xpath=//button[@id='btnProceed']";
            String cancelBtn = "Cancel Button#xpath=//button[@id='btnCancel']";
            String minmax = "Min and Max Amount Field#xpath=//div[@class='field_hint']";

            if (isElementPresent(lafd_txtboxenterAmount)) {
                scrollToWebElement(genotp);
//                myprofile.verifyButtonIsDisabled("GENERATE OTP");
                scrollToWebElement(lafd_txtboxenterAmount);
                typeIn(lafd_txtboxenterAmount, String.valueOf(getMinValueOfLAFD(minmax) + 100));
                scrollToWebElement(genotp);
//                myprofile.verifyButtonIsEnabled("GENERATE OTP");
            } else {
                testStepFailed(getRefOfXpath(lafd_txtboxenterAmount) + "is not Displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify LAFD Generate Otp Cta. Eception: " + e.getClass());
        }
    }

    public void verifyLafdEnterAmtInvalid(String invalidAmount) {
        try {
            MyProfilePage myprofile = new MyProfilePage();
            String genot_disabled = "Disabled Generate OTP#xpath=//button[@id='btnProceed' and @disabled]";
            String errormsg = "Error msg#xpath=//div[@class='field_hint' and @style='color: red;']";

            if (isElementDisplayed(lafd_txtboxenterAmount)) {
                String[] split = invalidAmount.split(",");
                for (int i = 0; i < split.length; i++) {
                    String amount = split[i];
                    clearEditBox(lafd_txtboxenterAmount);
                    typeIn(lafd_txtboxenterAmount, amount);
                    if (isElementDisplayed(errormsg) && isElementDisplayed(genot_disabled)) {
                        manualScreenshot(getRefOfXpath(errormsg) + ":" + getTextPresent(errormsg) + " is Displayed successfully");
                        testStepInfo(getRefOfXpath(genot_disabled) + "is verified Successully");
                    } else {
                        testStepFailed(getRefOfXpath(errormsg) + " is not Displayed");
                    }

                }
            } else {
                testStepFailed(getRefOfXpath(lafd_txtboxenterAmount) + "is not Displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify LAFD Enter Amt Invalid. Eception: " + e.getClass());
        }
    }


    public int getMinValueOfLAFD(String locator) {
        int value = 0;
        try {
            if (isElementDisplayed(locator)) {
                String text = getText(locator);
                String[] split = text.split(" Rs. ");
                value = Integer.parseInt(split[1].split(" ")[0].trim());
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in get min Value of LAFD. Exception: " + e.getClass());
        }
        return value;
    }

    public int getMaxValueOfLAFD(String locator) {
        int value = 0;
        try {
            if (isElementDisplayed(locator)) {
                String text = getText(locator);
                String[] split = text.split(" Rs. ");
                value = Integer.parseInt(split[2].trim());
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in get min Value of LAFD. Exception: " + e.getClass());
        }
        return value;
    }

//Submit TDS Waiver

    public void verifySTW() {
        try {
            String tdsheader = "TDS Waiver Header#xpath=//strong[normalize-space(text())='Additional Information Required']";
            if (isElementDisplayed(tdsheader)) {
                verifyFieldsDisplayedUsingText("We need this information to submit your TDS waiver");
                testStepInfo("Customer is on Submit your TDS waiver page");
            } else {
                testStepFailed(getRefOfXpath(tdsheader) + "is not Displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify STW. Eception: " + e.getClass());
        }
    }

    public void verifySTWOtherFDIncome() {
        try {
            String tdsheader = "TDS Waiver Header#xpath=//strong[normalize-space(text())='Additional Information Required']";
            String switch_toggle = "Tax Assessment Done switch toggle#xpath=//div[@class='switch_toggle']";
            String tad = "Tax accessment Done#xpath=//div[@class='j_toggle_title']/p";
            String inputbox1 = "Other Fixed Deposit Income Text Box#xpath=//input[@id='otherfdincome']";
            String label1 = "Text Box Label#xpath=//input[@id='otherfdincome']/preceding-sibling::label";
            String inputbox2 = "Total amount of which Form 15 G filled Text Box#xpath=//input[@id='TAFWF15F']";
            String label2 = "Total amount of which Form 15 G filled Label#xpath=//input[@id='TAFWF15F']/preceding-sibling::label";
            String inputbox3 = "Total Number of Fixed Deposits Text Box#xpath=//input[@id='overallfd']";
            String label3 = "Overall Count of Fixed Deposits Label#xpath=//input[@id='overallfd']/preceding-sibling::label";
            if (isElementPresent(inputbox1)) {
                verifyElementIsDisplayedOrNot(inputbox1);
                verifyDisplayedAndPrintValueUsingLocator(label1, "");

                verifyElementIsDisplayedOrNot(inputbox2);
                verifyDisplayedAndPrintValueUsingLocator(label2, "");
                String Amount = findWebElement(inputbox2).getAttribute("value");
                testStepInfo(getRefOfXpath(label2) + Amount);

                verifyElementIsDisplayedOrNot(inputbox3);
                verifyDisplayedAndPrintValueUsingLocator(label3, "");

                verifyDisplayedAndPrintValueUsingLocator(tad, "");
                verifyElementIsDisplayedOrNot(switch_toggle);

            } else {
                testStepFailed(getRefOfXpath(inputbox1) + "is not Displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify STW Other FD Income. Eception: " + e.getClass());
        }
    }

    public void verifySTWinputbox1() {
        try {
            String tdsheader = "TDS Waiver Header#xpath=//strong[normalize-space(text())='Additional Information Required']";
            String inputbox1 = "Other Fixed Deposit Income Text Box#xpath=//input[@id='otherfdincome']";

            if (isElementDisplayed(inputbox1)) {
                if (findWebElement(inputbox1).isEnabled()) {
                    testStepInfo(getRefOfXpath(inputbox1) + "is accepting Input");
                } else {
                    testStepFailed(getRefOfXpath(inputbox1) + "is not accepting Input");
                }
            } else {
                testStepFailed(getRefOfXpath(inputbox1) + "is not Displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify STW input box1. Eception: " + e.getClass());
        }
    }

    public void verifySTWinputbox3() {
        try {
            String tdsheader = "TDS Waiver Header#xpath=//strong[normalize-space(text())='Additional Information Required']";
            String inputbox1 = "Other Fixed Deposit Income Text Box#xpath=//input[@id='otherfdincome']";
            String inputbox3 = "Total Number of Fixed Deposits Text Box#xpath=//input[@id='overallfd']";

            if (isElementDisplayed(inputbox3)) {
                if (findWebElement(inputbox3).isEnabled()) {
                    testStepInfo(getRefOfXpath(inputbox3) + "is accepting Input");
                } else {
                    testStepFailed(getRefOfXpath(inputbox3) + "is not accepting Input");
                }
            } else {
                testStepFailed(getRefOfXpath(inputbox3) + "is not Displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify STW input box3. Eception: " + e.getClass());
        }
    }

    public void verifySTWTADtoggle() {
        try {
            String tdsheader = "TDS Waiver Header#xpath=//strong[normalize-space(text())='Additional Information Required']";
            String inputbox1 = "Other Fixed Deposit Income Text Box#xpath=//input[@id='otherfdincome']";
            String switch_toggle = "Tax Assessment Done switch toggle#xpath=//div[@class='switch_toggle']";
            String switch_toggleyes = "Tax Assessment Done switch toggle Yes#xpath=//div[@class='switch_toggle']/ul[@id='tax_flied']/li/a[normalize-space(text())='YES']";
            String switch_toggleno = "Tax Assessment Done switch toggle No#xpath=//div[@class='switch_toggle']/ul[@id='tax_flied']/li/a[normalize-space(text())='NO']";
            String drpdown_assesedyear = "Tax Assessment Year DropDown#xpath=//select[@id='selectyear']";

            if (isElementPresent(switch_toggle)) {
                scrollToWebElement(switch_toggle);
                clickOn(switch_toggleyes);
                if (isElementDisplayed(drpdown_assesedyear)) {
                    manualScreenshot("");
                    testStepPassed(getRefOfXpath(drpdown_assesedyear) + "is displayed successfully on click of Yes Toggle");
                } else {
                    testStepFailed(getRefOfXpath(drpdown_assesedyear) + "is not displayed on click of Yes Toggle");
                }
                clickOn(switch_toggleno);
                waitTime(2);
                if (!isElementDisplayed(drpdown_assesedyear)) {
                    manualScreenshot("");
                    testStepPassed(getRefOfXpath(drpdown_assesedyear) + "is not displayed successfully on click of No Toggle");
                } else {
                    testStepFailed(getRefOfXpath(drpdown_assesedyear) + "is displayed on click of No Toggle");
                }

            } else {
                testStepFailed(getRefOfXpath(switch_toggle) + "is not Displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify STW TAD toggle. Eception: " + e.getClass());
        }
    }

    public void verifySTWPageContents() {
        try {
            String applicantName = "Name of Applicant#xpath=//table[@class='MainTable']/descendant::span[normalize-space(text())='1. Name of Assessee (Declarant):']";
            if (isElementDisplayed(applicantName)) {
//                clickOn(applicantName);
                Actions action = new Actions(driver);
                action.moveToElement(findWebElement(applicantName)).click().build().perform();
                verifyValueUsingLabel("//table[@class='MainTable']/descendant::span", "1. Name of Assessee (Declarant):", "/../child::div", "");
                verifyValueUsingLabel("//table[@class='MainTable']/descendant::span", "2. PAN of the Assessee:", "/../child::div", "");
                verifyValueUsingLabel("//table[@class='MainTable']/descendant::span", "3. Date of Birth:", "/../child::div", "");
                verifyValueUsingLabel("//table[@class='MainTable']/descendant::span", "4. Previous year(P.Y.)", "/../child::div", "");
                verifyValueUsingLabel("//table[@class='MainTable']/descendant::span", "5. Flat/Door/Block No.:", "/../child::div", "");
                verifyValueUsingLabel("//table[@class='MainTable']/descendant::span", "6. Name of Premises:", "/../child::div", "");
                verifyValueUsingLabel("//table[@class='MainTable']/descendant::span", "7. Road/Street/Lane:", "/../child::div", "");
                verifyValueUsingLabel("//table[@class='MainTable']/descendant::span", "8. Area/Locality:", "/../child::div", "");
                verifyValueUsingLabel("//table[@class='MainTable']/descendant::span", "9. Town/City/District:", "/../child::div", "");
                verifyValueUsingLabel("//table[@class='MainTable']/descendant::span", "10. State:", "/../child::div", "");
                verifyValueUsingLabel("//table[@class='MainTable']/descendant::span", "11. PIN:", "/../child::div", "");
                verifyValueUsingLabel("//table[@class='MainTable']/descendant::span", "12. Email:", "/../child::div", "");
                verifyValueUsingLabel("//table[@class='MainTable']/descendant::span", "13. Telephone No. (with STD Code) and Mobile No.:", "/../child::div", "");

            } else {
                testStepFailed(getRefOfXpath(applicantName) + "is not Displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify STW Page Contents. Eception: " + e.getClass());
        }
    }

    public void verifySTWPart2() {
        try {
            String applicantName = "Name of Applicant#xpath=//table[@class='MainTable']/descendant::span[normalize-space(text())='1. Name of Assessee (Declarant):']";
            String part2 = "Part 2 Heading#xpath=//strong[normalize-space(text())='PART II']";
            if (isElementDisplayed(applicantName)) {
//                clickOn(applicantName);
                Actions action = new Actions(driver);
                action.moveToElement(findWebElement(applicantName)).click().build().perform();
                scrollToWebElement(part2);
                verifyValueinPart2("//table[@class='MainTable']/descendant::span", "1. Name of the person responsible for paying:", "");
                verifyValueinPart2("//table[@class='MainTable']/descendant::span", "2. Unique Identification No:", "");
                verifyValueinPart2("//table[@class='MainTable']/descendant::span", "3. PAN of the person responsible for paying:", "");
                verifyValueinPart2("//table[@class='MainTable']/descendant::span", "4. Complete Address:", "");
                verifyValueinPart2("//table[@class='MainTable']/descendant::span", "5. TAN of the person responsible for paying:", "");
                verifyValueinPart2("//table[@class='MainTable']/descendant::span", "6. Email: -", "");
                verifyValueinPart2("//table[@class='MainTable']/descendant::span", "7. Telephone No.(with STD Code) and Mobile No:", "");
                verifyValueinPart2("//table[@class='MainTable']/descendant::span", "8. Amount of income paid:", "");
                verifyValueinPart2("//table[@class='MainTable']/descendant::span", "9. Date on which Declaration is received (DD / MM / YYYY):", "");
                verifyValueinPart2("//table[@class='MainTable']/descendant::span", "10. Date on which the income has been paid / credited (DD / MM / YYYY):", "");

            } else {
                testStepFailed(getRefOfXpath(applicantName) + "is not Displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify STW Part 2. Eception: " + e.getClass());
        }
    }

    public void verifySTWPageContents2() {
        try {
            String applicantName = "Name of Applicant#xpath=(//table[@class='MainTable']/descendant::span[normalize-space(text())='1. Name of Assessee (Declarant):'])[2]";
            if (isElementDisplayed(applicantName)) {
//                clickOn(applicantName);
                Actions action = new Actions(driver);
                action.moveToElement(findWebElement(applicantName)).click().build().perform();
                verifyValueUsingLabelSTW("(//table[@class='MainTable']/descendant::span", "1. Name of Assessee (Declarant):", "/../child::div", "");
                verifyValueUsingLabelSTW("(//table[@class='MainTable']/descendant::span", "2. PAN of the Assessee:", "/../child::div", "");
                verifyValueUsingLabelSTW("(//table[@class='MainTable']/descendant::span", "3. Date of Birth:", "/../child::div", "");
                verifyValueUsingLabelSTW("(//table[@class='MainTable']/descendant::span", "4. Previous year(P.Y.)", "/../child::div", "");
                verifyValueUsingLabelSTW("(//table[@class='MainTable']/descendant::span", "5. Flat/Door/Block No.:", "/../child::div", "");
                verifyValueUsingLabelSTW("(//table[@class='MainTable']/descendant::span", "6. Name of Premises:", "/../child::div", "");
                verifyValueUsingLabelSTW("(//table[@class='MainTable']/descendant::span", "7. Road/Street/Lane:", "/../child::div", "");
                verifyValueUsingLabelSTW("(//table[@class='MainTable']/descendant::span", "8. Area/Locality:", "/../child::div", "");
                verifyValueUsingLabelSTW("(//table[@class='MainTable']/descendant::span", "9. Town/City/District:", "/../child::div", "");
                verifyValueUsingLabelSTW("(//table[@class='MainTable']/descendant::span", "10. State:", "/../child::div", "");
                verifyValueUsingLabelSTW("(//table[@class='MainTable']/descendant::span", "11. PIN:", "/../child::div", "");
                verifyValueUsingLabelSTW("(//table[@class='MainTable']/descendant::span", "12. Email:", "/../child::div", "");
                verifyValueUsingLabelSTW("(//table[@class='MainTable']/descendant::span", "13. Telephone No. (with STD Code) and Mobile No.:", "/../child::div", "");

            } else {
                testStepFailed(getRefOfXpath(applicantName) + "is not Displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify STW Page Contents 2. Eception: " + e.getClass());
        }
    }


    public String verifyValueUsingLabelSTW(String commonPath, String labelText, String additionalPath, String extra) {
        String value = "";
        try {
            String label = "" + labelText + " Label#xpath=" + commonPath + "[normalize-space(text())='" + labelText.trim() + "'])[2]";
            String labelValue = "" + labelText + " Value#xpath=" + getCommonPathOfLocator(label) + "" + additionalPath + "";
            scrollToWebElement(label);
            if (isElementDisplayed(label)) {
                manualScreenshot(getRefOfXpath(label) + " is Displayed Successfully");
                if (isElementDisplayed(labelValue)) {
                    if (extra.equals("attribute")) {
                        value = findWebElement(labelValue).getAttribute("value").trim();
                    } else {
                        value = getTextPresent(labelValue).trim();
                    }
                    manualScreenshot(getRefOfXpath(labelValue) + " is Displayed Successfully. Value: " + getText(labelValue));
                } else {
                    testStepFailed(getRefOfXpath(labelValue) + " is not displayed");
                }
            } else {
                testStepFailed(labelText + " is not displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Value using Label " + labelText + ". Exception: " + e.getClass());
        }
        return value;
    }

//input[@id='otherfdincome']

    //strong[normalize-space(text())='FORM NO. 15H']

    public static final String inputbox1 = "Other Fixed Deposit Income Text Box#xpath=//input[@id='otherfdincome']";
    // String label1 = "Text Box Label#xpath=//input[@id='otherfdincome']/preceding-sibling::label";
    public static final String inputbox2 = "Total amount of which Form 15 G filled Text Box#xpath=//input[@id='TAFWF15F']";
    public static final String inputbox2_Uneditable = "Total amount of which Form 15 G filled Text Box#xpath=//input[@id='TAFWF15F' and @readonly]";
    // String label2 = "Total amount of which Form 15 G filled Label#xpath=//input[@id='TAFWF15F']/preceding-sibling::label";
    public static final String inputbox3 = "Total number of fixed deposits#xpath=//input[@id='overallfd']";
    public static final String close_Icon = "Close Button in Popup#xpath=//a/img[contains(@src,'/images/modal-cross.svg')]";


    public void verifySTWAmountAddition() {
        try {
            String tdsheader = "TDS Waiver Header#xpath=//strong[normalize-space(text())='Additional Information Required']";
            String switch_toggle = "Tax Assessment Done switch toggle#xpath=//div[@class='switch_toggle']";
            String tad = "Tax accessment Done#xpath=//div[@class='j_toggle_title']/p";
            String inputbox1 = "Other Fixed Deposit Income Text Box#xpath=//input[@id='otherfdincome']";
            String label1 = "Text Box Label#xpath=//input[@id='otherfdincome']/preceding-sibling::label";
            String inputbox2 = "Total amount of which Form 15 G filled Text Box#xpath=//input[@id='TAFWF15F']";
            String label2 = "Total amount of which Form 15 G filled Label#xpath=//input[@id='TAFWF15F']/preceding-sibling::label";
            String inputbox3 = "Total Number of Fixed Deposits Text Box#xpath=//input[@id='overallfd']";
            String label3 = "Overall Count of Fixed Deposits Label#xpath=//input[@id='overallfd']/preceding-sibling::label";
            if (isElementPresent(inputbox1)) {

//                String Amount= findWebElement(inputbox2).getAttribute("value");
                int Amount = Integer.parseInt(findWebElement(inputbox2).getAttribute("value"));
                testStepInfo(getRefOfXpath(label2) + " " + Amount);
                int input = 100;
                typeIn(inputbox1, String.valueOf(input));
                testStepInfo(getRefOfXpath(inputbox1) + " " + input);
                clickOn(inputbox2);
                typeIn(inputbox3, "1");
                waitTime(3);
                int Amount2 = Integer.parseInt(findWebElement(inputbox2).getAttribute("value"));
                if (Amount2 == Amount + input) {
                    testStepPassed("Amount Sum in the Input Box is Auto Calculated Successfully");
                    testStepInfo(getRefOfXpath(label2) + Amount2);
                } else {
                    testStepFailed("Amount Sum in the Input Box is not Auto Calculated");
                }


            } else {
                testStepFailed(getRefOfXpath(inputbox1) + "is not Displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify STW Amount Addition. Eception: " + e.getClass());
        }
    }


    public String verifyValueinPart2(String commonPath, String labelText, String extra) {
        String value = "";
        try {
            String label = "" + labelText + " Label#xpath=" + commonPath + "[contains(text(),'" + labelText.trim() + "')]";
            scrollToWebElement(label);
            if (isElementDisplayed(label)) {
                manualScreenshot(getRefOfXpath(label) + " is Displayed Successfully");
                value = getText(label);
                testStepInfo(value);
            } else {
                testStepFailed(labelText + " is not displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Value in Part 2 " + labelText + ". Exception: " + e.getClass());
        }
        return value;
    }


    public void verifyuneditabletextbox2inSTW(String extra) {
        try {
            if (isElementDisplayed(inputbox2_Uneditable)) {
                testStepPassed(getRefOfXpath(inputbox2_Uneditable) + " is not Editable");
            } else {
                testStepFailed(getRefOfXpath(inputbox2_Uneditable) + " is Editable");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify uneditable textbox 2 inSTW. Exception: " + e.getClass());

        }


    }

    ///Neelakandan
    public void verifyValueShouldBeExpected(String label, String[] split, String valueExpected, String valueActual) {
        try {
            boolean flag = false;
            for (String s : split) {
                String value = s.trim();
                testStepPassed(value);
                if (value.trim().equalsIgnoreCase(valueActual.trim())) {
                    flag = true;
                    testStepPassed(valueActual);
                    manualScreenshot(label + " : Expected value verified succssfully.");
                    break;
                }
            }

            if (!flag) {
                testStepFailed(label + " : Expected value is not verified");
                stepFailed("Expected: " + valueExpected);
                stepFailed("Actual: " + valueActual);
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify value shouold be " + valueExpected + ". Exception: " + e.getClass());
        }
    }

//    public void shdow() {
//        JavascriptExecutor js=(JavascriptExecutor) driver;
//        WebElement ele = (WebElement)js.executeScript("return '#entry-point-hp-wc-root-wrapper > div.content-container > div.stripe-wc-container > stripe-wc').shadowRoot.querySelector('#news > div > div.sub-nav > feed-navigation-hp').shadowRoot.querySelector('div > feed-navigation').shadowRoot.querySelector('#listlink')");
//        WebElement ele = (WebElement)js.executeScript("return '#entry-point-hp-wc-root-wrapper > div.content-container > div.stripe-wc-container > stripe-wc').shadowRoot.querySelector('#news > div > div.sub-nav > feed-navigation-hp').shadowRoot.querySelector('div > feed-navigation').shadowRoot.querySelector('#listlink')");
//
////        WebElement ele = (WebElement)js.executeScript("return #entry-point-hp-wc-root-wrapper > div.content-container > div.stripe-wc-container > stripe-wc").shadowRoot.querySelector("#news > div > div.sub-nav > feed-navigation-hp").shadowRoot.querySelector("div > feed-navigation").shadowRoot.querySelector("#listlink")","");
//        for (int i = 0; i < 4; i++) {
//            WebElement ele1 = (WebElement)js.executeScript("return document.querySelector('body > fluent-design-system-provider > entry-point').shadowRoot.querySelector(document.querySelector('body > fluent-design-system-provider > entry-point').shadowRoot.querySelector('#entry-point-hp-wc-root-wrapper > div.content-container > div.stripe-wc-container > stripe-wc').shadowRoot.querySelector('#news > div > div.sub-nav > feed-navigation-hp').shadowRoot.querySelector('div > feed-navigation').shadowRoot.querySelector('ul > li:nth-child("+i+")')");
//        }
//
//
//
//    }

    /////////////////////// FACTA FORM ////////////////////////
    public void clickOnToggleInFactaFormUsingLabelAndOption(String label, String option, String extra) {
        try {
            String loc = option + " Toggle in " + label + "#xpath=//*[normalize-space(text())='" + label.trim() + "']/following-sibling::div//a[normalize-space(text())='" + option.trim() + "']";
            Boolean flag = scrollToWebElementIfPresent(loc);
            if (flag) {
                if (isElementDisplayed(loc)) {
                    clickOn(loc);
                } else {
                    testStepFailed(getRefOfXpath(loc) + " is Not Displayed");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in click on Toggle in facta Form using " + label + " and " + option + ". Exception: " + e.getClass());
        }
    }
/////////////////////// Pre Mature Withdrawal ////////////////////////

    public void verifyTenureIsMoreThan30Months() {
        try {
String tenureValue="FD Details Tenure Value#xpath=//strong[normalize-space(text())='FD Details']/../following-sibling::div//*[normalize-space(text())='Tenure']/following-sibling::strong";
            String text = getText(tenureValue).toLowerCase().trim();
            if (text.contains("months")) {
                String[] split1 = text.split("months");
                String trim = split1[0].trim();
                int i = Integer.parseInt(trim);
                if (i > 30) {
                    manualScreenshot("Tenure is more than 30 months verified successfully");
                } else {
                    testStepFailed("tenure is more than 30 months is not verified. Value: "+i);
                }
            } else {
                testStepFailed("There is no months format in tenure");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Tenure is more than 30 months. Exception: "+e.getClass());
        }
    }

    public void verifyRenewalStatus() {
        try {
            String tenureValue="FD Details Tenure Value#xpath=//strong[normalize-space(text())='FD Details']/../following-sibling::div//*[normalize-space(text())='Renewal Status']/following-sibling::strong";
            String text = getText(tenureValue).toLowerCase().trim();
            if (text.equalsIgnoreCase("Renewed")) {
                manualScreenshot("Renewal status should be renewed verified successfully");
            } else {
                testStepFailed("Renewal status should be renewed is not verified");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Renewal status. Exception: "+e.getClass());
        }
    }
}
