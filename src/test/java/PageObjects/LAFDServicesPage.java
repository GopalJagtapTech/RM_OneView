package PageObjects;

import base.ApplicationKeywords;
import org.openqa.selenium.*;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.FluentWait;
import org.openqa.selenium.support.ui.Wait;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.awt.*;
import java.time.Duration;
import java.util.List;

public class LAFDServicesPage extends ApplicationKeywords {
    /*
    Xpaths
     */


    public static final String btn_ViewDetails = "View Details#xpath=(//a[contains(text(),'View Details')])[1]";
    public static final String productIcon = "Product Icon#xpath=//div[@class='fixed_deposit_data']//img[1]";
    public static final String loanAccountNumber = "Loan Account Number#xpath=//div[@class='fixed_deposit_data']//p[1]";
    public static final String productName = "Product Name#xpath=//div[@class='fixed_deposit_data']//strong[1]";
    public static final String loanAmount = "Loan Amount#xpath=//div[@class='fixed_deposit_amount']";
    public static final String infoIcon = "Info Icon#xpath=//div[contains(@class,'info_icon')]";


    public static final String btn_CheckNow = "Check Now#xpath=//i[normalize-space()='Check Now']";
    ///////Lafd
    public static final String section_MyRelations = "MyRelations Section for LAFD Services#xpath=//div[@class='rel_item_box']/../../..";
    public static final String logo_LAFD = "Product Logo in LAFD Services#xpath=//div[@class='fixed_deposit_data']//img[contains(@src,'/images/doctor.svg')]";
    public static final String logo_LAFDClosed = "Product Logo in LAFD Services Closed#xpath=//div[@class='fixed_deposit_section']//img[@src='/MyAccountAsset/images/doctor.svg']";
    public static final String view_statement = "View statement in LAFD Page#xpath=//p[normalize-space()='View Statements']/ancestor::a[@id='lnkViewStatement']";
    public static final String faqs_LAFDServices = "FAQs in Loan Services Page#xpath=//strong[normalize-space()='Frequently asked questions']";

    public static final String cibil_LAFDServices = "Check your CIBIL Score Page#xpath=//strong[normalize-space()='Check your CIBIL Score']";

    public static final String checkNow_LAFDServices = "Check Now in Cibil Score#xpath=//div[@class='cibilscore']//i[@id='cibilCheck']";
    public static final String viewAll_LAFDServices = "View All in Home Page#xpath=//div[@class='my_relation']//a[contains(text(),'View All')]";
    public static final String loanTile_LAFDServices = "Loan Tile in LAFD Services in My Relations Page#xpath=(//div[@class='deposit_found_data Loanstest'])[1]";
    public static final String quickActions_LAFD = "Quick Actions in LAFD Services#xpath=//div[@class='title_rightpart']//p[normalize-space()='Quick Actions']/../../../..";
    public static final String pao_LAFD = "Pre Approved Offers in LAFD Services#xpath=//div[@class='BHFL_leftpart loanDetailPage']/..//div[@class='offersfore_you']//p[normalize-space()='Pre-approved offers for you']";
    public static final String statement_LAFDServices = "Statements for LAFD Services#xpath=//p[normalize-space(text())='Loan Account Number:']/following::div[@class='j_doc_loans_tab']";

    public static final String myRelations = "My Relations #xpath=//div[@class='pageall_title']//p[text()='My Relations']";



    //a[@onclick="GoToRelation('All')"]

    ////Lafd


    public void verifyViewDetailsRedirectionLAFD() {
        try {
            String viewdetails = "View Details for First Tile in LAFD#xpath=(//a[normalize-space(text())='View Details'])[1]";

            clickOnIfDisplayed(viewdetails);
            waitForPageToLoad();
            verifyRedirectionURLIfContains("https://experia-uat.bajajfinserv.in/MyRelation/Loans/Loans/Nonflexiloan");

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in Verify View Details Redirection LAFD .Exception: " + e.getClass());
        }
    }

