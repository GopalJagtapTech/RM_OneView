package PageObjects;

import base.ApplicationKeywords;
import org.openqa.selenium.*;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.FluentWait;
import org.openqa.selenium.support.ui.Wait;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.time.Duration;
import java.util.List;
import java.util.Random;

public class MyOrderPage  extends ApplicationKeywords {


    public static final String menuMyOrder = "My Orders #xpath=//strong[normalize-space(text())='My Orders']";

    public static final String butCurrentOrders = "Current Orders #xpath=//a[normalize-space(text())='Current Orders']";

    public static final String butPreviousOrders = "Previous Orders#xpath=//a[normalize-space(text())='Previous Orders']";

    public static final String butUnsave = "Maps SaveIcon Button#xpath=//i[@class='bf-icon-unsaved-store'and(@data-index='1')]";

    public static final String butSave = "Maps Save Button#xpath=//i[@class='bf-icon-saved-store'and(@data-index='1')]";

    public static final String butLocation = "Directions Icon #xpath=//a[@id='geo_location0']";

    public static final String butMaps = "Maps Icon #xpath=//i[@class='bf-icon-location-pin-outline']";

    public static final String butDirection = "Direction Icon #xpath=//i[@class='bf-icon-direction'and(@data-index='1')]";

    public static final String storeLogoImage = "Store Direction With Icon #xpath=//div[@class='location-box__actions']/following::img";


    public static final String butDirectionRed = "Direction Steps Map #xpath=//div[@id='map' and @tabindex='0']";
    public static final String mapDirection = " Maps Direction Steps Map #xpath=(//div[@class='leaflet-marker-icon leaflet-div-icon leaflet-zoom-animated leaflet-interactive'])[1]";

public static final String startDirections = " Start Directions Steps #xpath=//a[contains(text(),'Start')]//span[@class='direction-icon']";


    public static final String backButton = "Back Button #xpath=(//span[text()='Back' and @class='location-box__back show-desktop-only'])[2]";


    public static final String textStore = "Search by store name #xpath=//div[contains(@style,'display: block;')]//input[@placeholder='Search by store name']";

    public static final String ratingStar = "Rating 5 stars buttons #xpath=//div[@role='radiogroup']";

    public static final String btnSubmit = "SUBMIT FEEDBACK #xpath=//button[normalize-space(text())='SUBMIT FEEDBACK']";


