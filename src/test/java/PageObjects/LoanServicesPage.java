package PageObjects;

import base.ApplicationKeywords;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.remote.DesiredCapabilities;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

public class LoanServicesPage extends ApplicationKeywords {

        /*
Common Xpaths
     */
        public static final String twl_SubTitle_Common = "//div[@class='Relationship_Details']/descendant::div[@class='Relationshipbox_title']/strong";
    public static final String twl_JointAccount_Common = "//div[@class='Relationship_Details']/descendant::div[@class='Relationshipbox_title']/strong[normalize-space(text())='Joint Account Holder Details']/../following-sibling::div/descendant::strong";
        /*
    Xpaths
     */


//    public static final String faqs_LoanServices = "FAQs in Loan Services Page#xpath=//strong[normalize-space(text())='Frequently Asked questions']/ancestor::a[@class='deposit_found_text']";
    public static final String faqs_LoanServices = "FAQs in Loan Services Page#xpath=//strong[normalize-space(text())='Frequently asked questions']/ancestor::a[@class='deposit_found_text']|//strong[normalize-space(text())='Frequently Asked Questions']/ancestor::a[@class='deposit_found_text']";
    public static final String checkNow_LoanServices = "Check Now in Cibil Score#xpath=//div[@class='cibilscore']//i[@id='cibilCheck']";
    public static final String rightSlider_RelationshipDetails = "Right Slider Relationship Details#xpath=//div[@class='Relationship_Details']//button[@aria-label='Next']";
    public static final String regBankAccount_BankDetails = "Registered Bank Account in Bank Details#xpath=//div[@class='Relationship_points']//p[normalize-space()='Registered Bank Account']/following-sibling::strong";
    public static final String logo_ActiveTermLoan = "Active Loan Logo#xpath=//div[@class='fixed_deposit_section']//img[contains(@src,'/images/doctor.svg')]";
    public static final String logo_ClosedTermLoan = "Closed Loan Logo#xpath=//div[@class='fixed_deposit_section']//img[@src='https://experia-uat.bajajfinserv.in/UI/images/doctor.svg']";
    public static final String logo_LoanSection = "Loan Product Logo#xpath=//div[@class='fixed_deposit_section']//img[@src='https://experia-uat.bajajfinserv.in/UI/images/doctor.svg']";
    public static final String infotip_FlexiLoan = "Info tip_Flexi Loan#xpath=//div[@class='infotext']//img[contains(@src,'/images/icons-info.svg')]";
    public static final String viewDetails_ClosedTermLoan = "View Details for Closed Term Loan#xpath=//div[@class='rel_item_box']//a[normalize-space(text())='View Details']";
    public static final String section_FAQS = "FAQS section in FAQ Page#xpath=//strong[normalize-space()='Choose a category you need help with']";
//    public static final String section_CibiliScore = "Cibil Score Section in Services Page#xpath=//strong[normalize-space()='Your CIBIL Score']/ancestor::div[@class='cibilscore']";
    public static final String section_CibiliScore = "Cibil Score Section in Services Page#xpath=//strong[normalize-space()='Check your CIBIL Score']/ancestor::div[@class='cibilscore']";
    public static final String field_Geturcibil = "Get Your Cibil Section in Cibil Page#xpath=//a[normalize-space(text())='GET YOUR CIBIL SCORE']/ancestor::nav[@class='main-nav float-right d-none d-lg-block']";
    public static final String preApprovedOffers = "Pre Approved Offers section in Service Page#xpath=//p[normalize-space()='Pre-approved offers for you']";
//    public static final String preApprovedOffers = "Pre Approved Offers section in Service Page#xpath=//p[normalize-space()='Pre-approved offers for you']/ancestor::div[@class='offersfore_you']";

    public static final String logo_TwoWheelerLoan = "Two Wheeler Loan Logo#xpath=//div[@class='fixed_deposit_section']//img[contains(@src,'two-wheeler-loan-1')]";
    public static final String logo_GoldLoan = "Gold Loan Logo#xpath=//div[@class='fixed_deposit_section']//img[contains(@src,'/image/bajajfinancestage/relationcardicon')]";

