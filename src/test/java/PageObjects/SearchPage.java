package PageObjects;

import base.ApplicationKeywords;
import org.apache.commons.validator.GenericValidator;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.Color;

import java.util.List;

public class SearchPage extends ApplicationKeywords {


    public static final String searchBox = "Search Bar in Home page#xpath=//input[@id='txtSearch']";
    public static final String searchIcon = "Search Icon in Search Box #xpath=//img[contains(@src,'searchBlack.svg')]";

    public static final String placeHolder = "Search Bajajfinserv in #xpath=//input[@placeholder='Search Bajajfinserv.in']";

    public static final String closeIcon = "Close Icon #xpath=//img[contains(@src,'close_round.svg')]";

    public static final String backGroundGray = "background color  in Search Box #xpath=//div[@class='popupbgtrans']";

    public static final String suggestedSearches = "Suggested Searches #xpath=//div[@id='searchSuggestion']//h4[contains(text(),'Suggested Searches')]";




    public void verifySearchBox(String locator) {
        try {
            if (isElementDisplayed(locator)) {
                manualScreenshot(locator.split("#")[0] + " - "  + "  displayed Successfully");
            } else {
                testStepFailed("Search box  or Icon is  Not displayed sucessfully");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Search box is  Not displayed sucessfully. Exception:" + e.getClass());
        }
    }


    public void verifyStringLength(String inputValue) {

        String locator="Search Bar in Home page#xpath=//input[@id='txtSearch']";
        try {
            if (isElementDisplayed(locator)) {
                String len= findWebElement(locator).getAttribute("maxlength");
                Integer val=Integer.parseInt(len);
                if(val==26){
                    testStepPassed("Search bar maximum length is 26 characters");
                }else{
                    testStepFailed("Search bar maximum length is  Not 26 characters");
                }
                String text = findWebElement(locator).getAttribute("value");
                Integer strLength=text.length();

                if(strLength<=26){
                    manualScreenshot(text+ " Have entered Sucesfully");
                }else{
                    testStepFailed("Have entered more than 26 charaters");
                }

            } else {
                testStepFailed("Search box  or Icon is  Not displayed sucessfully");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Search box is  Not displayed sucessfully. Exception:" + e.getClass());
        }
    }


    public void verifySpecialCharacters(String inputValue) {

        String locator="Search Bar in Home page#xpath=//input[@id='txtSearch']";
        try {
            if (isElementDisplayed(locator)) {
                // String val= findWebElement(locator).getText();
                String val=findWebElement(locator).getAttribute("value");
                inputValue = inputValue.replaceAll("[-+^]*", "");
                inputValue=inputValue.replaceAll("\\W", "")   ;
                if(inputValue.equals(val)){
                    manualScreenshot(val +  "  Special characters and White Spaces are not typed in Search box");
                }else{
                    testStepFailed(val +  "  Special characters and White Spaces are typed in Search box");

                }


            } else {
                testStepFailed("Search box  or Icon is  Not displayed sucessfully");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Search box is  Not displayed sucessfully. Exception:" + e.getClass());
        }
    }


    public void verifySearchBoxTextIsNotPresent(String locator) {
        try {
            if (!isElementDisplayed(locator)) {
                manualScreenshot(locator.split("#")[0] + " - "  + "  displayed Successfully");
            } else {
                testStepFailed("Search box  or Icon is  Not displayed sucessfully");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Search box is  Not displayed sucessfully. Exception:" + e.getClass());
        }
    }



    public void verifyRedirectedValue(String redirectedVal) {

        String locator=redirectedVal+"#xpath=//input[contains(@value,'"+redirectedVal+"')]";
        try {
            if (isElementDisplayed(locator)) {
                manualScreenshot( redirectedVal+ " is  Successfully redirected.");
            } else {
                testStepFailed( redirectedVal+ " is Not displayed Successfully");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed(redirectedVal+"  Not displayed sucessfully. Exception:" + e.getClass());
        }
    }





    public void clickSearchBox(String locator) {
        try {

            if (isElementDisplayed(locator)) {
                driver.findElement(By.xpath("//input[@id='txtSearch']")).click();
               /* Actions action = new Actions(driver);
                WebElement link = driver.findElement(By.xpath("//input[@id='txtSearch']"));
                action. doubleClick (link).perform();*/
                manualScreenshot(locator.split("#")[0] + " - "  + "  clicked Successfully");
            } else {
                testStepFailed("Search box  or Icon is  Not displayed sucessfully");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Search box is  Not displayed sucessfully. Exception:" + e.getClass());
        }
    }


    public void enterSearchValue(String locator,String Value) {
        try {
            if (isElementDisplayed(locator)) {
                typeIn(locator,Value);
                manualScreenshot(Value+ "  entered Sucessfully");
            } else {
                testStepFailed(Value+ " not entered Sucessfully");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Search box value is not type in . Exception:" + e.getClass());
        }
    }


    public void enterSpecialSearchValue(String locator,String Value) {
        try {
            if (isElementDisplayed(locator)) {
                typeIn(locator,Value);
                manualScreenshot(Value+ "  typing  special characters");
            } else {
                testStepFailed(Value+ " not entered Sucessfully");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Search box value is not type in . Exception:" + e.getClass());
        }
    }



    public void clickonCloseIcon (String locator) {
        try {
            if (isElementDisplayed(locator)) {
                clickOn(locator);
                testStepPassed(locator.split("#")[0] + "clicked  Sucessfully");
            } else {
                testStepPassed(locator.split("#")[0] + " not clicked  Sucessfully");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("close Icon is not clicked suceffully . Exception:" + e.getClass());
        }
    }


    public void verifyEmptySearchBox (String locator) {
        try {
            if (isElementDisplayed(locator)) {
                String text = findWebElement(locator).getAttribute("value");
                if (text.isEmpty()) {
                    manualScreenshot(locator.split("#")[0] + " text cleared sucessfully");
                } else {
                    testStepFailed(locator.split("#")[0] + " text  not cleared sucessfully");
                }
            }else{
                testStepFailed(locator.split("#")[0] + " text  not cleared sucessfully");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("close Icon is not clicked suceffully . Exception:" + e.getClass());
        }
    }


    public void verifySearchValues(String expectedSearchValue) {

        try {

            boolean status=false;
            String title = "Promoted Searches #xpath=//div[@id='popularSearch']//h4[contains(text(),'Popular Searches')]";
            if (isElementDisplayed(title)) {
                //manualScreenshot("Search Criteria was displayed Sucessfully");
                String searchVal = "Search values #xpath=//div[@id='popularSearch']//li";
                List<WebElement> list = findWebElements(searchVal);
                Integer searchSize = list.size();
                if(searchSize==6){
                    testStepPassed("Search Criteria was displayed Sucessfully with Six Search values");
                }else{
                    testStepFailed("Search Criteria was NOT  displayed Sucessfully with Six values");

                }
                for (WebElement i : list) {
                    String searchValue = i.getText().trim();
                    if(searchValue.equals(expectedSearchValue)){
                        testStepPassed(expectedSearchValue+" is displayed sucessfully");
                        status=true;
                        break;
                    }else{
                        //
                    }
                }

            } else {
                testStepFailed(" Search  message is not available.");
            }
            if (!status) {
                testStepFailed( expectedSearchValue+ " search criteria value  is not present.");
            }

        } catch (Exception e) {
            testStepFailed(" Search  message is not available.");

        }

    }


    public void clickOnSearchValues(String expectedSearchValue) {
        try {
            boolean status=false;
            String title = "Promoted Searches #xpath=//div[@id='popularSearch']//h4[contains(text(),'Popular Searches')]";
            if (isElementDisplayed(title)) {
                String searchVal = expectedSearchValue+"Search values #xpath=//div[@id='popularSearch']//li";
                String clickVal = expectedSearchValue+"Search values #xpath=//div[@id='popularSearch']//p[normalize-space(text())='"+expectedSearchValue+"']";
                List<WebElement> list = findWebElements(searchVal);
                for (WebElement i : list) {
                    String searchValue = i.getText();
                    if(searchValue.equals(expectedSearchValue)){
                        clickOn(clickVal);
                        testStepPassed(expectedSearchValue+" is clicked sucessfully");
                        status=true;
                        break;
                    }else{
                        //
                    }
                }

            } else {
                testStepFailed(" Search  message is not available.");
            }
            if (!status) {
                testStepFailed( expectedSearchValue+ " search criteria value  is not present.");
            }

        } catch (Exception e) {
            testStepFailed(" Search  message is not available.");

        }

    }

    public void clickOnSuggestedSearchValues(String expectedSearchValue) {
        try {
            boolean status=false;
            String title = "Suggested Searches #xpath=//div[@id='searchSuggestion']//h4[contains(text(),'Suggested Searches')]";
            if (isElementDisplayed(title)) {
                String searchVal = expectedSearchValue+"Search values #xpath=//div[@id='searchSuggestion']//li";
                String clickVal = expectedSearchValue+"Search values #xpath=//div[@id='searchSuggestion']//p[normalize-space(text())='"+expectedSearchValue+"']";
                List<WebElement> list = findWebElements(searchVal);
                for (WebElement i : list) {
                    String searchValue = i.getText();
                    if(searchValue.equals(expectedSearchValue)){
                        clickOn(clickVal);
                        testStepPassed(expectedSearchValue+" is clicked sucessfully");
                        status=true;
                        break;
                    }else{
                        //
                    }
                }

            } else {
                testStepFailed(" Search  message is not available.");
            }
            if (!status) {
                testStepFailed( expectedSearchValue+ " search criteria value  is not present.");
            }

        } catch (Exception e) {
            testStepFailed(" Search  message is not available.");

        }

    }

    public Boolean verifyLocatorColorUsingCssValue(String objectLocator, String expectedColorHexValue, String expectedColor, String cssValue) {
        Boolean flag=false;
        try {
            scrollToWebElementIfPresent(objectLocator);
            if (isElementDisplayed(objectLocator)) {
                manualScreenshot(objectLocator.split("#")[0] + " is Displayed Successfully");
                String color = findWebElement(objectLocator).getCssValue(cssValue);
                // String hex = Color.fromString(color).asHex();
                // testStepInfo(hex);
                if (color.equals(expectedColorHexValue)) {
                    flag=true;
                    manualScreenshot(objectLocator.split("#")[0] + " - " + expectedColor + expectedColorHexValue +" Color Verified Successfully");
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


    public void clickOnSkipButton(String buttonLabel) {

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
                        //  manualScreenshot(buttonLabel + "  displayed Sucessfully");
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




    public void verifyFiveSearchValues() {
        try {
            String title = "Suggested Searches #xpath=//div[@id='searchSuggestion']//h4[contains(text(),'Suggested Searches')]";
            if (isElementDisplayed(title)) {
                manualScreenshot("Search Criteria was displayed Sucessfully");
                String searchVal = "Search values #xpath=//div[@id='searchSuggestion']//li";
                List<WebElement> list = findWebElements(searchVal);
                Integer searchSize = list.size();
                if(searchSize==5){
                    testStepPassed("Search Criteria was displayed Sucessfully with Five Search values");
                }else{
                    testStepFailed("Search Criteria was NOT  displayed Sucessfully with Five values");

                }
                for (WebElement i : list) {
                    String searchValue = i.getText();
                    testStepPassed(searchValue+" is displayed sucessfully");
                }

            } else {
                testStepFailed(" Five Search  Values is not available.");
            }

        } catch (Exception e) {
            testStepFailed(" Five Search  Values is not available.");

        }

    }



    public void verifyBoldFiveSearchValues(String keyWord) {
        try {
            String title = "Suggested Searches #xpath=//div[@id='searchSuggestion']//h4[contains(text(),'Suggested Searches')]";
            if (isElementDisplayed(title)) {
                manualScreenshot("suggested searches are displayed in bold format except the user typed keywords on search bar displayed Sucessfully");
                String searchVal = "Search values #xpath=//div[@id='searchSuggestion']//li";
                List<WebElement> list = findWebElements(searchVal);
                for (WebElement i : list) {
                    int j=1;
                    String searchValue = i.getText();
                    testStepPassed(searchValue+" is displayed sucessfully");
                    searchValue = searchValue.substring(2);
                    String withBold = searchValue+" #xpath=//div[@id='searchSuggestion']//li//p[contains(text(),'"+searchValue+"')]";
                    String withoutBold = searchValue+" #xpath=(//div[@id='searchSuggestion']//li//span[contains(text(),'"+keyWord+"')])["+j+"]";
                    String withBoldType = findWebElement(withBold).getCssValue("font-weight");
                    String withoutBoldType = findWebElement(withoutBold).getCssValue("font-weight");

                    if(withBoldType.equals("700")&&withoutBoldType.equals("400")){
                        testStepPassed(keyWord+" is diplayed as normal "+searchValue+"Displayed Sucesfully with bold format ");
                    }else{
                        testStepFailed(keyWord+"Not Displayed Sucesfully with searched values as normal and remaining values are bold ");

                    }
                    j++;
                }

            } else {
                testStepFailed(" Five Search  Values is not available.");
            }

        } catch (Exception e) {
            testStepFailed(" Five Search  Values is not available.");

        }

    }



}
