package PageObjects;

import base.ApplicationKeywords;
import org.openqa.selenium.*;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.FluentWait;
import org.openqa.selenium.support.ui.Wait;

import java.time.Duration;

public class HomePageKyc extends ApplicationKeywords {

    /*
Xpaths
 */
    public static final String kyc_Popup = "KYC Pop up Verify Your Information #xpath=//div[@class='dialog_modal kyc-popup']/div[@class='dialog_body']";
    public static final String close_Kyc_Popup = "Close Button KYC Pop up#xpath=//div[@class='dialog_modal kyc-popup']/div[@class='dialog_body']/descendant::a";
    public static final String kyc_checkBox = "KYC Pop up I hereby confirm that the details mentioned above, including my address and personal information are true and correct and matching with my current updated address and personal information.If any information proves false or incorrect, I shall be responsible for the consequences. #xpath=//p[normalize-space(text())='I hereby confirm that the details mentioned above, including my address and personal information are true and correct and matching with my current updated address and personal information.If any information proves false or incorrect, I shall be responsible for the consequences.']//preceding-sibling::input[@id='chkTermsKYC']";

    public static final String btn_Correct = "This is correct #xpath=//button[text()='This is correct']";


    public static final String alerts_Icon = "Alerts Icon #xpath=//p[normalize-space(text())='Alerts']";

    public static final String alerts_label = "Alerts  Offers #xpath=//a[normalize-space(text())='Alerts']";

    public static final String preApproved_PL = "Personal Loan #xpath=//p[normalize-space(text())='Personal Loan']//parent::div//following::div//a[text()='Apply now']";

    public static final String drawdown_cta = "DrawDown Bank Change RHS  Icon #xpath=//div[@class='Superstores_list Superstore_Loan']//p[text()='Drawdown Bank Change']";

    public static final String ok_cta = "DrawDown Bank Change OK Popup button #xpath=//div[@class='a_alertpopup_model']//button[text()='OK']";


    public static final String checkbox = "Terms and conditions check box  #xpath=//label[@for='chkTerms1_OW']";
    public static final String Applynoe_btn = "Apply now #xpath=//div[@class='ctas_div']//a[text()='Apply now']";

    public static final String footer_PL = "Apply now #xpath=//div[@class='loansPart']//a[text()='Personal Loan']";

    public static final String offersforYou = "Personal loan  #xpath=//div[@class='a_offerfor_you offerforyousso']//parent::div//following::div//img[@src='https://cms-assets.bajajfinserv.in/is/image/bajajfinancestage/personal-loan-banner-16?scl=1&fmt=png-alpha' and @alt='personal-loan']";


    public static final String updatebutton = "UPDATE" + "#xpath=(//img[@src='/MyAccountAsset/images/Update KYC.png']//following::div//a[contains(text(),'UPDATE')])[1]";

        /*
    Methods
     */

    public void verifyCrossButtonInFilter() {
        try {

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verifyCrossButtonInFilter.Exception:" + e.getClass());

        }

    }



