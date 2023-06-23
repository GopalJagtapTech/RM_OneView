package PageObjects;

import TestData.TestDataPayments;
import base.ApplicationKeywords;
import org.checkerframework.checker.units.qual.C;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;

import java.awt.image.Kernel;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

public class PaymentsPage extends ApplicationKeywords {
        /*
    Xpaths
     */

//    public static final String icon_HamburgerMenu = "Hamburger Menu in Home Page#xpath=//a[@class='hem_menu']/img";
//    public static final String darrow_LoanPayments = "Down arrow in Loan Payments#xpath=//strong[normalize-space(text())='Loan payment']/../following-sibling::div/img";
//    public static final String button_Overdue = "Overdue Button in Loan Payments#xpath=//li[@data-group-name='Loan payment']/a[normalize-space(text())='Overdue']";
//    public static final String header_LoanPaymentspage = "Header in Loan Payments Page#xpath=//strong[normalize-space()='Select loan for payment']";
//    public static final String disabled_ProceedtoPay = "Disabled Proceed to Pay in Payments Page#xpath=//input[@id='overdueProcedPay' and @disabled='disabled']";


    public static final String icon_HamburgerMenu = "Hamburger Menu in Home Page#xpath=//a[@class='hem_menu']/img";
    public static final String darrow_LoanPayments = "Down arrow in Loan Payments#xpath=//strong[normalize-space(text())='Loan payment']/../following-sibling::div/img";
    public static final String button_Overdue = "Overdue Button in Loan Payments#xpath=//li[@data-group-name='Loan payment']/a[normalize-space(text())='Overdue']";
    public static final String button_OtherPayments = "Other Payments Button in Loan Payments#xpath=//li[@data-group-name='Loan payment']/a[normalize-space(text())='Other Payments']";
    public static final String header_LoanPaymentspage = "Header in Loan Payments Page#xpath=//strong[normalize-space()='Select the loan you want to make a payment for']";
    public static final String disabled_ProceedtoPay = "Disabled Proceed to Pay in Overdue Payments Page#xpath=//button[@id='overdueProcedPay' and @disabled='disabled']";
    public static final String active_ProceedtoPay = "Active Proceed to Pay in Overdue Payments Page#xpath=//button[@id='overdueProcedPay']";
    public static final String active_ProceedtoPayTabPage = "Proceed to Pay Button#xpath=//button[@id='procedPay']";
    public static final String txtbox_enteramttopay = "Enter Amount to Pay Text Box#xpath=//div[@class='inputMainBlock']/input";
    public static final String btn_MakePayments = "Make Payments in Loan Page#xpath=//p[normalize-space()='Make Payments']/parent::div[@class='storepart']";
    public static final String btn_PayNow = "Pay Now Button in Loan Tile#xpath=//div[@class='rel_item_box']//a[@id='paynow']";
    public static final String paymentSelectionTab = "Payment Selection Tab#xpath=//div[@class='payment_step']";
    public static final String popup_PaymentOptions = "Payment Options Popup#xpath=//div[@class='payment_opt_box']//div[@class='payment_options']";
    public static final String popup_CrossButton = "Popup Close Button#xpath=//img[@src='https://experia-uat.bajajfinserv.in/UI/images/icons-cross.svg']/parent::a[@id='Crossmark']";

    public static final String infoicon_Overduetabspage = "Info icon for other Charges - #xpath=//div[@class='Overdue_list']/descendant::a/img[@src='https://experia-uat.bajajfinserv.in/UI/images/icons-info.svg']";


//FORECLOSURE

    public static final String title_ForeclosureAmount = "Foreclosure Amount Title#xpath=//strong[normalize-space()='Foreclosure Amount']";
    public static final String value_ForeclosureAmount = "Foreclosure Amount#xpath=//div[@class='Inclusive_payment']//strong";
    public static final String dwnld_ForeclosureLetterBTN = "Foreclosure Letter Download Button#xpath=//div[@class='DownloadForeclosure']//a[@id='downloadForeclosureletter']";

//AdvanceEMI

    public static final String drpDownAdvanceEMI = "Dropdown in Advance EMI Page#xpath=//select[@id='AdvEMI']";
    public static final String advEmiStatic1 = "Static Message 1#xpath=(//div[@class='infotic infoticmo']/div/p)[1]";
    public static final String advEmiStatic2 = "Static Message 2#xpath=(//div[@class='infotic infoticmo']/div/p)[2]";
    public static final String advEmiStatic3 = "Static Message 3#xpath=(//div[@class='infotic infoticmo']/div/p)[3]";

    public static final String partPayStatic = "Static Message 1#xpath=//div[@class='infotic_text cipBox']/p";


    public static final String paoPaymentCancel = "Pre Approved Offers in Cancelled Page#xpath=//div[@class='finance_slider']";
    public static final String failedPaymentCancel = "Failed Reason in Cancelled Page#xpath=//div[@class='boxloan_services p_fail']";



        /*
    Methods
     */

