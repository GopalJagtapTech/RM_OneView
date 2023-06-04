package PageObjects;

import base.ApplicationKeywords;
import org.apache.commons.validator.GenericValidator;

public class SDPServicesPage extends ApplicationKeywords {

    /*
    XPaths
     */

    public static final String sdp_SubTitle_Common = "//div[@class='Relationship_Details']//div[@class='a_sdprelation_title']/p";
//    public static final String fd_JointAccount_Common = "//div[@class='Relationship_Details']/descendant::div[@class='Relationshipbox_title']/strong[normalize-space(text())='Joint Account Holder Details']/../following-sibling::div/descendant::strong";
    public static final String sdp_JointAccount_Common = "//div[@class='Relationship_Details']/descendant::div[@class='a_sdprelation_title']/p[normalize-space(text())='Bank Details']/../following-sibling::div//p";

    public static final String view_statement = "View statement in LAFD Page#xpath=//a[@id='lnkViewStatement']//p[normalize-space()='View Statements']";
    public static final String faqs_b2bServices = "FAQs in B2B Services Page#xpath=//strong[normalize-space()='Frequently Asked Questions']";
    public static final String checkNow_b2bServices = "Check Now in Cibil Score#xpath=//div[@class='cibilscore']//i[@id='cibilCheck']";
    public static final String loanTile_b2bServices = "Loan Tile in LAFD Services in My Relations Page#xpath=(//div[@class='deposit_found_data Loanstest'])[1]";
    public static final String listLoanTiles_b2bServices = "All the Loan Tiles in B2B Services#xpath=//div[@class='deposit_found_box']//a";


   public static final String section_MyRelations = "MyRelations Section for SDP Services#xpath=//div[@class='rel_item_box']/../../..";
    public static final String viewAll_Homepage = "View All in Home Page#xpath=//div[@class='my_relation']//a[contains(text(),'View All')]";
    public static final String depositTab_MyRelations = "Deposits Tab in MyRelations Page#xpath=//a[normalize-space()='Deposits']";
    public static final String productLogo_SDP = "Product Logo in SDP Services#xpath=//div[@class='fixed_deposit_data']//img";
    public static final String star_Text = "* Related Text in SDP Services#xpath=//p[@class='a_indicatwe_return']";


    public static final String deposit_Tiles = "Deposit Tiles Section in My Relation Page#xpath=//div[@class='deposit_found_title']/../../..";

    /*
    common xpath
     */

    public static final String relationship_common = "//div[@class='Relationship_Details']//div[@class='a_sdprelation_title']/p";



    /*
    Methods
     */

