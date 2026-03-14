package PageObjects;

import base.ApplicationKeywords;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;

import java.util.List;

public class QuickLinksPage extends ApplicationKeywords {


    public static String topSearchSection = "Search Section in Offer Page#xpath=//div[contains(@class,'search-div')]";
    public static String filterBySearchByDropDown = "Filter Search By DropDown#xpath=//div[@class='searchby-header-rightbox']//select";
    public static String filterBySearchField = "Search Field in Offer Page#xpath=//div[@class='searchby-header-rightbox']//input";
    public static String filterByText = "Filter BY Text in Offer Page#xpath=//div[@class='searchby-header-rightbox']//label[normalize-space()='FILTER BY']";
    public static String paginationBox = "Pagination Section #xpath=//div[contains(@class,'emi-box-border')]//following-sibling::div[@class='rm-pagination-box']";


    public void offerDetailsPageContents(String gridBoxs) {
        try {
            verifyElementIsDisplayedOrNot(topSearchSection);
            verifyFieldsUsingCommonXpathAndMultipleTextWithHash("//div[@class='loandetails-tab-title']//p", "Offer Details#Enquiry Details#Lead Disposition#Nearing Top up Offers", "");
            verifyElementIsDisplayedOrNot(filterByText);
            verifyElementIsDisplayedOrNot(filterBySearchByDropDown);
            verifyElementIsDisplayedOrNot(filterBySearchField);
            verifyFieldsUsingCommonXpathAndMultipleTextWithHash("//div[@class='total-offer-gridbox']//a//h2", gridBoxs, "");

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed at Offer Details Page Contents " + e.getClass());
        }
    }

    public void verifyNoDataAvailable(String tab, String text, String extra) {
        try {
            String noRecords = "No Records Message #xpath=//h2[normalize-space(text())='" + tab.trim() + "']/parent::div/descendant::table[@class='emi-table']//td[normalize-space(text())='" + text.trim() + "']|//h3[normalize-space(text())='" + tab.trim() + "']/following-sibling::div[contains(@class,'loandetails-contant')][1]//table[@class='emi-table']//td[normalize-space(text())='" + text.trim() + "']|//table[@class='emi-table']//td[normalize-space(text())='" + text.trim() + "']";
            scrollToWebElementIfPresent(noRecords);
            verifyElementIsDisplayedOrNot(noRecords);
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed verify no Data Available" + e.getClass());
        }
    }

