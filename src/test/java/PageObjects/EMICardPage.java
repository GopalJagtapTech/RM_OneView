package PageObjects;

import base.ApplicationKeywords;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.Color;

import java.util.List;

public class EMICardPage extends ApplicationKeywords {

    /*
    Xpaths
     */


    public static final String homeEMICard_Icon = "Icon Home EMICard#xpath=//p[normalize-space(text()='EMI Card')]/preceding::img[@src='/MyAccountAsset/Login/images/emicard_icon.png']";
    public static final String feesandCharges_BottomEMI = "Fees & Charges in Relationship Details#xpath=//div[@class='a_relation_contant Health']//p[contains(text(),'Fees and Charges')]";
    public static final String cardSection_EMICards = "Emi Cards Details#xpath=//div[@class='a_my_emicards']//div[@class='slick-track']/div[1]";
    public static final String subText_CardSection = "Sub Text in Cards Section#xpath=//div[@class='a_commontitle']/following::p[normalize-space(text())='Select a card to view its details']";
    public static final String infoIcon_TotalLoanLimit = "Info Icon in Total Loan Limit#xpath=//div[@class='a_loan_limit']//a[@class='a_infoavail_img a_openmodal']//img";
    public static final String infoIcon_AvailableLoanLimit = "Info Icon in Available Loan Limit#xpath=//div[@class='a_available_limit']//a[@class='a_infoavail_img a_openmodal']//img";
    public static final String whereToUse_Section = "Where To Use Section in Relationship Details#xpath=//div[@class='a_relation_cards current wtu_emi' and @id='where_to_use']";
    public static final String whereToUse_BajajMall = "BajajMall in Where To Use Section in Relationship Details#xpath=//p[normalize-space()='Bajaj Mall']/ancestor::div[@class='a_wtu_card']";
    public static final String whereToUse_EMIPartnerStores = "EMIPartnerStores in Where To Use Section in Relationship Details#xpath=//p[normalize-space()='EMI Network Partner Stores']/ancestor::div[@class='a_wtu_card']";
    public static final String whereToUse_EcomPartners = "Ecom Partners in Where To Use Section in Relationship Details#xpath=//p[normalize-space()='E-commerce Partners']/ancestor::div[@class='a_wtu_card']";
    public static final String feesAndCharges_Section = "Fees And Charges Section in Relationship Details#xpath=//div[@class='a_relation_contant Emi' and @id='fees_and_charges_e']";
    public static final String locateAStore_Button = "Locate A Store Button in EMI Partner Stores#xpath=//a[@class='a_wtu_btn' and normalize-space()='Locate a Store']";
    public static final String shopOnline_Button = "Shop Online Button in EMI Partner Stores#xpath=//a[@class='a_wtu_btn' and normalize-space()='Shop Online']";
    public static final String ecomPartner_Button = "Ecom Partner Button in EMI Partner Stores#xpath=//p[normalize-space(text())='E-commerce Partners']/following-sibling::p";
    public static final String checkNowCibil_Button = "Check Now Button Cibil Score Section#xpath=//div[@class='cibilscore_text']/descendant::p/following::i[normalize-space(text())='Check Score']";
    public static final String fAQ_TabSection = "FAQ Tab in EMI Card Page#xpath=//div[@class='Frequently']//a";
    public static final String forgotPin_RHS = "Forgot Pin in Quick Actions#xpath=//div[@class='Superstores_list']//p[contains(text(),'Forgot PIN')]";
    public static final String blockCard_RHS = "Block Card #xpath=//div[@class='Superstores_BG']//p[contains(text(),'Block Card')]";
    public static final String unblockCard_RHS = "Un Block Card #xpath=//div[@class='Superstores_BG']//p[contains(text(),'Unblock Card')]";
    public static final String viewStatements_RHS = "View Statements #xpath=//div[@class='Superstores_BG']//p[contains(text(),'View Statements')]";
    public static final String getHealthCard_RHS = "Get Health EMI Network Card #xpath=//div[@class='Superstores_BG']//p[normalize-space(text())='Get Health EMI Network Card']";
    public static final String locateStores_RHS = "Locate Stores in Quick Actions#xpath=//div[@class='Superstores_BG']//p[normalize-space(text())='Locate Stores']";
    public static final String shopOnline_RHS = "Quick Actions #xpath=//div[@class='Superstores_BG']//p[normalize-space(text())='Shop Online']";
    public static final String thingsYouCanDo_RHS = "Things You Can Do- RHS Section#xpath=//div[@class='BHFL_rightpart']//div[@class='Superstores_BG']";
    public static final String enterPin_UpdatePin = "//div[@id='Pin']//input[contains(@id,'Pin-digit')]";
    public static final String re_enterPin_UpdatePin = "//div[@id='Pin_reenter']//input[contains(@id,'Pin-digit')]";
    public static final String cancelButton_UpdatePin = "Cancel Button in Update Pin Page#xpath=//button[@id='btncancelPin']";
    public static final String confirmButton_UpdatePin = "Confirm Button Section in Update Pin Page#xpath=//button[@id='btnSubmitPin']";
    public static final String dropDown_BlockingReason = "Choose a reason for blocking your card#xpath=//select[@class='doc_up_select']";
    public static final String blockCard_Button = "BlockCard Button in Block Card Page#xpath=//button[@id='btnBlockCard']";
    public static final String cancel_Button = "Cancel Button in Block Card Page#xpath=//button[@class='btn_bor_style' and normalize-space(text())='CANCEL']";
    public static final String viewNumber_Button = "View Number Button in EMI Card Page#xpath=//a[@class='a_num_link' and normalize-space(text())='View Number']";
    public static final String annualFee_Fee_Charges = "Annual Fee in Fee & Charges#xpath=//p[normalize-space()='Annual Fee']/following-sibling::p";

    public static final String txt_Title = "EMI Card Title with Count#xpath=//div[@class='a_bg_emicard']/div[@class='a_commontitle']";
    public static final String cardCommon = "Common path for Cards#xpath=//div[@class='a_card_contant']";

    public static final String okbutton = "OK Button #xpath=//a[@class='closeemipop']/..//*[normalize-space()='OK']";

    public static final String dropblock = "Choose a reason for blocking your cards#xpath=//select[@class='doc_up_select']";

    public static final String viewAll = "My Relations View All #xpath=//div[@class='pageall_title']/..//a[text()='View All']";

    public static final String cardsSubheading = "Cards  #xpath=//div[@class='tab_link']//a[text()='Cards']";

    public static final String quickActions = "Quick Actions Section#xpath=//div[@class='BHFL_rightpart']//div[@class='Superstores_BG']";

    public static final String resetPin_RHS = "Reset Pin#xpath=//div[@class='Superstores_BG']//p[contains(text(),'Reset PIN')]";

    public static final String shopOnbajajMall = "Shop on Bajaj Mall #xpath=//p[normalize-space(text())='Shop on Bajaj Mall']";

    public static final String ExploreButton = "Shop on Bajaj Mall ExploreButton #xpath=//a[normalize-space(text())='Explore']";

    public static final String closePopupButton = "Please raise a request to unblock your card. Cancel button #xpath=//a[normalize-space(text())='Cancel']";
    public static final String closeIconPopupButton = "Please raise a request to unblock your card. close Icon #xpath=//div[@id='BasicAlert']//img[contains(@src,'modal-cross.svg')]";

    public static final String expiredBack = "Expired card background  grayed out #xpath=//div[@class='a_block_layer']";

    public static final String blockedCapsule = "Expired in Red capsule #xpath=//div[@class='a_block_label block_red']";

    public static final String expiredText = "Expired #xpath=//p[@class='blocked_desc' and text()='Expired']";

    public static final String partnerStores = "To apply for a new loan visit our partner stores #xpath=//p[@class='cardDesc' and normalize-space(text())='To apply for a new loan visit our partner stores']";

    public static final String blockedText = "Blocked #xpath=//p[@class='blocked_desc' and text()='Blocked']";

    public static final String healthEmiCard = "Health Emi card -2030XXXXXXXX2462 #xpath=//div[@class='a_card_contant']//following-sibling::img[contains(@class,'emi_slide_img background_2030XXXXXXXX2462')]";

    public static final String copyClip = "Copy clipboard #xpath=//img[@src='/MyAccountAsset/images/Copy_Icon.png']";

    public static final String WellAvail = "AVAIL NOW #xpath=//div[@class='cibilscore_text']//following::i[text()='AVAIL NOW']";