    public void verifyButtons( String labelNames) {
        try {
            String[] val = labelNames.split("#");
            for (int i = 0; i < val.length; i++) {
                String locator =   val[i] + "#xpath=//button[contains(text(),'" + val[i] + "')]";
                if (isElementDisplayed(locator)) {
                    testStepPassed( val[i] + " displayed  sucessfully");
                } else {
                    testStepFailed(val[i] + "Not displayed ");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

    }




    public void verifyEmiPopup() {
        try {
            String locator =    "#xpath=//div[@id='ptbOfferPopup']";
            if (isElementDisplayed(locator)) {
                String text=findWebElement(locator).getText();
                if(!text.isEmpty()) {
                    testStepPassed(text + " displayed  sucessfully");
                }
            } else {
                testStepFailed("Emi Popup " + "Not displayed ");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

    }


    public void clickKycButton( String labelNames) {
        try {
            String locator =    "#xpath=//div[@class='dialog_modal kyc-popup']/div[@class='dialog_body']//button[contains(text(),'" + labelNames + "')]";
            if (isElementDisplayed(locator)) {
                clickOn(locator);
                testStepPassed( labelNames + " displayed  sucessfully");
            } else {
                testStepFailed(labelNames + "Not displayed ");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

    }


    public String verifyMaskedValueUsingLabel(String commonPath, String labelText, String additionalPath, String extra) {
        String value = "";
        try {
            String label = "" + labelText + " Label#xpath=" + commonPath + "[normalize-space(text())='" + labelText.trim() + "']";
            String labelValue = "" + labelText + " Value#xpath=" + getCommonPathOfLocator(label) + "" + additionalPath + "";
            scrollToWebElement(label);
            if (isElementDisplayed(label)) {
                manualScreenshot(getRefOfXpath(label) + " is Displayed Successfully");
                if (isElementDisplayed(label)) {
                    value = getTextPresent(labelValue).trim();
                    if (!value.isEmpty() & value.contains("XXXX")) {
                        manualScreenshot(getRefOfXpath(labelValue) + " is Displayed Successfully. Value: " + getText(labelValue));
                    } else {
                        manualScreenshot(getRefOfXpath(labelText) + " is Not provided any Value: " );

                    }
                    //  manualScreenshot(getRefOfXpath(labelValue) + " is Displayed Successfully. Value: " + getText(labelValue));
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


    public boolean verifyFieldsNotDisplayedUsingLocator(String locator) {
        boolean flag = false;
        try {
            if (!isElementDisplayed(locator)) {
                flag = true;
                manualScreenshot(locator.split("#")[0] + " is Not Displaying ");
            } else {
                testStepFailed(locator.split("#")[0] + " is still displaying ");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Fields Displayed Using Locator "+getRefOfXpath(locator)+". Exception: " + e.getClass());
        }
        return flag;
    }


    public void clickOnAlertsIconBelowOffers( String OfferName,String labelName) {
        try {
            String button = labelName + "#xpath=//h3[text()='"+ OfferName+"']//parent::div//following::div//a[contains(text(),'" + labelName + "')]";
            scrollToWebElement(button);
            if (isElementDisplayed(button, 10)) {
                WebElement ele = driver.findElement(By.xpath("//h3[text()='"+ OfferName+"']//parent::div//following::div//a[contains(text(),'" + labelName + "')]"));
                JavascriptExecutor jse = (JavascriptExecutor) driver;
                jse.executeScript("arguments[0].scrollIntoView()", ele);
                waitTime(4);
                Point p = ele.getLocation();
                int y = p.getY() - 250;
                JavascriptExecutor js = (JavascriptExecutor) driver;
                js.executeScript("window.scrollTo(" + p.getX() + "," + y + ");");
                String aemText = OfferName + "#xpath=//h3[text()='"+ OfferName+"']//following-sibling::p";
                //h3[text()='Fixed Deposit']//following-sibling::p
                if(isElementDisplayed(aemText)){
                    String text=findWebElement(aemText).getText();
                    if(!text.isEmpty()){
                        manualScreenshot(text+"sucessfully displayed ");
                    }
                }
                clickOn(button);
                testStepPassed("sucessfully clicked on" + labelName);
                waitForPageToLoad();
            } else {
                testStepFailed(labelName + "  is not present.");
            }
        } catch (Exception e) {
            testStepFailed("Failed to click On " + labelName + e.getClass());
        }

    }




    public void verifyBoldLetter(String OfferName,String labelName){
        try {
            String button = labelName + "#xpath=//h3[text()='"+ OfferName+"']//parent::div//following::div//a[contains(text(),'" + labelName + "')]";
            scrollToWebElement(button);

        } catch (Exception e) {
            testStepFailed("Failed to click On " + labelName + e.getClass());
        }
    }


    public void verifyFontSizeAlertsIconBelowOffers( String OfferName,String labelName) {
        try {
            String button = labelName + "#xpath=//h3[text()='"+ OfferName+"']//parent::div//following::div//a[contains(text(),'" + labelName + "')]";
            scrollToWebElement(button);
            if (isElementDisplayed(button, 10)) {
                WebElement ele = driver.findElement(By.xpath("//h3[text()='"+ OfferName+"']//parent::div//following::div//a[contains(text(),'" + labelName + "')]"));
                String fsize=   validateFont(button);
                if(fsize.contains("RubikReg")){
                    testStepPassed("sucessfully displayed CAPS on" + labelName);
                }
                waitForPageToLoad();
            } else {
                testStepFailed(labelName + "  is not present.");
            }
        } catch (Exception e) {
            testStepFailed("Failed to click On " + labelName + e.getClass());
        }

    }




    public void verifyFontSizeAUpdateEmailID( String labelName) {
        try {
            String button = labelName + "#xpath=(//img[@src='/MyAccountAsset/images/Update KYC.png']//following::div//a[contains(text(),'UPDATE')])[1]";
            scrollToWebElement(button);
            if (isElementDisplayed(button, 10)) {
                WebElement ele = driver.findElement(By.xpath("(//img[@src='/MyAccountAsset/images/Update KYC.png']//following::div//a[contains(text(),'UPDATE')])[1]"));
                String fsize=   validateFont(button);
                if(fsize.contains("Rubik-Reg")){
                    testStepPassed("sucessfully displayed CAPS on" + labelName);
                }
                waitForPageToLoad();
            } else {
                testStepFailed(labelName + "  is not present.");
            }
        } catch (Exception e) {
            testStepFailed("Failed to click On " + labelName + e.getClass());
        }

    }





    public void verifyAlertsIconBelowOffers( String OfferName,String labelName) {
        try {
            String button = labelName + "#xpath=//h3[text()='"+ OfferName+"']//parent::div//following::div//a[contains(text(),'" + labelName + "')]";
            scrollToWebElement(button);
            if (isElementDisplayed(button, 10)) {
                WebElement ele = driver.findElement(By.xpath("//h3[text()='"+ OfferName+"']//parent::div//following::div//a[contains(text(),'" + labelName + "')]"));
                JavascriptExecutor jse = (JavascriptExecutor) driver;
                jse.executeScript("arguments[0].scrollIntoView()", ele);
                waitTime(4);
                Point p = ele.getLocation();
                int y = p.getY() - 250;
                JavascriptExecutor js = (JavascriptExecutor) driver;
                js.executeScript("window.scrollTo(" + p.getX() + "," + y + ");");
                String aemText = OfferName + "#xpath=//h3[text()='"+ OfferName+"']//following-sibling::p";
                //h3[text()='Fixed Deposit']//following-sibling::p
                if(isElementDisplayed(aemText)){
                    String text=findWebElement(aemText).getText();
                    if(!text.isEmpty()){
                        manualScreenshot(text+"sucessfully displayed ");
                    }
                }
                //  clickOn(button);
                testStepPassed("sucessfully clicked on" + labelName);
                waitForPageToLoad();
            } else {
                testStepFailed(labelName + "  is not present.");
            }
        } catch (Exception e) {
            testStepFailed("Failed to click On " + labelName + e.getClass());
        }

    }


    public void verifyFieldDisplayedUsingForLoop(String labelName) {

        String locator = labelName+"#xpath=//div[@class='finance_slider']//p[normalize-space(text())='"+labelName+"']";
        try {
            Boolean flag = false;
            for (int i = 1; i <= findWebElements(locator).size(); i++) {
                String button = "" + locator.split("#")[0] + "#xpath=(" + locator.split("#xpath=")[1] + ")[" + i + "]";
                waitForElementUntilVisibleFluentWait(button);
                if (isElementDisplayed(button)) {
                    clickOn(button);
                    scrollToWebElement(button);
                    manualScreenshot(locator.split("#")[0] + " button is Displayed successfully");
                    flag = true;
                    break;
                }
            }
            if (!flag) {
                testStepFailed(locator.split("#")[0] + "  is not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in click on  " + getRefOfXpath(locator) + " button using locator using for loop. Exception: " + e.getClass());
        }

    }

    public void waitForElementUntilVisibleFluentWait(String locator) {
        try {
            Wait<WebDriver> fluentWait = new FluentWait<WebDriver>(driver)
                    .withTimeout(Duration.ofSeconds(60))
                    .pollingEvery(Duration.ofSeconds(5))
                    .ignoring(NoSuchElementException.class);
            fluentWait.until((ExpectedConditions.visibilityOfElementLocated(By.xpath(getCommonPathOfLocator(locator)))));
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in wait for " + getRefOfXpath(locator) + " Until Visible Fluent. Exception: " + e.getClass());
        }

    }

}