    public void verifyGlanceCountIsDisplayed(String textsWithHash) {
        String text = "";
        try {
            String[] split = textsWithHash.split("#");

            for (int i = 0; i < split.length; i++) {
                text = split[i];
                String locator = "" + text + "#xpath=//div[@class='total-offer-gridbox']//a//h2[normalize-space(text())='" + text.trim() + "']//following-sibling::p";
                scrollToWebElementIfPresent(locator);
//                if (isElementDisplayed(locator)) {
                if (isElementPresent(locator)) {
                    String count = getText(locator);
                    manualScreenshot(text + " and Glance count: " + count + " is Displayed successfully.");
                } else {
                    testStepFailed(text + " and Glance count is Not Displayed.");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed verify Glance Count Is Displayed" + e.getClass());
        }
    }

    public void verifyCustomerRecord(String text, String element, String data, String errorMsg) {
        try {
            if (handleToastByClassAndToastDispayedOrNot("toast-message", errorMsg)) {
                testStepFailed("Error Toast Message '" + errorMsg + "' displayed");
                if (isElementDisplayed(element)) {
                    scrollToWebElementIfPresent(element);
                    testStepInfo("But input value: " + data + " displayed.");
                }
            } else if (isElementPresent(element)) {
                scrollToWebElementIfPresent(element);
                verifyElementIsDisplayedUsingLocator(element);
            } else {
                testStepFailed(text + " Data: " + data + " Not Present");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed verifyCustomerRecord." + e.getClass());
        }
    }

    public void verifyOfferGridBoxDisplayed(String text) {
        try {
            String element = text + "#xpath=(//table[@class='emi-table']//tbody//tr//td[normalize-space(text())='" + text.trim() + "'])[1]";
            if (isElementPresent(element)) {
//                scrollToWebElementIfPresent(element);
                moveToElement(element);
                verifyElementIsDisplayedUsingLocator(element);
            } else {
                testStepInfo(text + " Tab Not Present.");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed verifyOfferGridBoxDisplayed." + e.getClass());
        }
    }

    public void verifyClickOnBasedGridBox(String text) {
        try {
            String element = text + "#xpath=//div[@class='total-offer-gridbox']//a//h2[normalize-space(text())='" + text.trim() + "']";
            if (isElementPresent(element)) {
                clickOnIfPresent(element);
            } else {
                testStepFailed(text + " is Not Present");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed verify Click On Based GridBox." + e.getClass());
        }
    }


    public void verifyDetailsSectionDisplayedAndSelectedCountHighlighted(String rowNames) {
        try {
            String detailsTable = "Details Table #xpath=//table[@class='emi-table relation-tbl']";
            if (isElementPresent(detailsTable)) {
                scrollToWebElementIfPresent(detailsTable);
                testStepPassed("Details Table Displayed.");
            } else {
                testStepFailed("Details Table Not Displayed.");
            }
            String[] rowName = rowNames.split(",");
            for (int i = 0; i < rowName.length; i++) {
                String element = rowName[i] + " Count #xpath=(//table[@class='emi-table relation-tbl']//tbody/tr//td[text()='" + rowName[i] + "']//following-sibling::td//a)";
                if(isElementPresent(element)){
                    scrollToWebElementIfPresent(element);
                    List<WebElement> column = findWebElements(element);
                    for (int j = 0; j < column.size(); j++) {
                        String columnNo = element + "[" + (j + 1) + "]";
                        moveToElement(columnNo);
                        clickOn(columnNo);
                        verifyLocatorColorUsingCssValue(columnNo, "#ff8000", "'VIVID ORANGE'", "color");
                    }
                } else {
                    testStepInfo(rowName[i] + " row is not present");
                }

            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed Verify Details Section Displayed And Selected Count Highlighted." + e.getClass());
        }
    }

    public void verifyYourApplicationsPageContends(String fieldName, String tabs, String tableHeader){
        try {
            String desbursalDetailsText = "Desbursal Details Text#xpath=//div[@class='customer-id-header']//h2[normalize-space()='" + fieldName + "']";
//            LHS
            verifyElementIsDisplayedOrNot(desbursalDetailsText);
            verifyElementIsDisplayedOrNot(filterByText);
            verifyElementIsDisplayedOrNot(filterBySearchByDropDown);
            verifyElementIsDisplayedOrNot(filterBySearchField);
//            Tables
            verifyTableHeaders(tableHeader, 1);

//            RHS
            verifyFieldsUsingCommonXpathAndMultipleTextWithHash("//div[@class='loandetails-tab-title']//p", tabs, "");


        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed Verify Details Section Displayed And Selected Count Highlighted." + e.getClass());
        }
    }

    public void verifyLANsDetailsCustomerDatasDisplayedOrNot(String text, String expectedData){
        try{
            String element = text + "#xpath=(//table[contains(@class, 'emi-table')]//tbody//tr//td//a)[1]";
            clickOn(element);
            waitForPageToLoad();

            String valueLocator = null;

            if(text.equalsIgnoreCase("Customer ID")){
                valueLocator = text + "#xpath=//p[normalize-space()='" + text + "']//parent::div//select//option";
            } else {
                String splitText = text.split(" ")[0];
                valueLocator = text + "#xpath=(//div[@class='cust-info-detailcard']//h2[normalize-space()='" + splitText + "']//following::p)[1]";
            }
            String actualValue = getText(valueLocator);

            if(actualValue.equals(expectedData)){
                testStepPassed(text + ": " + expectedData +" customer records displayed.");
                manualScreenshot("");
            } else {
                testStepFailed("Expected "+ text + ": " + expectedData + ", Actual "+ text +  ": " + actualValue);
            }
        }  catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed verifyLANsDetailsCustomerDatasDisplayedOrNot." + e.getClass());
        }

    }

    public void verifyPaginationIndex(String locator, String expectedIndex){
        try{
            String actualStartsIndex = getText(locator).trim();
            if(isElementPresent(locator)){
                testStepPassed("Pagination section index is present.");
                scrollToWebElement(locator);
                if((expectedIndex).equals(actualStartsIndex)){
                    testStepPassed("Pagination section starts from index: " + actualStartsIndex);
                    manualScreenshot("");
                }else {
                    testStepFailed("Pagination section starts from index: " + actualStartsIndex);
                    manualScreenshot("");
                }
            }else {
                testStepFailed("Pagination section index is not present.");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed Verify Pagination Index." + e.getClass());
        }

    }




}