    public static final String sectionName_Drawdown_FlexiLoan = "Flexi Loan Draw down section name#xpath=//strong[normalize-space(text())='Relationship Details']/../following-sibling::div//strong[normalize-space(text())='Partpayment Drawdown Summary']";
    public static final String noteText_Flexiloan_Drawdown = "Flexi Loan Draw down section note Text#xpath=//strong[normalize-space(text())='Relationship Details']/../following-sibling::div//p[normalize-space(text())='Note: Here you can view your last 5 drawdown and part pre-payment transactions. To view information related to other transactions, please refer your Statement of Account(SOA) in View Statements section.']";
    /*
    Methods
     */

    public void verifyThingsYouCanDoFlexi(){
        try {
            String tycd="Things You Can Do Section#xpath=//p[normalize-space()='Things you can do']/ancestor::div[@class='Superstores loans-right-section rhs_inner_Fixed']";
            String rhs="Sections in RHS#xpath=//div[@class='storepart']//p";
            verifyLocatorIsPresentInRightSideOfPage(tycd);
            verifyTextOptionsIsDisplayedUsingCommonXpath(rhs,"Drawdown# Make Payments#View Statements");

        }catch (Exception e){
            e.printStackTrace();
            testStepFailed("Failed in Verify Things You Can Do Flexi . Exception: " + e.getClass());

        }}

    public void verifyThingsYouCanDoTerm(){
        try {
            String tycd="Things You Can Do Section#xpath=//p[normalize-space()='Things you can do']/ancestor::div[@class='Superstores loans-right-section rhs_inner_Fixed']";
            String rhs="Sections in RHS#xpath=//div[@class='storepart']//p";
            verifyLocatorIsPresentInRightSideOfPage(tycd);
            verifyTextOptionsIsDisplayedUsingCommonXpath(rhs,"Make Payments#View Statements");

        }catch (Exception e){
            e.printStackTrace();
            testStepFailed("Failed in Verify Things You Can Do Term . Exception: " + e.getClass());

        }
    }
    public void verifyViewStatements(){
        try {
            String vs="View Statements#xpath=//p[normalize-space()='View Statements']";
            String docs="Documents in View Statements Page#xpath=//div[@class='j_doc_loans_tab_BG']//div[@class='j_doc_border']";

                clickOn(vs);
                waitForPageToLoad();
                verifyRedirectionURLIfContains("https://experia-uat.bajajfinserv.in/DocumentCenter/Customer/DocumentCenter/docCenter_LoanDetails");

        }catch (Exception e){
            e.printStackTrace();
            testStepFailed("Failed in Verify View Statements . Exception: " + e.getClass());

        }
    }
//    public void verifyViewStatementPageContents(){
//        try {
//            String docs="Documents in View Statements Page#xpath=//div[@class='j_doc_loans_tab_BG']//div[@class='j_doc_border']";
//
//                verifyValueUsingLabel("//p","Loan Account Number:","/span","");
//            int size = sizeOfLocator(docs);
//            for (int i = 1; i <=size ; i++) {
//                String docs1="Documents in View Statements Page#xpath=(//div[@class='j_doc_loans_tab_BG']//div[@class='j_doc_border'])["+i+"]";
//                String downloadcta="Download CTA for Documents in View Statements Page#xpath=(//div[@class='j_doc_loans_tab_BG']//div[@class='j_doc_border']//img[@class='dc_d'])["+i+"]";
//                verifyFieldsDisplayedUsingLocator(docs1);
//                verifyFieldsDisplayedUsingLocator(downloadcta);
//            }
//
//        }catch (Exception e){
//            e.printStackTrace();
//            testStepFailed("Failed in Verify View Statement Page Contents . Exception: " + e.getClass());
//
//        }
//    }