    public void verifySDPRelationShipDetails(String subTitleText, String labelValuesWithHash, String extra) {
        try {
            String title = "" + subTitleText + " Sub Title#xpath=//div[@class='Relationship_Details']/descendant::div[@class='a_sdprelation_title']/p[normalize-space(text())='" + subTitleText.trim() + "']";
            Boolean flag = verifyElementIsDisplayedUsingLocator(title);
            if (flag) {
                String[] values = labelValuesWithHash.split("#");
                for (int i = 0; i < values.length; i++) {
                    String value = values[i];
                    verifyValueUsingLabel(getCommonPathOfLocator(title) + "/../following-sibling::div/ul/li/p", value, "/following-sibling::strong", "");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Relationship Details for " + subTitleText + " with " + labelValuesWithHash + ". Exception: " + e.getClass());
        }
    }

    public void verifySDPRelationShipBankDetails(String subTitleText, String labelValuesWithHash, String extra) {
        try {
            String title = "SDP Bank Details " + subTitleText + " Sub Title#xpath=//div[@class='Relationship_Details']/descendant::div[@class='a_sdprelation_title']/p[normalize-space(text())='Bank Details']/../following-sibling::div/p[normalize-space(text())='"+subTitleText+"']";
            Boolean flag = verifyElementIsDisplayedUsingLocator(title);
            if (flag) {
                String[] values = labelValuesWithHash.split("#");
                for (int i = 0; i < values.length; i++) {
                    String value = values[i];
                    verifyValueUsingLabel(getCommonPathOfLocator(title) + "/../following-sibling::div/p", value, "/following-sibling::strong", "");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify SDP Relationship Bank Details " + subTitleText + " with " + labelValuesWithHash + ". Exception: " + e.getClass());
        }
    }
    public void verifySDPHomePage() {
        try {
             String deposit_Tiles = "Deposit Tiles Section in My Relation Page#xpath=//div[@class='deposit_found_title']/../../..";
             String sdp_Tile = "SDP Tile in My Relation Page#xpath=(//strong[normalize-space(text())='SYSTEMATIC DEPOSIT PLAN- SMS']/ancestor::div[@class='deposit_found_data'])[1]";

            verifyFieldsDisplayedUsingLocator(SDPServicesPage.section_MyRelations);
            clickOnIfDisplayed(SDPServicesPage.viewAll_Homepage);
            waitForPageToLoad();
            verifyRedirectionURLIfContains("https://experia-uat.bajajfinserv.in/MyRelation/LoanServices/MyRelation");
            clickOn(depositTab_MyRelations);
            verifyFieldsDisplayedUsingLocator(deposit_Tiles);
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify SDP Home Page . Exception: " + e.getClass());
        }
    }

    public void verifyAmountOfServicesSDP(String amountText, String extra) {
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
                    if (amountValue.startsWith("Rs. ")&&amountValue.trim().endsWith("/month")) {
                        testStepPassed(amountText + " is Displayed with Prefix Text of 'Rs. ' And end with '/month' successfully");
                    } else {
                        stepFailed(amountText + " is Not Displayed with Prefix Text of 'Rs. ' and endwith '/month' ");
                    }
                    verifyAmountWithRsSDP(amountText, amountValue);
                } else {
                    stepFailed(getRefOfXpath(amountWithRs + " is Not displayed"));
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Amount of Services. Exception: " + e.getClass());
        }
    }

    public void verifyAmountWithRsSDP(String label, String valueAmount) {
        try {
            String[] split = valueAmount.split("Rs. ")[1].split("/");
            String value = split[0].replaceAll(",", "");
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
            testStepFailed("Failed in verify " + label + " Amount with Rs. and Digits/Months - " + valueAmount + ". Exception: " + e.getClass());
        }
    }

    public void verifyAmountWithRsAndAsterick(String label, String valueAmount) {
        try {
            String[] split = valueAmount.split("Rs. ");
            String value = split[1].replaceAll(",", "");
            Boolean s = true;
            if (valueAmount.trim().startsWith("Rs. ")) {
                testStepPassed("Amount starts With Rs. verified successfully");
            } else {
                stepFailed("Amount is not starts With Rs. ");
            }
            if (valueAmount.trim().endsWith("*")) {
testStepPassed("Amount ends with * verified successfully");
            } else {
                stepFailed("Amount is not ends with *");
            }
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
            testStepFailed("Failed in verify " + label + " Amount with Rs. and Digits with * - " + valueAmount + ". Exception: " + e.getClass());
        }
    }

    public void verifyDigitsWithPercentageWithAsterick(String label, String valueAmount) {
        try {
            if (valueAmount.trim().endsWith("%*")) {
                testStepPassed(label + " is end with %* symbol verified successfully");
            } else {
                stepFailed(label + " is end with %* symbol is not verified");
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
            testStepFailed("Failed in verify " + label + " digits with Percentage and * - " + valueAmount + ". Exception: " + e.getClass());
        }
    }

    public void verifyValueisDateFormatWithAsterick(String label, String value, String format, String extra) {
        try {
            if (value.trim().endsWith("*")) {
                testStepPassed("Date ends with * verified successfully");
            } else {
                stepFailed("Date is not ends with *");
            }
value=value.replaceAll("\\*","").trim();
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

    public void verifyStopSdpPopupBasedOnDateRange() {
        try {
            String date = generateTodayDate("dd");
            int day = Integer.parseInt(date);
            if (day <= 19) {
                verifyFieldsDisplayedUsingTextUsingForLoop("All your future SDP payments will be stopped. Do you still want to proceed?","text","");
            } else {
                verifyFieldsDisplayedUsingTextUsingForLoop("Request applied on or after 20th of the month the all your future SDP payments will be stopped from the next month.","text","");
                verifyFieldsDisplayedUsingTextUsingForLoop("Eg. SDP stopped on 21 "+generateTodayDate("MMMM")+" will take effect from March month instalment.","text","");
                verifyFieldsDisplayedUsingTextUsingForLoop("Do you still want to proceed?","text","");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("failed in verify stop SDP popup text based ion date range. Exception: "+e.getClass());
        }
    }

    public void verifyOtpSentYourMobNumberMsg() {
        try {
String mobSent="An OTP has been sent on your registered Mobile Number +91 XXXXXX"+mobileNumber.substring(6)+" Message#xpath=//p[normalize-space(text())='An OTP has been sent on your registered Mobile Number']/i[normalize-space(text())='+91 XXXXXX"+ApplicationKeywords.mobileNumber.substring(6)+"']";
            if (isElementDisplayed(mobSent)) {
manualScreenshot(getRefOfXpath(mobSent)+" is Displayed Successfully");
            } else {
                testStepFailed(getRefOfXpath(mobSent)+" is Not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
