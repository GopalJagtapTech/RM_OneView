package PageObjects;

import base.ApplicationKeywords;
import org.apache.commons.validator.GenericValidator;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

public class InsuranceServicesPage extends ApplicationKeywords {
    public static final String faq_Insurance = "FAQS in Insurance Services PAge#xpath=//strong[normalize-space(text())='Frequently asked questions']/parent::a";
    public static final String chknowCibil_Insurance = "Check Now Button in Cibil Score Insurance Services PAge#xpath=//i[@id='cibilCheck']";
    public static final String docRequired_Header = "Documents Required Header in Claim Request Page#xpath=//h2[normalize-space(text())='Documents you need']";
    public static final String btn_RequestCancel = "Button Request to Cancel#xpath=//div[@class='j_mandate_cta']/button[normalize-space(text())='Request to cancel']";
    public static final String btn_Keepthepolicy = "Button keep the policy#xpath=//div[@class='j_mandate_cta']/button[normalize-space(text())='keep the policy']";
    public static final String active_InsuranceTab = "Insurance Tab selected by Default in RAR page#xpath=//li[@class='Insurancetab active']";
    public static final String infoIcon_ClaimInvoice = "Info Icon on Claim Invoice#xpath=//a[@class='a_infoavail_img a_openmodal']";
    public static final String infoIcon_ClaimInvoicePopupCloseBtn = "Close Button for Info Icon on Claim Invoice Popup#xpath=//a[@class='a_close_cta']";
    public static final String logo_Insurance = "Insurance Logo#xpath=//img[contains(@src,'/images/life_insurance.svg')]";

    /*
    Methods
     */