    public void verifyViewStatementPageContents(){
        try {
            String docs="Documents in View Statements Page#xpath=//div[@class='j_doc_loans_tab_BG']//div[@class='j_doc_border']";

            verifyValueUsingLabel("//p","Loan Account Number:","/span","");
            int size = sizeOfLocator(docs);
            for (int i = 1; i <=size ; i++) {
                String docs1="Documents in View Statements Page#xpath=(//div[@class='j_doc_loans_tab_BG']//div[@class='j_doc_border'])["+i+"]";
                String docname="Doc Name: #xpath=(//div[@class='j_doc_loans_tab_BG']//div[@class='j_doc_border']/descendant::p)["+i+"]";
                String downloadcta="Download CTA for Documents in View Statements Page#xpath=(//div[@class='j_doc_loans_tab_BG']//div[@class='j_doc_border']//img[@class='dc_d'])["+i+"]";
                testStepInfo(getRefOfXpath(docname)+getText(docname));
                verifyFieldsDisplayedUsingLocator(docs1);
                verifyFieldsDisplayedUsingLocator(downloadcta);
            }

        }catch (Exception e){
            e.printStackTrace();
            testStepFailed("Failed in Verify View Statement Page Contents . Exception: " + e.getClass());

        }
    }

    public void verifyDownloadCTAInViewStatements(String docname, String filename, String extra){
        try {
            String loc=""+docname+" document from View Statements#xpath=//p[text()='"+docname+"']/../following-sibling::img";
                if (isElementDisplayed(loc)){
                    manualScreenshot(getRefOfXpath(loc)+"is Displayed Successfully");
                    deleteFileIfPresentFromLocalMachineWithoutFail(filename);
                    clickOn(loc);
                    waitTime(20);
                    verifyDownLoadAndDeleteLatestFileNameFromLocalMachine(filename);

                }
                else {
                    testStepFailed("Failed to download the document from View Statements");
                }

        }catch (Exception e){
            e.printStackTrace();
            testStepFailed("Failed in Verify Download CTA In View Statements . Exception: " + e.getClass());

        }
    }
    public void verifyLoanServicePage(){
        try {
            String lds="Loan Details Section in LoanService Page #xpath=//div[@class='fixed_deposit_section']";
            String rds="Relationship Details Section in LoanService Page #xpath=//div[@class='Relationship_Details']";
            String tycd="Quick Actions Section#xpath=//p[normalize-space()='Quick Actions']";

            verifyFieldsDisplayedUsingLocator(lds);
            verifyFieldsDisplayedUsingLocator(rds);
            verifyTextOptionsIsDisplayedUsingCommonXpath("//div[@class='Relationshipbox_title']//strong","Loan Details#Insurance Details#Registered Repayment Bank Details");
//            verifyTextOptionsIsDisplayedUsingCommonXpath("//div[@class='Relationshipbox_title']//strong","Loan Details#Insurance Details#Registered Repayment Bank Details#Fees and Charges");
            verifyFieldsDisplayedUsingLocator(LoanServicesPage.faqs_LoanServices);
            verifyFieldsDisplayedUsingLocator(LoanServicesPage.checkNow_LoanServices);
            verifyFieldsDisplayedUsingLocator(tycd);


        }catch (Exception e){
            e.printStackTrace();
            testStepFailed("Failed in Verify Download CTA In View Statements . Exception: " + e.getClass());

        }
    }

    public void verifyFlexiLoanServicePage(){
        try {
            String lds="Loan Details Section in LoanService Page #xpath=//div[@class='fixed_deposit_section']";
            String rds="Relationship Details Section in LoanService Page #xpath=//div[@class='Relationship_Details']";
            String tycd="Quick Actions Section#xpath=//p[normalize-space()='Quick Actions']";

            verifyFieldsDisplayedUsingLocator(lds);
            verifyFieldsDisplayedUsingLocator(rds);
//            verifyTextOptionsIsDisplayedUsingCommonXpath("//div[@class='Relationshipbox_title']//strong","Loan Details#Insurance Details#Registered Repayment Bank Details");
            verifyTextOptionsIsDisplayedUsingCommonXpath("//div[@class='Relationshipbox_title']//strong","Loan Details#Insurance Details#Registered Repayment Bank Details#Fees and Charges");
            verifyFieldsDisplayedUsingLocator(LoanServicesPage.faqs_LoanServices);
            verifyFieldsDisplayedUsingLocator(LoanServicesPage.checkNow_LoanServices);
            verifyFieldsDisplayedUsingLocator(tycd);


        }catch (Exception e){
            e.printStackTrace();
            testStepFailed("Failed in Verify Download CTA In View Statements . Exception: " + e.getClass());

        }
    }