    public static final String WellhealthEmiCard = "Wellness Benefits Health Emi card -2030XXXXXXXX8722 #xpath=//div[@class='a_card_contant']//following-sibling::img[contains(@class,'emi_slide_img background_2030XXXXXXXX8722')]";

    public static final String limitCard = "Limited Transactions Allowed #xpath=//button[text()='Limited Transactions Allowed']";

    public static final String gotIt = "Got It CTA  #xpath=//div[@class='p_terms_gotit']//a[text()='GOT IT']";

    public static final String usage = "Usage Limitations  #xpath=//div[@id='usage_limitation']//p[text()='Usage Limitations']";

    public static final String wellThreeBen = "Wellness Benefit Utilization  #xpath=//div[@id='Wellness_ThreeBenefits']//p[text()='Wellness Benefit Utilization']";

    public static final String avail82 = "AVAIL NOW   #xpath=//div[@id='Wellness_ThreeBenefits']//button[text()='AVAIL NOW']";



    public static final String wellTwoBen = "Wellness Benefit Utilization  #xpath=//div[@id='Wellness_TwoBenefits']//p[text()='Wellness Benefit Utilization']";

    public static final String avail80 = "AVAIL NOW   #xpath=//div[@id='Wellness_TwoBenefits']//button[text()='AVAIL NOW']";

    public static final String otpblockedCard = "Blocked Emi card -2030XXXXXXXX9528 #xpath=//div[@class='a_card_contant']//following-sibling::img[contains(@class,'emi_slide_img background_2030XXXXXXXX9528')]";

    public static final String blockedCard = "Blocked Emi card -2030XXXXXXXX5741 #xpath=//div[@class='a_card_contant']//following-sibling::img[contains(@class,'emi_slide_img background_2030XXXXXXXX5741')]";

    public static final String unblockGot = "GOt it CTA   #xpath=//a[text()='Got It' and@onclick='popupRedir()']";

    public static final String feesView="Fees and Charges View All   #xpath=//div[@id='fees_and_charges_e']//p[text()='Fees and Charges']//following-sibling::a[text()='View All']";

    public static final String instaEmiCard = "Insta Emi card -2030XXXXXXXX3870 #xpath=//div[@class='a_card_contant']//following-sibling::img[contains(@class,'emi_slide_img background_2030XXXXXXXX3870')]";

    public static final String resend_Btn=" Resend Otp #xpath=//a[@id='resend' and contains(text(),'Resend OTP')]";

    /*
    Methods
     */


    public void verifyRHSinEMICardPage() {

        try {
            // String locator = "RHS in EMI Card Page#xpath=//div[@class='BHFL_rightpart']//div[@class='Superstores_BG']//p";
            String locator = "//div[@class='BHFL_rightpart']//div[@class='Superstores_BG']//p";
            verifyssubHeadingIsDisplayed("Quick Actions");
            // verifyTextOptionsIsDisplayedUsingCommonXpath(locator, "Unblock Card#View Statements#Get Health EMI Network Card#Locate Stores#Shop Online");
            verifyTextOptionsIsDisplayedUsingCommonXpath(locator, "Reset PIN#Block Card#View Statements#Get Health EMI Network Card#Locate Stores#Shop Online");
            //  verifyTextOptionsIsDisplayedUsingCommonXpath(locator, "Forgot PIN#Block card#View statements#Get Health EMI Network Card#Locate Stores#Shop Online");
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verifyRHSinEMICardPage. Exception:" + e.getClass());
        }
    }



    public void verifyblockedRHSinEMICardPage() {

        try {
            // String locator = "RHS in EMI Card Page#xpath=//div[@class='BHFL_rightpart']//div[@class='Superstores_BG']//p";
            String locator = "//div[@class='BHFL_rightpart']//div[@class='Superstores_BG']//p";
            verifyssubHeadingIsDisplayed("Quick Actions");
            verifyTextOptionsIsDisplayedUsingCommonXpath(locator, "Unblock Card#View Statements#Get Health EMI Network Card#Locate Stores#Shop Online");
            // verifyTextOptionsIsDisplayedUsingCommonXpath(locator, "Reset PIN#Block Card#View Statements#Get Health EMI Network Card#Locate Stores#Shop Online");

            //  verifyTextOptionsIsDisplayedUsingCommonXpath(locator, "Forgot PIN#Block card#View statements#Get Health EMI Network Card#Locate Stores#Shop Online");


        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verifyRHSinEMICardPage. Exception:" + e.getClass());
        }
    }


    public void verifyBottomSectioninEMICardPage() {

        try {

            verifyFieldsDisplayedUsingText("Your card details");
            verifyFieldsDisplayedUsingText("Relationship Details");
            manualScreenshot("Relationship Details");
            verifyssubHeadingIsDisplayed("Where to use");
            verifyssubHeadingIsDisplayed("Fees and Charges");
            //  verifyElementIsDisplayedUsingLocator(feesandCharges_BottomEMI);
            verifyssubHeadingIsDisplayed("Frequently Asked Questions");
            verifyFieldsDisplayedUsingText("Check your CIBIL Score");
            manualScreenshot("Check your CIBIL Score");
            verifyssubHeadingIsDisplayed("Shop on Bajaj Mall");


        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verifyBottomSectioninEMICardPage. Exception:" + e.getClass());
        }
    }

    public void verifyUpperSectioninEMICardPage() {

        try {

            verifyElementIsDisplayedUsingLocator(cardSection_EMICards);
            //  verifyFieldsDisplayedUsingText("Your card details");

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verifyBottomSectioninEMICardPage. Exception:" + e.getClass());
        }
    }

