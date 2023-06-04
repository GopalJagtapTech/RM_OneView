package PageObjects;

import base.ApplicationKeywords;

public class B2BServicesPage extends ApplicationKeywords {

    /*
    XPaths
     */

    public static final String viewDetail_Active = "View Detail for Active in B2B Services#xpath=//a[@class='view_detail']";
    public static final String viewDetail_Closed = "View Detail for Closed in B2B Services#xpath=(//a[@class='view_detail'])[1]";
//    public static final String logo_ActiveB2B = "Product Logo for Active in B2B Services#xpath=//img[@src='https://experia-uat.bajajfinserv.in/UI/images/doctor.svg']";
//    public static final String logo_ClosedB2B = "Product Logo for Closed in B2B Services#xpath=//img[@src='https://experia-uat.bajajfinserv.in/UI/images/doctor.svg']";
    public static final String logo_ActiveB2B = "Product Logo for Active in B2B Services#xpath=//img[contains(@src,'/images/doctor.svg')]";
    public static final String logo_ClosedB2B = "Product Logo for Closed in B2B Services#xpath=//img[contains(@src,'/images/doctor.svg')]";
    public static final String regBankAccount_BankDetails = "Registered Bank Account in Bank Details#xpath=//div[@class='Relationship_points']//p[normalize-space()='Registered Bank Account']/following-sibling::strong";
    public static final String button_ChangeBankAccount = "Change Bank Account Button in Bank Details#xpath=//a[@id='ChangeBankDetails']";
    public static final String pao_B2BServices = "Pre Approved Offers in Services Page#xpath=//div[normalize-space(text()='Pre-approved for you')]//div[@class='offersfore_you']";


    public static final String view_statement = "View statement in LAFD Page#xpath=//a[@id='lnkViewStatement']//p[normalize-space()='View Statements']";
    public static final String faqs_b2bServices = "FAQs in B2B Services Page#xpath=//strong[normalize-space()='Frequently asked questions']";
    public static final String checkNow_b2bServices = "Check Now in Cibil Score#xpath=//div[@class='cibilscore']//i[@id='cibilCheck']";
    public static final String viewAll_b2bServices = "View All in Home Page#xpath=//div[@class='my_relation']//a[contains(text(),'View All')]";
    public static final String loanTile_b2bServices = "Loan Tile in LAFD Services in My Relations Page#xpath=(//div[@class='deposit_found_data Loanstest'])[1]";
    public static final String listLoanTiles_b2bServices = "All the Loan Tiles in B2B Services#xpath=//div[@class='deposit_found_box']//a";
    public static final String paymentspopup_b2bServices = "Payments Popup in Services#xpath=//strong[normalize-space(text())='Payment Options']";


    public static final String lan_Servicepage = "LAN in Service Page#xpath=//div[@class='fixed_deposit_text']/p";
    public static final String active_LoansandInstaEmiCard = "Loans and Insta Emi Card Default Tab#xpath=//li[@class='loantabs active']";


//   public static final String section_MyRelations = "MyRelations Section for LAFD Services#xpath=//div[@class='rel_item_box']/../../..";





    /*
    Methods
     */

    public void verifyB2BServicePage() {
        try {
            String lds = "Loan Details Section in B2B Service Page #xpath=//div[@class='fixed_deposit_section']";
            String rds = "Relationship Details Section in B2B Service Page #xpath=//div[@class='Relationship_Details']";
            String qa = "Quick Actions Section#xpath=//p[normalize-space()='Quick Actions']/../../../..";

            verifyFieldsDisplayedUsingLocator(lds);
            verifyFieldsDisplayedUsingLocator(rds);
            verifyLocatorIsPresentInRightSideOfPage(qa);
            scrollToWebElement(B2BServicesPage.faqs_b2bServices);
            verifyFieldsDisplayedUsingLocator(B2BServicesPage.faqs_b2bServices);
            scrollToWebElement(B2BServicesPage.checkNow_b2bServices);
            verifyFieldsDisplayedUsingLocator(B2BServicesPage.checkNow_b2bServices);

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in Verify B2BServicePage . Exception: " + e.getClass());

        }
    }