    public void verifyLoanServiceWithFeesAndCharges(){
        try {
            String lds="Loan Details Section in LoanService Page #xpath=//div[@class='fixed_deposit_section']";
            String rds="Relationship Details Section in LoanService Page #xpath=//div[@class='Relationship_Details']";
            String tycd="Quick Actions Section#xpath=//p[normalize-space()='Quick Actions']";

            verifyFieldsDisplayedUsingLocator(lds);
            verifyFieldsDisplayedUsingLocator(rds);
            verifyTextOptionsIsDisplayedUsingCommonXpath("//div[@class='Relationshipbox_title']//strong","Loan Details#Registered Repayment Bank Details#Fees and Charges");
            verifyFieldsDisplayedUsingLocator(LoanServicesPage.faqs_LoanServices);
            verifyFieldsDisplayedUsingLocator(LoanServicesPage.checkNow_LoanServices);
            verifyFieldsDisplayedUsingLocator(tycd);


        }catch (Exception e){
            e.printStackTrace();
            testStepFailed("Failed in Verify Download CTA In View Statements . Exception: " + e.getClass());

        }
    }

    public void verifyInsuranceSecondPolicy(){
        try {
            String arrow="Policy 2 Arrow in Insurance #xpath=(//div[@class='Relationship_points']//div[contains(@class,'First_Joint')]//img)[2]";
                if (isElementDisplayed(arrow)){
                    clickOn(arrow);
                }
                else {testStepFailed(getRefOfXpath(arrow)+"is not present");}

        }catch (Exception e){
            e.printStackTrace();
            testStepFailed("Failed in Verify Insurance Second Policy . Exception: " + e.getClass());

        }
    }