    public void verifyLoanPaymentsHeader() {
        try {
            if (isElementDisplayed(header_LoanPaymentspage)) {
                testStepInfo("Customer is on Loan Payments Page");
            } else {
                testStepFailed("Customer is not directed to Loan Payments Page");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Loan Payments Header . Exception: " + e.getClass());
        }
    }

    public void verifyProceedtoPayIsDisable() {
        try {
            if (isElementPresent(disabled_ProceedtoPay)) {
                scrollToWebElement(disabled_ProceedtoPay);
            }
            verifyElementIsDisplayedOrNot(disabled_ProceedtoPay);
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Proceed to Pay . Exception: " + e.getClass());
        }
    }

    public void verifyOverdueDetails() {
        try {
            String loancards = "Number of Loan Cards#xpath=//div[@class='boxpart']/div/div[@class='loans_overdues_box']";
            String emiod = "Overdue Details - #xpath=//div[@class='Overdue_list']/descendant::li/p";
            String infoicon = "Info icon for other Charges - #xpath=//div[@class='Overdue_list']/descendant::a/img[@src='https://experia-uat.bajajfinserv.in/UI/images/icons-info.svg']";
            String ocinfo = "Other Charges in Info icon #xpath=//h2[normalize-space()='Other Charges']";

            if (isElementDisplayed(loancards)) {
                for (int i = 1; i <= sizeOfLocator(loancards); i++) {
                    testStepInfo("Total Loan Cards:" + sizeOfLocator(loancards));
                    String arrow = "Arrow Icon#xpath=(//div[@class='boxpart']/div/div[@class='loans_overdues_box']//div[@class='overdues_accordian']//div[@class='arrow_acco'])[" + i + "]";
                    String infoicon1 = "Info icon for other Charges - #xpath=(//div[@class='Overdue_list']/descendant::a/img[contains(@src,'images/icons-info.svg')])[" + i + "]";
                    String ocinfo1 = "Other Charges in Info icon #xpath=(//h2[normalize-space()='Other Charges'])[" + i + "]";
                    String closePop = "Other Charges Close Button#xpath=(//a[@class='charges_bx_close']/img)[" + i + "]";
                    scrollToWebElement(arrow);
                    clickOn(arrow);
                    verifyFieldsDisplayedUsingTextAndForLoop("Overdue Details", "");
                    verifyValueUsingLabelUsingIteration("//div[@class='Overdue_list']/descendant::li/p", "EMI Overdues", "/following-sibling::strong", i, "");
                    verifyValueUsingLabelUsingIteration("//div[@class='Overdue_list']/descendant::li/p", "Other Charges", "/following-sibling::strong", i, "");
                    clickOnIfDisplayed(infoicon1);
                    verifyElementIsDisplayedUsingLocator(ocinfo1);
                    verifyValueUsingLabelUsingIteration("//div[@class='Overdue_list']/descendant::li/p", "Penal Interest", "/following-sibling::strong", i, "");
                    verifyValueUsingLabelUsingIteration("//div[@class='Overdue_list']/descendant::li/p", "Bounce Charges", "/following-sibling::strong", i, "");
                    verifyValueUsingLabelUsingIteration("//div[@class='Overdue_list']/descendant::li/p", "Penal Overdue", "/following-sibling::strong", i, "");
                    clickOn(closePop);
                    clickOn(arrow);
                }

            } else {
                testStepFailed(getRefOfXpath(loancards) + "is not Displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Overdue Details . Exception: " + e.getClass());
        }
    }

    public void clickOnPaymentsTileUsingAccountNumber(String accountNumber, String extra) {
        try {
            String accountNumberLocator = "LAN: " + accountNumber + "#xpath=//div[@class='lefttext']/p[normalize-space(text())='Loan Account Number:']/span[normalize-space(text())='" + accountNumber.trim() + "']/ancestor::a";
            clickOnIfDisplayed(accountNumberLocator);
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in click on payments tile using Account Number " + accountNumber + ". Exception: " + e.getClass());
        }
    }

    public void clickOnRadioButtonInPaymentOptionsUsingText(String optionText, String extra) {
        try {
            String radioButton_Option = optionText + " Radio Button#xpath=//strong[normalize-space(text())='" + optionText.trim() + "']/following-sibling::span[@class='checkmark']";
            clickOnIfDisplayed(radioButton_Option);
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in click on radio button in payment options using " + optionText + ". Exception: " + e.getClass());
        }
    }


    public void verifyRadioButtonRedirectionUsingText(String tabText, String extra) {
        try {
            String tab_Option = tabText + " tab#xpath=//div[@class='payment_step']/ul/li[@class='active']/a[normalize-space(text())='" + tabText.trim() + "']";
            if (isElementDisplayed(tab_Option)) {
                manualScreenshot(tabText + " Radio Button option has redirected to " + tabText + " tab successfully");
            } else {
                testStepFailed(tabText + " Radio Button option has not redirected to " + tabText + " tab");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify " + tabText + " Radio Button Redirection: " + e.getClass());
        }
    }

    public void verifyTabIsDisabled(String tabText, String extra) {
        try {
            String tab_Option = tabText + " tab#xpath=//div[@class='payment_step']/ul/li/a[normalize-space(text())='" + tabText + "' and (@style='color: #b5aeae')]";
            if (isElementDisplayed(tab_Option)) {
                manualScreenshot(tabText + " tab is Disabled successfully");
            } else {
                testStepFailed(tabText + " tab is Not Disabled");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify tab is Disabled. Exception: " + e.getClass());
        }
    }

    public void clickOnPaymentOptionInTabsUsingText(String optionText, String extra) {
        try {
            String tab_Option = optionText + " tab#xpath=//div[@class='payment_step']/ul/li/a[normalize-space(text())='" + optionText.trim() + "']";
            clickOnIfDisplayed(tab_Option);
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in click on Tab Option in payment options using " + optionText + " . Exception: " + e.getClass());
        }
    }

    public void verifyTabOptionsInPayments(String OptionstextWithSplit, String extra) {
        try {
            List<String> list = new LinkedList<String>();
            String option = "Tab Options in Payment Screen#xpath=//div[@class='payment_step']/ul/li/a";
            if (isElementPresent(option)) {
                for (int i = 1; i <= sizeOfLocator(option); i++) {
                    if (isElementDisplayed(option)) {
                        list.add(textGet(option));
                    }
                }
            } else {
                testStepFailed(getRefOfXpath(option) + " is Not Displayed");
            }
            if (list.size() > 0) {
                String[] split = OptionstextWithSplit.split("#");
                for (int i = 0; i < split.length; i++) {
                    String tabText = split[i];
                    if (list.contains(tabText)) {
                        manualScreenshot(getRefOfXpath(tabText) + " is Displayed Successfully");
                    } else {
                        testStepFailed(getRefOfXpath(tabText) + " is not Displayed");
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in ");
        }
    }

    /////////////////////PART PRE PAYMENT//////////////
    public void paymentOptionsTopSection(String header, String text, String buttonText, String accountNo, Boolean overDue, String extra) {
        try {
            String overDue_Title = header + " title with overdue#xpath=//div[@class='aligntext']/strong[normalize-space(text())='" + header.trim() + "']";
            String overDue_txt = header + " title with overdue#xpath=//div[@class='aligntext']/p[contains(text(),'" + text.trim() + "')]";
            String overDue_accNo = header + " Account No#xpath=//div[@class='aligntext']/p[contains(text(),'" + accountNo.trim() + "')]";
            String overDue_Button = buttonText + " button#xpath=//div[@class='aligntext']/following-sibling::i[normalize-space(text())='" + buttonText + "']";
            String Title = header + " title#xpath=//div[@class='select_loan']/strong[normalize-space(text())='" + header.trim() + "']";
            String txt = header + " title#xpath=//div[@class='select_loan']/strong[contains(text(),'" + text.trim() + "')]";
            String accNo = header + " Account No#xpath=//div[@class='select_loan']/strong[normalize-space(text())='" + accountNo.trim() + "']";
            if (overDue) {
                verifyElementIsDisplayedUsingLocator(overDue_Title);
                verifyElementIsDisplayedUsingLocator(overDue_txt);
                verifyElementIsDisplayedUsingLocator(overDue_accNo);
                verifyElementIsDisplayedUsingLocator(overDue_Button);
            } else {
                verifyElementIsDisplayedUsingLocator(Title);
                verifyElementIsDisplayedUsingLocator(txt);
                verifyElementIsDisplayedUsingLocator(accNo);
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in  Payment Options Top Section. Exception: " + e.getClass());
        }
    }

    public void verifyPartPrepaymentTextBoxWithNegative() {
        try {
            String paymentRangetxt = "Part Pre Payment range Text#xpath=//div[@class='drowdown_input prepayment']//div[@class='texthint' and not(@style='color: red;')]";
            String errMsg_paymentRangetxt = "Error Message for Part Pre Payment range Text Box#xpath=//div[@class='drowdown_input prepayment']//div[@class='texthint' and (@style='color: red;')]";
            String txtBox_PartPrePayment = "Part Pre Payment range Text Box#xpath=//input[@name='amount']";
            if (isElementDisplayed(paymentRangetxt)) {
                String text = getText(paymentRangetxt);
                String[] split = text.split(" Rs. ");
                String minstring = split[1].split(" ")[0].replaceAll(",", "").trim().split("\\.")[0];
                String maxstring = split[2].trim().replaceAll(",", "").trim().split("\\.")[0];
                int min = Integer.parseInt(minstring);
                int max = Integer.parseInt(maxstring);
//                if(String.valueOf(min).contains(".")){
//                    min = Double.parseDouble(String.valueOf(min).split(".")[0]);
//                }
//                if(String.valueOf(max).contains(".")){
//                    max= Double.parseDouble(String.valueOf(max).split(".")[0]);
//                }
                Boolean flag = false;
                if (isElementDisplayed(txtBox_PartPrePayment)) {
                    flag = true;
                    clearEditBox(txtBox_PartPrePayment);
                    typeIn(txtBox_PartPrePayment, String.valueOf(min - 1));
                    waitTime(2);
                    if (isElementDisplayed(errMsg_paymentRangetxt)) {
                        manualScreenshot(getText(errMsg_paymentRangetxt) + " Error Message is Displayed Successfully");
                    } else {
                        testStepFailed(getRefOfXpath(errMsg_paymentRangetxt) + " is Not Displayed");
                    }
                } else {
                    testStepFailed(getRefOfXpath(txtBox_PartPrePayment) + " is Not Displayed");
                }
                if (flag) {
                    clearEditBox(txtBox_PartPrePayment);
                    typeIn(txtBox_PartPrePayment, String.valueOf(max + 1));
                    if (isElementDisplayed(errMsg_paymentRangetxt)) {
                        manualScreenshot(getText(errMsg_paymentRangetxt) + " Error Message is Displayed Successfully");
                    } else {
                        testStepFailed(getRefOfXpath(errMsg_paymentRangetxt) + " is Not Displayed");
                    }
                }
            } else {
                testStepFailed(getRefOfXpath(paymentRangetxt) + " is Not Displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Part Pre payment Text Box with Negative value. Exception: " + e.getClass());
        }
    }


    public static final String paymentRangetxt = "Part Pre Payment range Text#xpath=//div[@class='drowdown_input prepayment']//div[@class='texthint' and not(@style='color: red;')]";
    public static final String errMsg_paymentRangetxt = "Error Message for Part Pre Payment range Text Box#xpath=//div[@class='drowdown_input prepayment']//div[@class='texthint' and (@style='color: red;')]";
    public static final String txtBox_PartPrePayment = "Part Pre Payment range Text Box#xpath=//input[@name='amount']";
    public static final String txt_autoPopulatedAmount = "Auto Populated Amount text#xpath=//p[normalize-space(text())='Part Pre-Payment Amount']/following-sibling::strong[starts-with(normalize-space(text()),'Rs. ')]";
    public static final String disable_ProceedbuttonInPayments = "Proceed to Pay Button (Disable) #xpath=//button[@id='procedPay' and (@disabled='disabled')]";
    public static final String active_ProceedbuttonInPayments = "Proceed to Pay Button (Active) #xpath=//button[@id='procedPay' and not(@disabled='disabled')]";


    public double getMinValueOfPartPrePayment() {
        double value = 0;
        try {
            if (isElementDisplayed(paymentRangetxt)) {
                String text = getText(paymentRangetxt);
                String[] split = text.split(" Rs. ");
                value = Double.parseDouble(split[1].split(" ")[0].replaceAll(",", "").trim());
//                if(String.valueOf(value).contains(".")){
//                    value = Double.parseDouble(String.valueOf(value).split(".")[0]);
//                }

            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in get min Value of Part Pre Payment. Exception: " + e.getClass());
        }
        return value;
    }

    public double getMaxValueOfPartPrePayment() {
        double value = 0;
        try {
            if (isElementDisplayed(paymentRangetxt)) {
                String text = getText(paymentRangetxt);
                String[] split = text.split(" Rs. ");
                value = Double.parseDouble(split[2].trim().replaceAll(",", "").trim());
                if (String.valueOf(value).contains(".")) {
                    value = Double.parseDouble(String.valueOf(value).split(".")[0]);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in get min Value of Part Pre Payment. Exception: " + e.getClass());
        }
        return value;
    }


    public void verifyPartPrepaymentTextBoxWithPositive() {
        try {
            if (isElementDisplayed(paymentRangetxt)) {
                String text = getText(paymentRangetxt);
                String[] split = text.split(" Rs. ");
                String minstring = split[1].split(" ")[0].replaceAll(",", "").trim().split("\\.")[0];
                String maxstring = split[2].trim().replaceAll(",", "").trim().split("\\.")[0];
                int min = Integer.parseInt(minstring);
                int max = Integer.parseInt(maxstring);
//                if(String.valueOf(min).contains(".")){
//                    min = Double.parseDouble(String.valueOf(min).split(".")[0]);
//                }
//                if(String.valueOf(max).contains(".")){
//                    max= Double.parseDouble(String.valueOf(max).split(".")[0]);
//                }
                Boolean flag = false;
                if (isElementDisplayed(txtBox_PartPrePayment)) {
                    flag = true;
                    clearEditBox(txtBox_PartPrePayment);
                    typeIn(txtBox_PartPrePayment, String.valueOf(min + 1));
                    if (!isElementDisplayed(errMsg_paymentRangetxt)) {
                        manualScreenshot(getRefOfXpath(errMsg_paymentRangetxt) + " Error Message is not Displayed Successfully");
                    } else {
                        testStepFailed(getRefOfXpath(errMsg_paymentRangetxt) + " is Displayed");
                    }
                } else {
                    testStepFailed(getRefOfXpath(txtBox_PartPrePayment) + " is Not Displayed");
                }
                if (flag) {
                    clearEditBox(txtBox_PartPrePayment);
                    typeIn(txtBox_PartPrePayment, String.valueOf(max - 1));
                    if (!isElementDisplayed(errMsg_paymentRangetxt)) {
                        manualScreenshot(getRefOfXpath(errMsg_paymentRangetxt) + " Error Message is Not Displayed Successfully");
                    } else {
                        testStepFailed(getRefOfXpath(errMsg_paymentRangetxt) + " is Displayed");
                    }
                }
            } else {
                testStepFailed(getRefOfXpath(paymentRangetxt) + " is Not Displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Part Pre payment Text  Box with Positive value. Exception: " + e.getClass());
        }
    }

    public void verifyPartPrePaymentTextBoxAutoPopulatedValue() {
        try {
            double min1 = getMinValueOfPartPrePayment();
            //Added
            int min = (int) Math.round(min1);
            //
            String inputBox = getAttributeValue(txtBox_PartPrePayment);
            String[] split = inputBox.split(" Rs.");
            String value = split[1].split(".")[0].replaceAll(",", "").trim();

            int inputValue = Integer.parseInt(value);
            if (isElementPresent(txtBox_PartPrePayment)) {
                if (inputValue == min) {
                    manualScreenshot("Part Pre payment Text Box Auto Populated Value is Equal to Minimum Value of part Pre Payment verified successfully");
                } else {
                    stepFailed("Hint Text Minimum Amount: " + min1);
                    stepFailed("Text Box Auto populated Amount: " + getAttributeValue(txtBox_PartPrePayment));
                    testStepFailed("Part Pre payment Text Box Auto Populated Value is not Equal to Minimum Value of part Pre Payment");
                }
            } else {
                testStepFailed(getRefOfXpath(txtBox_PartPrePayment) + " is Not Displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Part Pre Payment text Box Auto Populated Value. Exception: " + e.getClass());
        }
    }

    public void verifyPartPrePaymentTextDetailsPopulatedValue() {
        try {
            double min = getMinValueOfPartPrePayment();
            double max = getMaxValueOfPartPrePayment();
            if (isElementDisplayed(txtBox_PartPrePayment)) {
                clearEditBox(txtBox_PartPrePayment);
                typeIn(txtBox_PartPrePayment, String.valueOf(min));
                if (isElementDisplayed(txt_autoPopulatedAmount)) {
                    String amountPopulatedMin = getText(txt_autoPopulatedAmount).trim().replaceAll("Rs. ", "").replaceAll(",", "");
                    if (amountPopulatedMin.equals(min)) {
                        manualScreenshot("Minimum Value Amount Text is Displayed Below in Payment details title successfully");
                    } else {
                        testStepFailed("Minimum Value Amount Text is not Displayed Below in Payment details title");
                    }
                    clearEditBox(txtBox_PartPrePayment);
                    typeIn(txtBox_PartPrePayment, String.valueOf(max));
                    String amountPopulatedMax = getText(txt_autoPopulatedAmount).trim().replaceAll("Rs. ", "").replaceAll(",", "");
                    if (amountPopulatedMax.equals(max)) {
                        manualScreenshot("Maximum Value Amount Text is Displayed Below in Payment details title successfully");
                    } else {
                        testStepFailed("Maximum Value Amount Text is not Displayed Below in Payment details title");
                    }
                    clearEditBox(txtBox_PartPrePayment);
                    typeIn(txtBox_PartPrePayment, String.valueOf(min - 1));
                    String amountPopulatedBelowMin = getText(txt_autoPopulatedAmount).trim().replaceAll("Rs. ", "").replaceAll(",", "");
                    if (amountPopulatedBelowMin.equals(max)) {
                        manualScreenshot("Below than Minimum Value Amount Text is not Displayed Below in Payment details title successfully");
                        if (amountPopulatedMax.equals("0")) {
                            manualScreenshot("Zero Value is Displayed for Less than Minimum value");
                        } else {
                            testStepFailed("Zero Value is not Displayed for Less than Minimum value");
                        }
                    } else {
                        testStepFailed("Below than minimum Value Amount Text is Displayed Below in Payment details title");
                    }
                    clearEditBox(txtBox_PartPrePayment);
                    typeIn(txtBox_PartPrePayment, String.valueOf(min - 1));
                    String amountPopulatedAboveMax = getText(txt_autoPopulatedAmount).trim().replaceAll("Rs. ", "").replaceAll(",", "");
                    if (amountPopulatedAboveMax.equals(max)) {
                        manualScreenshot("Above than Maximum Value Amount Text is not Displayed Below in Payment details title successfully");
                        if (amountPopulatedMax.equals("0")) {
                            manualScreenshot("Zero Value is Displayed for Above than Maximum value");
                        } else {
                            testStepFailed("Zero Value is not Displayed for Above than Maximum value");
                        }
                    } else {
                        testStepFailed("Above than Maximum Value Amount Text is  Displayed Below in Payment details title");
                    }

                } else {
                    testStepFailed(getRefOfXpath(txtBox_PartPrePayment) + " is Not Displayed");
                }
            } else {
                testStepFailed(getRefOfXpath(txtBox_PartPrePayment) + " is Not Displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Part Pre payment Details Populated Text Value based on Text Box Value. Exception: " + e.getClass());
        }
    }

//    public void verifyTotalAmountBasedSelectionOverdueRadioSelection(int noOfOverDueSelection,String extra) {
//        try {
//            double value=0;
//            double total=0;
//            String radiobtnOverduePage = "Radio Button in Overdue Page #xpath=//div[@class='overdues_accordian']/preceding::label[@class='overdues']/span[@class='checkmark']";
//            String txt_amount_emiOverDue = "EMI Over Due Amount#xpath=//div[@class='overdues_accordian']//div[@class='right_box']/strong";
//            String amountTotal = "Total Amount to Pay#xpath=//strong[@id='EmitotalAmt']";
//            if (isElementPresent(radiobtnOverduePage)) {
//                for (int i = 1; i <= noOfOverDueSelection; i++) {
//                    String radiobtn = "Radio Button in Overdue Page #xpath=(//div[@class='overdues_accordian']/preceding::label[@class='overdues']/span[@class='checkmark'])[" + i + "]";
//                    String txt_amount = "EMI Over Due Amount "+i+"#xpath=(//div[@class='overdues_accordian']//div[@class='right_box']/strong)["+i+"]";
//                    scrollToWebElementIfPresent(radiobtn);
//                    clickOnIfDisplayed(radiobtn);
//                    scrollToWebElementIfPresent(txt_amount);
//                    if (isElementDisplayed(txt_amount)) {
//                        value =value+Double.parseDouble(getText(txt_amount).trim().replaceAll("Rs. ", "").replaceAll(",", "").split(".")[0]);
//                        if (isElementPresent(amountTotal)) {
//                            scrollToWebElement(amountTotal);
//                            total =Double.parseDouble(getText(amountTotal).trim().replaceAll("Rs. ", "").replaceAll(",", "").split(".")[0]);
//                            if (value==total) {
//testStepPassed("Total Amount Value is Working successfully on selection of "+i+" over due Amount");
//                            } else {
//                                testStepPassed("Total Amount Value is not Working on selection of "+i+" over due Amount");
//                            }
//                        } else {
//                            testStepFailed(getRefOfXpath(amountTotal)+" is Not Present");
//                        }
//                    } else {
//                        testStepFailed(getRefOfXpath(txt_amount)+" is Not Displayed");
//                    }
//                }
//            } else {
//                testStepFailed(getRefOfXpath(radiobtnOverduePage)+" is Not Displayed");
//            }
//
//        } catch (Exception e) {
//            e.printStackTrace();
//            testStepFailed("Failed in verify Overdue Radio Selection. Exception: " + e.getClass());
//        }
//    }


    public void verifyProceedButton(String txtBoxLocator, String positiveValues, String negativeValues, String comment) {
        try {
            Boolean flag = scrollToWebElementIfPresent(txtBoxLocator);
            if (isElementDisplayed(txtBoxLocator) && flag) {
                clearEditBox(txtBoxLocator);
                if (!positiveValues.equals("")) {
                    String[] pos = positiveValues.split(",");
                    for (int i = 0; i < pos.length; i++) {
                        String value = pos[i];
                        typeIn(txtBoxLocator, value);
                        if (isElementDisplayed(active_ProceedbuttonInPayments)) {
                            manualScreenshot(comment + " is working successfully");
                        } else {
                            testStepFailed(comment + " is Not working");
                        }
                    }
                }
                if (!negativeValues.equals("")) {
                    String[] pos = negativeValues.split(",");
                    for (int i = 0; i < pos.length; i++) {
                        String value = pos[i];
                        typeIn(txtBoxLocator, value);
                        if (isElementDisplayed(disable_ProceedbuttonInPayments)) {
                            manualScreenshot(comment + " is working successfully");
                        } else {
                            testStepFailed(comment + " is Not working");
                        }
                    }
                }
            } else {
                testStepFailed(getRefOfXpath(txtBoxLocator) + " is Not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify proceed Button in " + getRefOfXpath(txtBoxLocator) + ". Exception: " + e.getClass());
        }
    }


    public void verifyPartPrePaymentTextBoxIsDisabled() {
        try {
            String disabled_txtBox_PartPrePayment = "Disabled Text Box in Part Pre Payment#xpath=//input[@disabled][@id='termAmountfield']";
            if (isElementDisplayed(disabled_txtBox_PartPrePayment)) {
                manualScreenshot("Part pre payement Text Box is Disabled for EMI Over Due successfully");
            } else {
                testStepFailed("Part pre Payment text box is Not Disabled for EMI over due");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Part pre payment text box is Disabled. Exception: " + e.getClass());
        }
    }

    public void verifyPartPrePaymentDropdownIsDisabled() {
        try {
            String disabled_dropdown_PartPrePayment = "Disabled dropdown in Part Pre Payment#xpath=//input[@class='select_value border_active'][@disabled]";
            if (isElementDisplayed(disabled_dropdown_PartPrePayment)) {
                manualScreenshot("Part pre payement dropdown is Disabled for EMI Over Due successfully");
            } else {
                testStepFailed("Part pre Payment drop down is Not Disabled for EMI over due");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Part pre payment dropdown is Disabled. Exception: " + e.getClass());
        }
    }


    public Map<String, String> verifyPaymentDetailsLabels(String title, String labelsWithHash) {
        Map<String, String> map = new LinkedHashMap<>();
        try {
            String titleTxt = title + " Text#xpath=//strong[normalize-space(text())='" + title.trim() + "']";
            verifyElementIsDisplayedUsingLocator(titleTxt);
            String[] split = labelsWithHash.split("#");
            for (int i = 0; i < split.length; i++) {
                String value = split[i];
                String labelValue = value + " value#xpath=//strong[normalize-space(text())='" + title.trim() + "']/../following-sibling::div//p[normalize-space(text())='" + value.trim() + "']/following-sibling::strong[not(@style='display:none')]";
                if (isElementDisplayed(labelValue)) {
                    testStepPassed(value + " value is Displayed successfully");
                    map.put(value, getText(labelValue));
                } else {
                    stepFailed(value + " is not Displayed");
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Payment Details Labels. Exception: " + e.getClass());
        }
        return map;
    }

    public Map<String, String> verifyContactDetails(String title, String labelsWithHash) {
        Map<String, String> map = new LinkedHashMap<>();
        try {
            String titleTxt = title + " Text#xpath=//strong[normalize-space(text())='" + title.trim() + "']";
            verifyElementIsDisplayedUsingLocator(titleTxt);
            String[] split = labelsWithHash.split("#");
            for (int i = 0; i < split.length; i++) {
                String value = split[i];
                String labelValue = value + " value#xpath=//strong[normalize-space(text())='" + title.trim() + "']/../following-sibling::div//p[normalize-space(text())='" + value.trim() + "']/following-sibling::strong[not(@style='display:none')]";
                if (isElementDisplayed(labelValue)) {
                    testStepPassed(value + " value is Displayed successfully");
                    map.put(value, getText(labelValue));
                } else {
                    stepFailed(value + " is not Displayed");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify contact Details. Exception: " + e.getClass());
        }
        return map;
    }

///////////////////////ADVANCE EMI////////////////////

    public static final String dropdown_monthYear_AdvanceEmi = "Advance EMI Year&Month Dropdown#xpath=//select[@id='AdvEMI']";

    public void verifyAdvancedEmiDropdownIsDisabled() {
        try {
            String disabled_dropdown_PartPrePayment = "Disabled dropdown in Advanced Emi Payment#xpath=//input[@class='select_value cus_font'][@disabled]";
            if (isElementDisplayed(disabled_dropdown_PartPrePayment)) {
                manualScreenshot("Advanced Emi payement dropdown is Disabled for EMI Over Due successfully");
            } else {
                testStepFailed("Advanced Emi Payment drop down is Not Disabled for EMI over due");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Advanced Emi payment dropdown is Disabled. Exception: " + e.getClass());
        }
    }

    public void verifyNumberOfDropdownValues(String dropdownLocator, int numberOfValues, String period, String extra) {
        try {
            if (GetAllOptionsInDropDown(dropdownLocator).size() == numberOfValues) {
                testStepPassed(numberOfValues + " drop down values only showing for " + getRefOfXpath(dropdownLocator) + " in " + period);
            } else {
                stepFailed(numberOfValues + " drop down values is not showing for " + getRefOfXpath(dropdownLocator) + " in " + period);
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify number of dropdown values. Exception: " + e.getClass());
        }
    }

    public void verifyDropdownValuesInPayments(String dropdownLocator, int noOfMonths, String extra) {
        try {
            List<String> dates = getNumberOfDatesPlus("MMMM yyyy", noOfMonths);
            List<WebElement> elements = GetAllOptionsInDropDown(dropdownLocator);
            for (int i = 0; i < elements.size(); i++) {
                String currentLocValue = elements.get(i).getText().trim();
                if (dates.contains(currentLocValue)) {
                    testStepPassed(currentLocValue + " is Expected date verified successfully");
                    dates.remove(currentLocValue);
                } else {
                    stepFailed(currentLocValue + " is not Expected Date in " + getRefOfXpath(dropdownLocator));
                }
            }
            if (!dates.isEmpty()) {
                testStepFailed("Remaining Expected Dates in Drop down is " + dates);
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify dropdown values in payments. Exception: " + e.getClass());
        }
    }

    ///////////////////////////////////////MUSTAQ
    public void verifyOtherChargesinOverdueTabPage() {
        try {
            String infoicon = "Info icon for other Charges - #xpath=//div[@class='p_tip_div p_position']/descendant::a/img[@src='https://experia-uat.bajajfinserv.in/UI/images/icons-info.svg']";
            String ocinfo = "Other Charges in Info icon #xpath=//h2[normalize-space()='Other Charges']";
            String emiod = "Overdue Details - #xpath=//ul[@class='tool_til_ul_pd']/descendant::li/p";
            if (isElementDisplayed(infoicon)) {
                clickOn(infoicon);
                verifyElementIsDisplayedUsingLocator(ocinfo);
                verifyValueUsingLabel(emiod, "Penal Interest", "/following-sibling::strong", "");
                verifyValueUsingLabel(emiod, "Bounce Charges", "/following-sibling::strong", "");
                verifyValueUsingLabel(emiod, "Penal Overdue", "/following-sibling::strong", "");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Other Charges in Overdue Tab Page . Exception: " + e.getClass());
        }
    }


    public void verifyLoanPaymentPageContents() {
        try {
            String title = "Title- Loans with Overdues #xpath=//strong[normalize-space()='Loans with overdue payments']";
            String totamttopay = "Total amount to pay#xpath=//p[normalize-space()='Total amount to pay']";
            String amtpresent = "Total amount to pay:#xpath=//div[@class='amounttopay']/strong";
            String loancards = "Number of Loan Cards#xpath=//div[@class='boxpart']/div/div[@class='loans_overdues_box']";
            if (isElementPresent(title)) {
                verifyElementIsDisplayedOrNot(title);
                for (int i = 1; i <= sizeOfLocator(loancards); i++) {
                    testStepInfo("Total Loan Cards Count:" + sizeOfLocator(loancards));
                    String loanname = "Name on Loan Card: " + i + "#xpath=(//div[@class='loans_overdues_box']//div[@class='lefttext']/descendant::strong)[" + i + "]";
                    String loannum = "Loan Account Number: " + i + "#xpath=(//div[@class='loans_overdues_box']//div[@class='lefttext']/descendant::p)[" + i + "]";
                    String ovrdueAmt = "Overdue Amount Label: " + i + "#xpath=(//div[@class='right_box']//p)[" + i + "]";
                    String overdueValue = "Overdue Amount Value: " + i + "#xpath=(//div[@class='right_box']//p/following-sibling::strong)[" + i + "]";
                    verifyFieldsDisplayedUsingLocatorWithComment(loanname, getRefOfXpath(loanname) + "is" + getTextPresent(loanname));
                    verifyFieldsDisplayedUsingLocatorWithComment(loannum, getRefOfXpath(loanname) + "is" + getTextPresent(loannum));
                    verifyElementIsDisplayedOrNot(ovrdueAmt);
                    verifyFieldsDisplayedUsingLocatorWithComment(overdueValue, getRefOfXpath(overdueValue) + "is" + getTextPresent(overdueValue));
                }
                if (isElementPresent(totamttopay)) {
                    scrollToWebElement(totamttopay);
                    verifyElementIsDisplayedOrNot(totamttopay);
                    testStepInfo("Total amount to pay is: " + getTextPresent(amtpresent));
                }
            } else {
                testStepFailed(getRefOfXpath(title) + "is not displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Loan Payments Page Contents . Exception: " + e.getClass());
        }
    }

    public void verifyEnterAmtTextBoxisEditable() {
        try {
            String locatorTextBox = "Enter Amount to Pay Text Box#xpath=//div[@class='inputMainBlock']/input";
            if (isElementDisplayed(locatorTextBox)) {
//                testStepPassed("Enter Amount to Pay Text Box is Editable");
                verifyTextBoxIsEditabledUsingLocator(locatorTextBox);
            } else {
                testStepFailed("Enter Amount to Pay Text Box is non Editable");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Enter Amt TextBox is Editable. Exception: " + e.getClass());
        }
    }

    public void verifyEnterAmtTextBoxInvalidValues(String invalidValues) {
        try {
            String locatorTextBox = "Enter Amount to Pay Text Box#xpath=//div[@class='inputMainBlock']/input";
            String errormsg = "Error message for Invalid values#xpath=//div[@class='texthint' and @style='color: red;']";
            if (isElementDisplayed(locatorTextBox)) {
                clickOn(locatorTextBox);
                String[] split = invalidValues.split(",");
                for (int i = 0; i < split.length; i++) {
                    String value = split[i];
                    clearEditBox(locatorTextBox);
                    typeIn(locatorTextBox, value);
                    if (isElementDisplayed(errormsg)) {
                        manualScreenshot(locatorTextBox.split("#")[0] + " Error message is displayed successfully");
                    } else {
                        testStepFailed(locatorTextBox.split("#")[0] + " Error message is not displayed");
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Enter Amt TextBox. Exception: " + e.getClass());
        }
    }

    public void verifyEnterAmtTextBoxwithNoValue() {
        try {
            String locatorTextBox = "Enter Amount to Pay Text Box#xpath=//div[@class='inputMainBlock']/input";
            String errormsg = "Error message for Invalid values#xpath=//div[@class='texthint' and @style='color: red;']";
            String disabled_ProceedtoPay = "Disabled Proceed to Pay in Payments Page#xpath=//input[@id='overdueProcedPay' and @disabled='disabled']";
            String enter_Amount = "Disabled Proceed to Pay in Payments Page#xpath=//strong[normalize-space(text())='Enter your amount']";
            if (isElementDisplayed(locatorTextBox)) {
//                clickOn(locatorTextBox);
                clearEditBox(locatorTextBox);
//                clickOn(enter_Amount);
                clickOnButtonUsingTextUsingForLoop("Proceed To Payment");
                verifyFieldsDisplayedUsingTextAndForLoop("Please enter the Overdue Amount in the given range", "");
                clickOnButtonUsingTextUsingForLoop("OK");
                //                if (isElementPresent(errormsg)) {
//                    scrollToWebElement(errormsg);
//                    verifyElementIsDisplayedOrNot(errormsg);
//                    manualScreenshot(" Error message is displayed successfully:" + getTextPresent(errormsg));
//                    verifyElementIsDisplayedOrNot(disabled_ProceedtoPay);
//                } else {
//                    testStepFailed(locatorTextBox.split("#")[0] + " Error message is not displayed");
//                }

            } else {
                testStepFailed(getRefOfXpath(locatorTextBox) + "is not Displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Enter Amt TextBox with No Value. Exception: " + e.getClass());
        }
    }

    public void verifyEnterAmtTextBoxwithOverdueAmount() {
        try {
            String custname = "Customer Details#xpath=//h3[@id='lblCustName']";
            String paymenttypes = "Payment types#xpath=//div[@class='selmethod_tabs']/descendant::ul[@id='tabs-nav']//a";
            String locatorTextBox = "Enter Amount to Pay Text Box#xpath=//div[@class='inputMainBlock']/input";

            if (isElementPresent(locatorTextBox)) {
                String Amount = getAttributeUsingLocatorAndAttribute(locatorTextBox, "value");
                manualScreenshot("Aount in Enter your Amount Input box is by default present: " + Amount);
                verifyButtonIsDisplayedInThePage("Proceed To Payment");
                clickOnButtonUsingTextUsingForLoop("Proceed To Payment");
                waitForPageToLoad();
                verifyFieldsDisplayedUsingLocatorWithComment(custname, getTextPresent(custname));
                verifyFieldsDisplayedUsingText("You can choose any of the payment gateways to proceed.");
//                verifyTextElementUsingOptionsTextUsingHash("UPI#Debit Card#NetBanking");

            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Enter Amt TextBox with Overdue Amount. Exception: " + e.getClass());
        }
    }

    public void verifyProceedButtonDisabled() {
        try {
            String disProceed = "Disabled Proceed Button#xpath=//button[@id='optionSubmit' and @disabled='disabled']";

            if (isElementDisplayed(disProceed)) {
                manualScreenshot(getRefOfXpath(disProceed) + "is in Disabled state without selection of Radio Button");
            } else {
                testStepFailed(getRefOfXpath(disProceed) + "is not in Disabled state");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Proceed Button Disabled. Exception: " + e.getClass());
        }
    }

    public void verifyProceedButtonActive(String optionText) {
        try {
            String actProceed = "Active Proceed Button#xpath=//button[@id='optionSubmit' and @onclick='ProcedToPayClickActiveLoanPay()']";
            String radioButton_Option = optionText + " Radio Button#xpath=//strong[normalize-space(text())='" + optionText.trim() + "']/following-sibling::span[@class='checkmark']";
            clickOnIfDisplayed(radioButton_Option);
            if (isElementDisplayed(actProceed)) {
                manualScreenshot(getRefOfXpath(actProceed) + "is Clickable on selection of Radio Button ");
            } else {
                testStepFailed(getRefOfXpath(actProceed) + "is not Clickable on selection of Radio Button");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Proceed Button Disabled. Exception: " + e.getClass());
        }
    }

    public void verifyOverdueRadioSelection(int noofOverdues, String extra) {
        try {
//            String radiobtnOverduePage = "Radio Button in Overdue Page #xpath=//div[@class='overdues_accordian']/preceding::label[@class='overdues']/span[@class='checkmark']";
            String radiobtnOverduePage = "Radio Button in Overdue Page #xpath=//label[@class='overdues multipleoverduecheck']/span[@class='checkmark']";
            if (isElementPresent(radiobtnOverduePage)) {
                for (int i = 1; i <= noofOverdues; i++) {
//                    String radiobtn = "Radio Button in Overdue Page #xpath=(//div[@class='overdues_accordian']/preceding::label[@class='overdues']/span[@class='checkmark'])[" + i + "]";
                    String radiobtn = "Radio Button in Overdue Page #xpath=(//label[@class='overdues multipleoverduecheck']/span[@class='checkmark'])[" + i + "]";
                    clickOnIfDisplayed(radiobtn);
                    scrollToWebElement(active_ProceedtoPay);
                    if (isElementDisplayed(active_ProceedtoPay)) {
                        manualScreenshot("Customer is able to select " + i + " Loan Overdues Successfully");
                        scrollToWebElement(radiobtn);
                    } else {
                        testStepFailed("Customer is not able to select " + i + " Loan Overdues");
                    }
                }
            } else {
                testStepFailed(getRefOfXpath(radiobtnOverduePage) + "is not present");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Overdue Radio Selection. Exception: " + e.getClass());
        }
    }

    public void verifyTotalAmountBasedSelectionOverdueRadioSelection(int noOfOverDueSelection, String extra) {
        try {
//            double value = 0;
            int value = 0;
//            double total = 0;
            int total = 0;
            String radiobtnOverduePage = "Radio Button in Overdue Page #xpath=//label[@class='overdues multipleoverduecheck']/span[@class='checkmark']";
            String txt_amount_emiOverDue = "EMI Over Due Amount#xpath=//div[@class='overdues_accordian']//div[@class='right_box']/strong";
            String amountTotal = "Total Amount to Pay#xpath=//strong[@id='EmitotalAmt']";
            if (isElementPresent(radiobtnOverduePage)) {
                for (int i = 1; i <= noOfOverDueSelection; i++) {
                    String radiobtn = "Radio Button in Overdue Page #xpath=(//label[@class='overdues multipleoverduecheck']/span[@class='checkmark'])[" + i + "]";
                    String txt_amount = "EMI Over Due Amount " + i + "#xpath=(//div[@class='overdues_accordian']//div[@class='right_box']/strong)[" + i + "]";
                    scrollToWebElementIfPresent(radiobtn);
                    clickOnIfDisplayed(radiobtn);
                    scrollToWebElementIfPresent(txt_amount);
                    if (isElementDisplayed(txt_amount)) {
                        value = value + Integer.valueOf(getText(txt_amount).trim().replaceAll("Rs. ", "").replaceAll(",", ""));
                        if (isElementPresent(amountTotal)) {
                            scrollToWebElement(amountTotal);
                            total = Integer.valueOf(getText(amountTotal).trim().replaceAll("Rs. ", "").replaceAll(",", ""));
                            if (value == total) {
                                testStepPassed("Total Amount Value is Working successfully on selection of " + i + " over due Amount");
                            } else {
                                testStepPassed("Total Amount Value is not Working on selection of " + i + " over due Amount");
                            }
                        } else {
                            testStepFailed(getRefOfXpath(amountTotal) + " is Not Present");
                        }
                    } else {
                        testStepFailed(getRefOfXpath(txt_amount) + " is Not Displayed");
                    }
                }
            } else {
                testStepFailed(getRefOfXpath(radiobtnOverduePage) + " is Not Displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Overdue Radio Selection. Exception: " + e.getClass());
        }
    }

    public String verifyForeclosureChargeisEditable() {
        String tag = "";
        try {
            if (isElementDisplayed(value_ForeclosureAmount)) {
                tag = driver.findElement(By.xpath("//div[@class='Inclusive_payment']//strong")).getTagName();
                if (!tag.contains("input")) {
                    testStepPassed("Foreclosure Charges is non editable");
                } else {
                    testStepFailed("Foreclosure Charges is editable");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Foreclosure Charge is Editable. Exception: " + e.getClass());
        }
        return tag;
    }


    public void verifyDownloadForeclosureButton() {
        try {
            if (isElementDisplayed(dwnld_ForeclosureLetterBTN)) {
                clickOn(dwnld_ForeclosureLetterBTN);
                manualScreenshot("Foreclosure Letter");
                verifyDownLoadAndDeleteLatestFileNameFromLocalMachine("ForeclosureLetter.pdf");
            } else {
                testStepFailed(getRefOfXpath(dwnld_ForeclosureLetterBTN) + "is not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Download Foreclosure Button. Exception: " + e.getClass());
        }
    }

    public void verifyForeclosureCancelButton() {
        try {
            String foreclosurecancel = "Foreclosure Cancel Button#xpath=//button[@type='button'][normalize-space()='Cancel']";
            if (isElementPresent(foreclosurecancel)) {
                scrollToWebElement(foreclosurecancel);
                clickOn(foreclosurecancel);
                waitForPageToLoad();
                verifyElementIsDisplayedOrNot(header_LoanPaymentspage);

            } else {
                testStepFailed("Cancel Button not found");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Foreclosure Cancel Button. Exception: " + e.getClass());
        }
    }

    public void verifyForeclosureProctoPayWIthoutReason() {
        try {
            String foreclosureProctoPay = "Foreclosure Proceed to Pay Disabled Button#xpath=//button[@id='foreclosurePay' and normalize-space(text()='disabled')]";
            if (isElementPresent(foreclosureProctoPay)) {
                scrollToWebElement(foreclosureProctoPay);
                if (isElementDisplayed(foreclosureProctoPay)) {
                    testStepInfo("Proceed to Pay is disabled and is not clickable without selecting a reason");
                } else {
                    testStepFailed("Foreclosure Proceed to Pay Disabled Button not found");
                }

            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Foreclosure ProctoPay WIthout Reason. Exception: " + e.getClass());
        }
    }


    public void verifyForeclosureReasonDropdown() {
        try {
            String foreclosuredropdown = "Foreclosure Reason Dropdown#xpath=//select[@id='Foreclosure_Reason']";
            String foreclosuretext = "Foreclosure Reason #xpath=//strong[normalize-space()='Foreclosure Reason']/following::label";
            String ptop = "Foreclosure Reason #xpath=//button[@id='foreclosurePay']";
            String custname = "Customer Details#xpath=//h3[@id='lblCustName']";

            if (isElementDisplayed(foreclosuredropdown)) {
                selectDropDownUsingText(foreclosuredropdown, "Applying for another loan");
                boolean flag = verifyButtonIsEnabledInThePageusingText("Proceed To Payment");
                if (flag) {
                    manualScreenshot("Dropdown Reason selected successfully");
                } else {
                    testStepFailed("Dropdown Reason not selected");
                }

            } else {
                testStepFailed(getRefOfXpath(foreclosuredropdown) + "is not displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Foreclosure Reason Dropdown. Exception: " + e.getClass());
        }
    }

    public void paymentPageDetails() {
        try {
            String custname = "Customer Details#xpath=//h3[@id='lblCustName']";
            String btn_Pay = "Pay Amount Button#xpath=//input[@type='submit']";
            waitForPageToLoad();
            verifyFieldsDisplayedUsingLocatorWithComment(custname, getTextPresent(custname));
            verifyFieldsDisplayedUsingText("You can choose any of the payment gateways to proceed.");
            verifyFieldDisplayedUsingTagAndText("h4", "Select Gateway", "");
            verifyFieldsUsingCommonXpathAndMultipleTextWithHash("//div[@class='radio_container']/child::label", "Worldline#PayU#CC Avenue", "");
            verifyFieldDisplayedUsingTagAndText("h4", "Select Payment Method", "");
            verifyTextElementUsingOptionsTextUsingHash("UPI#Debit Card#NetBanking");
            verifyButtonIsDisplayedInThePage("Cancel");
            verifyElementIsDisplayedOrNot(btn_Pay);
            navigateToBack();

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in payment Page Details . Exception" + e.getClass());
        }
    }


//////20122022

    public static final String infoicon_OtherCharges_Foreclosure = "Info icon for other Charges - #xpath=//div[@class='p_tip_div p_position']/descendant::img[@src='https://experia-uat.bajajfinserv.in/UI/images/icons-info.svg']/parent::a|//div[@class='p_tip_div p_position']/child::a";
    public static final String infoMsg_Foreclosure = "Info from AEM - #xpath=//div[@class='infotic_text cipBox']/p";
    public static final String foreclosur_SubHeader = "Info from AEM - #xpath=//div[@class='select_loan']/p[contains(text(),'Pay the entire amount for your Loan Account Number:')]";
    public static final String foreclosureDropDownSection = "Foreclosure Reason Section#xpath=//strong[normalize-space()='Foreclosure Reason']/ancestor::div[@class='payment_loan']";
    public static final String foreclosureDropdown = "Foreclosure Reason Dropdown#xpath=//select[@id='Foreclosure_Reason']";


    public void verifyForeclosurePageInfoOptions(String OptionswithHash, String extra) {
        try {
            if (isElementDisplayed(infoicon_OtherCharges_Foreclosure)) {
                clickOn(infoicon_OtherCharges_Foreclosure);
                manualScreenshot(getRefOfXpath(infoicon_OtherCharges_Foreclosure) + " is Displayed Successfully");
                verifyFieldsDisplayedUsingTextAndForLoop("Other Charges", "");
                String[] split = OptionswithHash.split("#");
                for (int i = 0; i < split.length; i++) {
                    String value = split[i];
                    verifyValueUsingLabel("//ul[@class='tool_til_ul_pd']/li/p", value.trim(), "/following-sibling::strong", "");
                }
            } else {
                testStepFailed(getRefOfXpath(infoicon_OtherCharges_Foreclosure) + " is not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Foreclosure Page Info options. Exception: " + e.getClass());
        }
    }


    public void verifyForeclosurePageSubHeader(String AccountNumber, String extra) {
        try {
            if (isElementPresent(foreclosur_SubHeader)) {
                String subHead = "Account Number - #xpath=//div[@class='select_loan']/p[contains(text(),'" + AccountNumber.trim() + "')]";
                if (isElementDisplayed(subHead)) {
                    testStepPassed(getRefOfXpath(foreclosur_SubHeader) + "+ +" + AccountNumber + " is verified Successfully");

                } else {
                    testStepFailed(getRefOfXpath(foreclosur_SubHeader) + "+ +" + AccountNumber + " is not verified");
                }

            } else {
                testStepFailed(getRefOfXpath(foreclosur_SubHeader) + " is not Displayed");

            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Foreclosure Page Sub Header. Exception: " + e.getClass());

        }
    }

    public void verifyAccountNumberMakePayments(String AccountNumber, String Subtext, String extra) {
        try {
            String subHead = "Account Number - #xpath=//div[@class='select_loan']/p[contains(text(),'" + AccountNumber.trim() + "')]";
            String subtext = "Subtext #xpath=//*[contains(text(),'" + Subtext.trim() + "')]";

            if (isElementPresent(subHead)) {
                if (isElementDisplayed(subHead)) {
                    verifyFieldsDisplayedUsingText(subtext);
                    testStepPassed(Subtext + " : " + AccountNumber + " is verified Successfully");

                } else {
                    testStepFailed(Subtext + "+ : +" + AccountNumber + " is not verified");
                }

            } else {
                testStepFailed(getRefOfXpath(subHead) + " is not Displayed");

            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Account Number Make Payments. Exception: " + e.getClass());

        }
    }

    public void verifymaxAmountErrorMsgOverdue() {
        try {
            String amtMsg = "Account Number - #xpath=//div[@class='texthint']";
            String locatorTextBox = "Enter Amount to Pay Text Box#xpath=//div[@class='inputMainBlock']/input";
            String errormsg = "Error message for Invalid values#xpath=//div[@class='texthint' and @style='color: red;']";

            if (isElementPresent(amtMsg)) {
                String line = getText(amtMsg);
                String[] HigherAmt = line.split("and Rs.");
                int Amount = Integer.parseInt(HigherAmt[1].trim().replaceAll(",", ""));
                int Amt2 = Amount + 10000;
                clearEditBox(locatorTextBox);
                typeIn(locatorTextBox, String.valueOf(Amt2));
                verifyFieldsDisplayedUsingLocatorWithComment(errormsg, getText(errormsg));
            } else {
                testStepFailed(getRefOfXpath(amtMsg) + " is not Displayed");

            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify max Amount Error Msg Overdue. Exception: " + e.getClass());

        }
    }


    public void clickOnPayNowButtonOverdue(String AccNumber, String extra) {
        try {
            String button = "" + AccNumber + " Tile#xpath=//i[normalize-space(text())='" + AccNumber.trim() + "']/ancestor::div[@class='grid_box']/following-sibling::div[@class='bottom_tags']/child::a[normalize-space(text())='Pay Now']";
            if (isElementDisplayed(button)) {
                clickOn(button);
                waitForPageToLoad();
            } else {
                testStepFailed(getRefOfXpath(button) + " is not Diplayed in HomePage My Relations");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("failed in click On Pay Now Button Overdue. Exception: " + e.getClass());
        }
    }

    /////////03012023
    public void verifyAdvancePaymentsAmount(int Months, String extra) {
        try {
            String advance = "Advance Payment Amount#xpath=//div[@class='ad_payment']/child::strong/child::span";
            String dropdown = "Advance Payment Amount#xpath=//select[@id='AdvEMI']";
            if (isElementDisplayed(advance)) {
                int adv = Integer.parseInt(getText(advance).replaceAll(",", ""));
                for (int i = 1; i <= Months; i++) {
                    selectDropDownUsingIndex(dropdown, i);
                    int adv2 = Integer.parseInt(getText(advance).replaceAll(",", ""));
                    for (int j = i + 1; j <= i + 1; j++) {
                        if (adv2 == (j * adv)) {
                            testStepPassed("Advance Payment amount is being displayed for the number of months " + j + " selected successfully i.e " + adv2);
                        } else {
                            testStepFailed("Advance Payment amount is not properly displayed for the number of months " + j + " selected i.e " + adv2);
                        }

                    }
                }

            } else {
                testStepFailed(getRefOfXpath(advance) + " is not Diplayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("failed in verify Advance Payments Amount. Exception: " + e.getClass());
        }
    }


    //Payment Journey

    public static final String enterAmount_PartPay = "Enter Amount Box in Part Prepayment Page#xpath=//input[@id='amountfield']";
    public static final String imp_Popup_PartPay = "Important in Popup Part Payment#xpath=//strong[normalize-space(text())='Important !']";
    public static final String radio_Foreclosure = "Foreclosure Option in Payment Popup#xpath=//strong[normalize-space(text())='Foreclosure']";

    public void verifyAmountsSamePaymentJourney() {
        try {
            String btn_Pay = "Amount in Payment Page #xpath=//input[@type='submit']";
            if (isElementDisplayed(btn_Pay)) {
                String amtPaymentPage = getAttributeValue(btn_Pay);
                int Amount1 = Integer.parseInt((amtPaymentPage).split("Rs. ")[1].replaceAll(",", ""));
                manualScreenshot(getRefOfXpath(btn_Pay) + Amount1);
                verifyButtonIsDisplayedInThePage("Cancel");
                clickOnButtonUsingTextUsingForLoop("Cancel");
                verifyRedirectionURLIfContains("MyAccountPayments/LoanPay/Receipt");
                String amtCancelPage = "Amount in Cancel Page #xpath=//p[@class='a_mandateref_title' and normalize-space(text())='AMOUNT']/following-sibling::p";
                int Amount2 = Integer.parseInt(getText(amtCancelPage).split("Rs. ")[1].replaceAll(",", ""));
                manualScreenshot(getRefOfXpath(amtCancelPage) + Amount2);
                if (Amount1 == Amount2) {
                    testStepPassed("Amounts displayed are same in Payment Page " + Amount1 + " and Cancel Page " + Amount2);
                } else {
                    testStepFailed("Amounts displayed are different in Payment Page " + Amount1 + " and Cancel Page " + Amount2);

                }
            } else {
                testStepFailed(getRefOfXpath(btn_Pay) + " is not Displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("failed in verify Amounts Same Payment Journey. Exception: " + e.getClass());
        }
    }

    public void verifyMoreThanLakhPaymentJourney(String Amount, String extra) {
        try {
            if (isElementDisplayed(enterAmount_PartPay)) {
                clearEditBox(enterAmount_PartPay);
                typeIn(enterAmount_PartPay, Amount);
            } else {
                testStepFailed(getRefOfXpath(enterAmount_PartPay) + " is not Displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("failed in verify MoreThan Lakh Payment Journey. Exception: " + e.getClass());

        }
    }


    public void verifyMakePaymentsPopup(String AccNumber) {
        try {
            String Header = "Header in Payments Popup#xpath=//strong[normalize-space(text())='Payment Options']";
            String loan_Number = "Loan Account Number " + AccNumber + " popup#xpath=//p[contains(text(),'LAN :')]//strong[contains(text(),'" + AccNumber.trim() + "')]";
            String options_Payment = "Payment Options#xpath=//div[@class='payment_options']//label[not(@style='display: none;')]//strong";

            if (isElementDisplayed(loan_Number)) {
                manualScreenshot(getRefOfXpath(loan_Number) + " is displayed Successfully");
                verifyElementIsDisplayedOrNot(Header);
                verifyButtonIsDisplayedInThePage("PROCEED");
                for (int i = 1; i <= sizeOfLocator(options_Payment); i++) {
                    String options_Payment1 = "Payment Options- #xpath=(//div[@class='payment_options']//label[not(@style='display: none;')]//strong)[" + i + "]";
                    String options_SubTextPayment = "Payment Options Subtext- #xpath=(//div[@class='payment_options']//label[not(@style='display: none;')]//strong/following-sibling::p)[" + i + "]";
                    if (isElementDisplayed(options_Payment1)) {
                        manualScreenshot(getRefOfXpath(options_Payment1) + getText(options_Payment1) + " is Displayed Successfully");
                        testStepInfo(getRefOfXpath(options_SubTextPayment) + getText(options_SubTextPayment) + " is Displayed Successfully");
                    } else {
                        testStepInfo(getRefOfXpath(options_Payment1) + getText(options_Payment1) + " is not Displayed for this Account");
                    }
                }
            } else {
                testStepFailed(getRefOfXpath(loan_Number) + " is not displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("failed in verify Make Payments Popup. Exception: " + e.getClass());

        }

    }

    public static final String dropDown_PartPayment = "Part Payment Dropdown for Term Loan#xpath=//select[@id='Payment_Option']";

    public void verifyPartPaymentDropdown(String optionswithHash, String extra) {
        try {
            String dropDown = "Part Payment Dropdown for Term Loan#xpath=//select[@id='Payment_Option']";
            if (isElementDisplayed(dropDown)) {
//                verifyGetAllOptionsInDropDownAndCompare();
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("failed in verify Part Payment Dropdown. Exception: " + e.getClass());

        }
    }


    ////////31012023

    public void verifyPartPrepaymentTextBoxWithNoValue() {
        try {
            String paymentRangetxt = "Part Pre Payment range Text#xpath=//div[@class='drowdown_input prepayment']//div[@class='texthint' and not(@style='color: red;')]";
            String errMsg_paymentRangetxt = "Error Message for Part Pre Payment range Text Box#xpath=//div[@class='drowdown_input prepayment']//div[@class='texthint' and (@style='color: red;')]";
            String txtBox_PartPrePayment = "Part Pre Payment range Text Box#xpath=//input[@name='amount']";
            String header_pd = "Header Payment Details #xpath=//strong[normalize-space(text())='Payment Details']";
            if (isElementDisplayed(txtBox_PartPrePayment)) {
                clearEditBox(txtBox_PartPrePayment);
                clickOn(header_pd);
                typeIn(txtBox_PartPrePayment, "00");
//                typeIn(txtBox_PartPrePayment, String.valueOf(Keys.ENTER));
                if (isElementDisplayed(errMsg_paymentRangetxt)) {
                    manualScreenshot(getText(errMsg_paymentRangetxt) + " Error Message is Displayed Successfully with No Amount in Amount Box");
                } else {
                    testStepFailed(getRefOfXpath(errMsg_paymentRangetxt) + " is Not Displayed");
                }
            } else {
                testStepFailed(getRefOfXpath(txtBox_PartPrePayment) + " is Not Displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Part Pre payment Text Box with No value. Exception: " + e.getClass());
        }
    }

/////////09022023


    public static final String overdue_PaymentOption = "Payment Method Section#xpath=//div[@id='selectPaymentMethod']";
    String radiobtnOverduePage = "Radio Button in Overdue Page #xpath=//div[@class='overdues_accordian']/preceding::label[@class='overdues']/span[@class='checkmark']";

    public void verifyPaymentMethodOptions(String Options, String extra) {
        try {
            String Options1 = changedCommaToHash(Options, "");
            verifyFieldsUsingCommonXpathAndMultipleTextWithHash("//div[@id='selectPaymentMethod']/descendant::i", Options1, "");

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("failed in verify Part Payment Dropdown. Exception: " + e.getClass());

        }
    }


    public void clickOnOverdueLoanCheckBox(int LoanNum, String extra) {
        try {
            String radiobtnOverduePage = "Radio Button in Overdue Page for Loan: " + LoanNum + " #xpath=(//label[@class='overdues multipleoverduecheck']/span[@class='checkmark'])[" + LoanNum + "]";
            if (isElementPresent(radiobtnOverduePage)) {
                scrollToWebElement(radiobtnOverduePage);
                clickOn(radiobtnOverduePage);
                verifyButtonIsEnabledInThePageusingText("Proceed To Pay");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("failed in click On Overdue Loan CheckBox. Exception: " + e.getClass());

        }
    }

    public void clickOnPaymentMethodCheckBox(String PaymentMethod, String extra) {
        try {
            String paymentMethod = "Payment Method: " + PaymentMethod + " #xpath=//i[normalize-space(text())='" + PaymentMethod + "']/parent::label/input";
            if (isElementPresent(paymentMethod)) {
                scrollToWebElement(paymentMethod);
                clickOn(paymentMethod);
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("failed in clickOn Payment Method CheckBox. Exception: " + e.getClass());

        }
    }

    public void verifyPaybyCashPageContents() {
        try {
            String infoIcon = "Info Icon image#xpath=//div[@class='imageTitle']/img[contains(@src,'bajajfinancestage/information-icon')]";
            String addressSection = "Address Section#xpath=//div[@class='password_fields']";
//            verifyElementIsDisplayedOrNot(infoIcon);
//            verifyFieldDisplayedUsingTagAndText("h1", "Enter the address for overdue EMI cash collection", "");
            verifyFieldDisplayedUsingTagAndText("h1", "Please add your cash pick-up address", "");
//            verifyFieldDisplayedUsingTagAndText("h2", "Bank Account Information", "");
            verifyFieldDisplayedUsingTagAndText("h2", "Your contact address", "");
            verifyElementIsDisplayedOrNot(addressSection);

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("failed in verify Pay by Cash Page Contents. Exception: " + e.getClass());

        }
    }

    public void verifyPaybyCashPageLabels(String Labels, String extra) {
        try {
            String options = changedCommaToHash(Labels, "");
            verifyFieldsUsingCommonXpathAndMultipleTextWithHash("//div[@class='p_Request_form_part']/div/label", options, "");
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("failed in verify Pay by Cash Page Labels. Exception: " + e.getClass());

        }
    }

    public void verifyPaybyCashPageLabelValues(String Labels, String extra) {
        try {
            String[] options = Labels.split(", ");
            for (int i = 0; i < options.length; i++) {
                String text = options[i];
                String locator = "" + text + "#xpath=//div[@class='p_Request_form_part']/div/label[normalize-space(text())='" + text.trim() + "']/following-sibling::input";
                if (isElementDisplayed(locator)) {
                    String value = getAttributeValue(locator);
                    manualScreenshot(text + "Input box is Displayed successfully with Pre-entered Text: " + value);

                } else {
                    testStepFailed(text + " is Not Displayed.");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("failed in verify Pay by Cash Page Label Values. Exception: " + e.getClass());

        }
    }

    public void enterTextInAddressLabels(String Label, String Input, String extra) {
        try {
            String locator = "" + Label + "#xpath=//div[@class='p_Request_form_part']/div/label[normalize-space(text())='" + Label.trim() + "']/following-sibling::input";
            clearEditBox(locator);
            typeIn(locator, Input);
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("failed in enter Text In Address Labels. Exception: " + e.getClass());

        }
    }

    public void clearTextInAddressLabels(String Labels, String extra) {
        try {
            String header = "Header in Address Page#xpath=//div[@class='pass_title']";
            String bottom = "Bottom part in Address Page#xpath=//div[@class='bottom_cta']";
            String pin = "Pin Code#xpath=//div[@class='p_Request_form_part']/div/label[normalize-space(text())='Pin Code']/following-sibling::input";

            String[] options = Labels.split(", ");
            for (int i = 0; i < options.length; i++) {
                String text = options[i];
                String locator = "" + text + "#xpath=//div[@class='p_Request_form_part']/div/label[normalize-space(text())='" + text.trim() + "']/following-sibling::input";
                clearEditBox(locator);
            }
//            clickOn(header);
//            typeIn(pin, "11");
//            waitTime(3);
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("failed in clear Text In Address Labels. Exception: " + e.getClass());

        }
    }

    public void verifySchedulePageContents(String extra) {
        try {
            String img = "Success Image in Schedule Page#xpath=//div[@class='boxloan_img img-responsive']/img[contains(@src,'bajajfinancestage/success-illustration')]";
            String midSection = "Static Message from AEM#xpath=//div[@class='part_bg_div']";
            verifyElementIsDisplayedOrNot(img);
            verifyFieldsDisplayedUsingText("Cash pickup scheduled successfully");
            verifyFieldsDisplayedUsingText("Our representative will reach out to you shortly.");
            verifyElementIsDisplayedAndGetText(midSection);

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("failed in verify Schedule Page Contents. Exception: " + e.getClass());

        }
    }


    public void verifyTextBoxWithInvalidValues(String Label, String invalidValues, String extra) {
        try {
            String locator = "" + Label + " Input Box#xpath=//div[@class='p_Request_form_part']/div/label[normalize-space(text())='" + Label.trim() + "']/following-sibling::input";
            String[] split = invalidValues.split(",");
            for (int i = 0; i < split.length; i++) {
                String value = split[i];
                clearEditBox(locator);
                typeIn(locator, value);
                if (!getAttributeValue(locator).contains(value)) {
                    manualScreenshot(locator.split("#")[0] + " is Not Accepted Invalid Value successfully");
                } else {
                    testStepFailed(locator.split("#")[0] + " is Accepted Invalid Value Wrongly");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("failed in verify Text Box With Invalid Values. Exception: " + e.getClass());

        }

    }

    public void verifyTextBoxWithGreatethanValue(String Label, String greaterThan, String extra) {
        try {
            String locator = "" + Label + " Input Box#xpath=//div[@class='p_Request_form_part']/div/label[normalize-space(text())='" + Label.trim() + "']/following-sibling::input";
            clearEditBox(locator);
            typeIn(locator, greaterThan);
            if (!getAttributeValue(locator).contains(greaterThan)) {
                manualScreenshot(locator.split("#")[0] + " is Not Accepted Greater than 101 characters Value successfully");
            } else {
                testStepFailed(locator.split("#")[0] + " is Accepted Greater than 101 characters Value Wrongly");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("failed in verify Text Box With Greate than Values. Exception: " + e.getClass());

        }

    }

    public void verifyTextBoxWithAcceptableValue1(String Label, String value, String extra) {
        try {
            String locator = "" + Label + " Input Box#xpath=//div[@class='p_Request_form_part']/div/label[normalize-space(text())='" + Label.trim() + "']/following-sibling::input";
            clearEditBox(locator);
            typeIn(locator, value);
            testStepInfo(getText(locator));
            testStepInfo(getAttributeValue(locator));
            if (getAttributeValue(locator).contains(value)) {
                manualScreenshot(locator.split("#")[0] + " is Accepting more than 1 characters Value successfully");
            } else {
                testStepFailed(locator.split("#")[0] + " is not Accepting more than 1 characters Value");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("failed in verify Text Box With Acceptable Value1. Exception: " + e.getClass());

        }

    }

    public void verifyTextBoxWithAcceptableValue2(String Label, String value, String extra) {
        try {
            String locator = "" + Label + " Input Box#xpath=//div[@class='p_Request_form_part']/div/label[normalize-space(text())='" + Label.trim() + "']/following-sibling::input";
            clearEditBox(locator);
            typeIn(locator, value);
            if (getAttributeValue(locator).contains(value)) {
                manualScreenshot(locator.split("#")[0] + " is Accepting 100 characters Value successfully");
            } else {
                testStepFailed(locator.split("#")[0] + " is not Accepting 100 characters Value");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("failed in verify Text Box With Acceptable Value2. Exception: " + e.getClass());

        }

    }

    public void verifyPincodeWithInvalidValues(String Label, String invalidValues, String extra) {
        try {
            String locator = "" + Label + " Input Box#xpath=//div[@class='p_Request_form_part']/div/label[normalize-space(text())='" + Label.trim() + "']/following-sibling::input";
            String[] split = invalidValues.split(",");
            for (int i = 0; i < split.length; i++) {
                String value = split[i];
                clearEditBox(locator);
                typeIn(locator, value);
                if (!getAttributeValue(locator).contains(value)) {
                    manualScreenshot(locator.split("#")[0] + " has Not Accepted Invalid Value successfully");
                } else {
                    testStepFailed(locator.split("#")[0] + " has Accepted Invalid Value Wrongly");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("failed in verify Pincode With Invalid Values. Exception: " + e.getClass());

        }

    }

    public void verifyPinCodeWithLessthanValue(String Label, String extra) {
        try {
            String locator = "" + Label + " Input Box#xpath=//div[@class='p_Request_form_part']/div/label[normalize-space(text())='" + Label.trim() + "']/following-sibling::input";
            clearEditBox(locator);
            typeIn(locator, "111");
            clickOnButtonUsingTextUsingForLoop("Schedule");
            verifyErrorMessageUsingText("Enter your 6-digit area pincode");
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("failed in verify PinCode With Less than Value. Exception: " + e.getClass());

        }

    }

    public void verifyPinCodeWithWrongValue(String Label, String extra) {
        try {
            String locator = "" + Label + " Input Box#xpath=//div[@class='p_Request_form_part']/div/label[normalize-space(text())='" + Label.trim() + "']/following-sibling::input";
            clearEditBox(locator);
            typeIn(locator, "541810");
            waitTime(2);
            verifyErrorMessageUsingText("Enter your 6-digit area pincode");
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("failed in verify PinCode With Wrong Value. Exception: " + e.getClass());

        }

    }


    public void negativeValues(String Label, String invalidValues, String greaterthan, String extra) {
        try {
            if (Label.equalsIgnoreCase("Address Line 1") || Label.equalsIgnoreCase("Address Line 2")) {
                verifyTextBoxWithInvalidValues(Label, invalidValues, extra);
                verifyTextBoxWithGreatethanValue(Label, greaterthan, "");
            }

            if (Label.equalsIgnoreCase("Pin Code")) {
                verifyPincodeWithInvalidValues(Label, invalidValues, extra);
//                verifyPinCodeWithWrongValue(Label, extra);
                verifyPinCodeWithLessthanValue(Label, extra);
            }
            if (Label.equalsIgnoreCase("City")) {
                verifyCityWithInvalidValues(Label, "    ,$%^&*,1 2 3,1234567,000000", "");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("failed in negative Values. Exception: " + e.getClass());

        }
    }

    public void verifyValidCityPincode(String Label, String Label2, String extra) {
        try {
            String locator = "" + Label + " Input Box#xpath=//div[@class='p_Request_form_part']/div/label[normalize-space(text())='" + Label.trim() + "']/following-sibling::input";
            String locator2 = "" + Label2 + " Input Box#xpath=//div[@class='p_Request_form_part']/div/label[normalize-space(text())='" + Label2.trim() + "']/following-sibling::input";
            String header = "Header in Address Page#xpath=//div[@class='pass_title']";
            clearEditBox(locator);
            typeIn(locator, TestDataPayments.Pincode);
            clickOn(header);
            waitTime(3);
            if (getAttributeValue(locator2).contains(TestDataPayments.City)) {
                manualScreenshot(locator.split("#")[0] + " has Autopopulated the " + TestDataPayments.City + " successfully on entering pincode " + TestDataPayments.Pincode);
            } else {
                testStepFailed(locator.split("#")[0] + " has not Autopopulated the City on enter of Pincode");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("failed in verify Valid City Pincode. Exception: " + e.getClass());

        }
    }


    public void clickOnPaymentsRHS(String label, String extra) {
        String label_RHS = "RHS Option " + label + " in RHS#xpath=//p[normalize-space(text())='" + label.trim() + "']/parent::a";
        try {
            if (isElementPresent(label_RHS)) {
                clickOn(label_RHS);
                waitForPageToLoad();
                waitTime(3);
            } else {
                testStepFailed(getRefOfXpath(label_RHS) + "is not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in click On Payments RHS. Exception:" + e.getClass());
        }
    }

    public void defaultWorldline(String label, String extra) {
//        String label_RHS = "Select Gateway: Worldline#xpath=//input[@id='worldline'][@checked='checked']";
        String label_RHS = "Select Gateway: Worldline#xpath=//label[@for='worldline'][@class='checked']";
        try {
            if (isElementDisplayed(label_RHS)) {
                testStepPassed(getRefOfXpath(label_RHS) + " is selected by Default");
            } else {
                testStepFailed(getRefOfXpath(label_RHS) + "is not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in default Worldline. Exception:" + e.getClass());
        }
    }

    public void clickGateway(String label, String extra) {
        String labelR = "Gateway: " + label + "#xpath=//div[@class='radio_container']/label[normalize-space(text())='" + label.trim() + "']";
        try {
            if (isElementPresent(labelR)) {
                scrollToWebElement(labelR);
                clickOn(labelR);
            } else {
                testStepFailed(getRefOfXpath(labelR) + "is not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in click Gateway. Exception:" + e.getClass());
        }
    }

    public void selectPayment(String label, String extra) {
        String labelR = "Select Payment: " + label + "#xpath=//li//a[normalize-space(text())='" + label.trim() + "']";
        try {
            if (isElementPresent(labelR)) {
                scrollToWebElement(labelR);
                clickOnIfDisplayed(labelR);
            } else {
                testStepFailed(getRefOfXpath(labelR) + "is not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in select Payment. Exception:" + e.getClass());
        }
    }

    public void clickOnBank(String label, String extra) {
        String labelR = "Bank: " + label + "#xpath=//ul[@id='ul_BankList']//li//a[contains(text(),'" + label.trim() + "')]";
        try {
            if (isElementPresent(labelR)) {
                clickOnIfDisplayed(labelR);
            } else {
                testStepFailed(getRefOfXpath(labelR) + "is not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in click On Bank. Exception:" + e.getClass());
        }
    }

    public static final String searchBoxPaymentPage = "Search Box #xpath=//div[@class='search_box']/input";
    public static final String bank_Selected = "Bank Selected Logo #xpath=//div[@class='bankselected_check']";
    public static final String bank_Selected_Green_Tick = "Bank Selected Green Tick #xpath=//div[@class='bankselected_check']/img[contains (@src,'images/tick_green.png')]";
    public static final String pay_Amount = "Pay Amount Button#xpath=//input[@name='lnkPaynow']";

    public static final String payU_Back = "Back Button in PayU page#xpath=//i[@class='back']";
    public static final String cancel_Transaction_ccavenue_UPI = "cancel Transaction in cc avenue upi#xpath=//a[@title='Cancel Transaction']";
    public static final String cancel_Transaction_worldline_UPI = "cancel in world line upi#xpath=//div[@class='tabcontent checkout-active']//div[@class='checkout_btn_container']//span[@class='btnDeskCancel']";
    public static final String cancel_CCavenuePage = "cancel in CC Avenue Page#xpath=//a[@class='primary-button primary-button-bg cancel radius4']";
    public static final String cancel_Net_Banking = "cancel in Net Banking Page#xpath=//input[@value='Cancel'][@id='CUSTOM_CANCEL']";

    public static final String enterAmount_Field = "Enter Amount Box in Payment Page#xpath=//input[@id='amountfield']";


    public void unvisiblePaymentMethod(String label, String extra) {
        String labelR = "Payment Method: " + label + "#xpath=//a[normalize-space(text())='" + label.trim() + "']/parent::li";
        try {
            if (!isElementDisplayed(labelR)) {
                testStepPassed(getRefOfXpath(labelR) + " is not Displayed Successfully");
            } else {
                testStepFailed(getRefOfXpath(labelR) + "is Displayed Wrongly");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in unvisible Payment Method. Exception:" + e.getClass());
        }
    }

    public void enabledPaymentMethod(String label, String extra) {
        String labelR = "Payment Method: " + label + "#xpath=//a[normalize-space(text())='UPI']/parent::li[@class='active']";
        try {
            if (isElementDisplayed(labelR)) {
                testStepPassed(getRefOfXpath(labelR) + " is displayed and enabled Successfully");
            } else {
                testStepFailed(getRefOfXpath(labelR) + "is not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in enabled Payment Method. Exception:" + e.getClass());
        }
    }

    public void verifyCityWithInvalidValues(String Label, String invalidValues, String extra) {
        try {
            String locator = "" + Label + " Input Box#xpath=//div[@class='p_Request_form_part']/div/label[normalize-space(text())='" + Label.trim() + "']/following-sibling::input";
            String[] split = invalidValues.split(",");
            for (int i = 0; i < split.length; i++) {
                String value = split[i];
                clearEditBox(locator);
                typeIn(locator, value);
                if (!getAttributeValue(locator).contains(value)) {
                    manualScreenshot(locator.split("#")[0] + " has Not Accepted Invalid Value successfully");
                } else {
                    testStepFailed(locator.split("#")[0] + " has Accepted Invalid Value Wrongly");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("failed in verify City With Invalid Values. Exception: " + e.getClass());

        }

    }

////////25042023

    public void clickOnTooltipAdv(String label, String extra) {
        String labelR = "Tooltip for " + label + "#xpath=//strong[normalize-space(text())='" + label.trim() + "']//a//img|//strong[normalize-space(text())='" + label.trim() + "']/..//a//img";
        try {
            if (isElementPresent(labelR)) {
                clickOnIfDisplayed(labelR);
            } else {
                testStepFailed(getRefOfXpath(labelR) + "is not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in click On Tool tip Adv. Exception:" + e.getClass());
        }
    }

    public void advanceEMITooltipContents(String Payment, String Header, String Labels, String Charges, String extra) {
//        String labelR = "Tooltip for " + label + "#xpath=//strong[normalize-space(text())='" + label.trim() + "']//a//img";
        try {
            verifyFieldDisplayedUsingTagAndText("strong", Header.trim(), "");
            advanceEMITooltipLabels(Payment,Labels, "");
            advanceEMITooltipCharges(Payment,Charges, "");
            advanceEMITooltipChargesAmounts(Payment,Charges, "");
            verifyButtonIsDisplayedInThePage("got it");

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in advance EMI Tooltip Contents. Exception:" + e.getClass());
        }
    }

    public void advanceEMITooltipLabels(String Payment, String Labels, String extra) {
        try {
            String[] Options = Labels.split(", ");
            for (int i = 0; i < Options.length; i++) {
                String option = Options[i];

                if (Payment.equalsIgnoreCase("Advance EMI")) {
                    String label = "Label " + option + "#xpath=//div[@id='advancedEMIDivShow']/descendant::div[@class='chargeTable']//tr//th[normalize-space(text())='" + option.trim() + "']";
                    if (isElementDisplayed(label)) {
                        testStepPassed(getRefOfXpath(label) + " is Displayed Successfully");
                    } else {
                        testStepFailed(getRefOfXpath(label) + " is not Displayed");
                    }
                }
                if (Payment.equalsIgnoreCase("Foreclosure")) {
                    String label = "Label " + option + "#xpath=//div[@id='linkedLoanChargesDivShow']/descendant::div[@class='chargeTable']//tr//th[normalize-space(text())='" + option.trim() + "']";
                    if (isElementDisplayed(label)) {
                        testStepPassed(getRefOfXpath(label) + " is Displayed Successfully");
                    } else {
                        testStepFailed(getRefOfXpath(label) + " is not Displayed");
                    }
                }

                if (Payment.equalsIgnoreCase("Overdue")) {
                    String label = "Label " + option + "#xpath=//div[@id='ChargesDivShow']/descendant::div[@class='chargeTable']//tr//th[normalize-space(text())='" + option.trim() + "']";
                    if (isElementDisplayed(label)) {
                        testStepPassed(getRefOfXpath(label) + " is Displayed Successfully");
                    } else {
                        testStepFailed(getRefOfXpath(label) + " is not Displayed");
                    }
                }


            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in advance EMI Tooltip Labels. Exception:" + e.getClass());
        }
    }

    public void advanceEMITooltipCharges(String Payment, String Charges, String extra) {
        try {
            String[] Options = Charges.split(", ");
            for (int i = 0; i < Options.length; i++) {
                String option = Options[i];
                if (Payment.equalsIgnoreCase("Advance EMI")){
                String charge = "Charges " + option + "#xpath=//div[@id='advancedEMIDivShow']/descendant::div[@class='chargeTable']//tbody//tr//td[normalize-space(text())='" + option.trim() + "']";
                if (isElementDisplayed(charge)) {
                    testStepPassed(getRefOfXpath(charge) + " is Displayed Successfully");
                } else {
                    testStepFailed(getRefOfXpath(charge) + " is not Displayed");
                }
            }

                if (Payment.equalsIgnoreCase("Foreclosure")){
                String charge = "Charges " + option + "#xpath=//div[@id='linkedLoanChargesDivShow']/descendant::div[@class='chargeTable']//tbody//tr//td[normalize-space(text())='" + option.trim() + "']";
                if (isElementDisplayed(charge)) {
                    testStepPassed(getRefOfXpath(charge) + " is Displayed Successfully");
                } else {
                    testStepFailed(getRefOfXpath(charge) + " is not Displayed");
                }
            }
                if (Payment.equalsIgnoreCase("Overdue")){
                String charge = "Charges " + option + "#xpath=//div[@id='ChargesDivShow']/descendant::div[@class='chargeTable']//tbody//tr//td[normalize-space(text())='" + option.trim() + "']";
                if (isElementDisplayed(charge)) {
                    testStepPassed(getRefOfXpath(charge) + " is Displayed Successfully");
                } else {
                    testStepFailed(getRefOfXpath(charge) + " is not Displayed");
                }
            }


            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in advance EMI Tooltip Charges. Exception:" + e.getClass());
        }
    }

    public void advanceEMITooltipChargesAmounts(String Payment,String Charges, String extra) {
        try {
            String[] Options = Charges.split(", ");
            for (int i = 0; i < Options.length; i++) {
                String option = Options[i];
                String charge = "Charges " + option + "#xpath=(//div[@id='advancedEMIDivShow']/descendant::div[@class='chargeTable']//tbody//tr//td[normalize-space(text())='" + option + "']/following-sibling::td)";
                for (int j = 1; j <= sizeOfLocator(charge); j++) {
                    if (Payment.equalsIgnoreCase("Advance EMI")){
                    String charges = "Charges: " + j + "for " + option + "#xpath=(//div[@id='advancedEMIDivShow']/descendant::div[@class='chargeTable']//tbody//tr//td[normalize-space(text())='" + option + "']/following-sibling::td)[" + j + "]";
                    if (isElementDisplayed(charges)) {
                        testStepPassed(getRefOfXpath(charges) + " is Displayed Successfully: " + getText(charges));
                    } else {
                        testStepFailed(getRefOfXpath(charges) + "is not Displayed");
                    }
                }

                    if (Payment.equalsIgnoreCase("Foreclosure")){
                    String charges = "Charges: " + j + "for " + option + "#xpath=(//div[@id='linkedLoanChargesDivShow']/descendant::div[@class='chargeTable']//tbody//tr//td[normalize-space(text())='" + option + "']/following-sibling::td)[" + j + "]";
                    if (isElementDisplayed(charges)) {
                        testStepPassed(getRefOfXpath(charges) + " is Displayed Successfully: " + getText(charges));
                    } else {
                        testStepFailed(getRefOfXpath(charges) + "is not Displayed");
                    }
                }

                    if (Payment.equalsIgnoreCase("Overdue")){
                    String charges = "Charges: " + j + "for " + option + "#xpath=(//div[@id='ChargesDivShow']/descendant::div[@class='chargeTable']//tbody//tr//td[normalize-space(text())='" + option + "']/following-sibling::td)[" + j + "]";
                    if (isElementDisplayed(charges)) {
                        testStepPassed(getRefOfXpath(charges) + " is Displayed Successfully: " + getText(charges));
                    } else {
                        testStepFailed(getRefOfXpath(charges) + "is not Displayed");
                    }
                }

            }

            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in advance EMI Tooltip Charges Amounts. Exception:" + e.getClass());
        }
    }

    public void clickOnTooltipForeclose(String label, String extra) {
        String labelR = "Tooltip for " + label + "#xpath=//strong[normalize-space(text())='" + label.trim() + "']/..//a//img";
        try {
            if (isElementPresent(labelR)) {
                clickOnIfDisplayed(labelR);
            } else {
                testStepFailed(getRefOfXpath(labelR) + "is not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in click On Tool tip Foreclose. Exception:" + e.getClass());
        }
    }

    public void clickOnButtonUsingTextUsingForLoopInPopUp(String buttonText) {
        try {
            Boolean flag = false;
            String locator = buttonText+"#xpath=//a[normalize-space(text())='" + buttonText + "']|//button[normalize-space(text())='" + buttonText + "']|//input[@value='"+buttonText.trim()+"']";
            for (int i = 1; i <= findWebElements(locator).size(); i++) {
                String button = "" + buttonText + " Button#xpath=(//a[normalize-space(text())='" + buttonText + "']|//button[normalize-space(text())='" + buttonText + "']|//input[@value='"+buttonText.trim()+"'])[" + i + "]";
//                    scrollToWebElementIfPresent(button);
                if (isElementDisplayed(button)) {
                    manualScreenshot(buttonText + " button is Displayed successfully");
                    clickOn(button);
                    flag = true;
                }
                if (!flag) {
                    testStepFailed(buttonText + " button is Not Displayed");
                }
            } }catch (Exception e) {
                e.printStackTrace();
                testStepFailed("Failed in click on "+buttonText+" button using for Loop in Popup. Exception: " + e.getClass());
            }

        }

    public void clickOnButtonUsingTextUsingForLoopifDisplayed(String buttonText) {
        try {
            String locator = buttonText + "#xpath=//a[normalize-space(text())='" + buttonText + "']|//button[normalize-space(text())='" + buttonText + "']|//input[@value='" + buttonText.trim() + "']";
            for (int i = 1; i <= findWebElements(locator).size(); i++) {
                String button = "" + buttonText + " Button#xpath=(//a[normalize-space(text())='" + buttonText + "']|//button[normalize-space(text())='" + buttonText + "']|//input[@value='" + buttonText.trim() + "'])[" + i + "]";
//                    scrollToWebElementIfPresent(button);
                if (isElementDisplayed(button)) {
                    manualScreenshot(buttonText + " button is Displayed successfully");
                    clickOn(button);
                    waitForPageToLoad();
                    break;
                }else {
                    testStepInfo("No Popup Displayed for this Payment type");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in click on " + buttonText + " button using for Loop if Displayed. Exception: " + e.getClass());
        }

    }



}