    public void verifyPersonalLoanAvailNow() {
        try {
            String popup_text = "Popup msg#xpath=(//strong[normalize-space(text())='Important']/preceding::a/following-sibling::p//span[@id='spnMessage_OW'])[1]";
            String amount_Tile = "Popup msg#xpath=(//p[normalize-space(text())='Personal Loan']/parent::div[@class='loantitle']/following-sibling::div[@class='upto_Ru']/child::p)[1]";
            String pao_B2BServices = "Pre Approved Offers in Services Page#xpath=//div[normalize-space(text()='Pre-approved for you')]//div[@class='offersfore_you']";

            String tile1 = getText(amount_Tile);
            String[] split3 = tile1.split("Rs. ");
            int amt1 = Integer.parseInt(split3[1].replaceAll(",", "").trim());
            if (isElementDisplayed(pao_B2BServices)) {
                clickOnButtonUsingTextUsingForLoop("Avail Now");
                verifyFieldsDisplayedUsingTextUsingForLoop("Important", "", "");
                verifyElementIsDisplayedUsingLocator(popup_text);
                testStepInfo(getText(popup_text));
                verifyFieldsDisplayedUsingTextUsingForLoop("I accept the","","");
                verifyFieldsDisplayedUsingTextUsingForLoop("Terms & Conditions","button","");
                String text = getText(popup_text);
                String[] split1 = text.split("Rs. ");
                String[] split2 = split1[1].split(" ");
//                double amt2=split2[0].trim();
                int amt2 = Integer.parseInt(split2[0].replaceAll(",", "").trim());
                if (amt1==amt2){
                    testStepPassed("Amount on the tile: "+amt1+" and Amount on Popup: "+amt1+" are Equal");
                }else {
                    testStepFailed("Both the Amounts are not equal");
                }
                verifyAvailNowTermsAndConditions();

            } else {
                testStepFailed(getRefOfXpath(pao_B2BServices) + "is not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in Verify Personal Loan Avail Now . Exception: " + e.getClass());

        }
    }

    public void verifyAvailNowTermsAndConditions() {
        try {
            String checkBox = "Check Box in Avail Now Popup#xpath=(//label[@for='chkTerms1_OW'])[1]";
            clickOnButtonUsingTextUsingForLoop("Terms & Conditions");
            verifyRedirectioninNewTab("https://experia-uat.bajajfinserv.in/UI/docs/BLTC.PDF","");
            clickOn(checkBox);
            clickOnButtonUsingTextUsingForLoop("AVAIL NOW");
            verifyRedirectionInCommon("https://uat-oneweb.bajajfinserv.in/MyAccountLoanServices/Loans/Nonflexiloan","");
//            verifyRedirectionURLIfContains("https://online-personal-loan.bajajfinserv.in");

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in Verify AvailNow Terms And Conditions . Exception: " + e.getClass());

        }
    }

    public void verifyFeesCharges() {
        try {
            String btn_sliderNext = "Next Slider Button#xpath=//div[contains(@class,'RelationshipBox')]/button[@aria-label='Next']";
            String title_FessAndCharges = "Fees And Charges Title#xpath=//div[@class='Relationship_Details']/descendant::div[@class='Relationshipbox_title']/strong[normalize-space(text())='Fees and Charges']";
            String common = "Fees And Charges Labels Common#xpath=//div[@class='Relationship_Details']/descendant::div[@class='Relationshipbox_title']/strong[normalize-space(text())='Fees and Charges']/../following-sibling::div/ul/li";
            String btn_ShowMore = "Show More Button#xpath=//div[@class='Relationship_Details']/descendant::div[@class='Relationshipbox_title']/strong[normalize-space(text())='Fees and Charges']/../following-sibling::div/descendant::*[contains(text(),'Show More')]";
            if (isElementDisplayed(btn_sliderNext)) {
                clickOn(btn_sliderNext);
            }
            Boolean flag = verifyElementIsDisplayedUsingLocator(title_FessAndCharges);
            if (flag) {
                manualScreenshot(getRefOfXpath(title_FessAndCharges) + " is Displayed successfully");
                if (sizeOfLocator(common) > 5) {
                    if (isElementDisplayed(btn_ShowMore)) {
                        manualScreenshot("Show More Button is showing for more than 5 fees and Charges successfully");
                        clickOn(btn_ShowMore);
                    } else {
                        testStepFailed("Show More Button is not showing for more than 5 fees and Charges");
                    }
                } else {
                    if (!isElementDisplayed(btn_ShowMore)) {
                        manualScreenshot("Show More Button is not showing for less than 6 fees and Charges successfully");
                    } else {
                        testStepFailed("Show More Button is showing for less than 6 fees and Charges");
                    }
                }
                for (int i = 1; i <= sizeOfLocator(common); i++) {
                    String label = "Fees And Charges Label " + i + "#xpath=(//div[@class='Relationship_Details']/descendant::div[@class='Relationshipbox_title']/strong[normalize-space(text())='Fees and Charges']/../following-sibling::div/ul/li/p)[" + i + "]";
                    String value = "Fees And Charges Value " + i + "#xpath=(//div[@class='Relationship_Details']/descendant::div[@class='Relationshipbox_title']/strong[normalize-space(text())='Fees and Charges']/../following-sibling::div/ul/li/strong)[" + i + "]";
                    if (isElementDisplayed(label) && isElementDisplayed(value)) {
                        manualScreenshot(getText(label) + ": " + getText(value) + " is Displayed successfully");
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Fess and Charges. Exception: " + e.getClass());
        }
    }


}