    public void verifyCollapseAccordianIcon() {
        try {
            String accordianIcon1="Insurance Details policy 1 Accordian Icon#xpath=//div[@class='Relationship_points']//div[contains(@class,'First_Joint')]//strong[normalize-space(text())='Policy 1 Details']/following-sibling::img[contains(@src,'/images/dropdown.svg')]";
            String hide1="Insurance Details policy 1 hide#xpath=//div[@class='Relationship_points']//div[contains(@class,'First_Joint')]//strong[normalize-space(text())='Policy 1 Details']/../following-sibling::ul[contains(@class,'paddtop') and (contains(@style,'none'))]";
//            String display1="Insurance Details policy 1 Display#xpath=//div[@class='Relationship_points']//div[contains(@class,'First_Joint')]//strong[normalize-space(text())='Policy 1 Details']/../following-sibling::ul[contains(@class,'paddtop') and @style='display: block;']";
            String display1="Insurance Details policy 1 Display#xpath=//div[@class='Relationship_points']//div[contains(@class,'First_Joint')]//strong[normalize-space(text())='Policy 1 Details']/../following-sibling::ul[contains(@class,'paddtop') and (not(contains(@style,'none')))]";
            String accordianIcon2="Insurance Details policy 2 Accordian Icon#xpath=//div[@class='Relationship_points']//div[contains(@class,'First_Joint')]//strong[normalize-space(text())='Policy 2 Details']/following-sibling::img[contains(@src,'/images/dropdown.svg')]";
            String hide2="Insurance Details policy 2 Hide#xpath=//div[@class='Relationship_points']//div[contains(@class,'First_Joint')]//strong[normalize-space(text())='Policy 2 Details']/../following-sibling::ul[contains(@class,'paddtop') and (contains(@style,'none'))]";
            String display2="Insurance Details policy 2 display#xpath=//div[@class='Relationship_points']//div[contains(@class,'First_Joint')]//strong[normalize-space(text())='Policy 2 Details']/../following-sibling::ul[contains(@class,'paddtop') and (not(contains(@style,'none')))]";

            String countPolicies="Insurance Details policies Count#xpath=//div[contains(@class,'First_Joint')]";
            if (sizeOfLocator(countPolicies) > 1) {
                if (isElementDisplayed(accordianIcon1) && isElementPresent(hide1)) {
                    manualScreenshot("Policy 1 Details are hidden successfully");
                    clickOn(accordianIcon1);
                    if (isElementDisplayed(display1)) {
                        manualScreenshot("Policy 1 is Displayed after Clicking policy 1 Accordian icon successfully");
                    } else {
                        testStepFailed("Policy 1 is not Displayed after Clicking policy 1 Accordian icon");
                    }
                    if (isElementPresent(hide2)) {
                        manualScreenshot("Policy 2 Details are Collapsed After clicking Policy 1 Accordian Icon successfully");
                    }
                    clickOn(accordianIcon1);
                    if (isElementPresent(hide1) && isElementPresent(hide2)) {
                        manualScreenshot("Both the Policies are collapsed at same time verified successfully");
                    } else {
                        testStepFailed("Both Policies are not hidden at a same time");
                    }
                } else {
                    testStepFailed("Policy 1 Deatils are not hidden");
                }
            } else {
                testStepFailed("There is no two policies in this customer Id");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Collapse Accordian Icon. Exception: "+e.getClass());
        }
    }

    public void verifyFeesCharges() {
        try {
            String btn_sliderNext="Next Slider Button#xpath=//div[contains(@class,'RelationshipBox')]/button[@aria-label='Next']";
            String title_FessAndCharges="Fees And Charges Title#xpath=//div[@class='Relationship_Details']/descendant::div[@class='Relationshipbox_title']/strong[normalize-space(text())='Fees and Charges']";
            String common="Fees And Charges Labels Common#xpath=//div[@class='Relationship_Details']/descendant::div[@class='Relationshipbox_title']/strong[normalize-space(text())='Fees and Charges']/../following-sibling::div/ul/li";
            String btn_ShowMore="Show More Button#xpath=//div[@class='Relationship_Details']/descendant::div[@class='Relationshipbox_title']/strong[normalize-space(text())='Fees and Charges']/../following-sibling::div/descendant::*[contains(text(),'Show More')]";
            if (isElementDisplayed(btn_sliderNext)) {
                clickOn(btn_sliderNext);
            }
            Boolean flag = verifyElementIsDisplayedUsingLocator(title_FessAndCharges);
            if (flag) {
                manualScreenshot(getRefOfXpath(title_FessAndCharges) + " is Displayed successfully");
                if(sizeOfLocator(common)>5){
                    if (isElementDisplayed(btn_ShowMore)) {
                        manualScreenshot("Show More Button is showing for more than 5 fees and Charges successfully");
                        clickOn(btn_ShowMore);
                    } else {
                        testStepFailed("Show More Button is not showing for more than 5 fees and Charges");
                    }
                }else{
                    if (!isElementDisplayed(btn_ShowMore)) {
                        manualScreenshot("Show More Button is not showing for less than 6 fees and Charges successfully");
                    } else {
                        testStepFailed("Show More Button is showing for less than 6 fees and Charges");
                    }
                }
                for (int i = 1; i <=sizeOfLocator(common); i++) {
                    String label="Fees And Charges Label "+i+"#xpath=(//div[@class='Relationship_Details']/descendant::div[@class='Relationshipbox_title']/strong[normalize-space(text())='Fees and Charges']/../following-sibling::div/ul/li/p)["+i+"]";
                    String value="Fees And Charges Value "+i+"#xpath=(//div[@class='Relationship_Details']/descendant::div[@class='Relationshipbox_title']/strong[normalize-space(text())='Fees and Charges']/../following-sibling::div/ul/li/strong)["+i+"]";
                    if (isElementDisplayed(label) && isElementDisplayed(value)) {
                        manualScreenshot(getText(label)+": "+getText(value)+" is Displayed successfully");
                    }
                }
            }


        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Fess and Charges. Exception: "+e.getClass());
        }
    }


public void verifyBankAccountMaskedFormatInLoan() {
    try {
        String text = getText(LoanServicesPage.regBankAccount_BankDetails).trim();
        if (!(text.charAt(text.length()-1) =='*')&&!(text.charAt(text.length()-2) =='*')&&!(text.charAt(text.length()-3) =='*')&&!(text.charAt(text.length()-4) =='*')) {
            manualScreenshot("Last 4 digits in bank account Unmasked format verified successfully");
        } else {
            testStepFailed("Last 4 digits in bank account Unmasked format is not verified");
        }
        String text2 = text.substring(0, text.length() - 4);
        String mask="";
        for (int i = 1; i <=text2.length() ; i++) {
            mask=mask+"*";
        }

        if (text2.equalsIgnoreCase(mask)) {
            manualScreenshot("Other than Last 4 digits in bank account masked format verified successfully");
        } else {
            testStepFailed("Other than Last 4 digits in bank account masked format is not verified");
        }
    } catch (Exception e) {
        e.printStackTrace();
        testStepFailed("Failed in verify bank account in Lan. Exception: "+e.getClass());
    }
}
///////////////////////////////////// Neelakandan ///////////////////////////////////
public void verifyServicePage(String name,String relationshipLabels,String commonPath,String extra){
    try {
        String topSection="";
                String relationshipDetailsSection="";
                String rhsSection="";
        if (name.equalsIgnoreCase("Loan Services")||name.equalsIgnoreCase("Two Wheeler Loan Services")||name.equalsIgnoreCase("Gold Loan Services")||name.equalsIgnoreCase("LAS Services")) {
            topSection="Loan Details Section in LoanService Page #xpath=//div[@class='fixed_deposit_section']";
            relationshipDetailsSection="Relationship Details Section in LoanService Page #xpath=//div[@class='Relationship_Details']";
            rhsSection="Quick Actions Section#xpath=//p[normalize-space()='Quick Actions']";
        }

        verifyFieldsDisplayedUsingLocator(topSection);
        verifyFieldsDisplayedUsingLocator(relationshipDetailsSection);

        verifyTextOptionsIsDisplayedUsingCommonXpath(commonPath,relationshipLabels);
//            verifyTextOptionsIsDisplayedUsingCommonXpath("//div[@class='Relationshipbox_title']//strong","Loan Details#Insurance Details#Registered Repayment Bank Details#Fees and Charges");
        verifyFieldsDisplayedUsingLocator(LoanServicesPage.faqs_LoanServices);
        verifyFieldsDisplayedUsingLocator(LoanServicesPage.checkNow_LoanServices);
        verifyFieldsDisplayedUsingLocator(rhsSection);
    }catch (Exception e){
        e.printStackTrace();
        testStepFailed("Failed in Verify Service Page. Exception: " + e.getClass());

    }
}

    public List<String> verifyUpperSectionInServices(String logoLocator, String amountText, String labelWithHash, String nudgeText, String hexValue, String colorName, String cssValue, String LANText, Boolean emiDueDate, String emiDueText,String extra) {
        List<String> list = new ArrayList<>();
        try {
            String name = "Name of Product#xpath=//div[@class='fixed_deposit_text']/strong";
            String nudgeIcon = "" + nudgeText + " Nudge#xpath=//div[@class='fixed_deposit_text']/strong/i[normalize-space(text())='" + nudgeText + "']";
            String number = "Number#xpath=//div[@class='fixed_deposit_text']/p";
            String label_amount = "" + amountText + "#xpath=//div[@class='fixed_deposit_amount']/p[normalize-space(text())='" + amountText + "']";
            String amount = "" + amountText + " Value#xpath=//div[@class='fixed_deposit_amount']/p[normalize-space(text())='" + amountText + "']/following-sibling::strong";
            String dueDate ="";
            if (emiDueText.contains("Last")) {
                dueDate = "Due Date for Next Emi#xpath=//div[@class='fixed_points_one']/p[normalize-space(text())='Last EMI Amount']/following-sibling::i[contains(text(),'Due Date')]";
            } else if(emiDueText.toLowerCase().contains("next")){
                dueDate = "Due Date for Next Emi#xpath=//div[@class='fixed_points_one']/p[normalize-space(text())='Next EMI Due Amount']/following-sibling::i[contains(text(),'Due Date')]";
            }else{

            }


            verifyElementIsDisplayedUsingLocator(logoLocator);
            validateGetTextCustomized(name, " is Displayed Successfully. Name: ");
            if (!nudgeText.equals("")) {
                validateGetTextCustomized(nudgeIcon, " is Displayed Successfully. Nudge Text: ");
                verifyLocatorColorUsingCssValue(nudgeIcon, hexValue, colorName, cssValue);
//                if (nudgeText.toLowerCase().contains("overdue")) {
//                }
            }
            if (emiDueDate) {
                validateGetTextCustomized(dueDate, " is Displayed Successfully. Due Date Text: ");
            }

            String nameValue = validateGetTextCustomized(number, " is Displayed Successfully. Name: ");
            if (nameValue.contains(LANText)) {
                manualScreenshot(nameValue + " is Displayed successfully");
            } else {
                testStepFailed(LANText + " is Not Displayed");
            }
            validateGetTextCustomized(label_amount, " is Displayed successfully. Label Name: ");
            validateGetTextCustomized(amount, " is Displayed successfully. " + amountText + ": ");

//            String common = "Label#xpath=//div[@class='fixed_points_one']/p|//div[@class='a_monthamt_flex']/p";
            String common = "Label#xpath=//div[contains(@class,'fixed_points_one')]/p|//div[@class='a_monthamt_flex']/p";
            for (int i = 1; i <= sizeOfLocator(common); i++) {
//                String label = "Label " + i + "#xpath=(//div[@class='fixed_points_one']/p|//div[@class='a_monthamt_flex']/p)[" + i + "]";
                String label = "Label " + i + "#xpath=(//div[contains(@class,'fixed_points_one')]/p|//div[@class='a_monthamt_flex']/p)[" + i + "]";
//                String labelValue = "" + getText(label) + " Value#xpath=(//div[@class='fixed_points_one']/strong|//div[@class='a_monthamt_flex']/strong)[" + i + "]";
                String labelValue = "" + getText(label) + " Value#xpath=(//div[contains(@class,'fixed_points_one')]/strong|//div[@class='a_monthamt_flex']/strong)[" + i + "]";
                if (isElementDisplayed(label)) {
//                    manualScreenshot(getRefOfXpath(label) + " is displayed successfully");
                    if (isElementDisplayed(labelValue)) {
                        list.add(getText(label));
                        testStepPassed(getRefOfXpath(labelValue) + " is displayed successfully");
                        testStepPassed(getText(label) + " : " + getText(labelValue));
                    } else {
                        list.add(getText(label));
                        testStepFailed(getRefOfXpath(labelValue) + " is not displayed");
                    }
                } else {
                    testStepFailed(getRefOfXpath(label) + " is not displayed");
                }
            }
            verifyLabelValuesWithHash(list, labelWithHash);
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Top section in Services. Exception: " + e.getClass());
        }
        return list;
    }

public void verifyShowMoreForFeesAndCharges(String locator,String extra) {
    try {
        String btn_ShowMore="Show More Button#xpath=//a[contains(text(),'Show More')]";
        String btn_ShowLess="Show Less Button#xpath=//a[contains(text(),'Show Less')]";
        int size = sizeOfLocator(locator);
        if (size<=5) {
            if (isElementDisplayed(btn_ShowMore)) {
                testStepFailed(getRefOfXpath(btn_ShowMore) + " is Displayed wrongly");
                return;
            } else {
                skipSteps("More Than 5 Fees & Charges is Not Present in this Customer Id.");
                return;
            }

        }
        int count=0;
            for (int i = 1; i < size; i++) {
String loc="Fees & Charges Labels#xpath=("+getCommonPathOfLocator(locator)+")["+i+"]";
                if (isElementDisplayed(loc)) {
                    count++;
                }
            }
        if (count == 5) {
manualScreenshot("5 Fees and Charges showing before clicking Show more button verified successfully");
        } else {
            manualScreenshot("5 Fees and Charges is not showing before clicking Show more button");
        }

        boolean flag = clickOnIfDisplayed(btn_ShowMore);
        count=0;
        if (flag) {
            for (int i = 1; i < size; i++) {
                String loc="Fees & Charges Labels "+i+"#xpath=("+getCommonPathOfLocator(locator)+")["+i+"]";
                if (isElementDisplayed(loc)) {
                    testStepPassed("Label "+i+": "+textGet(loc));
                    count++;
                }
            }
            if (count > 5) {
                manualScreenshot("More than 5 Fees and Charges showing after clicking Show more button verified successfully");
            } else {
                manualScreenshot("More Than 5 Fees and Charges is not showing after clicking Show more button");
            }

            boolean flag2 = clickOnIfDisplayed(btn_ShowLess);
            if (flag2) {
                count=0;
                for (int i = 1; i < size; i++) {
                    String loc="Fees & Charges Labels#xpath=("+getCommonPathOfLocator(locator)+")["+i+"]";
                    if (isElementDisplayed(loc)) {
                        count++;
                    }
                }
                if (count == 5) {
                    manualScreenshot("5 Fees and Charges showing before clicking Show more button verifed successfully");
                } else {
                    manualScreenshot("5 Fees and Charges is not showing before clicking Show more button");
                }
            }

        }

    } catch (Exception e) {
        e.printStackTrace();
        testStepFailed("Failed in verify Show more For more than 5 Fees And Charges. Exception: "+e.getClass());
    }
}

public void clickOnTileInMyRelationsPage(String accNo,String loanName,String buttonName,String extra) {
    try {
        String loc=accNo+" "+loanName+" "+buttonName+" Button#xpath=//*[normalize-space(text())='"+loanName.trim()+"']/following-sibling::i[normalize-space(text())='"+accNo.trim()+"']//ancestor::*[@class='rel_item_box']//*[normalize-space(text())='"+buttonName.trim()+"']|//*[normalize-space(text())='"+loanName.trim()+"']/following::i[contains(text(),'"+accNo.trim()+"')]//ancestor::*[@class='rel_item_box']//*[normalize-space(text())='"+buttonName.trim()+"']";
//String loc=accNo+" "+loanName+" "+buttonName+" Button#xpath=//*[normalize-space(text())='"+loanName.trim()+"']/following-sibling::i[normalize-space(text())='"+accNo.trim()+"']//ancestor::*[@class='rel_item_box']//*[normalize-space(text())='"+buttonName.trim()+"']";
        if (isElementDisplayed(loc)) {
clickOn(loc);
waitForPageToLoad();
        } else {
            testStepFailed(getRefOfXpath(loc)+" is Not Displayed");
        }
    } catch (Exception e) {
        e.printStackTrace();
        testStepFailed("Failed in Click on my Relation tile "+accNo+" "+loanName+" in Home Page. Exception: "+e.getClass());
    }
}


public void verifyNudgeIsNotShowing(String name,String extra) {
    try {
String nudgeLocator="Nudge for "+name+"#xpath=//div[@class='fixed_deposit_text']//i";
        if (!isElementPresent(nudgeLocator)) {
manualScreenshot(getRefOfXpath(nudgeLocator)+" is Not Displayed successfully");
        } else {
            testStepFailed(getRefOfXpath(nudgeLocator)+" is Displayed Wrongly");
        }
    } catch (Exception e) {
        e.printStackTrace();
        testStepFailed("Failed in Verify Nudge is Not Showing in "+name+". Exception: "+e.getClass());
    }
}


}