    public void verifyNameandLogoOfTheProduct() {
        try {
            String infoIcon = "Info Tip Icon in LAFD adjacent to Rate Of Interest#xpath=//div[@class='fixed_points_one']/following::div[@class='infotext info_icon']//img[@src='/MyAccountAsset/images/icons-info.svg']|//div[@class='fixed_points_one']/following::div[@class='infotext info_icon']//a/img[@src='https://experia-uat.bajajfinserv.in/UI/images/icons-info.svg']";
            String productName = "Product Name in LAFD#xpath=//div[@class='fixed_deposit_text']//strong[contains(text(),'Loan Against Fixed Deposit')]";

            verifyElementIsDisplayedOrNot(infoIcon);
            verifyElementIsDisplayedOrNot(productName);

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in Verify Name and Logo Of The Product .Exception: " + e.getClass());
        }
    }

    public void verifyTYCDLafd() {
        try {
            String tycdsection = "Quick Actions Section#xpath=//div[@class='title_rightpart']//p[normalize-space(text())='Quick Actions']";
            String viewStatements = "View Statements in LAFD Page#xpath=//div[@class='Superstores loans-right-section rhs_inner_Fixed']//p[normalize-space(text())='View Statements']";

            verifyLocatorIsPresentInRightSideOfPage(tycdsection);
            verifyElementIsDisplayedOrNot(viewStatements);

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in Verify TYCD LAFD .Exception: " + e.getClass());
        }
    }