    public int getCountFromLocator(String locator, int noOfCount, String extra) {
        int count = 0;
        try {
            String txt = getText(locator);
            if (noOfCount == 1) {
                if (!txt.contains("(")) {
                    manualScreenshot(getRefOfXpath(locator) + " is not showing for one card successfully. Name: " + txt);
                } else {
                    testStepFailed(getRefOfXpath(locator) + " is not showing count. Name: " + txt);
                }
            } else if (noOfCount >= 2) {
                if (txt.contains("(")) {
                    manualScreenshot(getRefOfXpath(locator) + " is showing count for more than card successfully. Name: " + txt);
                    count = Integer.parseInt(txt.split("\\(")[1].split("\\)")[0].trim());
                } else {
                    testStepFailed(getRefOfXpath(locator) + " is not showing count for more than one cards. Name: " + txt);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Count name " + getRefOfXpath(locator) + ". Exception: " + e.getClass());
        }
        return count;
    }


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


    public void verifyEMICardMaskedNumber() {
        try {
            String cards = "Card Number in EMI #xpath=//div[@class='a_emicard_number']//p";
            for (int i = 1; i <= sizeOfLocator(cards); i++) {
                String card = "Card Number in EMI " + i + "#xpath=(//div[@class='a_emicard_number']//p)[" + i + "]";
                String value = getText(card).trim();
//                 verifyUnMaskedFormat(value,"EMI Card Number- First 4 digits",0,4,1);
//                 verifyUnMaskedFormat(value,"EMI Card Number- Last 4 digits",16,4,1);
                String[] s = value.split(" ");
                if (!s[0].contains("X") && !s[3].contains("X")) {
                    testStepPassed("First 4 Number: " + s[0]);
                    testStepPassed("Last 4 Number: " + s[3]);
                    manualScreenshot("Card " + i + " first 4 Number and Last 4 Number Unmasked successfully");
                } else {
                    stepFailed("First 4 Number: " + s[0]);
                    stepFailed("Last 4 Number: " + s[0]);
                    testStepFailed("Card " + i + " first 4 Number and Last 4 Number Unmasked part is not verified");

                }

                if (s[1].equalsIgnoreCase("XXXX") && s[2].equalsIgnoreCase("XXXX")) {
                    testStepPassed("second 4 Number: " + s[1]);
                    testStepPassed("Third 4 Number: " + s[2]);
                    manualScreenshot("Card " + i + " second 4 Number and third 4 Number masked successfully");
                } else {
                    stepFailed("Second 4 Number: " + s[1]);
                    stepFailed("Third 4 Number: " + s[2]);
                    testStepFailed("Card " + i + " second 4 Number and third 4 Number masked part is not verified");

                }
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verifyEMICardMaskedNumber. Exception:" + e.getClass());
        }
    }


    public void verifyEMICardDetails() {
        try {
            String cards = "Cards in EMI Section#xpath=//div[@class='a_my_emicards']//div[@class='slick-track']/div";
            for (int i = 1; i <= sizeOfLocator(cards); i++) {
                String cardName = "Card Name in EMI Card " + i + "#xpath=(//div[@class='a_emicard_name']/p)[" + i + "]";
                String membersince = "Member Since in EMI Card " + i + "#xpath=(//div[@class='a_member_main']//p[normalize-space(text())='Member Since']/following-sibling::p)[" + i + "]";
                String validtill = "Valid Till in EMI Card " + i + "#xpath=(//div[@class='a_member_main']//p[normalize-space(text())='Valid Till']/following-sibling::p)[" + i + "]";
                verifyElementIsPresentAndGetText(cardName);
                verifyElementIsPresentAndGetText(membersince);
                verifyElementIsPresentAndGetText(validtill);
                verifyEMICardMaskedNumber();
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verifyEMICardDetails. Exception:" + e.getClass());
        }


    }

    public void verifySectionsInRelationshipSection() {
        try {

            scrollToWebElement(whereToUse_Section);
            verifyElementIsDisplayedUsingLocator(whereToUse_Section);
            verifyElementIsDisplayedUsingLocator(feesAndCharges_Section);

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verifySectionsInRelationshipSection . Exception: " + e.getClass());
        }
    }

    public void enterValueInTextBox(String value, int n, String locator1, String extra) {
        try {
            for (int i = 1; i <= n; i++) {
                String locator = "Password Text Box " + i + "#xpath=(" + locator1 + ")[" + i + "]";
                if (isElementDisplayed(locator)) {
                    clearEditBox(locator);
                    typeIn(locator, String.valueOf(value.charAt(i - 1)));
                } else {
                    testStepFailed(locator.split("#")[0] + " is Not Displayed");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in enterValueInTextBox . Exception: " + e.getClass());
        }

    }

    public Boolean verifyConfirmButtonIsDisabled() {
        Boolean flag = false;
        try {
            String locator = "Disabled Confirm Button #xpath=//button[@id='btnSubmitPin' and @disabled]";
            if (isElementPresent(locator)) {
                flag = true;
                manualScreenshot(locator.split("#")[0] + " is verified Successfully");
            } else {
                testStepFailed(locator.split("#")[0] + " is Not Verified");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verifyConfirmButtonIsDisabled . Exception: " + e.getClass());
        }
        return flag;
    }


    public void verifyBlockCardButton() {
        try {
            if (isElementPresent(EMICardPage.blockCard_Button)) {
                scrollToWebElement(EMICardPage.blockCard_Button);
                clickOn(EMICardPage.blockCard_Button);
                // verifyFieldsDisplayedUsingText("Important");
                verifyFieldsDisplayedUsingText("Please Select Block Reason");
                //manualScreenshot("Block Button not working without valid Reason Successfully");
                //clickOnButtonUsingTextUsingForLoop("OK");
            } else {
                testStepFailed("Block Button working without valid Reason");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verifyBlockCardButton . Exception: " + e.getClass());
        }

    }

    public void verifyCancelButtonINBlockCardPage() {
        try {
            if (isElementPresent(EMICardPage.cancel_Button)) {
                clickOn(EMICardPage.cancel_Button);
                waitTime(10);
                verifyFieldsDisplayedUsingText("Your card details");
                clickOn(EMICardPage.blockCard_RHS);
                waitForPageToLoad();
                testStepPassed("Cancel Button working successfully");

            } else {
                testStepFailed("Cancel Button not working successfully");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verifyCancelButtonINBlockCardPage . Exception: " + e.getClass());
        }

    }

    public void verifyOTP1() {
        try {

            String locator = "Mobile Number of Customer#xpath=//i[@id='maskedMobile']";
            String otptimer = "OTP Timer #xpath=//p[@class='otp-timer']";

            if (isElementPresent(EMICardPage.dropDown_BlockingReason)) {
//                selectDropDownUsingText(EMICardPage.dropDown_BlockingReason, "Did not apply for EMI Card");
//                scrollToWebElement(EMICardPage.blockCard_Button);
//                clickOn(EMICardPage.blockCard_Button);
                verifyFieldsDisplayedUsingText("OTPPopupBlock","OTP Verification");
                verifyFieldsDisplayedUsingText("OTPPopupBlock", "A one-time password has been sent to your registered mobile number");
                String text=findWebElement(locator).getText();
                if(text.contains("XXXX")){
                    testStepPassed("Mobile number is masked correctly"+ text);
                }else{
                    testStepFailed("Mobile number is  Not masked correctly"+ text);
                }
                verifyFieldsDisplayedUsingText("OTPPopupBlock","Enter OTP");
                verifyElementIsDisplayedUsingLocator(otptimer);
                testStepPassed("OTP Triggered Successfully");
            } else {
                testStepFailed("OTP Not Triggered");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verifyOTP1 . Exception: " + e.getClass());
        }

    }

    public void verifyInvalidOTP() {
        try {

            String locator = "OTP Entry Part In Block Card Page#xpath=//div[@class='otpPart']//input[contains(@id,'OTP-digit')]";
            String locator1 = "//div[@class='otpPart']//input[contains(@id,'OTP-digit')]";

            if (isElementPresent(locator)) {
                enterValueInTextBox("222222", 6, locator1, "");
                clickOnButtonUsingTextUsingForLoop("Submit");
               // verifyErrorMessageUsingText("Invalid OTP !");
                verifyssubHeadingIsDisplayed("You have entered wrong OTP. 2 attempts left.");
                manualScreenshot("Error Message Displayed Successfully");
            } else {
                testStepFailed("Error Message not Displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verifyInvalidOTP . Exception: " + e.getClass());
        }

    }



    public void verifyvalidOTP() {
        try {

            String locator = "OTP Entry Part In Block Card Page#xpath=//div[@class='otpPart']//input[contains(@id,'OTP-digit')]";
            String locator1 = "//div[@class='otpPart']//input[contains(@id,'OTP-digit')]";

            if (isElementPresent(locator)) {
                enterValueInTextBox("123456", 6, locator1, "");
                manualScreenshot("Otp Values Entered Successfully");
                // verifyErrorMessageUsingText("Invalid OTP !");

            } else {
                testStepFailed("Error Message not Displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verifyInvalidOTP . Exception: " + e.getClass());
        }

    }



    public void verifyInvalidOTPMessage() {
        try {

            String locator = "OTP Entry Part In Block Card Page#xpath=//div[@class='otpPart']//input[contains(@id,'OTP-digit')]";
            String locator1 = "//div[@class='otpPart']//input[contains(@id,'OTP-digit')]";

            if (isElementPresent(locator)) {
                enterValueInTextBox("222222", 6, locator1, "");
                clickOnButtonUsingTextUsingForLoop("Submit");
                //     verifyErrorMessageUsingText("OTP is incorrect. Please enter the correct OTP received on your Registered Mob. No.");
                verifyssubHeadingIsDisplayed("You have entered wrong OTP. 2 attempts left.");
              //  verifyErrorMessageUsingText("Invalid OTP !");

                manualScreenshot("Error Message Displayed Successfully");
            } else {
                testStepFailed("Error Message not Displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verifyInvalidOTP . Exception: " + e.getClass());
        }

    }

    public void verifyResendOTP() {
        try {
            String locator = "Disabled Resend OTP In Block Card Page#xpath=//button[@id='resend' and @disabled='disabled']";
            String resendButton = "Resend OTP Button In Block Card Page#xpath=//button[@id='resend']";
            waitForElementVisibility(resendButton);
            clickOnButtonUsingTextUsingForLoop("Resend OTP");
            if (isElementDisplayed(locator)) {
                testStepPassed("Resend OTP functioning Successfully");
            } else {
                testStepFailed("Resend OTP not functioning");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verifyResendOTP . Exception: " + e.getClass());
        }

    }

    public void verifycorrectOTPValidation() {
        try {
            String locator = "OTP Entry Part In Block Card Page#xpath=//div[@class='otpPart']//input[contains(@id,'OTP-digit')]";
            String successmsg = "Success Message on entering Correct OTP#xpath=']";
            enterValueInTextBox("123456", 6, locator, "");
            clickOnButtonUsingTextUsingForLoop("Submit");

            if (isElementDisplayed(successmsg)) {
                manualScreenshot("Success Message Displayed Successfully");
                testStepPassed("Valid OTP verified Successfully");
            } else {
                testStepFailed("Valid OTP not functioning");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verifycorrectOTPValidation . Exception: " + e.getClass());
        }

    }

    public void verifyUnblockCardOTP() {
        try {

            String locator = "Mobile Number of Customer#xpath=//i[@id='maskedMobileUnblock']";
            String otptimer = "OTP Timer #xpath=//p[@class='otp-timer']";

            if (isElementPresent(EMICardPage.unblockCard_RHS)) {
                clickOn(EMICardPage.unblockCard_RHS);
                verifyFieldsDisplayedUsingText("OTP Verification");
                verifyFieldsDisplayedUsingText("An OTP has been sent on your registered mobile number " + verifyElementIsPresentAndGetText(locator) + "");
                verifyFieldsDisplayedUsingText("Enter One Time Password");
                testStepPassed("OTP Triggered Successfully");
            } else {
                testStepFailed("OTP Not Triggered");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verifyUnblockCardOTP . Exception: " + e.getClass());
        }

    }

    public void verifyInvalidOTPUnblockCard() {
        try {

            String locator = "OTP Entry Part In Un Block Card Page#xpath=//div[@class='otpPart']//input[contains(@id,'OTP-digits')]";
            if (isElementPresent(locator)) {
                enterValueInTextBox("222222", 6, locator, "");
                clickOnButtonUsingTextUsingForLoop("Submit");
                verifyErrorMessageUsingText("OTP is incorrect. Please enter the correct OTP received on your Registered Mob. No.");
                manualScreenshot("Error Message Displayed Successfully for Invalid OTP");
            } else {
                testStepFailed("Error Message not Displayed for Invalid OTP");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verifyInvalidOTPUnblockCard . Exception: " + e.getClass());
        }

    }

    public void verifyResendOTPUnblockCard() {
        try {
            String locator = "Disabled Resend OTP In Block Card Page#xpath=//div[@id='OTPPopupUnblock']//button[@id='resend' and @disabled='disabled']";
            String resendButton = "Resend OTP Button In Block Card Page#xpath=//div[@id='OTPPopupUnblock']//button[@id='resend']";
            waitForElementVisibility(resendButton);
            clickOnButtonUsingTextUsingForLoop("Resend OTP");
            if (isElementDisplayed(locator)) {
                testStepPassed("Resend OTP functioning Successfully");
            } else {
                testStepFailed("Resend OTP not functioning");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verifyResendOTP . Exception: " + e.getClass());
        }

    }

    public void verifycorrectOTPValidationUnblockCard() {
        try {
            String locator = "OTP Entry Part In Block Card Page#xpath=//div[@class='otpPart']//input[contains(@id,'OTP-digits')]";
            String successmsg = "Success Message on entering Correct OTP#xpath=']";
            enterValueInTextBox("123456", 6, locator, "");
            clickOnButtonUsingTextUsingForLoop("Submit");

            if (isElementDisplayed(successmsg)) {
                manualScreenshot("Success Message Displayed Successfully");
                testStepPassed("Valid OTP verified Successfully");
            } else {
                testStepFailed("Valid OTP not functioning");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verifycorrectOTPValidationUnblockCard . Exception: " + e.getClass());
        }

    }


    public void verifyViewNumberOTP() {
        try {

            String locator = "Mobile Number of Customer#xpath=//i[@id='maskedMobile']";
            String otptimer = "OTP Timer #xpath=//div[@id='OTPPopup']//p[@class='otp-timer']";

            if (isElementPresent(EMICardPage.viewNumber_Button)) {
                clickOn(EMICardPage.viewNumber_Button);
                waitTime(5);
               /* verifyFieldsDisplayedUsingText("OTP Verification");
                verifyFieldsDisplayedUsingText("An OTP has been sent on your registered mobile number " + verifyElementIsPresentAndGetText(locator) + "");
                verifyFieldsDisplayedUsingText("Enter One Time Password");*/
                verifyFieldsDisplayedUsingText("OTPPopup","OTP Verification");
                verifyFieldsDisplayedUsingText("OTPPopup", "A one-time password has been sent to your registered mobile number");
                String text=findWebElement(locator).getText();
                if(text.contains("XXXX")){
                    testStepPassed("Mobile number is masked correctly"+ text);
                }else{
                    testStepFailed("Mobile number is  Not masked correctly"+ text);
                }
                verifyFieldsDisplayedUsingText("OTPPopup","Enter OTP");
                testStepPassed("OTP Triggered Successfully");
            } else {
                testStepFailed("OTP Not Triggered");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verifyViewNumberOTP . Exception: " + e.getClass());
        }

    }


    public void verifyInvalidOTPViewNumber() {
        try {

            String locator = "OTP Entry Part In View Number#xpath=//div[@class='otpPart' and @id='otp-inputs1']//input[contains(@id,'OTP-digit')]";
            String locator1 = "//div[@class='otpPart' and @id='otp-inputs1']//input[contains(@id,'OTP-digit')]";


            if (isElementPresent(locator)) {
                enterValueInTextBox("222222", 6, locator1, "");
                clickOnButtonUsingTextUsingForLoop("Submit");
                verifyssubHeadingIsDisplayed("You have entered wrong OTP. 2 attempts left.");
                //verifyErrorMessageUsingText("Invalid OTP !");
                manualScreenshot("Error Message Displayed Successfully for Invalid OTP");
            } else {
                testStepFailed("Error Message not Displayed for Invalid OTP");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verifyInvalidOTPViewNumber . Exception: " + e.getClass());
        }

    }

    public void verifyResendOTPViewNumber() {
        try {
            String locator = "Disabled Resend OTP In View Number#xpath=//div[@id='OTPPopup']//button[@id='resend' and @disabled='disabled']";
            String resendButton = "Resend OTP Button In View Number#xpath=//div[@id='OTPPopup']//a[@id='resend']";
            String closePopUpButton = "Close PopUp Button In View Number#xpath=//div[@id='OTPPopup']//a[@class='close_otp']//img";
            waitTime(60);
            waitForPageToLoad();
            waitForElementVisibility(resendButton);
            clickOn(resendButton,"");
            if (isElementDisplayed(resendButton)) {
                testStepPassed("Resend OTP functioning Successfully");
            } else {
                testStepFailed("Resend OTP not functioning");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verifyResendOTPViewNumber . Exception: " + e.getClass());
        }

    }

    public void verifyDisplayedEMICardNumber() {
        try {
            String locator1 = "//div[@class='otpPart' and @id='otp-inputs1']//input[contains(@id,'OTP-digit')]";
            String locator = "OTP Entry Part In View Number#xpath=//div[@class='otpPart' and @id='otp-inputs1']//input[contains(@id,'OTP-digit')]";
            String number = "EMI Card Number of the Customer#xpath=//input[@id='passWord']";
            if (isElementPresent(locator)) {
                enterValueInTextBox("123456", 6, locator1, "");
                clickOnButtonUsingTextUsingForLoop("Submit");
            }
            waitTime(5);
            if (isElementDisplayed(number)) {
                String numberDisplayed = findWebElement(number).getAttribute("value").trim();
                // numberDisplayed = "2030 4050 6045 7896";
                String num[] = numberDisplayed.split(" ");
                for (int i = 0; i < num.length; i++) {
                    if (!num[i].contains("*") && num[i].length() == 4) {
                        testStepPassed("EMI Card Number: " + num[i] + " " + " ");
                        manualScreenshot(" EMI Card Number displayed in Unmasked format successfully");
                    } else {
                        testStepFailed("EMI Card Number in Unmasked format is not verified");
                    }
                }

            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verifyDisplayedEMICardNumber . Exception: " + e.getClass());
        }

    }

    public void verifyEMICardNumberAfterRefresh() {
        try {
            refreshThePage();
            String number = "EMI Card Number of the Customer#xpath=//input[@id='passWord']";
            if (isElementDisplayed(number)) {
                String numberDisplayed = findWebElement(number).getAttribute("value").trim();
                String num[] = numberDisplayed.split(" ");
                for (int i = 0; i < num.length; i++) {
                    if (num[i].contains("*") && num[i].length() == 4) {
                        testStepPassed("EMI Card Number: " + num[i] + " " + " ");
                        manualScreenshot(" EMI Card Number displayed in Masked format successfully");
                    } else {
                        testStepFailed("EMI Card Number in Masked format is not verified");
                    }
                }

            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verifyDisplayedEMICardNumber . Exception: " + e.getClass());
        }

    }

    public void verifyEMandateOrangeCapsule() {
        try {
            String locator = "E Mandate Pending Orange Capsule#xpath=//p[normalize-space(text())='E-MANDATE Pending']/../../div[@class='a_block_label a_mandate_orange']";
            String loc = "E Mandate Pending #xpath=//div[@class='a_block_label a_mandate_orange']/p";

            String text = getText(loc);
            manualScreenshot("The contents in the capsule is:" +text);
            verifyLocatorColor(locator, "#ff6700");

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verifyEMandateOrangeCapsule . Exception: " + e.getClass());
        }

    }

    public void verifyEMandateCardDetails() {
        try {
            String cardNumber = "Card Number #xpath=//div[@class='a_card_num']";
            String cardStatus = "Card Status #xpath=//div[@class='a_card_status']/p";
            String totalLoanLimit = "Total Loan Limit #xpath=//div[@class='a_loan_limit']/p";
            String availableLoanLimit = "Available Loan Limit #xpath=//div[@class='a_available_limit']/p";
            String infotipTotalLoanLimit = "Info Tip TotalLoanLimit#xpath=//div[@class='a_loan_limit']//a[@class='a_infoavail_img a_openmodal']//img";
            String infotipAvailableLoanLimit = "Info Tip AvailableLoanLimit#xpath=//div[@class='a_available_limit']//a[@class='a_infoavail_img a_openmodal']//img";
            String infotieMandatepending = "Info Tip E Mandate Pending#xpath=//div[@class='a_mandate_box']//a[@class='a_infoavail_img a_openmodal']//img";
            String viewNumber_Button = "View Number Button#xpath=//a[@class='a_num_link' and normalize-space(text())='View Number']";
            String registerNow_Button = "Register Now Button#xpath=//a[@class='a_mandate_link' and normalize-space(text())='Register Now']";

            verifyValueUsingLabel("//p", "Card Number", "/following-sibling::p", "");
            verifyValueUsingLabel("//p", "E-Mandate", "/following-sibling::p", "");
            verifyValueUsingLabel("//p", "Card Status", "/following-sibling::p", "");
            verifyValueUsingLabel("//p", "Total Loan Limit", "/following-sibling::p", "");
            verifyValueUsingLabel("//p", "Available Loan Limit", "/following-sibling::p", "");
//            verifyElementIsPresentAndGetText(cardNumber);
//            verifyElementIsPresentAndGetText(cardStatus);
//            verifyElementIsPresentAndGetText(totalLoanLimit);
//            verifyElementIsPresentAndGetText(availableLoanLimit);
            verifyElementIsDisplayedUsingLocator(infotipTotalLoanLimit);
            verifyElementIsDisplayedUsingLocator(infotipAvailableLoanLimit);
            verifyElementIsDisplayedUsingLocator(infotieMandatepending);
            verifyElementIsDisplayedUsingLocator(viewNumber_Button);
            verifyElementIsDisplayedUsingLocator(registerNow_Button);


        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verifyEMandateCardDetails . Exception: " + e.getClass());
        }

    }


    public void verifyRegisterNowEMandate() {

        try {
            String registerNow_Button = "Register Now Button#xpath=//a[@class='a_mandate_link' and normalize-space(text())='Register Now']";

            if (isElementDisplayed(registerNow_Button)) {
                clickOn(registerNow_Button);
                waitForPageToLoad();
                verifyRedirectionURLIfContains("https://experia-uat.bajajfinserv.in/Myprofile/Customer/Emandate");
                navigateToBack();
                testStepPassed("Register Now Button working successfully");
            } else {
                testStepFailed("Register Now Button not working as expected");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verifyRegisterNowEMandate .Exception: " + e.getClass());
        }


    }

    public void verifyEMICardsVisiblity() {
        try {
            String cards = "Cards in EMI Section#xpath=//div[@class='a_my_emicards']//div[@class='slick-track']/div";
            String cardActive = "EMI Card in Active State#xpath=//div[@class='a_my_emicards']//div[@class='slick-track']/div[@class='a_card_slider slick-slide slick-active']";
            String InActiveCard = "EMI Card in InActive State#xpath=//div[@class='a_my_emicards']//div[@class='slick-track']/div[@class='a_card_slider card_disable slick-slide slick-current slick-active']";

            String actCard= findWebElement(cardActive).getAttribute("id");
            String inactCard= findWebElement(InActiveCard).getAttribute("id");
            if (sizeOfLocator(cardActive) == 1) {
                manualScreenshot(actCard+"After Redirecting EMI Card only one Active at a time is verified successfully");
                testStepPassed("And Inactive card is in grayed"+ inactCard);
            } else {
                testStepFailed("After Redirecting EMI Card only one Active at a time is not verified");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify EMI Card Visibility. Exception:" + e.getClass());
        }
    }

    public void verifyEMICardsVisiblityOnClick() {
        try {

            String cardActive = "EMI Card in Active State#xpath=//div[@class='a_my_emicards']//div[@class='slick-track']/div[@class='a_card_slider slick-slide slick-current slick-active']";
            // String cardActive = "EMI Card in Active State#xpath=//div[@class='a_my_emicards']//div[@class='slick-track']/div[@class='a_card_slider slick-slide slick-active']";
            String InActiveCard = "EMI Card in InActive State#xpath=//div[@class='a_my_emicards']//div[@class='slick-track']/div[@class='a_card_slider card_disable slick-slide slick-current slick-active']";
            clickOn(InActiveCard);
            manualScreenshot(" Click On Inactive Card then check Active card goes to Inactive grayed State");

            if (sizeOfLocator(cardActive) == 1) {
                testStepPassed("EMI Card only Active at a time on click and others are greyed out verified successfully");
            } else {
                testStepFailed("EMI Card does not  Active at a time on click and others are greyed out  not verified successfully");
            }

            /*for (int i = 1; i <= sizeOfLocator(cards); i++) {
                String card = "Card " + i + " in EMI Section#xpath=(//div[@class='a_my_emicards']//div[@class='slick-track']/div)[" + i + "]";
                clickOnIfPresent(card);
                if (sizeOfLocator(cardActive) == 1) {
                    manualScreenshot("EMI Card " + i + " only Active at a time on click and others are greyed out verified successfully");
                } else {
                    testStepFailed("EMI Card " + i + " only Active at a time on click and others are greyed out is not verified");
                }
            }*/
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify EMI Card Visibility On Click. Exception:" + e.getClass());
        }
    }

    public int verifyScrollInEmiCards(int noOfCount, String extra) {
        int count = 0;
        try {
            String scrollIconRight = "Right Side Scroll Next Button in EMI Card#xpath=//div[@class='a_bg_emicard']//button[@aria-label='Next']";
            String scrollIconLeft = "Left Side Scroll Next Button in EMI Card#xpath=//div[@class='a_bg_emicard']//button[@aria-label='Previous']";
            if (noOfCount <= 2) {
                if (!isElementDisplayed(scrollIconRight) && !isElementDisplayed(scrollIconLeft)) {
                    manualScreenshot("Scroll Button in EMI Card is not showing for Less than 3 EMI cards successfully.");
                } else {
                    testStepFailed("Scroll Button in EMI Card is showing for Less than 3 EMI cards Wrongly.");
                }
            } else if (noOfCount > 2) {
                if (isElementDisplayed(scrollIconRight) || isElementDisplayed(scrollIconLeft)) {
                    clickOn(scrollIconRight);
                    manualScreenshot("Right Scroll Button in EMI Card is showing for More than 2 EMI cards successfully.");
                    manualScreenshot("Left Scroll Button in EMI Card is showing for More than 2 EMI cards successfully.");
                    clickOn(scrollIconLeft);
                } else {
                    testStepFailed("Scroll Button in EMI Card is not showing for More than 2 EMI cards.");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify scroll in Emi Cards. Exception: " + e.getClass());
        }
        return count;
    }

    public void verifyUpdatePinOTP() {
        try {

            String locator = "Mobile Number of Customer#xpath=//i[@id='maskedMobile']";
            String otptimer = "OTP Timer #xpath=//p[@class='otp-timer']";
            verifyFieldsDisplayedUsingText("OTPPopupPin","OTP Verification");
            verifyFieldsDisplayedUsingText("OTPPopupPin", "A one-time password has been sent to your registered mobile number");
            //  verifyFieldsDisplayedUsingText("OTP Verification");
            //  verifyFieldsDisplayedUsingText("An OTP has been sent on your registered mobile number " + verifyElementIsPresentAndGetText(locator) + "");
            //  verifyFieldsDisplayedUsingText(" A one-time password has been sent to your registered mobile number");
            String text=findWebElement(locator).getText();
            if(text.contains("XXXXX")){
                testStepPassed("Mobile number is masked correctly"+ text);
            }else{
                testStepFailed("Mobile number is  Not masked correctly"+ text);
            }
            verifyFieldsDisplayedUsingText("OTPPopupPin","Enter OTP");
            testStepPassed("OTP Triggered Successfully");

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Update Pin OTP . Exception: " + e.getClass());
        }

    }

    public void verifyInvalidOTPUpdatePin() {
        try {

            String locator = "OTP Timer #xpath=//div[@class='otpPart']//input[contains(@id,'OTP-digit')]";
            String locator1 = "//div[@class='otpPart']//input[contains(@id,'OTP-digit')]";

            if (isElementPresent(locator)) {
                enterValueInTextBox("222222", 6, locator1, "");
                clickOnButtonUsingTextUsingForLoop("Submit");
                //  verifyErrorMessageUsingText("OTP is incorrect. Please enter the correct OTP received on your Registered Mob. No.");
                // verifyErrorMessageUsingText("Invalid OTP !");
                verifyssubHeadingIsDisplayed("You have entered wrong OTP. 2 attempts left.");
                manualScreenshot("Error Message Displayed Successfully for Invalid OTP");
            } else {
                testStepFailed("Error Message not Displayed for Invalid OTP");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Invalid OTP Update Pin . Exception: " + e.getClass());
        }

    }

    public void verifyResendOTPUpdatePin() {
        try {
            String locator = "Disabled Resend OTP In Update Pin Page#xpath=//div[@id='OTPPopupUnblock']//button[@id='resend' and @disabled='disabled']";
            String resendButton = "Resend OTP Button In Update Pin Page#xpath=//button[@id='resend']";
            waitForElementVisibility(resendButton);
            waitTime(60);
            clickOnButtonUsingTextUsingForLoop("Resend OTP");
            if (isElementDisplayed(locator)) {
                testStepPassed("Resend OTP functioning Successfully");
            } else {
                testStepFailed("Resend OTP not functioning");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify ResendOTP UpdatePin . Exception: " + e.getClass());
        }

    }

    public void verifycorrectOTPValidationUpdatePin() {
        try {
            String locator = "//div[@class='otpPart']//input[contains(@id,'OTP-digit')]";

            String successmsg = "Success Message on entering Correct OTP#xpath=//div[@id='Successmsg']";
            String successtxtmsg = "Your PIN has been updated successfully";
            enterValueInTextBox("123456", 6, locator, "");
            clickOnButtonUsingTextUsingForLoop("Submit");
            //waitForPageToLoad();
            manualScreenshot("Your PIN has been updated successfully");
            //verifyssubHeadingIsDisplayed("Your PIN has been updated successfully");
            if (isElementDisplayed(successmsg)) {
                testStepPassed("Your PIN has been updated successfully  is displayed");
            } else {
                testStepFailed("Valid OTP not functioning");
            }
            waitTime(5);
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify correct OTP Validation UpdatePin . Exception: " + e.getClass());
        }

    }



    public void verifyMaskedViewNumber() {
        try {
            String locator = "//div[@class='otpPart' and @id='otp-inputs1']//input[contains(@id,'OTP-digit')]";
            String successmsg = "Success Message on entering Correct OTP#xpath=//[@id='Successmsg']//*[normalize-space(text())='Your PIN has been updated successfully']";
            enterValueInTextBox("123456", 6, locator, "");
            clickOnButtonUsingTextUsingForLoop("Submit");
            waitForPageToLoad();
            manualScreenshot("Card Number has been Masked Sucessfully");

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify correct OTP Validation UpdatePin . Exception: " + e.getClass());
        }

    }


    public void verifyBlockedReason(String blockedReasonValue) {
        try {

            String locator = "Blocked Reason#xpath=//p[text()='Blocked Reason']/following::p[@id='blockReason']";
            if (isElementPresent(locator)) {
                scrollToWebElement(locator);
                highLight(locator);
                String val = findWebElement(locator).getText().trim();
                blockedReasonValue = blockedReasonValue.trim();
                if (val.equals(blockedReasonValue)) {
                    testStepPassed("Blocked Reason verified Successfully with "+val );
                } else {
                    testStepFailed(blockedReasonValue + " Not displayed");
                }
            }else {
                testStepFailed("Blocked Reason Field Not displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verifyUnblockCardOTP . Exception: " + e.getClass());
        }

    }


    public void verifyBlockedProcess(String blockedReasonValue) {
        try {

            String locator = "Unblocking Process #xpath=//p[text()='Unblocking Process']/following::p[@id='blockDescription']";
            if (isElementPresent(locator)) {
                scrollToWebElement(locator);
                highLight(locator);
                String val = findWebElement(locator).getText().trim();
                blockedReasonValue = blockedReasonValue.trim();
                if (val.equals(blockedReasonValue)) {
                    testStepPassed("Unblocking Process verified Successfully with "+val );
                } else {
                    testStepFailed(blockedReasonValue + " Not displayed");
                }
            }else {
                testStepFailed("Blocked Reason Field Not displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verifyUnblockCardOTP . Exception: " + e.getClass());
        }

    }

    public void verifyBlockedTimeline(String blockedReasonValue) {
        try {
            String locator = "Unblocking Timeline #xpath=//p[text()='Unblocking Timeline']/following::p[@id='blockTimeline']";
            if (isElementPresent(locator)) {
                scrollToWebElement(locator);
                highLight(locator);
                String val = findWebElement(locator).getText().trim();
                blockedReasonValue = blockedReasonValue.trim();
                if (val.equals(blockedReasonValue)) {
                    testStepPassed("Unblocking Timeline verified Successfully with "+val );
                } else {
                    testStepFailed(blockedReasonValue + " Not displayed");
                }
            }else {
                testStepFailed("Blocked Reason Field Not displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verifyUnblockCardOTP . Exception: " + e.getClass());
        }

    }



    public void verifyPopUpText(String labelName) {
        try {

            String locator = labelName+"#xpath=//a[@class='closeemipop']/..//*[normalize-space()='"+labelName+"']";
            if (isElementDisplayed(locator)) {
                // highLight(locator);
                testStepPassed(labelName+" is displayed Sucessfully");
            }else {
                testStepFailed(labelName+" Not displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Popup text . Exception: " + e.getClass());
        }

    }


    public void highLight(String elementLocation) {
        try {
            if (isElementDisplayed(elementLocation, 4)) {
                // parseidentifyByAndlocator(elementLocation);
                WebElement highletelement = findWebElement(elementLocation);
                String backround = highletelement.getCssValue("background");
                String border = highletelement.getCssValue("border");

                JavascriptExecutor js = (JavascriptExecutor) driver;
                js.executeScript("arguments[0].setAttribute('style', 'border: 3px solid red;');", highletelement);
                Thread.sleep(1000);
                scrollToWebElement(elementLocation);
                manualScreenshot("");
                Thread.sleep(500);
                js.executeScript("arguments[0].setAttribute('style', 'border: 0px " + border + ";');", highletelement);
            } else {
                //
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("failed");
        }
    }



    public void scrollToTop() {
        try {

            ((JavascriptExecutor) driver).executeScript("window.scrollTo(document.body.scrollHeight, 0)");
            waitTime(2);
        } catch (Exception e) {
            testStepFailed("Failed to scroll UP " + e.getClass());
        }
    }


    public void clickOnOKbutton(String buttonLabel) {

        try {
            boolean status = false;
            String button = buttonLabel + "#xpath=//*[contains(text(),'"+buttonLabel+"')]";

            List<WebElement> listOfButton = findWebElements(button);
            if (!(listOfButton.size() == 0)) {
                for (int i = 1; i <= listOfButton.size(); i++) {
                    String buttonElement = buttonLabel + "#xpath=(//*[contains(text(),'"+buttonLabel+"')])["
                            + i + "]";
                    scrollToWebElement(buttonElement);
                    if (isElementDisplayed(buttonElement, 10)) {
                        clickOn(buttonElement);
                        manualScreenshot(buttonLabel + "  displayed Sucessfully");
                        status = true;
                        break;
                    }
                }

            }
            if (!status) {
                testStepInfo(buttonLabel + "  is not present.");
            }
        } catch (Exception e) {
            testStepFailed("Failed in verifying labelName. Exception : " + e.getClass());
        }

    }




    public void verifyViewNumberOTPPopup() {
        try {
            String otptimer = "OTP Timer #xpath=//p[@class='otp-timer']";
            String locator = "Mobile Number of Customer#xpath=//i[@id='maskedMobileUnblock']";
            String closepopup = "Mobile Number of Customer#xpath=//div[@id='OTPPopupUnblock']//*[@class='close_otp']";
            verifyFieldsDisplayedUsingText("OTPPopupUnblock","OTP Verification");
            verifyFieldsDisplayedUsingText("OTPPopupUnblock", "A one-time password has been sent to your registered mobile number");
            String text=findWebElement(locator).getText();
            if(text.contains("XXXXXX")){
                testStepPassed("Mobile number is masked correctly"+ text);
            }else{
                testStepFailed("Mobile number is  Not masked correctly"+ text);
            }
            // verifyElementIsPresentAndGetText(locator);

            verifyFieldsDisplayedUsingText("OTPPopupUnblock","Enter OTP");
            verifyElementIsDisplayedUsingLocator(otptimer);
            manualScreenshot("OTP PopUP  displayed Successfully");
            // clickOn(closepopup);

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verifyViewNumberOTP . Exception: " + e.getClass());
        }
    }



    public void verifyFieldsDisplayedUsingText( String id ,String fieldText) {
        try {
            String field = "";
            if (fieldText.equalsIgnoreCase("Date Of Birth")) {
                field = "" + fieldText + "#xpath=//a[normalize-space(text())='" + fieldText.trim()
                        + "']|//*[@placeholder='" + fieldText.trim() + "']";
            } else {
                field = "" + fieldText + "#xpath=//div[@id='"+id+"']//*[normalize-space(text())='" + fieldText.trim()
                        + "']|//*[@placeholder='" + fieldText.trim() + "']";
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
            testStepFailed("Failed in verify Fields Displayed Using Text "+fieldText+". Exception: " + e.getClass());
        }
    }



    public boolean verifyssubHeadingIsDisplayed(String buttonLabel) {
        boolean flag = false;
        try {
            // boolean status = false;
            String button = buttonLabel + "#xpath=//*[contains(text(),'"+buttonLabel+"')]";
            List<WebElement> listOfButton = findWebElements(button);
            if (!(listOfButton.size() == 0)) {
                for (int i = 1; i <= listOfButton.size(); i++) {
                    String buttonElement = buttonLabel + "#xpath=(//*[contains(text(),'"+buttonLabel+"')])["
                            + i + "]";
                    scrollToWebElement(buttonElement);
                    if (isElementDisplayed(buttonElement, 10)) {
                        manualScreenshot(buttonLabel + "  displayed Sucessfully");
                        flag = true;
                        break;
                    }
                    /*else{
                        testStepInfo("Error Message displaying another");
                    }*/
                }

            }
            if (!flag) {
                testStepInfo(buttonLabel + "  is not present.");
            }
        } catch (Exception e) {
            testStepFailed("Failed in verifying labelName. Exception : " + e.getClass());
        }
        return flag;
    }


    public Boolean clickOnEmiCardNumber(String iconText) {
        Boolean flag = false;
        try {
            String locator = "Card Icons - " + iconText + "#xpath=//p[normalize-space(text())='" + iconText.trim() + "']";
            if (isElementDisplayed(locator)) {
                clickOn(locator);
                flag = true;
            } else {
                testStepFailed("Emi Cards - " + iconText + " is not displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed to click On Cards "+iconText+". Exception: " + e.getClass());
        }
        return flag;
    }



    public void clickOnProduct(String sectionName,String optionName,String extra) {
        try {
            String locatorSection = sectionName + " Section#xpath=(//*[normalize-space(text())='" + sectionName.trim() + "'])[1]";
            String locator = sectionName + " section : " + optionName + " Name#xpath=(//*[normalize-space(text())='" + sectionName.trim() + "'])[1]/../following-sibling::div//p[normalize-space(text())='" + optionName.trim() + "']|(//*[normalize-space(text())='" + sectionName.trim() + "'])[1]/../following-sibling::ul//p[normalize-space(text())='" + optionName.trim() + "']";
            //  String locatorNext = sectionName + " Next Button#xpath=(//*[text()='" + sectionName.trim() + "'])[1]/../following-sibling::div//p[text()='" + optionName.trim() + "']/ancestor::div/following-sibling::button[@aria-label='Next']";
            String locatorPrevious = sectionName + " Previous Button#xpath=(//*[text()='" + sectionName.trim() + "'])[1]/../following-sibling::div//p[text()='" + optionName.trim() + "']/ancestor::div/preceding-sibling::button[@aria-label='Previous']";
            String locatorLabelName = optionName + " Button#xpath=//strong[contains(text(),'"+optionName+"')]";
            String locatorNext = sectionName + " Next Button#xpath=//button[@aria-label='Next']";

            if (isElementDisplayed(locatorLabelName)) {
                clickOn(locatorLabelName);
                waitTime(3);
                waitForPageToLoad();
            } else {
                testStepFailed(getRefOfXpath(locator)+" is Not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in click on "+sectionName+" "+optionName+" Product. Exception: " + e.getClass());
        }
    }


    public Boolean verifyRedCapsuleforBlocked() {
        Boolean flag = false;
        try {
            String locator = "EMI Card Blocked color Icons - #xpath=//div[@class='a_block_label block_red']//p[text()='Blocked']";
            if (isElementDisplayed(locator)) {
                verifyssubHeadingIsDisplayed("Unblock Card");
                testStepPassed("Emi Cards - Blocked red color is displayed and also unblock button is displayed");
                flag = true;
            } else {
                testStepFailed("Emi Cards - Blocked red color is not displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Emi Cards - Blocked red color is not displayed");
        }
        return flag;
    }



    public Boolean verifyLocatorColorUsingCssValue(String objectLocator, String expectedColorHexValue, String expectedColor, String cssValue) {
        Boolean flag=false;
        try {
            scrollToWebElementIfPresent(objectLocator);
            if (isElementDisplayed(objectLocator)) {
                manualScreenshot(objectLocator.split("#")[0] + " is Displayed Successfully");
                String color = findWebElement(objectLocator).getCssValue(cssValue);
                String hex = Color.fromString(color).asHex();
                testStepInfo(hex);
                if (hex.equals(expectedColorHexValue)) {
                    flag=true;
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



    public  void verifyNewotpMessage(){
        try {
            boolean flag=false;
            flag = verifyssubHeadingIsDisplayed("You have entered wrong OTP multiple times. Please try again after sometime.");
            if(flag){
                testStepInfo("You have entered wrong OTP multiple times. Please try again after sometime.   is displayed  without displaying otp popup.");
                return;
            }

            String locator = "Mobile Number of Customer#xpath=//i[@id='maskedMobile']";
            // verifyFieldsDisplayedUsingText("OTPPopup","OTP Verification");
            verifyFieldsDisplayedUsingText("OTPPopup", "A one-time password has been sent to your registered mobile number");
            String text=findWebElement(locator).getText();
            if(text.contains("XXXX")){
                testStepPassed("Mobile number is masked correctly"+ text);
            }else{
                testStepFailed("Mobile number is  Not masked correctly"+ text);
            }
            verifyFieldsDisplayedUsingText("OTPPopup","Enter OTP");

        }catch(Exception e){
            e.printStackTrace();
            testStepFailed("Failed in verify Otp Popup :  "  + ". Exception: " + e.getClass());
        }

    }




    public  void verifyUnblockotpMessage(){
        try {
            boolean flag=false;
            flag = verifyssubHeadingIsDisplayed("You have entered wrong OTP multiple times. Please try again after sometime.");
            if(flag){
                testStepInfo("You have entered wrong OTP multiple times. Please try again after sometime.   is displayed  without displaying otp popup.");
                return;
            }

            String locator = "Mobile Number of Customer#xpath=//i[@id='maskedMobileUnblock']";
            // verifyFieldsDisplayedUsingText("OTPPopup","OTP Verification");
            verifyFieldsDisplayedUsingText("OTPPopupUnblock", "A one-time password has been sent to your registered mobile number");
            String text=findWebElement(locator).getText();
            if(text.contains("XXXXXX")){
                testStepPassed("Mobile number is masked correctly"+ text);
            }else{
                testStepFailed("Mobile number is  Not masked correctly"+ text);
            }
            verifyFieldsDisplayedUsingText("OTPPopupUnblock","Enter OTP");

        }catch(Exception e){
            e.printStackTrace();
            testStepFailed("Failed in verify Otp Popup :  "  + ". Exception: " + e.getClass());
        }

    }

    //div[@class='otpPart']//input[contains(@id,'OTP-digit')]
    public void verifyInvalidfirstOtpMessage(){
        try {
            boolean flag= false;
            //div[@class='otpPart']//input[contains(@id,'OTP-digit')]
            String locator = "OTP Entry Part In View Number#xpath=//div[@class='otpPart' and @id='otp-inputs1']//input[contains(@id,'OTP-digit')]";
            String locator1 = "//div[@class='otpPart' and @id='otp-inputs1']//input[contains(@id,'OTP-digit')]";
            flag = verifyssubHeadingIsDisplayed("You have entered wrong OTP multiple times. Please try again after sometime.");
            if(flag){
               // testStepInfo("You have entered wrong OTP multiple times. Please try again after sometime.   is displayed  without displaying otp popup.");
                return;
            }
            if (isElementPresent(locator)) {
                enterValueInTextBox("222222", 6, locator1, "");
                clickOnButtonUsingTextUsingForLoop("Submit");
                verifyssubHeadingIsDisplayed("You have entered wrong OTP. 2 attempts left.");
                //verifyErrorMessageUsingText("Invalid OTP !");
                manualScreenshot("Error Message Displayed Successfully for Invalid OTP");
            } else {
                testStepFailed("Error Message not Displayed for Invalid OTP");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verifyInvalidOTPViewNumber . Exception: " + e.getClass());
        }
    }


    public void verifyUnblockInvalidfirstOtpMessage(){
        try {
            boolean flag= false;
            //div[@class='otpPart']//input[contains(@id,'OTP-digit')]
            String locator = "OTP Entry Part In View Number#xpath=//div[@class='otpPart' and @id='otp-inputs1']//input[contains(@id,'OTP-digit')]";
            String locator1 = "//div[@class='otpPart']//input[contains(@id,'OTP-digit')]";
            flag = verifyssubHeadingIsDisplayed("You have entered wrong OTP multiple times. Please try again after sometime.");
            if(flag){
                // testStepInfo("You have entered wrong OTP multiple times. Please try again after sometime.   is displayed  without displaying otp popup.");
                return;
            }
            if (isElementPresent(locator)) {
                enterValueInTextBox("222222", 6, locator1, "");
                clickOnButtonUsingTextUsingForLoop("Submit");
                verifyssubHeadingIsDisplayed("You have entered wrong OTP. 2 attempts left.");
                //verifyErrorMessageUsingText("Invalid OTP !");
                manualScreenshot("Error Message Displayed Successfully for Invalid OTP");
            } else {
                testStepFailed("Error Message not Displayed for Invalid OTP");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verifyInvalidOTPViewNumber . Exception: " + e.getClass());
        }
    }



    public void verifyInvalidSecondOtpMessage(){
        try {
            boolean flag = false;
            String locator = "OTP Entry Part In View Number#xpath=//div[@class='otpPart' and @id='otp-inputs1']//input[contains(@id,'OTP-digit')]";
            String locator1 = "//div[@class='otpPart' and @id='otp-inputs1']//input[contains(@id,'OTP-digit')]";

            flag = verifyssubHeadingIsDisplayed("You have entered wrong OTP multiple times. Please try again after sometime.");
            if(flag){
             //   testStepInfo("You have entered wrong OTP multiple times. Please try again after sometime.   is displayed  without displaying otp popup.");
                return;
            }

            if (isElementPresent(locator)) {
                enterValueInTextBox("222222", 6, locator1, "");
                clickOnButtonUsingTextUsingForLoop("Submit");
                verifyssubHeadingIsDisplayed("You have entered wrong OTP. 1 attempt left.");
                //verifyErrorMessageUsingText("Invalid OTP !");
                manualScreenshot("Error Message Displayed Successfully for Invalid OTP");
            } else {
                testStepFailed("Error Message not Displayed for Invalid OTP");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verifyInvalidOTPViewNumber . Exception: " + e.getClass());
        }
    }



    public void verifyUnblockInvalidSecondOtpMessage(){
        try {
            boolean flag = false;
            String locator = "OTP Entry Part In View Number#xpath=//div[@class='otpPart' and @id='otp-inputs1']//input[contains(@id,'OTP-digit')]";
            String locator1 = "//div[@class='otpPart']//input[contains(@id,'OTP-digit')]";

            flag = verifyssubHeadingIsDisplayed("You have entered wrong OTP multiple times. Please try again after sometime.");
            if(flag){
                //   testStepInfo("You have entered wrong OTP multiple times. Please try again after sometime.   is displayed  without displaying otp popup.");
                return;
            }

            if (isElementPresent(locator)) {
                enterValueInTextBox("222222", 6, locator1, "");
                clickOnButtonUsingTextUsingForLoop("Submit");
                verifyssubHeadingIsDisplayed("You have entered wrong OTP. 1 attempt left.");
                //verifyErrorMessageUsingText("Invalid OTP !");
                manualScreenshot("Error Message Displayed Successfully for Invalid OTP");
            } else {
                testStepFailed("Error Message not Displayed for Invalid OTP");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verifyInvalidOTPViewNumber . Exception: " + e.getClass());
        }
    }



    public void verifyInvalidThirdOtpMessage(){
        try {
            boolean flag = false;
            String locator = "OTP Entry Part In View Number#xpath=//div[@class='otpPart' and @id='otp-inputs1']//input[contains(@id,'OTP-digit')]";
            String locator1 = "//div[@class='otpPart' and @id='otp-inputs1']//input[contains(@id,'OTP-digit')]";

            flag = verifyssubHeadingIsDisplayed("You have entered wrong OTP multiple times. Please try again after sometime.");
            if(flag){
                //testStepInfo("You have entered wrong OTP multiple times. Please try again after sometime.   is displayed  without displaying otp popup.");
                return;
            }
            if (isElementPresent(locator)) {
                enterValueInTextBox("222222", 6, locator1, "");
                waitForPageToLoad();
                waitTime(2);
                clickOnButtonUsingTextUsingForLoop("Submit");
                // clickOnButtonUsingTextUsingForLoop("Submit");
                verifyssubHeadingIsDisplayed("You have exhausted all the attempts to confirm. Please try after some time.");
                //verifyErrorMessageUsingText("Invalid OTP !");
                //manualScreenshot("Error Message Displayed Successfully for Invalid OTP");
            } else {
                testStepFailed("Error Message not Displayed for Invalid OTP");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verifyInvalidOTPViewNumber . Exception: " + e.getClass());
        }
    }



    public void verifyUnblockInvalidThirdOtpMessage(){
        try {
            boolean flag = false;
            String locator = "OTP Entry Part In View Number#xpath=//div[@class='otpPart' and @id='otp-inputs1']//input[contains(@id,'OTP-digit')]";
            String locator1 = "//div[@class='otpPart']//input[contains(@id,'OTP-digit')]";

            flag = verifyssubHeadingIsDisplayed("You have entered wrong OTP multiple times. Please try again after sometime.");
            if(flag){
                //testStepInfo("You have entered wrong OTP multiple times. Please try again after sometime.   is displayed  without displaying otp popup.");
                return;
            }
            if (isElementPresent(locator)) {
                enterValueInTextBox("222222", 6, locator1, "");
                waitForPageToLoad();
                waitTime(2);
                clickOnButtonUsingTextUsingForLoop("Submit");
                // clickOnButtonUsingTextUsingForLoop("Submit");
                verifyssubHeadingIsDisplayed("You have exhausted all the attempts to confirm. Please try after some time.");
                //verifyErrorMessageUsingText("Invalid OTP !");
                //manualScreenshot("Error Message Displayed Successfully for Invalid OTP");
            } else {
                testStepFailed("Error Message not Displayed for Invalid OTP");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verifyInvalidOTPViewNumber . Exception: " + e.getClass());
        }
    }




    public void verifyOtpTimer() {
        try {
            //p[@class='otp-timer']//following::span//i[@class='logincounter']
            String locator = "Timer #xpath=//div[@id='OTPPopupPin']//p[@class='otp-timer']";
            if (isElementDisplayed(locator)) {
                String val = findWebElement(locator).getText();
                String arr[] = val.split(":");
                String timerVal = arr[1];
                Integer valTime = Integer.parseInt(timerVal);
                if (valTime <= 60) {
                    manualScreenshot("Timer Value is decrementing from 60 secs ");
                } else {
                    testStepFailed("Timer Value not displayed");
                }
            } else {
                testStepFailed("Timer Value not displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }



    public void verifyUnblockOtpTimer() {
        try {
            //p[@class='otp-timer']//following::span//i[@class='logincounter']
            String locator = "Timer #xpath=//div[@id='OTPPopupUnblock']//p[@class='otp-timer']";
            if (isElementDisplayed(locator)) {
                String val = findWebElement(locator).getText();
                String arr[] = val.split(":");
                String timerVal = arr[1];
                Integer valTime = Integer.parseInt(timerVal);
                if (valTime <= 60) {
                    manualScreenshot("Timer Value is decrementing from 60 secs ");
                } else {
                    testStepFailed("Timer Value not displayed");
                }
            } else {
                testStepFailed("Timer Value not displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }



}
