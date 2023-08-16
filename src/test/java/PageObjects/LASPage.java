package PageObjects;

import base.ApplicationKeywords;

import java.text.DecimalFormat;

public class LASPage extends ApplicationKeywords {

    /*
    Xpaths
     */
    public static final String share_Value = "Value of Shares Available#xpath=//div[@class='drowdown_input prepayment extra_pd_btm20']/div";
    public static final String share_ValueUneditable = "Uneditable Value of Shares#xpath=//div[@class='drowdown_input prepayment extra_pd_btm20']/div/p[@class='readonlyText']";
    public static final String pls_Note = "Please Note Section#xpath=//div[@class='PleaseNote']";
    public static final String rel_ShareValue = "Released Share Value#xpath=//div[@class='loanright_parts']/ul";
    public static final String bank_Accounts = "Bank Accounts to choose#xpath=//div[@class='j_bank_details_check overflowWrapper']";


    /*
    Methods
     */

    public void bankTiles() {
        try {
            String bank_Accounts = "Bank Accounts to choose #xpath=//div[@class='j_bank_details_check overflowWrapper']";
            if (isElementDisplayed(bank_Accounts)) {
                String bank_AccountTiles = "Bank Account Tiles #xpath=//div[@class='j_bank_details_check overflowWrapper']/div";
                int tile_Size = sizeOfLocator(bank_AccountTiles);
                testStepInfo("Total Bank Tiles :" + tile_Size);
                for (int i = 1; i <= tile_Size; i++) {
                    String name = "Name of the Account #xpath=(//ul[@class='j_bank_list']/li[1]/strong)[" + i + "]";
                    String shares_Pledged = "Shares Pledged #xpath=(//ul[@class='j_bank_list']/li[1]/var)[" + i + "]";
                    String shares_PledgedValue = "Shares Pledged Value #xpath=(//ul[@class='j_bank_list']/li[1]/var/span)[" + i + "]";
                    String shares_UnPledge = "Shares to UnPledge #xpath=(//div[@class='bank_input']/div/label)[" + i + "]";
                    String shares_UnPledgeInput = "Shares to UnPledge Text Box #xpath=(//div[@class='bank_input']/div/input)[" + i + "]";
                    String shares_Details = "Share Details #xpath=(//div[@class='Payment_Details share_details']/div[@class='Payment_title'])[" + i + "]";
                    if (isElementPresent(name)) {
                        clickOn(name);
//                        if (i == 2 || i == 3 || i == 4) {
//                            arrowDown(name, 7, "");
//                        }
                        verifyElementIsDisplayedAndGetText(name);
                        verifyElementIsDisplayedAndGetText(shares_Pledged);
                        verifyElementIsDisplayedAndGetText(shares_PledgedValue);
                        verifyValueUsingLabelUsingIteration("//ul[@class='j_bank_list']/li[2]/var", "Loan Value", "/following-sibling::strong", i, "");
                        verifyElementIsDisplayedAndGetText(shares_UnPledge);
                        verifyElementIsDisplayedAndGetText(shares_UnPledgeInput);
                        verifyElementIsDisplayedAndGetText(shares_Details);
                        verifyValueUsingLabelUsingIteration("//div[@class='Payment_Details_list']/ul/li[1]/p", "Value of Pledged Securities", "/following-sibling::strong", i, "");
                        verifyValueUsingLabelUsingIteration("//div[@class='Payment_Details_list']/ul/li[2]/p", "Value of Unpledged Securities", "/following-sibling::strong", i, "");

                    } else {
                        testStepFailed(getRefOfXpath(name) + " is not Present");
                    }
                }
            } else {
                testStepFailed(getRefOfXpath(bank_Accounts) + " is not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in dc Page Redirection .Exception:" + e.getClass());
        }
    }


    public void redirectionToLASPage(String cardNumber, String extra) {
        try {
            String cardTitle = "Card : #xpath=//p[contains(text(),'" + cardNumber + "')]/ancestor::div[@class='select_loan']";
            if (isElementDisplayed(cardTitle)) {
                testStepPassed("User successfully redirected to exact LAS Page ");
            } else {
                testStepFailed("Failed to redirect to LAS Page : " + cardNumber);
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in redirection To LAS Page .Exception:" + e.getClass());
        }
    }

    public void disbursementSubtext(String staticText, String cardNumber, String extra) {
        try {
            String subtitle = "SubTitle #xpath=//p[normalize-space(text())='" + staticText.trim() + " " + cardNumber.trim() + "']";
            if (isElementDisplayed(subtitle)) {
                testStepPassed(staticText + cardNumber + " is Displayed Successfully");
            } else {
                testStepFailed(staticText + cardNumber + " is not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in disbursement Subtext .Exception:" + e.getClass());
        }
    }

    public void contentsLASPage() {
        try {
            String topSection = "Top Section in LAS page : #xpath=//div[@class='select_loan']";
            String lhsSection = "LHS Section in LAS page : #xpath=//div[@class='flx_height_bx']";
            String rhsSection = "RHS Section in LAS page : #xpath=//div[@class='loanright']";
            verifyElementIsDisplayedAndGetText(topSection);
            verifyElementIsDisplayedOrNot(lhsSection);
            verifyElementIsDisplayedOrNot(rhsSection);
            verifyButtonIsDisplayedInThePage("Submit");
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in contents LAS Page .Exception:" + e.getClass());
        }
    }

    public void clickCheckBox(int num, String extra) {
        try {
            String check_Box = "Check Box in Choose Bank section#xpath=(//div[@class='j_bank_border_Rectangle']/descendant::label[@class='checkupgrade'])[" + num + "]";
            if (num == 1) {
                clickOn(check_Box);
            }
            if (num == 2 || num == 3 || num == 4) {
                for (int i = 2; i <= num; i++) {
                    String name = "Name of the Account #xpath=(//ul[@class='j_bank_list']/li[1]/strong)[" + num + "]";
//                    clickOnIfDisplayed(name);
//                    arrowDown(name, 7, "");
                    if (isElementDisplayed(check_Box)) {
                        clickOn(check_Box);
                        break;
                    }
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in click Check Box .Exception:" + e.getClass());
        }
    }

    public void typeInBankBox(int num, String value, String extra) {
        try {
            String check_Box = "Input Box: " + num + "#xpath=(//div[@class='bank_input']/descendant::input)[" + num + "]";
            if (isElementDisplayed(check_Box)) {
                String inputvalue = getAttributeValue(check_Box);
                if (Integer.parseInt(inputvalue) == 0) {
                    testStepPassed(inputvalue + "is by default present in Input Box");
                    clearEditBox(check_Box);
                } else {
                    testStepFailed(inputvalue + " is not zero in Input Box");
                }
                typeIn(check_Box, value);
            } else {
                testStepFailed(getRefOfXpath(check_Box) + " is not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in typeIn Bank Box .Exception:" + e.getClass());
        }
    }

    public void valueInBankBox(int num, String value, String extra) {
        try {
            String check_Box = "Input Box: " + num + "#xpath=(//div[@class='bank_input']/descendant::input)[" + num + "]";
            if (isElementDisplayed(check_Box)) {
                String input = getAttributeValue(check_Box);
                if (input.equalsIgnoreCase(value)) {
                    testStepPassed(input + "is accepted in Input Box");
                    clearEditBox(check_Box);
                } else {
                    testStepFailed(input + " is not accepted in Input Box");
                }
            } else {
                testStepFailed(getRefOfXpath(check_Box) + " is not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in value in Bank Box .Exception:" + e.getClass());
        }
    }

    public void verifyBankBoxWithInvalidValues(int num, String invalidValues, String extra) {
        try {
            String input_Box = "Input Box: " + num + "#xpath=(//div[@class='bank_input']/descendant::input)[" + num + "]";
            String[] split = invalidValues.split(",");
            for (int i = 0; i < split.length; i++) {
                String value = split[i];
                clearEditBox(input_Box);
                typeIn(input_Box, value);
                if (!getAttributeValue(input_Box).contains(value)) {
                    manualScreenshot(input_Box.split("#")[0] + " is Not Accepted Invalid Value successfully");
                } else {
                    testStepFailed(input_Box.split("#")[0] + " is Accepted Invalid Value Wrongly");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("failed in verify Bank Box With Invalid Values. Exception: " + e.getClass());

        }

    }


    public void verifyBankBoxIsEnabled(int num, String value, String extra) {
        try {
            String check_Box = "Input Box: " + num + "#xpath=(//div[@class='bank_input']/descendant::input)[" + num + "]";
            verifyTextBoxIsEnabledUsingLocator(check_Box);
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Bank Box Is Enabled .Exception:" + e.getClass());
        }
    }

    public void verifyBankBoxIsDisabled(int num, String value, String extra) {
        try {
            String check_Box = "Input Box: " + num + "#xpath=(//div[@class='bank_input']/descendant::input)[" + num + "]";
            verifyTextBoxIsDisabledUsingLocator(check_Box);
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Bank Box Is Disabled .Exception:" + e.getClass());
        }
    }

    public double sharesPledged(int num, String extra) {
        double pledgeShares = 0;
        try {
            String pledgedShares = "Shares Pledged for " + num + " #xpath=(//div[@class='j_bank_items_ul switch_list']/ul/li/var/span)[" + num + "]";
            if (isElementPresent(pledgedShares)) {
                String value = getTextPresent(pledgedShares);
                testStepInfo(getRefOfXpath(pledgedShares) + " " + value);
//                pledgeShares=Integer.parseInt(value);
                pledgeShares = Double.parseDouble(value);
            } else {
                testStepFailed(getRefOfXpath(pledgedShares) + " is not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in shares Pledged .Exception:" + e.getClass());
        }
        return pledgeShares;
    }

    public double loanValue(int num, String extra) {
        double loan = 0;
        try {
            String loanValue = "Loan Value for " + num + " #xpath=(//div[@class='j_bank_items_ul switch_list']/ul/li[2]/strong)[" + num + "]";
            if (isElementPresent(loanValue)) {
                String value = getTextPresent(loanValue);
                testStepInfo(getRefOfXpath(loanValue) + " " + value);
                String amount = value.split("Rs. ")[1].replaceAll(",", "");
//                pledgeShares=Integer.parseInt(value);
                loan = Double.parseDouble(amount);
            } else {
                testStepFailed(getRefOfXpath(loanValue) + " is not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in loan Value .Exception:" + e.getClass());
        }
        return loan;
    }

    public double unpledgedShareValue(int num, String extra) {
        double shareValue = 0;
        try {
            String unpledgeShare = "Unpledged Share Value for " + num + " #xpath=(//div[@class='Payment_Details_list']/ul/li[2]/p/following-sibling::strong)[" + num + "]";
            if (isElementPresent(unpledgeShare)) {
                String value = getTextPresent(unpledgeShare);
                testStepInfo(getRefOfXpath(unpledgeShare) + " " + value);
                String amount = value.split("Rs. ")[1].replaceAll(",", "");
//                shareValue=Integer.parseInt(value);
                shareValue = Double.parseDouble(amount);
                ;
            } else {
                testStepFailed(getRefOfXpath(unpledgeShare) + " is not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Bank Box Is Disabled .Exception:" + e.getClass());
        }
        return shareValue;
    }

    public double pledgedShareValue(int num, String extra) {
        double shareValue = 0;
        try {
            String pledgeShare = "Pledged Share Value for " + num + " #xpath=(//div[@class='Payment_Details_list']/ul/li[1]/p/following-sibling::strong)[" + num + "]";
            if (isElementPresent(pledgeShare)) {
                String value = getTextPresent(pledgeShare);
                testStepInfo(getRefOfXpath(pledgeShare) + " " + value);
                String amount = value.split("Rs. ")[1].replaceAll(",", "");
//                shareValue=Integer.parseInt(value);
                shareValue = Double.parseDouble(amount);
                ;
            } else {
                testStepFailed(getRefOfXpath(pledgeShare) + " is not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in pledged Share Value .Exception:" + e.getClass());
        }
        return shareValue;
    }

    public double totalReleasedShareValue(String extra) {
        double relshareValue = 0;
        try {
            String rlsShareValue = "Total Released Share Value#xpath=//strong[@id='totalReleaseShareVal']";
            if (isElementPresent(rlsShareValue)) {
                String value = getTextPresent(rlsShareValue);
//                verifyAmountWithRs();
                testStepInfo(getRefOfXpath(rlsShareValue) + " " + value);
                String amount = value.split("Rs. ")[1];
//                shareValue=Integer.parseInt(value);
                relshareValue = Double.parseDouble(amount);
            } else {
                testStepFailed(getRefOfXpath(rlsShareValue) + " is not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Bank Box Is Disabled .Exception:" + e.getClass());
        }
        return relshareValue;
    }

    public double valuePerShare(int num, String extra) {
        double valuepershare = 0;
        try {
            double value = loanValue(num, "") / sharesPledged(num, "");
            valuepershare = value;
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in value Per Share .Exception:" + e.getClass());
        }
        return valuepershare;
    }

    public double unpledgedShareValueMultiple(int shares, int num, String extra) {
        double multValue = 0;
        try {
            multValue = valuePerShare(num, "") * shares;
//            multValue=Math.round(multValue);
            DecimalFormat numberFormat = new DecimalFormat("#.00");
            multValue = Double.parseDouble(numberFormat.format(multValue));

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Bank Box Is Disabled .Exception:" + e.getClass());
        }
        return multValue;
    }

    public void verifyValueOfUnpledgedShares(int num, String value, String extra) {
        try {
            double ValueperShare = valuePerShare(num, "");
            double unpledgedShareValueMultiple = unpledgedShareValueMultiple(Integer.parseInt(value), num, "");
            double unpledgedShareValue = unpledgedShareValue(num, "");
            double totalReleasedShareValue = totalReleasedShareValue("");
            testStepInfo("Value per Share" + ValueperShare);
            testStepInfo("Unpledged Share Value" + unpledgedShareValue);
            testStepInfo("Total Released Share Value" + totalReleasedShareValue);
            if (unpledgedShareValue == totalReleasedShareValue) {
                testStepPassed("Unpledged and Total Shares released are showing same for single Tile");
            } else {
                testStepFailed("Unpledged and Total Shares released are showing false for single Tile");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Value Of Unpledged Shares .Exception:" + e.getClass());
        }
    }

    public void morethan3PopUp(String extra) {
        try {
            String popup = "Popup#xpath=//div[@class='a_couchercode_copied_nudge toastMsg']";
            String popupImage = "Popup Image#xpath=//div[@class='a_couchercode_copied_nudge toastMsg']/img";
            verifyElementIsDisplayedAndGetText(popup);
            verifyElementIsDisplayedOrNot(popupImage);
//        verifyLocatorColorUsingCssValue(popup,"#028302","Green","background");
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in more than 3 PopUp .Exception:" + e.getClass());
        }
    }


    public void successShareReleasePageContents(String extra) {
        try {
            String img = "Sucess Tick Mark#xpath=//div[@class='boxloan_img']/img[contains(@src,'images/tick_check.png')]";
            String text = "Sucess Text#xpath=//div[@class='req_raised']";
            verifyElementIsDisplayedOrNot(img);
            verifyElementIsDisplayedAndGetText(text);
//            verifyFieldsDisplayedUsingText("Your release details");
            verifyValueUsingLabel("//div[@class='Disbursal_parts'] /ul/li/p", "FAS no", "/following-sibling::strong", "");
            verifyValueUsingLabel("//div[@class='Disbursal_parts'] /ul/li/p", "Total released securities value", "/following-sibling::strong", "");
            verifyRhs("Need assistance?", "FAQ#Raise a Request", "");

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in success Share Release Page Contents.Exception:" + e.getClass());
        }
    }

    public void valueOfUnpledgedSecurities(int num, String value, String extra) {
        try {
            double ValueperShare = valuePerShare(num, "");
            double unpledgedShareValueMultiple = unpledgedShareValueMultiple(Integer.parseInt(value), num, "");
            double unpledgedShareValue = unpledgedShareValue(num, "");
            double totalReleasedShareValue = totalReleasedShareValue("");
            testStepInfo("Value per Share" + ValueperShare);
            testStepInfo("Unpledged Share Value" + unpledgedShareValue);
            testStepInfo("Multiplied value " + unpledgedShareValueMultiple);
//            testStepInfo("Total Released Share Value" + totalReleasedShareValue);
            if (unpledgedShareValue == unpledgedShareValueMultiple) {
                testStepPassed("Unpledged Share value is multiplication of user input and marketRate");
            } else {
                testStepFailed("Unpledged Share value is not multiplication of user input and marketRate");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in value Of Unpledged Securities.Exception:" + e.getClass());
        }
    }

    public static final String errormsg_QuantityToPledge = "Error Msg#xpath=//div[@class='texthint'][@style='color: red;']";


    public void valueGreaterThanQuantityPledged(int num, String extra) {
        try {
            String check_Box = "Input Box: " + num + "#xpath=(//div[@class='bank_input']/descendant::input)[" + num + "]";
            double sharesPledge = sharesPledged(num, "");
            double greaterValue = sharesPledge + 1;
            String greatValue = String.valueOf(greaterValue);
//            clearEditBox(check_Box);
            typeInBankBox(num, greatValue, "");
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in value Greater Than Quantity Pledged.Exception:" + e.getClass());
        }
    }

    public void verifyValuePledgedSecurityAndLoanValue(int num, String extra) {
        try {
            String check_Box = "Input Box: " + num + "#xpath=(//div[@class='bank_input']/descendant::input)[" + num + "]";
            double sharesPledge = sharesPledged(num, "");
            double loanValue = loanValue(num, "");
            double pledgedShareValue = pledgedShareValue(num, "");
            double valuePerShare = valuePerShare(num, "");
            double valueOfShares = valuePerShare * sharesPledge;
            if (valueOfShares == loanValue && valueOfShares == pledgedShareValue) {
                testStepPassed("loan value and Value of Pledged Shared is displaying multiplication of allowableQty and  marketRate");
            } else {
                testStepFailed("loan value and Value of Pledged Shared is not displaying multiplication of allowableQty and  marketRate");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Value Pledged Security And Loan Value.Exception:" + e.getClass());
        }
    }


    public void clickOnMyRelationTileFAS(String FASNo, String extra) {
        try {
//            String iconViewDetails = subTitle + " " + accountNo + " No. Tile#xpath=//h2[contains(text(),'" + subTitle + "')]/../following-sibling::div/descendant::p[contains(text(),'" + accountNo + "')]/ancestor::div[@class='deposit_name']/descendant::img[@src='https://experia-uat.bajajfinserv.in/UI/images/icons-view-details.svg']|//strong[contains(text(),'" + subTitle + "')]/following-sibling::p[contains(text(),'" + accountNo + "')]/ancestor::div[@class='deposit_name']/descendant::img[@src='https://experia-uat.bajajfinserv.in/UI/images/icons-view-details.svg']";
            String iconViewDetails = FASNo + " - No. Tile#xpath=//li/p[normalize-space(text())='FAS Number']/following-sibling::strong[normalize-space(text())='" + FASNo.trim() + "']";
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
            testStepFailed("Failed in click on My Relation Tile FAS -" + FASNo + ". Exception: " + e.getClass());
        }
    }

    public void verifyMyRelationTileRedirectionUsingFASNO(String FASNo, String extra) {
        try {
            String txt_AccountNumber = " Account Number " + FASNo + "#xpath=//div[@class='fixed_deposit_text']/strong/following-sibling::p[normalize-space(text())='FAS Number: " + FASNo.trim() + "']";
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
            testStepFailed("Failed in verify Redirection using FASNo. Eception: " + e.getClass());
        }
    }


/////////Drawdown


    public static final String inline_Text = " Inline message below Amount Box #xpath=//input[@name='LASDDInput']/following-sibling::div[@class='texthint']";
    public static final String inputBox_Drwadown = " Input Box for Drawdown #xpath=//input[@name='LASDDInput']";
    public static final String advisoryNote_Drawdown = " Advisory Note: #xpath=//div[@class='drowdown_btn advisory']//label[@class='Relation']";
    public static final String advisoryNoteCheckBox_Drawdown = " Advisory Note: Check Box #xpath=//div[@class='drowdown_btn advisory']//label[@class='Relation']/span[@class='checkmark']";

    public String minimumAmount() {
        String minimum = "";
        try {
            String text = getText(inline_Text);
            String[] split = text.split("Rs.");
            String min = split[1];
            String[] split1 = min.split(" a");
            String minimumAmount = split1[0].replaceAll(",", "");
            minimum = minimumAmount;
            testStepInfo("Minimum Amount is" + minimum);

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in minimum Amount.Exception:" + e.getClass());
        }
        return minimum;
    }

    public String maximumAmount() {
        String maximum = "";
        try {
            String text = getText(inline_Text);
            String[] split = text.split("Rs.");
            String max = split[2];
            String maximumAmount = max.replaceAll(",", "");
            maximum = maximumAmount;
            testStepInfo("Maximum Amount is" + maximum);
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in maximum Amount.Exception:" + e.getClass());
        }
        return maximum;
    }

    public void drawdownMinimumAndMaximum(String extra) {
        try {
            if (isElementDisplayed(inline_Text)) {
                testStepPassed(getRefOfXpath(inline_Text) + " :" + getTextPresent(inline_Text) + " is Displayed successfully");
                minimumAmount();
                maximumAmount();
            } else {
                testStepFailed(getRefOfXpath(inline_Text) + "is not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in drawdown Minimum And Maximum.Exception:" + e.getClass());
        }
    }

    public void drawdownMinimumErrorValue(String extra) {
        try {
            String errorMsg = "Error Message#xpath=//div[@class='texthint'][@style='color: red;']";
            if (isElementDisplayed(inputBox_Drwadown)) {
                int lessthanMIn = Integer.parseInt(minimumAmount()) - 1;
                clearEditBox(inputBox_Drwadown);
                typeIn(inputBox_Drwadown, String.valueOf(lessthanMIn));
                verifyElementIsDisplayedAndGetText(errorMsg);
            } else {
                testStepFailed(getRefOfXpath(inputBox_Drwadown) + "is not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in drawdown Minimum Error Value.Exception:" + e.getClass());
        }
    }

    public void drawdownMaximumErrorValue(String extra) {
        try {
            String errorMsg = "Error Message#xpath=//div[@class='texthint'][@style='color: red;']";
            if (isElementDisplayed(inputBox_Drwadown)) {
                int morethanMax = Integer.parseInt(maximumAmount()) + 1;
                clearEditBox(inputBox_Drwadown);
                typeIn(inputBox_Drwadown, String.valueOf(morethanMax));
                verifyElementIsDisplayedAndGetText(errorMsg);
            } else {
                testStepFailed(getRefOfXpath(inputBox_Drwadown) + "is not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in drawdown Maximum Error Value.Exception:" + e.getClass());
        }
    }

    public void drawdownNumericalValue(String value, String extra) {
        try {
            if (isElementDisplayed(inputBox_Drwadown)) {
                clearEditBox(inputBox_Drwadown);
                typeIn(inputBox_Drwadown, value);
                String accept = getAttributeValue(inputBox_Drwadown);
                if (value.equalsIgnoreCase(accept)) {
                    testStepPassed(getRefOfXpath(inputBox_Drwadown) + " is accepting Numerical value Successfully");
                } else {
                    testStepFailed(getRefOfXpath(inputBox_Drwadown) + " is not accepting Numerical values");
                }
            } else {
                testStepFailed(getRefOfXpath(inputBox_Drwadown) + "is not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in drawdown Numerical Value.Exception:" + e.getClass());
        }
    }

    public void drawdownInvalidValues(String Invalidvalue, String extra) {
        try {
            if (isElementDisplayed(inputBox_Drwadown)) {
                clearEditBox(inputBox_Drwadown);
                String[] split = Invalidvalue.split(", ");
                for (int i = 0; i < split.length; i++) {
                    String value = split[i];
                    typeIn(inputBox_Drwadown, value);
                    String accept = getAttributeValue(inputBox_Drwadown);
                    if (!value.equalsIgnoreCase(accept)) {
                        testStepPassed(getRefOfXpath(inputBox_Drwadown) + " is not accepting other than Numerical values Successfully");
                    } else {
                        testStepFailed(getRefOfXpath(inputBox_Drwadown) + " is accepting other than Numerical values");
                    }
                }
            } else {
                testStepFailed(getRefOfXpath(inputBox_Drwadown) + "is not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in drawdown Invalid Values.Exception:" + e.getClass());
        }

    }

    public void value96(String extra) {
        try {
            if (isElementDisplayed(inputBox_Drwadown)) {
                double value95 = Integer.parseInt(maximumAmount()) * 0.96;
                int value = (int) Math.round(value95);
                clearEditBox(inputBox_Drwadown);
                typeIn(inputBox_Drwadown, String.valueOf(value));
            } else {
                testStepFailed(getRefOfXpath(inputBox_Drwadown) + "is not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in value 96.Exception:" + e.getClass());
        }

    }


    public void drawdownAcceptableValues(String Button, String extra) {
        try {
            if (isElementDisplayed(inputBox_Drwadown)) {
                double value95 = Integer.parseInt(maximumAmount()) * 0.94;
                int value = (int) Math.round(value95);
                scrollToWebElement(inputBox_Drwadown);
                clearEditBox(inputBox_Drwadown);
                typeIn(inputBox_Drwadown, String.valueOf(value));
                verifyButtonIsEnabledInThePageusingText(Button);

                int morethanMIn = Integer.parseInt(minimumAmount()) + 1;
                scrollToWebElement(inputBox_Drwadown);
                clearEditBox(inputBox_Drwadown);
                typeIn(inputBox_Drwadown, String.valueOf(morethanMIn));
                verifyButtonIsEnabledInThePageusingText(Button);

            } else {
                testStepFailed(getRefOfXpath(inputBox_Drwadown) + "is not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in drawdown Acceptable Values.Exception:" + e.getClass());
        }
    }

    public void drawdownAcceptableValueMinimum(String extra) {
        try {
            if (isElementDisplayed(inputBox_Drwadown)) {
                int morethanMIn = Integer.parseInt(minimumAmount()) + 1;
                scrollToWebElement(inputBox_Drwadown);
                clearEditBox(inputBox_Drwadown);
                typeIn(inputBox_Drwadown, String.valueOf(morethanMIn));

            } else {
                testStepFailed(getRefOfXpath(inputBox_Drwadown) + "is not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in drawdown Acceptable Value Minimum.Exception:" + e.getClass());
        }
    }

    public void drawdownBankDetails(String Labels, String extra) {
        try {
            String[] split = Labels.split(", ");
            for (int i = 0; i < split.length; i++) {
                String text = split[i];
                verifyValueUsingLabel("//div[@class='loanright_parts']/descendant::li/p", text, "/following-sibling::strong", "");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in drawdown Bank Details.Exception:" + e.getClass());
        }
    }

    public void drawdownPageContents(String extra) {
        try {
            String topSection = "Top Section: #xpath=//div[@class='select_loan']";
            String bank_Details = "Bank Details: #xpath=//div[@class='loanright']";
            String staticContent = "Please Note Static Content: #xpath=//div[@class='PleaseNote mrt50']";

            verifyElementIsDisplayedAndGetText(topSection);
            verifyElementIsDisplayedOrNot(inputBox_Drwadown);
            verifyElementIsDisplayedOrNot(bank_Details);
            verifyElementIsDisplayedAndGetText(staticContent);
            verifyRhs("Need assistance?", "FAQ#Raise a Request", "");
            verifyButtonIsDisplayedInThePage("Submit");

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in drawdown Page Contents.Exception:" + e.getClass());
        }
    }

    public void shareRepledgeNudge(String text, String extra) {
        try {
            String nudge = "Nudge: #xpath=//div[@class='DDNudge'][normalize-space(text())='" + text + "']";

            verifyElementIsDisplayedAndGetText(nudge);
//            verifyLocatorColorUsingCssValue(nudge, "background-color", "Green", "#00b500");

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in share Repledge Nudge.Exception:" + e.getClass());
        }
    }

/////////10042023////-


    public static final String paymentRangetxtLAS = "Part Pre Payment range Text#xpath=//div[@class='drowdown_input prepayment mrg-b-25']//div[@class='texthint' and not(@style='color: red;')]";
    public static final String txtBox_PartPrePaymentLAS = "Part Pre Payment range Text Box#xpath=//input[@name='amount']";

    public int getMinValueOfPartPrePaymentLAS() {
        int value = 0;
        try {
            if (isElementDisplayed(paymentRangetxtLAS)) {
                String text = getText(paymentRangetxtLAS);
                String[] split = text.split(" Rs. ");
                value = Integer.parseInt(split[1].split(" ")[0].replaceAll(",", "").trim());

            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in get min Value of Part Pre Payment LAS. Exception: " + e.getClass());
        }
        return value;
    }

    public void verifyPartPrePaymentTextBoxAutoPopulatedValueLAS() {
        try {
            int min = getMinValueOfPartPrePaymentLAS();
            String inputBox = getAttributeValue(txtBox_PartPrePaymentLAS);
//            String[] split = inputBox.split(" Rs.");
            String value = inputBox.trim();

            int inputValue = Integer.parseInt(value);
            if (isElementPresent(txtBox_PartPrePaymentLAS)) {
                if (inputValue == min) {
                    manualScreenshot("Part Pre payment Text Box Auto Populated Value is Equal to Minimum Value of part Pre Payment verified successfully");
                } else {
                    stepFailed("Hint Text Minimum Amount: " + min);
                    stepFailed("Text Box Auto populated Amount: " + getAttributeValue(txtBox_PartPrePaymentLAS));
                    testStepFailed("Part Pre payment Text Box Auto Populated Value is not Equal to Minimum Value of part Pre Payment");
                }
            } else {
                testStepFailed(getRefOfXpath(txtBox_PartPrePaymentLAS) + " is Not Displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Part Pre Payment text Box Auto Populated Value LAS. Exception: " + e.getClass());
        }
    }


    public void verifyPartPrepaymentTextBoxWithNegativeLAS() {
        try {
            String paymentRangetxtLAS = "Part Pre Payment range Text#xpath=//div[@class='drowdown_input prepayment mrg-b-25']//div[@class='texthint' and not(@style='color: red;')]";
            String txtBox_PartPrePaymentLAS = "Part Pre Payment range Text Box#xpath=//input[@name='amount']";
            String errMsg_paymentRangetxt = "Error Message for Part Pre Payment range Text Box#xpath=//div[@class='drowdown_input prepayment mrg-b-25']//div[@class='texthint' and (@style='color: red;')]";
            if (isElementDisplayed(paymentRangetxtLAS)) {
                String text = getText(paymentRangetxtLAS);
                String[] split = text.split(" Rs. ");
                String minstring = split[1].split(" ")[0].replaceAll(",", "").trim().split("\\.")[0];
                String maxstring = split[2].trim().replaceAll(",", "").trim().split("\\.")[0];
                int min = Integer.parseInt(minstring);
                int max = Integer.parseInt(maxstring);
                Boolean flag = false;
                if (isElementDisplayed(txtBox_PartPrePaymentLAS)) {
                    flag = true;
                    clearEditBox(txtBox_PartPrePaymentLAS);
                    typeIn(txtBox_PartPrePaymentLAS, String.valueOf(min - 1));
                    waitTime(2);
                    if (isElementDisplayed(errMsg_paymentRangetxt)) {
                        manualScreenshot(getText(errMsg_paymentRangetxt) + " Error Message is Displayed Successfully");
                    } else {
                        testStepFailed(getRefOfXpath(errMsg_paymentRangetxt) + " is Not Displayed");
                    }
                } else {
                    testStepFailed(getRefOfXpath(txtBox_PartPrePaymentLAS) + " is Not Displayed");
                }
                if (flag) {
                    clearEditBox(txtBox_PartPrePaymentLAS);
                    typeIn(txtBox_PartPrePaymentLAS, String.valueOf(max + 1));
                    if (isElementDisplayed(errMsg_paymentRangetxt)) {
                        manualScreenshot(getText(errMsg_paymentRangetxt) + " Error Message is Displayed Successfully");
                    } else {
                        testStepFailed(getRefOfXpath(errMsg_paymentRangetxt) + " is Not Displayed");
                    }
                }
            } else {
                testStepFailed(getRefOfXpath(paymentRangetxtLAS) + " is Not Displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Part Pre payment Text Box with Negative value LAS. Exception: " + e.getClass());
        }
    }

    public void verifyOnlinePaymentButtonWithLessThanLAS(String Button, String Extra) {
        try {
            String paymentRangetxtLAS = "Part Pre Payment range Text#xpath=//div[@class='drowdown_input prepayment mrg-b-25']//div[@class='texthint' and not(@style='color: red;')]";
            String txtBox_PartPrePaymentLAS = "Part Pre Payment range Text Box#xpath=//input[@name='amount']";
            String errMsg_paymentRangetxt = "Error Message for Part Pre Payment range Text Box#xpath=//div[@class='drowdown_input prepayment mrg-b-25']//div[@class='texthint' and (@style='color: red;')]";
            if (isElementDisplayed(paymentRangetxtLAS)) {
                String text = getText(paymentRangetxtLAS);
                String[] split = text.split(" Rs. ");
                String minstring = split[1].split(" ")[0].replaceAll(",", "").trim().split("\\.")[0];
                String maxstring = split[2].trim().replaceAll(",", "").trim().split("\\.")[0];
                int min = Integer.parseInt(minstring);
                int max = Integer.parseInt(maxstring);
                Boolean flag = false;
                if (isElementDisplayed(txtBox_PartPrePaymentLAS)) {
                    flag = true;
                    clearEditBox(txtBox_PartPrePaymentLAS);
                    typeIn(txtBox_PartPrePaymentLAS, String.valueOf(min - 1));
                    verifyButtonIsDisabledInThePageusingText(Button.trim());

                }

            } else {
                testStepFailed(getRefOfXpath(paymentRangetxtLAS) + " is Not Displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Online Payment Button With LessThan LAS. Exception: " + e.getClass());
        }
    }

    public void verifyOnlinePaymentButtonWithMoreThanLAS(String Button, String Extra) {
        try {
            String paymentRangetxtLAS = "Part Pre Payment range Text#xpath=//div[@class='drowdown_input prepayment mrg-b-25']//div[@class='texthint' and not(@style='color: red;')]";
            String txtBox_PartPrePaymentLAS = "Part Pre Payment range Text Box#xpath=//input[@name='amount']";
            String errMsg_paymentRangetxt = "Error Message for Part Pre Payment range Text Box#xpath=//div[@class='drowdown_input prepayment mrg-b-25']//div[@class='texthint' and (@style='color: red;')]";
            if (isElementDisplayed(paymentRangetxtLAS)) {
                String text = getText(paymentRangetxtLAS);
                String[] split = text.split(" Rs. ");
                String minstring = split[1].split(" ")[0].replaceAll(",", "").trim().split("\\.")[0];
                String maxstring = split[2].trim().replaceAll(",", "").trim().split("\\.")[0];
                int min = Integer.parseInt(minstring);
                int max = Integer.parseInt(maxstring);
                Boolean flag = false;
                if (isElementDisplayed(txtBox_PartPrePaymentLAS)) {
                    flag = true;
                    clearEditBox(txtBox_PartPrePaymentLAS);
                    typeIn(txtBox_PartPrePaymentLAS, String.valueOf(max + 1));
                    verifyButtonIsDisabledInThePageusingText(Button.trim());

                }
            } else {
                testStepFailed(getRefOfXpath(paymentRangetxtLAS) + " is Not Displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Online Payment Button With MoreThan LAS. Exception: " + e.getClass());
        }
    }

    public void verifyInputBoxInvalidValuesLAS(String Invalid, String Extra) {
        try {
            String paymentRangetxtLAS = "Part Pre Payment range Text#xpath=//div[@class='drowdown_input prepayment mrg-b-25']//div[@class='texthint' and not(@style='color: red;')]";
            String txtBox_PartPrePaymentLAS = "Part Pre Payment range Text Box#xpath=//input[@name='amount']";
            String errMsg_paymentRangetxt = "Error Message for Part Pre Payment range Text Box#xpath=//div[@class='drowdown_input prepayment mrg-b-25']//div[@class='texthint' and (@style='color: red;')]";
            Boolean flag = false;
            if (isElementDisplayed(txtBox_PartPrePaymentLAS)) {
                flag = true;
                clearEditBox(txtBox_PartPrePaymentLAS);
                String[] split = Invalid.split(", ");
                for (int i = 0; i < split.length; i++) {
                    String value = split[i];
                    typeIn(txtBox_PartPrePaymentLAS, value);
                    String accepted = getAttributeValue(txtBox_PartPrePaymentLAS);
                    if (value.equalsIgnoreCase(accepted)) {
                        testStepFailed(getRefOfXpath(txtBox_PartPrePaymentLAS) + " is accepting Invalid value: " + value);
                    } else {
                        testStepPassed(getRefOfXpath(txtBox_PartPrePaymentLAS) + " is not accepting Invalid value: " + value);
                    }

                }

            } else {
                testStepFailed(getRefOfXpath(txtBox_PartPrePaymentLAS) + " is Not Displayed");

            }

        } catch (
                Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Input Box InvalidValues LAS. Exception: " + e.getClass());
        }
    }


    public void emailMaskedLAS(String extra) {
        try {
            String email = "Email#xpath=//div[@class='emobile_data']/p[normalize-space(text())='Registered Email ID']/following-sibling::strong";
            String value = getText(email);
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
            testStepFailed("Failed in email Masked LAS. Exception: " + e.getClass());
        }
    }


    public void mobileMaskedLAS(String extra) {
        try {
            String mobile = "Mobile#xpath=//div[@class='emobile_data']/p[normalize-space(text())='Registered Mobile Number']/following-sibling::strong";
            String value = getText(mobile);

            verifyMaskedAndUnmaskedFormatUsingValue(value, "Mobile Number", "X", 0, 4, true, "0");
            verifyMaskedAndUnmaskedFormatUsingValue(value, "Mobile Number", "X", 0, 4, false, "1");


        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in mobile Masked LAS. Exception: " + e.getClass());
        }

    }

    public void enterValidAmountPartPayLAS(String Extra) {
        try {
            String paymentRangetxtLAS = "Part Pre Payment range Text#xpath=//div[@class='drowdown_input prepayment mrg-b-25']//div[@class='texthint' and not(@style='color: red;')]";
            String txtBox_PartPrePaymentLAS = "Part Pre Payment range Text Box#xpath=//input[@name='amount']";
            String errMsg_paymentRangetxt = "Error Message for Part Pre Payment range Text Box#xpath=//div[@class='drowdown_input prepayment mrg-b-25']//div[@class='texthint' and (@style='color: red;')]";
            if (isElementDisplayed(paymentRangetxtLAS)) {
                String text = getText(paymentRangetxtLAS);
                String[] split = text.split(" Rs. ");
                String minstring = split[1].split(" ")[0].replaceAll(",", "").trim().split("\\.")[0];
                String maxstring = split[2].trim().replaceAll(",", "").trim().split("\\.")[0];
                int min = Integer.parseInt(minstring);
                int max = Integer.parseInt(maxstring);
                Boolean flag = false;
                if (isElementDisplayed(txtBox_PartPrePaymentLAS)) {
                    flag = true;
                    clearEditBox(txtBox_PartPrePaymentLAS);
                    typeIn(txtBox_PartPrePaymentLAS, String.valueOf(min + 10));
                }
            } else {
                testStepFailed(getRefOfXpath(paymentRangetxtLAS) + " is Not Displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in enter Valid Amount PartPay LAS. Exception: " + e.getClass());
        }
    }

    public static final String popup_Offline = "Offline Method Popup#xpath=//div[@class='dialog_body modal_360']/div/strong[normalize-space(text())='Offline Method']";
    public static final String pao_CancelPage = "Pre Approved Offers section#xpath=//div[@class='finance_slider']";

    public void offlinePopupContents(String Details, String extra) {
        try {
            String static1 = "Static Msg 1: #xpath=(//div[@class='dialog_body modal_360']/div/p)[1]";
            String static2 = "Static Msg 2: #xpath=(//div[@class='dialog_body modal_360']/div/p)[2]";
            String[] split = Details.split(", ");
            verifyElementIsDisplayedAndGetText(static1);
            for (int i = 0; i < split.length; i++) {
                String Option = split[i];
                verifyValueUsingLabel("//div[@class='dialog_body modal_360']/div//div[@class='Loan_bottom_list']/ul/li/p", Option, "/following-sibling::strong", "");
            }
            verifyElementIsDisplayedAndGetText(static2);

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in offline Popup Contents. Exception: " + e.getClass());
        }

    }


    ///Missed Interests

    public static final String input_MissedInterests = "Input Field in Missed Interests Page#xpath=//input[@id='lasamountfield']";
    public static final String paymentRangeMI = "Payment Range in Missed Interests Page#xpath=//div[@class='drowdown_input prepayment']//div[@class='texthint' and not(@style='color: red;')]";


    public void tabPaymentsLAS(String tab, String extra) {
        try {
            String tabOption = "Tab: " + tab + " #xpath=//li//a[normalize-space(text())='" + tab.trim() + "']";
            if (isElementDisplayed(tabOption)) {
                clickOn(tabOption);
            } else {
                testStepFailed(getRefOfXpath(tabOption) + " is not Displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in tab Payments LAS. Exception: " + e.getClass());
        }

    }


    public int getMinValueOfLAStMI() {
        int value = 0;
        try {
            if (isElementDisplayed(paymentRangeMI)) {
                String text = getText(paymentRangeMI);
                String[] split = text.split(" Rs. ");
                value = Integer.parseInt(split[1].split(" ")[0].replaceAll(",", "").trim());

            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in get min Value of LAS MI. Exception: " + e.getClass());
        }
        return value;
    }

    public void verifyMITextBoxAutoPopulatedValueLAS() {
        try {
            int min = getMinValueOfPartPrePaymentLAS();
            String inputBox = getAttributeValue(input_MissedInterests);
            String value = inputBox.trim();

            int inputValue = Integer.parseInt(value);
            if (isElementPresent(input_MissedInterests)) {
                if (inputValue == min) {
                    manualScreenshot("Part Pre payment Text Box Auto Populated Value is Equal to Minimum Value of part Pre Payment verified successfully");
                } else {
                    stepFailed("Hint Text Minimum Amount: " + min);
                    stepFailed("Text Box Auto populated Amount: " + getAttributeValue(input_MissedInterests));
                    testStepFailed("Part Pre payment Text Box Auto Populated Value is not Equal to Minimum Value of part Pre Payment");
                }
            } else {
                testStepFailed(getRefOfXpath(input_MissedInterests) + " is Not Displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify MI TextBox AutoPopulated Value LAS. Exception: " + e.getClass());
        }
    }

    public void verifyMIBoxWithNegativeLAS() {
        try {
            String errMsg_paymentRangetxt = "Error Message for Missed Interests range Text Box#xpath=//div[@class='drowdown_input prepayment']//div[@class='texthint' and (@style='color: red;')]";
            String timHeader = "Total Interest Amount Header#xpath=//strong[normalize-space(text())='Total Interest Amount']";
            if (isElementDisplayed(paymentRangeMI)) {
                String text = getText(paymentRangeMI);
                String[] split = text.split(" Rs. ");
                String minstring = split[1].split(" ")[0].replaceAll(",", "").trim().split("\\.")[0];
                String maxstring = split[2].trim().replaceAll(",", "").trim().split("\\.")[0];
                int min = Integer.parseInt(minstring);
                int max = Integer.parseInt(maxstring);
                Boolean flag = false;
                if (isElementDisplayed(input_MissedInterests)) {
                    flag = true;
                    clearEditBox(input_MissedInterests);
                    typeIn(input_MissedInterests, String.valueOf(min - 1));
//                    clickOn(input_MissedInterests);
                    waitTime(2);
                    if (isElementDisplayed(errMsg_paymentRangetxt)) {
                        manualScreenshot(getText(errMsg_paymentRangetxt) + " Error Message is Displayed Successfully");
                    } else {
                        testStepFailed(getRefOfXpath(errMsg_paymentRangetxt) + " is Not Displayed");
                    }
                } else {
                    testStepFailed(getRefOfXpath(input_MissedInterests) + " is Not Displayed");
                }
                if (flag) {
                    clearEditBox(input_MissedInterests);
                    typeIn(input_MissedInterests, String.valueOf(max + 1));
                    if (isElementDisplayed(errMsg_paymentRangetxt)) {
                        manualScreenshot(getText(errMsg_paymentRangetxt) + " Error Message is Displayed Successfully");
                    } else {
                        testStepFailed(getRefOfXpath(errMsg_paymentRangetxt) + " is Not Displayed");
                    }
                }
            } else {
                testStepFailed(getRefOfXpath(paymentRangeMI) + " is Not Displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify MI Box With Negative LAS. Exception: " + e.getClass());
        }
    }

    public void verifyOnlinePaymentButtonWithLessThanMILAS(String Button, String Extra) {
        try {
            String paymentRangetxtLAS = "Part Pre Payment range Text#xpath=//div[@class='drowdown_input prepayment mrg-b-25']//div[@class='texthint' and not(@style='color: red;')]";
            String txtBox_PartPrePaymentLAS = "Part Pre Payment range Text Box#xpath=//input[@name='amount']";
            if (isElementDisplayed(paymentRangeMI)) {
                String text = getText(paymentRangeMI);
                String[] split = text.split(" Rs. ");
                String minstring = split[1].split(" ")[0].replaceAll(",", "").trim().split("\\.")[0];
                String maxstring = split[2].trim().replaceAll(",", "").trim().split("\\.")[0];
                int min = Integer.parseInt(minstring);
                int max = Integer.parseInt(maxstring);
                Boolean flag = false;
                if (isElementDisplayed(input_MissedInterests)) {
                    flag = true;
                    clearEditBox(input_MissedInterests);
                    typeIn(input_MissedInterests, String.valueOf(min - 1));
                    verifyButtonIsDisabledInThePageusingText(Button.trim());

                }

            } else {
                testStepFailed(getRefOfXpath(paymentRangeMI) + " is Not Displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Online Payment Button With LessThan MI LAS. Exception: " + e.getClass());
        }
    }

    public void verifyOnlinePaymentButtonWithMoreThanMILAS(String Button, String Extra) {
        try {
            String paymentRangetxtLAS = "Part Pre Payment range Text#xpath=//div[@class='drowdown_input prepayment mrg-b-25']//div[@class='texthint' and not(@style='color: red;')]";
            String txtBox_PartPrePaymentLAS = "Part Pre Payment range Text Box#xpath=//input[@name='amount']";
            String errMsg_paymentRangetxt = "Error Message for Part Pre Payment range Text Box#xpath=//div[@class='drowdown_input prepayment mrg-b-25']//div[@class='texthint' and (@style='color: red;')]";
            if (isElementDisplayed(paymentRangeMI)) {
                String text = getText(paymentRangeMI);
                String[] split = text.split(" Rs. ");
                String minstring = split[1].split(" ")[0].replaceAll(",", "").trim().split("\\.")[0];
                String maxstring = split[2].trim().replaceAll(",", "").trim().split("\\.")[0];
                int min = Integer.parseInt(minstring);
                int max = Integer.parseInt(maxstring);
                Boolean flag = false;
                if (isElementDisplayed(input_MissedInterests)) {
                    flag = true;
                    clearEditBox(input_MissedInterests);
                    typeIn(input_MissedInterests, String.valueOf(max + 1));
                    verifyButtonIsDisabledInThePageusingText(Button.trim());

                }
            } else {
                testStepFailed(getRefOfXpath(paymentRangeMI) + " is Not Displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Online Payment Button With MoreThan MI LAS. Exception: " + e.getClass());
        }
    }

    public void verifyInputBoxInvalidValuesMILAS(String Invalid, String Extra) {
        try {
            String paymentRangetxtLAS = "Part Pre Payment range Text#xpath=//div[@class='drowdown_input prepayment mrg-b-25']//div[@class='texthint' and not(@style='color: red;')]";
            String txtBox_PartPrePaymentLAS = "Part Pre Payment range Text Box#xpath=//input[@name='amount']";
            String errMsg_paymentRangetxt = "Error Message for Part Pre Payment range Text Box#xpath=//div[@class='drowdown_input prepayment mrg-b-25']//div[@class='texthint' and (@style='color: red;')]";
            Boolean flag = false;
            if (isElementDisplayed(input_MissedInterests)) {
                flag = true;
                clearEditBox(input_MissedInterests);
                String[] split = Invalid.split(", ");
                for (int i = 0; i < split.length; i++) {
                    String value = split[i];
                    typeIn(txtBox_PartPrePaymentLAS, value);
                    String accepted = getAttributeValue(input_MissedInterests);
                    if (value.equalsIgnoreCase(accepted)) {
                        testStepFailed(getRefOfXpath(input_MissedInterests) + " is accepting Invalid value: " + value);
                    } else {
                        testStepPassed(getRefOfXpath(input_MissedInterests) + " is not accepting Invalid value: " + value);
                    }

                }

            } else {
                testStepFailed(getRefOfXpath(input_MissedInterests) + " is Not Displayed");

            }

        } catch (
                Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Input Box Invalid Values MI LAS. Exception: " + e.getClass());
        }
    }

    public void enterValidAmountMILAS(String Extra) {
        try {
            String paymentRangetxtLAS = "Part Pre Payment range Text#xpath=//div[@class='drowdown_input prepayment mrg-b-25']//div[@class='texthint' and not(@style='color: red;')]";
            String txtBox_PartPrePaymentLAS = "Part Pre Payment range Text Box#xpath=//input[@name='amount']";
            String errMsg_paymentRangetxt = "Error Message for Part Pre Payment range Text Box#xpath=//div[@class='drowdown_input prepayment mrg-b-25']//div[@class='texthint' and (@style='color: red;')]";
            if (isElementDisplayed(paymentRangeMI)) {
                String text = getText(paymentRangeMI);
                String[] split = text.split(" Rs. ");
                String minstring = split[1].split(" ")[0].replaceAll(",", "").trim().split("\\.")[0];
                String maxstring = split[2].trim().replaceAll(",", "").trim().split("\\.")[0];
                int min = Integer.parseInt(minstring);
                int max = Integer.parseInt(maxstring);
                Boolean flag = false;
                if (isElementDisplayed(input_MissedInterests)) {
                    flag = true;
                    clearEditBox(input_MissedInterests);
                    typeIn(input_MissedInterests, String.valueOf(min + 10));
                }
            } else {
                testStepFailed(getRefOfXpath(paymentRangeMI) + " is Not Displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in enter Valid Amount MI LAS. Exception: " + e.getClass());
        }
    }

    public void bankAccountMaskedLAS(String extra) {
        try {
            String bank = "Bank Account Number#xpath=//div[@class='loanright_parts']/descendant::li/p[normalize-space(text())='Account Number']/following-sibling::strong";
            String value = getText(bank);

            verifyMaskedAndUnmaskedFormatUsingValue(value, "Account Number", "X", 0, 4, true, "0");
            verifyMaskedAndUnmaskedFormatUsingValue(value, "Account Number", "X", 0, 4, false, "1");


        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in bank Account Masked LAS. Exception: " + e.getClass());
        }

    }


    public static final String securities_Pledged = "Securities_Pledged #xpath=//ul[@class='j_bank_list']/li[1]/var[normalize-space(text())='Securities Pledged:']";
    public static final String quantitytoUnpledge = "Quantity to UnPledge #xpath=//div[@class='bank_input']/div/label[normalize-space(text())='Quantity to Unpledge']";


}