    public boolean verifyFieldsDisplayedUsingLocator(String locator) {
        boolean flag = false;
        try {
            if (isElementDisplayed(locator)) {
                flag = true;
                manualScreenshot(locator.split("#")[0] + " is Verified Successfully");
            } else {
                testStepFailed(locator.split("#")[0] + " is Not Verified");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Fields Displayed Using Locator "+getRefOfXpath(locator)+". Exception: " + e.getClass());
        }
        return flag;
    }

    public boolean verifyHeadingTextIsDisplayed(String buttonLabel) {
        boolean flag = false;
        try {

            String button = buttonLabel + "#xpath=//*[contains(text(),\""+buttonLabel+"\")]";
            List<WebElement> listOfButton = findWebElements(button);
            if (!(listOfButton.size() == 0)) {
                for (int i = 1; i <= listOfButton.size(); i++) {
                    String buttonElement = buttonLabel + "#xpath=(//*[contains(text(),\""+buttonLabel+"\")])["
                            + i + "]";
                    scrollToWebElement(buttonElement);
                    if (isElementDisplayed(buttonElement, 10)) {
                        manualScreenshot(buttonLabel + "  displayed Sucessfully");
                        flag = true;
                        break;
                    }
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




    public boolean getTableData(String buttonLabel) {
        boolean flag = false;
        try {
            String button = buttonLabel + "#xpath=//div[@class='myorders_section']//p[contains(text(),'"+buttonLabel+"')]";
            List<WebElement> listOfButton = findWebElements(button);
            if (!(listOfButton.size() == 0)) {
                for (int i = 1; i <= listOfButton.size(); i++) {
                    String buttonElement = buttonLabel + "#xpath=(//div[@class='myorders_section']//p[contains(text(),'"+buttonLabel+"')])["
                            + i + "]";
                    scrollToWebElement(buttonElement);
                    if (isElementDisplayed(buttonElement, 10)) {
                        flag = true;
                        String text=findWebElement(buttonElement).getText();
                        if(!text.isEmpty()){
                            manualScreenshot(buttonLabel+ " is displayed sucesfully with "+ text);
                        }
                    }
                }
            }
            if (!flag) {
                testStepInfo(buttonLabel + "  is not present.");
            }
        } catch (Exception e) {
            testStepFailed("Failed in verifying labelName Order date Id. Exception : " + e.getClass());
        }
        return flag;
    }



    public boolean getAutopopulatedValue(String buttonLabel) {
        boolean flag = false;
        try {

            String button = buttonLabel + "#xpath=//div[@class='myorders_section']//p[contains(text(),'"+buttonLabel+"')]//following-sibling::*";
            List<WebElement> listOfButton = findWebElements(button);
            if (!(listOfButton.size() == 0)) {
                for (int i = 1; i <= listOfButton.size(); i++) {
                    String buttonElement = buttonLabel + "#xpath=(//div[@class='myorders_section']//p[contains(text(),'"+buttonLabel+"')]//following-sibling::*)["
                            + i + "]";
                    scrollToWebElement(buttonElement);
                    if (isElementDisplayed(buttonElement, 5)) {
                        flag = true;
                        String text=findWebElement(buttonElement).getText();
                        if(!text.isEmpty()){
                            manualScreenshot(buttonLabel+ " is displayed sucesfully with "+ text);
                        }

                    }
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




    public boolean verifyLogoandOfferName(String buttonLabel) {
        boolean flag = false;
        try {

            String button = buttonLabel + "#xpath=//div[@class='myorders_section']//div[@class='myorders_data']//img";
            List<WebElement> listOfButton = findWebElements(button);
            if (!(listOfButton.size() == 0)) {
                for (int i = 1; i <= listOfButton.size(); i++) {
                    String buttonElement = buttonLabel + "#xpath=(//div[@class='myorders_section']//div[@class='myorders_data']//img)["
                            + i + "]";
                    String textElement = buttonLabel + "#xpath=(//div[@class='myorders_section']//div[@class='myorders_data'])["
                            + i + "]";
                    scrollToWebElement(buttonElement);
                    if (isElementDisplayed(buttonElement, 5)) {
                        flag = true;
                        String text=findWebElement(textElement).getText();
                        if(!text.isEmpty()){
                            manualScreenshot(buttonLabel+ " Logo is displayed sucesfully with "+ text);
                        }

                    }
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



    public boolean getOrderType(String buttonLabel) {
        boolean flag = false;
        try {
            String button = buttonLabel + "#xpath=//div[@class='myorders_section']//p[contains(text(),'"+buttonLabel+"')]/following-sibling::a";
            List<WebElement> listOfButton = findWebElements(button);
            if (!(listOfButton.size() == 0)) {
                for (int i = 1; i <= listOfButton.size(); i++) {
                    String buttonElement = buttonLabel + "#xpath=(//div[@class='myorders_section']//p[contains(text(),'"+buttonLabel+"')]/following-sibling::a)["
                            + i + "]";
                    scrollToWebElement(buttonElement);
                    if (isElementDisplayed(buttonElement, 5)) {
                        flag = true;
                        String text=findWebElement(buttonElement).getText();
                        if(!text.isEmpty()){
                            manualScreenshot(buttonLabel+ " is displayed sucesfully with "+ text);
                        }
                    }
                }
            }
            if (!flag) {
                testStepInfo(buttonLabel + "  is not present.");
            }
        } catch (Exception e) {
            testStepFailed("Failed in verifying labelName Order type . Exception : " + e.getClass());
        }
        return flag;
    }



    public boolean verifyOrderType(String buttonLabel) {
        boolean flag = false;
        try {
            String button = buttonLabel + "#xpath=//div[@class='myorders_section']//p[contains(text(),'"+buttonLabel+"')]/following-sibling::a";
            List<WebElement> listOfButton = findWebElements(button);
            if (!(listOfButton.size() == 0)) {
                for (int i = 1; i <= listOfButton.size(); i++) {
                    String buttonElement = buttonLabel + "#xpath=(//div[@class='myorders_section']//p[contains(text(),'"+buttonLabel+"')]/following-sibling::a)["
                            + i + "]";
                    scrollToWebElement(buttonElement);
                    if (isElementDisplayed(buttonElement, 5)) {
                        flag = true;
                        String text=findWebElement(buttonElement).getText();

                        if(text.contains("Store Order")){
                            clickOn(buttonElement);
                            manualScreenshot(text+ "Popup displayed Sucessfully");
                            verifyTextContent("The orders which are placed in-person at Bajaj partner stores are termed as Store Orders");
                            verifyTextContent("GOT IT");
                            clickOnCrossButtonxPopup("close");

                        }
                        else if(text.contains("Online Order")){
                            clickOn(buttonElement);
                            manualScreenshot(text+ "Popup displayed Sucessfully");
                            verifyTextContent("The products purchased on Bajaj Mall are termed as online orders.");
                            verifyTextContent("OKAY");
                            clickOnCrossButtonxPopup("close");
                        }

                    }
                }
            }
            if (!flag) {
                testStepInfo(buttonLabel + "  is not present.");
            }
        } catch (Exception e) {
            testStepFailed("Failed in verifying labelName Order type . Exception : " + e.getClass());
        }
        return flag;
    }



    public void clickOnCrossButtonxPopup(String buttonLabel) {

        try {
            boolean status = false;
            String button = buttonLabel + "#xpath=//img[@src='/MyAccountAsset/Login/images/v2_cross.svg']";
            List<WebElement> listOfButton = findWebElements(button);
            if (!(listOfButton.size() == 0)) {
                for (int i = 1; i <= listOfButton.size(); i++) {
                    String buttonElement = buttonLabel + "#xpath=(//img[@src='/MyAccountAsset/Login/images/v2_cross.svg'])["
                            + i + "]";
                    if (isElementDisplayed(buttonElement, 10)) {
                        clickOn(buttonElement);
                        // testStepPassed(buttonLabel + "  Clicked Sucessfully");
                        waitForPageToLoad();
                        status = true;
                        break;
                    }
                }

            }
            if (!status) {
                //testStepInfo(buttonLabel + " button is not present.");
            }
        } catch (Exception e) {
            testStepFailed("Failed in clickOnButtonInProfile. Exception : " + e.getClass());
        }

    }



    public void verifyTextContent(String buttonLabel) {

        try {
            boolean status = false;
            String button = buttonLabel + "#xpath=//*[contains(text(),\"" + buttonLabel+ "\")]";
            List<WebElement> listOfButton = findWebElements(button);
            if (!(listOfButton.size() == 0)) {
                for (int i = 1; i <= listOfButton.size(); i++) {
                    String buttonElement = buttonLabel + "#xpath=(//*[contains(text(),\"" + buttonLabel+ "\")])["
                            + i + "]";
                    scrollToWebElement(buttonElement);
                    if (isElementDisplayed(buttonElement, 10)) {
                        testStepPassed(buttonLabel + "  displayed Sucessfully");
                        status = true;
                        break;
                    }
                }

            }
            if (!status) {
                //  testStepInfo(buttonLabel + "  is not present.");
            }
        } catch (Exception e) {
            testStepFailed("Failed in verifying labelName. Exception : " + e.getClass());
        }

    }


    public boolean threeDotsImage(String buttonLabel) {
        boolean flag = false;
        try {
            String button = buttonLabel + "#xpath=//div[@class='myorders_section']//p[contains(text(),'"+buttonLabel+"')]/following-sibling::img";
            List<WebElement> listOfButton = findWebElements(button);
            if (!(listOfButton.size() == 0)) {
                for (int i = 1; i <= listOfButton.size(); i++) {
                    String buttonElement = buttonLabel + "#xpath=(//div[@class='myorders_section']//p[contains(text(),'"+buttonLabel+"')]/following-sibling::img)["
                            + i + "]";
                    scrollToWebElement(buttonElement);
                    if (isElementDisplayed(buttonElement, 5)) {
                        flag = true;
                            manualScreenshot(buttonLabel+ " is displayed sucesfully with three dots ");
                    }
                }
            }
            if (!flag) {
                testStepInfo(buttonLabel + "  is not present.");
            }
        } catch (Exception e) {
            testStepFailed("Failed in verifying Three Dots labelName. Exception : " + e.getClass());
        }
        return flag;
    }



    public boolean clickThreeDotsImage(String buttonLabel) {
        boolean flag = false;
        try {
            String button = buttonLabel + "#xpath=//div[@class='myorders_section']//p[contains(text(),'"+buttonLabel+"')]/following-sibling::img";
            List<WebElement> listOfButton = findWebElements(button);
            if (!(listOfButton.size() == 0)) {
                for (int i = 1; i <= listOfButton.size(); i++) {
                    String buttonElement = buttonLabel + "#xpath=(//div[@class='myorders_section']//p[contains(text(),'"+buttonLabel+"')]/following-sibling::img)["
                            + i + "]";
                    scrollToWebElement(buttonElement);
                    if (isElementDisplayed(buttonElement, 5)) {
                        manualScreenshot(buttonLabel+ " is displayed sucesfully with three dots ");
                        clickOn(buttonElement);
                        flag = true;
                        break;
                    }
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

    public boolean verifyLoan(String buttonLabel) {
        boolean flag = false;
        try {
            String button = buttonLabel + "#xpath=//div[@class='img-cont dir-icon']/..//p[contains(text(),'"+buttonLabel+"')]";
            List<WebElement> listOfButton = findWebElements(button);
            if (!(listOfButton.size() == 0)) {
                for (int i = 1; i <= listOfButton.size(); i++) {
                    String buttonElement = buttonLabel + "#xpath=(//div[@class='img-cont dir-icon']/..//p[contains(text(),'"+buttonLabel+"')])["
                            + i + "]";
                    scrollToWebElement(buttonElement);
                    if (isElementDisplayed(buttonElement, 5)) {
                        flag = true;
                        manualScreenshot(buttonLabel+ " is displayed sucesfully with three dots ");
                    }
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



    public boolean verifyIconStore(String buttonLabel) {
        boolean flag = false;
        try {
            String button = buttonLabel + "#xpath=//div[@class='img-cont']/..//p[contains(text(),'"+buttonLabel+"')]";
            List<WebElement> listOfButton = findWebElements(button);
            if (!(listOfButton.size() == 0)) {
                for (int i = 1; i <= listOfButton.size(); i++) {
                    String buttonElement = buttonLabel + "#xpath=(//div[@class='img-cont']/..//p[contains(text(),'"+buttonLabel+"')])["
                            + i + "]";
                    scrollToWebElement(buttonElement);
                    if (isElementDisplayed(buttonElement, 5)) {
                        flag = true;
                        manualScreenshot(buttonLabel+ " is displayed sucesfully with three dots ");
                    }
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


    public boolean clickLoanIcon(String buttonLabel) {
        boolean flag = false;
        try {
            String button = buttonLabel + "#xpath=//div[@class='img-cont dir-icon']/..//p[contains(text(),'"+buttonLabel+"')]";
            List<WebElement> listOfButton = findWebElements(button);
            if (!(listOfButton.size() == 0)) {
                for (int i = 2; i <= listOfButton.size(); i++) {
                    String buttonElement = buttonLabel + "#xpath=(//div[@class='img-cont dir-icon']/..//p[contains(text(),'"+buttonLabel+"')])["
                            + i + "]";
                    scrollToWebElement(buttonElement);
                    if (isElementDisplayed(buttonElement, 5)) {
                        manualScreenshot(buttonLabel+ " is clicked sucesfully ");
                        clickOn(buttonElement,"");
                        flag = true;
                        break;
                    }
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


    public boolean clickIconStore(String buttonLabel) {
        boolean flag = false;
        try {
            String button = buttonLabel + "#xpath=//div[@class='img-cont']/..//p[contains(text(),'"+buttonLabel+"')]";
            List<WebElement> listOfButton = findWebElements(button);
            if (!(listOfButton.size() == 0)) {
                for (int i = 1; i <= listOfButton.size(); i++) {
                    String buttonElement = buttonLabel + "#xpath=(//div[@class='img-cont']/..//p[contains(text(),'"+buttonLabel+"')])["
                            + i + "]";
                    scrollToWebElement(buttonElement);
                    if (isElementDisplayed(buttonElement, 5)) {
                        manualScreenshot(buttonLabel+ " is displayed sucesfully with three dots ");
                        clickOn(buttonElement);
                        flag = true;
                        break;
                    }
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


    public boolean verifyFaq(String buttonLabel) {
        boolean flag = false;
        try {
            String button = buttonLabel + "#xpath=//img[contains(@src,'FAQs_logo.png')]/following-sibling::a[text()='FAQs']";
            List<WebElement> listOfButton = findWebElements(button);
            if (!(listOfButton.size() == 0)) {
                for (int i = 1; i <= listOfButton.size(); i++) {
                    String buttonElement = buttonLabel + "#xpath=(//img[contains(@src,'FAQs_logo.png')]/following-sibling::a[contains(text(),'"+buttonLabel+"')])["
                            + i + "]";
                    scrollToWebElement(buttonElement);
                    if (isElementDisplayed(buttonElement, 5)) {
                        manualScreenshot(buttonLabel+ " Cancel CTA Logo is displayed sucesfully after clicking three dots ");
                        flag = true;
                        break;
                    }
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



    public boolean clickFaq(String buttonLabel) {
        boolean flag = false;
        try {
            String button = buttonLabel + "#xpath=//img[contains(@src,'FAQs_logo.png')]/following-sibling::a[text()='FAQs']";
            List<WebElement> listOfButton = findWebElements(button);
            if (!(listOfButton.size() == 0)) {
                for (int i = 1; i <= listOfButton.size(); i++) {
                    String buttonElement = buttonLabel + "#xpath=(//img[contains(@src,'FAQs_logo.png')]/following-sibling::a[contains(text(),'"+buttonLabel+"')])["
                            + i + "]";
                    scrollToWebElement(buttonElement);
                    if (isElementDisplayed(buttonElement, 5)) {
                        manualScreenshot(buttonLabel+ " Cancel CTA Logo is displayed sucesfully after clicking three dots ");
                        clickOn(buttonElement);
                        flag = true;
                        break;
                    }
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



    public boolean clickCancelFaq(String buttonLabel) {
        boolean flag = false;
        try {
            String button = buttonLabel + "#xpath=//img[contains(@src,'FAQs_logo.png')]";
            List<WebElement> listOfButton = findWebElements(button);
            if (!(listOfButton.size() == 0)) {
                for (int i = 1; i <= listOfButton.size(); i++) {
                    String buttonElement = buttonLabel + "#xpath=(//img[contains(@src,'FAQs_logo.png')])["
                            + i + "]";
                    scrollToWebElement(buttonElement);
                    if (isElementDisplayed(buttonElement, 5)) {
                        manualScreenshot(buttonLabel+ " Cancel CTA Logo is displayed sucesfully after clicking three dots ");
                        clickOn(buttonElement);
                        flag = true;
                        break;
                    }
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



    public boolean verifyOutForDeliveryOrder(String buttonLabel,String status,String deliveryMessage) {
        boolean flag = false;
        try {
            String button = buttonLabel + "#xpath=//p[contains(text(),'Status')]/following-sibling::strong";
            List<WebElement> listOfButton = findWebElements(button);
            if (!(listOfButton.size() == 0)) {
                for (int i = 1; i <= listOfButton.size(); i++) {
                    String buttonElement = buttonLabel + "#xpath=(//p[contains(text(),'Status')]/following-sibling::strong)["
                            + i + "]";
                    scrollToWebElement(buttonElement);
                    if (isElementDisplayed(buttonElement, 5)) {
                         String text=findWebElement(buttonElement).getText();
                        flag=true;
                         if(text.equalsIgnoreCase(status)){
                             String trackElement = buttonLabel + "#xpath=(//div[@class='img-cont']/..//p[contains(text(),'"+buttonLabel+"')])["
                                     + i + "]";
                             clickOn(trackElement);

                             String delivElement = buttonLabel + "#xpath=(//div[@class='order_tracker'])["
                                     + i + "]";
                             String deltext=findWebElement(delivElement).getText();
                              deltext=deltext.replaceAll("\n",",");

                             if(deltext.contains(deliveryMessage)){
                                 manualScreenshot(deliveryMessage+ "  displayed sucesfully ");
                             }
                             else {
                             testStepFailed(" Delivery Tracking Data not displayed");
                             }

                         }

                    }
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



public void clickOnRating(int index ,String ratingType){
        try{
            driver.switchTo().frame("kampyleForm3444");
            ////input[@value='3']//following::span[contains(text(),'3, Neutral')]/parent::label[@data-value='3']
            String button = ratingType + "#xpath=//input[@value='"+index+"']//following::span[contains(text(),'"+ratingType+"')]/parent::label";
            if (isElementDisplayed(button, 5)) {
                clickOn(button,"");
                waitTime(2);
                manualScreenshot(ratingType+ " clicked sucessfully on rating Type ");
            }else{
                testStepFailed(ratingType+ " Not clicked sucessfully on rating Type ");
            }

        }catch (Exception e) {
            testStepFailed("Failed in verifying Rating. Exception : " + e.getClass());
        }
}


    public void selectFeedbackCheckboxOption(String feedBackType){
        try{
            String button = feedBackType + "#xpath=//span[contains(text(),\""+feedBackType+"\")]//parent::label";
            if (isElementDisplayed(button, 5)) {
                clickOn(button,"");
                manualScreenshot(feedBackType+ " clicked sucessfully on rating Type ");
            }else{
                testStepFailed(feedBackType+ " Not clicked sucessfully on FeedBack Type ");
            }

        }catch (Exception e) {
            testStepFailed("Failed in verifying Rating. Exception : " + e.getClass());
        }
    }


    public void switchDefaultPage(){
        try{
            driver.switchTo().defaultContent();
        }catch (Exception e) {
        testStepFailed("Browser not moved to default content. Exception : " + e.getClass());
    }
    }



    public void verifyStoreName(){
        try{
            String button = "Store Name" + "#xpath=//div[@class='location-box__info' and @data-index='1']//h3";
            if (isElementDisplayed(button, 5)) {
                String text=findWebElement(button).getText();
                if(!text.isEmpty()){
                    testStepPassed(text+ "displayed sucessfully");
                }else{
                    testStepFailed("Store Name Not displayed");
                }

            }else{
                testStepFailed("Store Name Not displayed");
            }

        }catch (Exception e) {
            testStepFailed("Store Name not found. Exception : " + e.getClass());
        }
    }




    public void emiStoreDistance(){
        try{
            String button = "Store Name" + "#xpath=//div[@class='location-box__info' and @data-index='1']//p[ @class='location-box__category' and @data-index='1']";
            if (isElementDisplayed(button, 5)) {
                String text=findWebElement(button).getText();
                if(!text.isEmpty()){
                    testStepPassed(text+ "displayed sucessfully");
                }else{
                    testStepFailed("Store Distance Not displayed");
                }
            }else{
                testStepFailed("Store Distance Not displayed");
            }
        }catch (Exception e) {
            testStepFailed("Store Distance not found. Exception : " + e.getClass());
        }
    }




    public void emiStoreStatus(){
        try{
            String button = "Store Distance" + "#xpath=//div[@class='location-box__info' and @data-index='1']//p[ @class='location-box__category' and @data-index='1']";
            if (isElementDisplayed(button, 5)) {
                String text=findWebElement(button).getText();
                if(!text.isEmpty()){
                    testStepPassed(text+ "displayed sucessfully");
                }else{
                    testStepFailed("Store Distance Not displayed");
                }
            }else{
                testStepFailed("Store Distance Not displayed");
            }
        }catch (Exception e) {
            testStepFailed("Store Distance not found. Exception : " + e.getClass());
        }
    }




    public void emiStoreStatusType(){
        try{
            String button = "Store Working Hours" + "#xpath=//div[@class='location-box__info' and @data-index='1']//p[ @class='location-box__open-close-status']";
            if (isElementDisplayed(button, 5)) {
                String text=findWebElement(button).getText();
                if(!text.isEmpty()){
                    testStepPassed(text+ "displayed sucessfully");
                }else{
                    testStepFailed("Store Distance Not displayed");
                }
            }else{
                testStepFailed("Store Distance Not displayed");
            }
        }catch (Exception e) {
            testStepFailed("Store Distance not found. Exception : " + e.getClass());
        }
    }



    public void emiStoreAdress(){
        try{
            String button = "Store Adress" + "#xpath=//div[@class='location-box__info' and @data-index='1']//p[ @class='location-box__open-close-status']/following::p[@data-index='1']";
            if (isElementDisplayed(button, 5)) {
                String text=findWebElement(button).getText();
                if(!text.isEmpty()){
                    testStepPassed(text+ "displayed sucessfully");
                }else{
                    testStepFailed("Store Distance Not displayed");
                }
            }else{
                testStepFailed("Store Distance Not displayed");
            }
        }catch (Exception e) {
            testStepFailed("Store Distance not found. Exception : " + e.getClass());
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