    public void verifyPAOLafd(String tilename) {
        try {
            String tname = ""+tilename+" in Pre Approved Offers#xpath=//div[@class='BHFL_leftpart loanDetailPage']//p[normalize-space(text())='"+tilename+"']/ancestor::div[@class='Loan_card']";
            if (isElementDisplayed(tname)){
                testStepPassed(""+tilename+" in Pre Approved Offers is verified successfully");
            }else {
                testStepFailed(""+tilename+" in Pre Approved Offers is not verified ");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify PAO Lafd .Exception: " + e.getClass());
        }
    }


    //////////////////////////////AGPL
    public boolean verfiyLAFDOption() {
        boolean flag = false;
        try {
            flag = false;
            verifyFieldsDisplayedUsingText("LOAN AGAINST FIXED DEPOSIT");
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verfiyLAFDOption. Exception:" + e.getClass());
        }
        return flag;
    }


    public void verifyLAFdOptions_DetailsPage() {
        int ele = findWebElements("//div[@class='fixed_points_one']//p").size();
        for (int i = 1; i <= ele; i++) {
            String txt = findWebElement("(//div[@class='fixed_points_one']//p)[" + i + "]").getText();
            String txt_1 = txt + "#xpath=(//div[@class='fixed_points_one']//p)[" + i + "]";
            String txt_2 = txt + " value#xpath=(//div[@class='fixed_points_one']//strong)[" + i + "]";
            verifyElementIsDisplayedOrNot(txt_1);
            verifyElementIsDisplayedOrNot(txt_2);
            if (txt_1.equals("Rate of Interest")) {
                verifyElementIsDisplayedOrNot(infoIcon);
            }
        }

    }


    public void ationshipDetails() {
        int ele = findWebElements("//div[@class='Relationship_points']//li").size();
        for (int i = 1; i <= ele; i++) {
            String txt = findWebElement("//div[@class='Relationship_points']//li[" + i + "]//p").getText();
            String txt_1 = txt + "#xpath=//div[@class='Relationship_points']//li[" + i + "]//p";
            String txt_2 = txt + " value#xpath=//div[@class='Relationship_points']//li[" + i + "]//strong";
            verifyElementIsDisplayedOrNot(txt_1);
            verifyElementIsDisplayedOrNot(txt_2);
        }

    }

    public void verifysubHeadingIsDisplayed(String buttonLabel) {

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


    public void verifyViewDetailsLAFD(String labeltileNumber) {
        try {
            String MyRelations = "MyRelations LAFD#xpath=//p[normalize-space(text())='LOAN AGAINST FIXED DEPOSIT']/following-sibling::i[normalize-space(text())='"+labeltileNumber+"']/../../../..//a[text()='View Details']";

            String viewdetails = "View Details for First Tile in LAFD#xpath=//p[normalize-space(text())='LOAN AGAINST FIXED DEPOSIT']/following-sibling::i[normalize-space(text())='"+labeltileNumber+"']/../../../..//a[text()='View Details']";
            clickOn(viewdetails);
            waitForPageToLoad();
            //  verifyRedirectionURLIfContains("https://experia-uat.bajajfinserv.in/MyRelation/Loans/Loans/Nonflexiloan");
            //  verifyRedirectionURLIfContains("https://cont-sites.bajajfinserv.in/MyAccountLoanServices/Loans/Nonflexiloan");
            verifysubHeadingIsDisplayed("Loan Against Fixed Deposit");
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in Verify View Details Redirection LAFD .Exception: " + e.getClass());
        }
    }



    public void waitUntilElementVisible(String locator, int timeout) {
        try {

            WebElement  element = findWebElement(locator);
            WebDriverWait wait = new WebDriverWait(driver, timeout);
            wait.until(ExpectedConditions.visibilityOf(element));
        } catch (NoSuchElementException e) {
            testStepFailed(locator+"Not displayed.Exception: " + e.getClass());
        } catch (WebDriverException e) {
            testStepFailed(locator+"Not displayed.Exception: " + e.getClass());
        }
    }


    public void verifyLAFDLabelName(String labeltileNumber,String labelName) {
        try {

            String infoIcon = labelName+"#xpath=//p[contains(text(),'"+labeltileNumber+"')]/../../..//div[@class='deposit_amount']//p[normalize-space(text())='"+labelName+"']/following-sibling::*";
            waitUntilElementVisible(infoIcon,30);
            if(isElementDisplayed(infoIcon)){
                String text=findWebElement(infoIcon).getText();
                if(!text.isEmpty()){
                    testStepPassed(labelName+"  value displayed sucessfully "+ text);
                }
            }else{
                testStepFailed(labelName+"Value not displayed");
            }


        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in Verify Name and Logo Of The Product .Exception: " + e.getClass());
        }
    }



    public void verifyActiveorClosed(String labeltileNumber,String labelName) {
        try {
            String infoIcon = labelName+"#xpath=//p[contains(text(),'"+labeltileNumber+"')]/../..//span";
            if(isElementDisplayed(infoIcon)){
                String text=findWebElement(infoIcon).getText();
                // String text=findWebElement(infoIcon).getAttribute("value");
                if(text.contains(labelName)){
                    testStepPassed(labelName+"  Tile displayed sucessfully");
                }
            }else{
                testStepFailed(labelName+"Value not displayed");
            }


        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in Verify Name and Logo Of The Product .Exception: " + e.getClass());
        }
    }


    public void verifyB2BServicePage(){
        try {
            String lds="Loan Details Section in LAFD Service Page #xpath=//div[@class='fixed_deposit_section']";
            String rds="Relationship Details Section in LAFD Service Page #xpath=//div[@class='Relationship_Details']";
            String qa="Quick Actions Section#xpath=//p[normalize-space()='Quick Actions']/../../../..";

            verifyFieldsDisplayedUsingLocator(lds);
            verifyFieldsDisplayedUsingLocator(rds);
            verifyFieldsDisplayedUsingLocator(faqs_LAFDServices);
            verifyFieldsDisplayedUsingLocator(cibil_LAFDServices);
            verifyLocatorIsPresentInRightSideOfPage(qa);

        }catch (Exception e){
            e.printStackTrace();
            testStepFailed("Failed in Verify B2BServicePage . Exception: " + e.getClass());

        }
    }


    public void verifyLoanDetails(String labelName) {
        try {
            String infoIcon = labelName+"#xpath=//div[@class='Relationship_points']//p[normalize-space(text())='"+labelName+"']/following-sibling::strong";
            if(isElementDisplayed(infoIcon)){
                String text=findWebElement(infoIcon).getAttribute("value");
                if(!text.isEmpty()){
                    testStepPassed(labelName+"  Tile displayed sucessfully with Value "+ text);
                }
            }else{
                testStepFailed(labelName+"Value not displayed");
            }


        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in Verify Name and Logo Of The Product .Exception: " + e.getClass());
        }
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
    public void verifyFieldDisplayedUsingForLoop(String labelName) {

        String locator = labelName+"#xpath=//div[@class='finance_slider']//p[normalize-space(text())='"+labelName+"']";
        try {
            Boolean flag = false;
            for (int i = 1; i <= findWebElements(locator).size(); i++) {
                String button = "" + locator.split("#")[0] + "#xpath=(" + locator.split("#xpath=")[1] + ")[" + i + "]";
                waitForElementUntilVisibleFluentWait(button);
                if (isElementDisplayed(button)) {
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


}