    public void faqRedirection() {
        String faqheader = "Header in FAQ Page#xpath=//strong[normalize-space(text())='Choose a category you need help with']";
        try {
            if (isElementPresent(faq_Insurance)) {
                scrollToWebElement(faq_Insurance);
                clickOn(faq_Insurance);
                waitForPageToLoad();
                if (isElementDisplayed(faqheader)) {
                    testStepPassed("Customer redirected to FAQ Page");
                } else {
                    testStepFailed("Failed in Redirection");
                }
            } else {
                testStepFailed(getRefOfXpath(faq_Insurance) + "is not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in faq Redirection. Exception:" + e.getClass());
        }
    }

    public void cibilRedirection() {
        String faqheader = "Header in FAQ Page#xpath=//strong[normalize-space(text())='Choose a category you need help with']";
        try {
            if (isElementPresent(chknowCibil_Insurance)) {
                scrollToWebElement(chknowCibil_Insurance);
                clickOn(chknowCibil_Insurance);
                waitForPageToLoad();
                verifyRedirectionInCommon("", "https://www.bajajfinserv.in/check-free-cibil-score");

            } else {
                testStepFailed(getRefOfXpath(chknowCibil_Insurance) + "is not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in cibil Redirection. Exception:" + e.getClass());
        }
    }

    public void clickONInsuranceServicesRHS(String label, String extra) {
        String label_RHS = "RHS Option " + label + " in Insurance Service Page#xpath=//div[contains(@class,'Superstores_list')]/descendant::p[normalize-space(text())='" + label + "']/ancestor::a";
        try {
            if (isElementPresent(label_RHS)) {
                clickOn(label_RHS);
                waitTime(5);
                waitForPageToLoad();
            } else {
                testStepFailed(getRefOfXpath(label_RHS) + "is not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in click ON Insurance Services RHS. Exception:" + e.getClass());
        }
    }

    public void claimRequestRedirection() {
        String pageHeader = "Header in Claim Request Page#xpath=//div/strong[normalize-space(text())='Follow these simple steps to raise a request with your insurance provider']";
        try {
            if (isElementDisplayed(pageHeader)) {
                manualScreenshot("Customer successfully Redirected to Claim Request Page");
            } else {
                testStepFailed(getRefOfXpath(pageHeader) + "is not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in claim Request Redirection. Exception:" + e.getClass());
        }
    }

    public void claimRequestDocumentsRequired(String docName) {
        String doc = "Document: " + docName + " in Claim Request Page#xpath=//div[@class='v_document_reciept']/child::p[normalize-space(text())='" + docName + "']";
        try {
            if (isElementDisplayed(doc)) {
                manualScreenshot(getRefOfXpath(doc) + "is Displayed Successfully");
            } else {
                testStepFailed(getRefOfXpath(doc) + "is not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in claim Request Documents Required. Exception:" + e.getClass());
        }
    }

    public void cancelPolicyRedirection() {
        String pageHeader = "Header in Cancel Policy Page#xpath=//strong[normalize-space(text())='Cancel your policy']";
        try {
            if (isElementDisplayed(pageHeader)) {
                manualScreenshot("Customer successfully Redirected to Cancel Policy Page");
            } else {
                testStepFailed(getRefOfXpath(pageHeader) + "is not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in cancel Policy Redirection. Exception:" + e.getClass());
        }
    }

    public void cancelPolicyPageContents() {
        String pageHeader = "Cancellation Policy Header in Cancel Policy Page#xpath=//strong[normalize-space(text())='Cancel your policy']";
        String subtext = "Header Sub Text:#xpath=//p[normalize-space(text())='Before placing this request, we suggest that you go through your policy documents to know its features and benefits.']";
        String benefits = "benefits button#xpath=//a[normalize-space(text())='benefits']";
        String policydetails = "Policy Details Section#xpath=//h2[normalize-space(text())='Policy Details']/parent::div";
        String cancelReason = "Cancel Reason Section#xpath=//h2[normalize-space(text())='Cancellation Reason']/parent::div";
        String btn_Proceed = "Proceed Button#xpath=//button[@id='btnProceed']";

        try {
            if (isElementDisplayed(pageHeader)) {
                verifyElementIsDisplayedOrNot(pageHeader);
                verifyFieldsDisplayedUsingLocatorWithComment(subtext, getText(subtext));
//                verifyElementIsDisplayedOrNot(benefits);
                verifyElementIsDisplayedOrNot(policydetails);
                verifyElementIsDisplayedOrNot(cancelReason);
//                scrollToWebElement(btn_Proceed);
//                verifyElementIsDisplayedOrNot(btn_Proceed);
                verifyButtonIsDisplayedInThePage("Cancel Policy");
                verifyButtonIsDisplayedInThePage("keep the policy");
            } else {
                testStepFailed(getRefOfXpath(pageHeader) + "is not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in cancel Policy Page Contents. Exception:" + e.getClass());
        }
    }

    public void policyDetailsSection() {
        String pageHeader = "Cancellation Policy Header in Cancel Policy Page#xpath=//strong[normalize-space(text())='Cancel your policy']";
        try {
            if (isElementDisplayed(pageHeader)) {
                verifyValueUsingLabel("//div[@class='v_policy_sec']/p", "Linked Loan Account Number", "/following-sibling::strong", "");
                verifyValueUsingLabel("//div[@class='v_policy_sec']/p", "Policy Number", "/following-sibling::strong", "");
                verifyValueUsingLabel("//div[@class='v_policy_sec']/p", "Premium Amount", "/following-sibling::strong", "");
                verifyValueUsingLabel("//div[@class='v_policy_sec']/p", "Policy Start Date", "/following-sibling::strong", "");
                verifyValueUsingLabel("//div[@class='v_policy_sec']/p", "Policy End Date", "/following-sibling::strong", "");
                verifyValueUsingLabel("//div[@class='v_policy_sec']/p", "Insurance Company Name", "/following-sibling::strong", "");
                verifyValueUsingLabel("//div[@class='v_policy_sec']/p", "Insurance Product", "/following-sibling::strong", "");

            } else {
                testStepFailed(getRefOfXpath(pageHeader) + "is not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in policy Details Section. Exception:" + e.getClass());
        }
    }

    public void verifyBenefitButton() {
        String pageHeader = "Cancellation Policy Header in Cancel Policy Page#xpath=//strong[normalize-space(text())='Cancel your policy']";
        String benefits = "benefits button#xpath=//a[normalize-space(text())='benefits']";
        String doc_Benefits = "Benefits Document pdf#xpath=//div[@class='doc_viewer']";

        try {
            if (isElementDisplayed(benefits)) {
                clickOn(benefits);
                waitForPageToLoad();
                if (isElementDisplayed(doc_Benefits)) {
                    manualScreenshot(getRefOfXpath(doc_Benefits) + "is Displayed Successfully");
                } else {
                    testStepFailed(getRefOfXpath(doc_Benefits) + "is not Displayed");
                }
            } else {
                testStepFailed(getRefOfXpath(benefits) + "is not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Benefit Button. Exception:" + e.getClass());
        }
    }

    public void verifyBenefitPdfPage() {
        String pageHeader = "Cancellation Policy Header in Cancel Policy Page#xpath=//strong[normalize-space(text())='Cancel your policy']";
        String benefits = "benefits button#xpath=//a[normalize-space(text())='benefits']";
        String doc_Benefits = "Benefits Document pdf#xpath=//div[@class='doc_viewer']";

        try {
            if (isElementDisplayed(benefits)) {
                clickOn(benefits);
                waitForPageToLoad();
                verifyElementIsDisplayedOrNot(doc_Benefits);
                verifyElementIsDisplayedOrNot(btn_RequestCancel);
                verifyElementIsDisplayedOrNot(btn_Keepthepolicy);
            } else {
                testStepFailed(getRefOfXpath(benefits) + "is not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Benefit Pdf Page. Exception:" + e.getClass());
        }
    }

    public void verifyRequesttoCancel() {
        String req_raised = "Request Raised in RAR Page#xpath=//div[@class='req_raised req_raisedB2b']/strong[normalize-space(text())='Request Raised']";
        String benefits = "benefits button#xpath=//a[normalize-space(text())='benefits']";
        String doc_Benefits = "Benefits Document pdf#xpath=//div[@class='doc_viewer']";

        try {
            if (isElementDisplayed(benefits)) {
                clickOn(benefits);
                waitForPageToLoad();
                scrollToWebElement(btn_RequestCancel);
                clickOn(btn_RequestCancel);
                waitForPageToLoad();
                if (isElementDisplayed(req_raised)) {
                    manualScreenshot(getRefOfXpath(req_raised) + "is Displayed Successfully i.e User redirected to RAR Page");
                } else {
                    testStepFailed("User not redirected to RAR Page");
                }
            } else {
                testStepFailed(getRefOfXpath(benefits) + "is not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Request to Cancel. Exception:" + e.getClass());
        }
    }

    public void verifyKeepthePolicy() {
        String req_raised = "Request Raised in RAR Page#xpath=//div[@class='req_raised req_raisedB2b']/strong[normalize-space(text())='Request Raised']";
        String benefits = "benefits button#xpath=//a[normalize-space(text())='benefits']";
        String insu_Tab = "Active Insurance Tab#xpath=//li[@id='InsuranceTab' and @class='active']";

        try {
            if (isElementDisplayed(benefits)) {
                clickOn(benefits);
                waitForPageToLoad();
                scrollToWebElement(btn_Keepthepolicy);
                clickOn(btn_Keepthepolicy);
                waitForPageToLoad();
                if (isElementDisplayed(insu_Tab)) {
                    manualScreenshot(getRefOfXpath(insu_Tab) + "is Displayed Successfully in My Relation Page");
                } else {
                    testStepFailed("User not redirected to My Relations(Insurance) Page");
                }
            } else {
                testStepFailed(getRefOfXpath(benefits) + "is not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Keep the Policy. Exception:" + e.getClass());
        }
    }

    public void verifypolicyDropdownOptionsSurrenderPolicy() {
        String reason_dropdown = "Surrender Policy Reasons Dropdown#xpath=//div[@class='inputMainBlock']/input[@class='select_value']";
        try {
            if (isElementDisplayed(reason_dropdown)) {
                clickOn(reason_dropdown);
                verifyFieldsUsingCommonXpathAndMultipleTextWithHash("//div[@class='j_cus_DD' and @style='display: block;']/ul/li/a", "Financial Problem#Change of Mind#Product is not fitting the requirement", "");
            } else {
                testStepFailed(getRefOfXpath(reason_dropdown) + "is not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify policy Dropdown Options Surrender Policy. Exception:" + e.getClass());
        }
    }

    public void verifypolicyDropdownOptionsCancelPolicy() {
        String reason_dropdown = "Cancel Policy Reasons Dropdown #xpath=//div[@class='inputMainBlock']/input[@class='select_value']";
        try {
            if (isElementDisplayed(reason_dropdown)) {
                clickOn(reason_dropdown);
                verifyFieldsUsingCommonXpathAndMultipleTextWithHash("//div[@class='j_cus_DD' and @style='display: block;']/ul/li/a", "Financial Problem#Change of Mind#Product is not fitting the requirement", "");
            } else {
                testStepFailed(getRefOfXpath(reason_dropdown) + "is not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify policy Dropdown Options Cancel Policy. Exception:" + e.getClass());
        }
    }

    public void verifyDropdownSelectSurrenderPolicy(String option) {
        String reason_dropdown = "Surrender Policy Reasons Dropdown#xpath=//div[@class='inputMainBlock']/input[@class='select_value']";
        String option_select = "Option: " + option + "#xpath=//div[@class='j_cus_DD' and @style='display: block;']/ul/li/a[normalize-space(text())='" + option + "']";
        try {
            if (isElementDisplayed(reason_dropdown)) {
                clickOn(reason_dropdown);
                clickOn(option_select);
//                String option1 = getText(reason_dropdown);
//                getSelectedOptionInDropDown(reason_dropdown,option);
                String option1 = getAttributeUsingLocatorAndAttribute(reason_dropdown, "value");
//                testStepInfo(option1);
                if (option1.equalsIgnoreCase(option)) {
                    testStepPassed(getRefOfXpath(option_select) + "is selected from DropDown Successfully");
                } else {
                    testStepFailed(getRefOfXpath(option_select) + "is not selected from DropDown");
                }

            } else {
                testStepFailed(getRefOfXpath(reason_dropdown) + "is not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify policy Dropdown Select Surrender Policy. Exception:" + e.getClass());
        }
    }

    public void verifyDropdownSelectCancelPolicy(String option) {
        String reason_dropdown = "Cancel Policy Reasons Dropdown#xpath=//div[@class='inputMainBlock']/input[@class='select_value']";
        String option_select = "Option: " + option + "#xpath=//div[@class='j_cus_DD' and @style='display: block;']/ul/li/a[normalize-space(text())='" + option + "']";
        try {
            if (isElementDisplayed(reason_dropdown)) {
                clickOn(reason_dropdown);
                clickOn(option_select);
//                String option1 = getText(reason_dropdown);
//                getSelectedOptionInDropDown(reason_dropdown,option);
                String option1 = getAttributeUsingLocatorAndAttribute(reason_dropdown, "value");
//                testStepInfo(option1);
                if (option1.equalsIgnoreCase(option)) {
                    testStepPassed(getRefOfXpath(option_select) + "is selected from DropDown Successfully");
                } else {
                    testStepFailed(getRefOfXpath(option_select) + "is not selected from DropDown");
                }

            } else {
                testStepFailed(getRefOfXpath(reason_dropdown) + "is not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify policy Dropdown Select Cancel Policy. Exception:" + e.getClass());
        }
    }

    public void verifyDropdownSelectOptionVisibleSurrenderPolicy(String option) {
        String reason_dropdown = "Surrender Policy Reasons Dropdown#xpath=//div[@class='inputMainBlock']/input[@class='select_value']";
        String option_select = "Option: " + option + "#xpath=//div[@class='j_cus_DD' and @style='display: block;']/ul/li/a[normalize-space(text())='" + option + "']";
        try {
            if (isElementDisplayed(reason_dropdown)) {
                clickOn(reason_dropdown);
                clickOn(option_select);
                getSelectedOptionInDropDown(option_select, option);
                //                String option1 = getText(reason_dropdown);
                String option1 = getAttributeUsingLocatorAndAttribute(reason_dropdown, "value");
                if (option1.equalsIgnoreCase(option)) {
                    testStepPassed(getRefOfXpath(option_select) + "is selected from DropDown Successfully");
                } else {
                    testStepFailed(getRefOfXpath(option_select) + "is not selected from DropDown");
                }

            } else {
                testStepFailed(getRefOfXpath(reason_dropdown) + "is not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Dropdown Select Option Visible Surrender Policy. Exception:" + e.getClass());
        }
    }

    public void verifyDropdownSelect2(String option) {
        String reason_dropdown = "Surrender Policy Reasons Dropdown#xpath=//div[@class='inputMainBlock']/input[@class='select_value']";
        String option_select = "Option: " + option + "#xpath=//div[@class='j_cus_DD' and @style='display: block;']/ul/li/a[normalize-space(text())='" + option + "']";
        try {
            if (isElementDisplayed(reason_dropdown)) {
                clickOn(reason_dropdown);
                clickOn(option_select);
                String option1 = getAttributeUsingLocatorAndAttribute(reason_dropdown, "value");
                if (option1.equalsIgnoreCase(option)) {
                    testStepPassed(getRefOfXpath(option_select) + "is selected from DropDown Successfully");
                } else {
                    testStepFailed(getRefOfXpath(option_select) + "is not selected from DropDown");
                }

            } else {
                testStepFailed(getRefOfXpath(reason_dropdown) + "is not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify policy Dropdown Select2. Exception:" + e.getClass());
        }
    }

    public void verifyDropdownSelect2CancelPolicy(String option) {
        String reason_dropdown = "Cancel Policy Reasons Dropdown#xpath=//div[@class='inputMainBlock']/input[@class='select_value']";
        String option_select = "Option: " + option + "#xpath=//div[@class='j_cus_DD' and @style='display: block;']/ul/li/a[normalize-space(text())='" + option + "']";
        try {
            if (isElementDisplayed(reason_dropdown)) {
                clickOn(reason_dropdown);
                clickOn(option_select);
                String option1 = getAttributeUsingLocatorAndAttribute(reason_dropdown, "value");
                if (option1.equalsIgnoreCase(option)) {
                    testStepPassed(getRefOfXpath(option_select) + "is selected from DropDown Successfully");
                } else {
                    testStepFailed(getRefOfXpath(option_select) + "is not selected from DropDown");
                }

            } else {
                testStepFailed(getRefOfXpath(reason_dropdown) + "is not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify policy Dropdown Select2 Cancel Policy. Exception:" + e.getClass());
        }
    }


    //    Surrender Policy
    public void surrenderPolicyRedirection() {
        String pageHeader = "Header in Surrender Policy Page#xpath=//div/strong[normalize-space(text())='Surrender your policy']";
        try {
            if (isElementDisplayed(pageHeader)) {
                manualScreenshot("Customer successfully Redirected to Surrender Policy Page");
            } else {
                testStepFailed(getRefOfXpath(pageHeader) + "is not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in surrender Policy Redirection. Exception:" + e.getClass());
        }
    }

    public void surrenderPolicyPageContents() {
        String pageHeader = "Header in Surrender Policy Page#xpath=//div/strong[normalize-space(text())='Surrender your policy']";
        String subtext = "Header Sub Text:#xpath=//p[normalize-space(text())='Before placing this request, we suggest that you go through your policy documents to know its features and benefits.']";
        String benefits = "benefits button#xpath=//a[normalize-space(text())='benefits']";
        String policydetails = "Policy Details Section#xpath=//h2[normalize-space(text())='Policy Details']/parent::div";
        String surrenderReason = "Surrender Reason Section#xpath=//h2[normalize-space(text())='Reason for surrender']/parent::div";
//        String btn_Proceed = "Proceed Button#xpath=//button[@id='btnProceed']";
        try {
            if (isElementPresent(pageHeader)) {
                verifyElementIsDisplayedOrNot(pageHeader);
                verifyFieldsDisplayedUsingLocatorWithComment(subtext, getRefOfXpath(subtext) + getText(subtext));
//                verifyElementIsDisplayedOrNot(benefits);
                verifyElementIsDisplayedOrNot(policydetails);
                verifyElementIsDisplayedOrNot(surrenderReason);
//                scrollToWebElement(btn_Proceed);
//                verifyElementIsDisplayedOrNot(btn_Proceed);
                verifyButtonIsDisplayedInThePage("Surrender Policy");
                verifyButtonIsDisplayedInThePage("keep the policy");
            } else {
                testStepFailed(getRefOfXpath(pageHeader) + "is not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in surrender Policy Page Contents. Exception:" + e.getClass());
        }
    }

    public void verifyBenefitButtonSurrenderPolicy() {
        String pageHeader = "Header in Surrender Policy Page#xpath=//div/strong[normalize-space(text())='Surrender your policy']";
        String benefits = "benefits button#xpath=//a[normalize-space(text())='benefits']";
        String doc_Benefits = "Benefits Document pdf#xpath=//div[@class='doc_viewer']";

        try {
            if (isElementDisplayed(benefits)) {
                clickOn(benefits);
                waitForPageToLoad();
                if (isElementDisplayed(doc_Benefits)) {
                    manualScreenshot(getRefOfXpath(doc_Benefits) + "is Displayed Successfully");
                    verifyButtonIsDisplayedInThePage("Surrender");
                    verifyButtonIsDisplayedInThePage("keep the policy");
                } else {
                    testStepFailed(getRefOfXpath(doc_Benefits) + "is not Displayed");
                }
            } else {
                testStepFailed(getRefOfXpath(benefits) + "is not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Benefit Button Surrender Policy. Exception:" + e.getClass());
        }
    }

    public void policyDetailsSectionSurrenderPolicy() {
        String pageHeader = "Header in Surrender Policy Page#xpath=//div/strong[normalize-space(text())='Surrender your policy']";
        try {
            if (isElementDisplayed(pageHeader)) {
                verifyValueUsingLabel("//div[@class='v_policy_sec']/p", "Linked Loan Account Number", "/following-sibling::strong", "");
                verifyValueUsingLabel("//div[@class='v_policy_sec']/p", "Policy Number", "/following-sibling::strong", "");
                verifyValueUsingLabel("//div[@class='v_policy_sec']/p", "Premium Amount", "/following-sibling::strong", "");
                verifyValueUsingLabel("//div[@class='v_policy_sec']/p", "Policy Start Date", "/following-sibling::strong", "");
                verifyValueUsingLabel("//div[@class='v_policy_sec']/p", "Policy End Date", "/following-sibling::strong", "");
                verifyValueUsingLabel("//div[@class='v_policy_sec']/p", "Insurance Company Name", "/following-sibling::strong", "");
                verifyValueUsingLabel("//div[@class='v_policy_sec']/p", "Insurance Product", "/following-sibling::strong", "");

            } else {
                testStepFailed(getRefOfXpath(pageHeader) + "is not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in policy Details Section Surrender Policy. Exception:" + e.getClass());
        }
    }

    public void freelookPeriodSurrenderPolicy() {
        String pageHeader = "Header in Surrender Policy Page#xpath=//div/strong[normalize-space(text())='Surrender your policy']";
        String note_Header = "Note: Header #xpath=//strong[normalize-space()='Please Note']";
        String kmore = "Know more about Free Look Period Button#xpath=//a[@class='v_note'][normalize-space(text())='Learn more about Free Look Period']";

        try {
            if (isElementDisplayed(pageHeader)) {

                verifyElementIsDisplayedOrNotusingScroll(note_Header);
                verifyFieldsDisplayedUsingText("As you are placing a request to surrender your policy after the Free Look Period/Cooling Period, the refund of your premium amount will be applicable on a pro-rata basis.");
//                verifyElementIsDisplayedOrNotusingScroll("As you are placing a request to surrender your policy after the Free Look Period/Cooling Period, the refund of your premium amount will be applicable on a pro-rata basis.");
                verifyElementIsDisplayedOrNotusingScroll(kmore);
            } else {
                testStepFailed(getRefOfXpath(pageHeader) + "is not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in free look Period Surrender Policy. Exception:" + e.getClass());
        }
    }

    public void knowMoreRedirectionSurrenderPolicy() {
        String pageHeader = "Header in Surrender Policy Page#xpath=//div/strong[normalize-space(text())='Surrender your policy']";
        String note_Header = "Header in FAQ Page#xpath=//strong[normalize-space()='Choose a category you need help with']";
        String kmore = "Know more about Free Look Period Button#xpath=//a[@class='v_note'][normalize-space(text())='Learn more about Free Look Period']";

        try {
            if (isElementDisplayed(kmore)) {
//                scrollToWebElement(kmore);
                clickOn(kmore);
                waitForPageToLoad();
                if (isElementDisplayed(note_Header)) {
                    manualScreenshot("User redirected to FAQ Page");
                } else {
                    testStepFailed("Failed in redirection to FAQ Page");
                }
            } else {
                testStepFailed(getRefOfXpath(kmore) + "is not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in knowMore Redirection Surrender Policy. Exception:" + e.getClass());
        }
    }

    public void proceedWithoutReasonSurrenderPolicy() {
        String pageHeader = "Header in Surrender Policy Page#xpath=//div/strong[normalize-space(text())='Surrender your policy']";
        String note_Header = "Header in FAQ Page#xpath=//strong[normalize-space()='Choose a category you need help with']";
        String errormsg = "Please Select Surrendering Reason error msg#xpath=//div[@class='errormsg'][normalize-space(text())='Please Select Surrendering Reason']";
        String btn_Proceed = "Proceed Button#xpath=//button[@id='btnProceed']";
        String btn_SurrPolicy = "Proceed Button#xpath=//button[normalize-space(text())='Surrender Policy']";

        try {
            if (isElementPresent(btn_SurrPolicy)) {
                scrollToWebElement(btn_SurrPolicy);
                clickOn(btn_SurrPolicy);
                if (isElementDisplayed(errormsg)) {
                    manualScreenshot(getRefOfXpath(errormsg) + "is Displayed Successfully and Customer cannot proceed further");
                } else {
                    testStepFailed(getRefOfXpath(errormsg) + "is not Displayed");
                }

            } else {
                testStepFailed(getRefOfXpath(btn_Proceed) + "is not Present");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in proceed Without Reason Surrender Policy. Exception:" + e.getClass());
        }
    }

    public void proceedWithoutReasonCancelPolicy() {
        String pageHeader = "Header in Surrender Policy Page#xpath=//div/strong[normalize-space(text())='Surrender your policy']";
        String note_Header = "Header in FAQ Page#xpath=//strong[normalize-space()='Choose a category you need help with']";
        String errormsg = "Please Select Cancel Reason error msg#xpath=//div[@class='errormsg'][normalize-space(text())='Please Select Cancelling Reason']";
        String btn_Proceed = "Proceed Button#xpath=//button[@id='btnProceed']";
        String btn_CancelPolicy = "Proceed Button#xpath=//button[normalize-space(text())='Cancel Policy']";

        try {
            if (isElementPresent(btn_CancelPolicy)) {
                scrollToWebElement(btn_CancelPolicy);
                clickOn(btn_CancelPolicy);
                if (isElementDisplayed(errormsg)) {
                    manualScreenshot(getRefOfXpath(errormsg) + "is Displayed Successfully and Customer cannot proceed further");
                } else {
                    testStepFailed(getRefOfXpath(errormsg) + "is not Displayed");
                }

            } else {
                testStepFailed(getRefOfXpath(btn_Proceed) + "is not Present");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in proceed Without Reason Surrender Policy. Exception:" + e.getClass());
        }
    }

    public void successJourneySurrenderPolicy(String option) {

        String reason_dropdown = "Active Insurance Tab#xpath=//div[@class='inputMainBlock']/input[@class='select_value']";
        String option_select = "Option: " + option + "#xpath=//div[@class='j_cus_DD' and @style='display: block;']/ul/li/a[normalize-space(text())='" + option + "']";
        String btn_Proceed = "Proceed Button#xpath=//button[@id='btnProceed']";
        String btn_SurrPolicy = "Proceed Button#xpath=//button[normalize-space(text())='Surrender Policy']";

        try {
            if (isElementDisplayed(reason_dropdown)) {
                clickOn(reason_dropdown);
                clickOn(option_select);
                scrollToWebElement(btn_SurrPolicy);
                clickOn(btn_SurrPolicy);
                verifyPageRedirectionUsingTagAndText("strong", "Request Raised", "");
                verifyFieldsDisplayedUsingText("We have received your request. We will update you on the status of the request within 5 working days.");
                verifyValueUsingLabel("//div[@class='Request_text']//p", "Service Request Number", "/following-sibling::strong", "");
                verifyButtonIsDisplayedInThePage("Request History");
                verifyButtonIsDisplayedInThePage("done");

            } else {
                testStepFailed(getRefOfXpath(reason_dropdown) + "is not Present");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in success Journey Surrender Policy. Exception:" + e.getClass());
        }
    }


    /////////////25112022- Mustaq
    public void paoInServicesScreen() {
        String pageHeader = "Header in Surrender Policy Page#xpath=//div/strong[normalize-space(text())='Surrender your policy']";
        String pao_Services = "Pre Approved Offers in Services Page#xpath=//div[normalize-space(text()='Pre-approved for you')]//div[@class='offersfore_you']";
        try {
            if (isElementPresent(pao_Services)) {
                scrollToWebElement(pao_Services);
                verifyElementIsDisplayedUsingLocator(pao_Services);
                String pao_Cards = "Number of Pre Approved offers#xpath=//div[normalize-space(text()='Pre-approved for you')]//div[@class='offersfore_you']/descendant::li[@class='slick-slide slick-active']";
                int card_Num = sizeOfLocator(pao_Cards);
                testStepInfo(getRefOfXpath(pao_Cards) + "is " + card_Num);
//                for (int i = 1; i <= card_Num; i++) {
//                    String offer_Name = "Offer Name:#xpath=(//div[normalize-space(text()='Pre-approved for you')]//div[@class='offersfore_you']/descendant::li//div[@class='loantitle']/p)[" + i + "]";
//                    String offer_Ammounttitle = "Offer Amount:#xpath=(//div[normalize-space(text()='Pre-approved for you')]//div[@class='offersfore_you']/descendant::li//div[@class='upto_Ru']/i)[" + i + "]";
//                    String offer_Ammount = "Offer Amount:#xpath=(//div[normalize-space(text()='Pre-approved for you')]//div[@class='offersfore_you']/descendant::li//div[@class='upto_Ru']/i/following-sibling::p)[" + i + "]";
//                    testStepInfo(getText(offer_Name) + " - " + getText(offer_Ammounttitle) + " :" + offer_Ammount);
//                }
            } else {
                testStepFailed(getRefOfXpath(pao_Services) + "is not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in pao In Services Screen. Exception:" + e.getClass());
        }
    }

    public void claimRequestRarRedirection(String policyNumber, String extra) {
        String insurance_Active = "By Default Insurance Tab Active#xpath=//li[@class='Insurancetab active']";
        try {
            String number_Tile = "Policy Number: #xpath=//div[@class='p_Select_loan active']//label/p[contains(text(),'" + policyNumber + "')]";
            verifyRedirectionHeaderText("Select the product for which you wish to raise a request");
//            verifyPageRedirectionUsingTagAndText("*","Select the product for which you wish to raise a request","");
            verifyElementIsDisplayedOrNot(insurance_Active);
            if (isElementDisplayed(number_Tile)) {
                testStepPassed("Customer redirected to the RAR page for" + getRefOfXpath(number_Tile) + policyNumber);
            } else {
                testStepFailed(getRefOfXpath(number_Tile) + policyNumber + "is not Redirected");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in pao In Services Screen. Exception:" + e.getClass());
        }
    }


    public void verifyComponentsOfInsuranceServicesPage(String title, String splitText) {
        try {
            testStepInfo("*************** " + title + " ***************");
            String[] split = splitText.split(",");
//            String topSection = "" + split[0] + " Top Section#xpath=//strong[normalize-space()='" + split[0].trim() + "']/ancestor::div[@class='fixed_deposit_section']";
            String topSection = "Top Section in Insurance Services#xpath=//p[contains(text(),'" + split[0].trim() + "')]/ancestor::div[@class='fixed_deposit_section']";
            verifyFieldsDisplayedUsingLocator(topSection);
            String relationShipSection = "" + split[1] + " Section#xpath=//strong[normalize-space()='" + split[1].trim() + "']/ancestor::div[@class='Relationship_Details']";
            String relationShipTitle = "" + split[1] + " Title#xpath=//strong[normalize-space()='" + split[1].trim() + "']";
            verifyFieldsDisplayedUsingLocator(relationShipSection);
            verifyFieldsDisplayedUsingLocator(relationShipTitle);
            String thingsYouCanDoSection = "" + split[2] + " Right Side Section#xpath=//p[normalize-space(text())='" + split[2].trim() + "']/../..";
            String thingsYouCanDoTitle = "" + split[2] + " Title#xpath=//p[normalize-space(text())='" + split[2].trim() + "']";
            verifyFieldsDisplayedUsingLocator(thingsYouCanDoSection);
            verifyFieldsDisplayedUsingLocator(thingsYouCanDoTitle);
            String faqSection = "" + split[3] + "#xpath=//strong[normalize-space(text())='" + split[3].trim() + "']";
            verifyFieldsDisplayedUsingLocatorWithScroll(faqSection);
            String cibilScoreSection = "" + split[3] + " Section#xpath=//strong[normalize-space(text())='" + split[4].trim() + "']/ancestor::div[@class='cibilscore']";
            String cibilScoreTitle = "" + split[3] + " Title#xpath=//strong[normalize-space(text())='" + split[4].trim() + "']";
            verifyFieldsDisplayedUsingLocatorWithScroll(cibilScoreSection);
            verifyFieldsDisplayedUsingLocatorWithScroll(cibilScoreTitle);
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Components of Insurance Sevices Page. Exception: " + e.getClass());
        }

    }

    public void verifyNudgeInServices(String nudgeText, String hexValue, String colorName, String cssValue, String extra) {
        try {
            String nudgeIcon = "" + nudgeText + " Nudge#xpath=//div[@class='fixed_deposit_text']/strong/span[normalize-space(text())='" + nudgeText + "']";
            if (!nudgeText.equals("")) {
                validateGetTextCustomized(nudgeIcon, " is Displayed Successfully. Nudge Text: ");
                verifyLocatorColorUsingCssValue(nudgeIcon, hexValue, colorName, cssValue);
            } else {
                testStepFailed("Failed to verify Nudge");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Nudge In Services. Exception: " + e.getClass());
        }
    }


}
