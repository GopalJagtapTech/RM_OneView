package PageObjects;

import base.ApplicationKeywords;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.Select;

import java.io.*;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;

public class RARPage extends ApplicationKeywords {

    /*
    XPATH
     */
    public static final String req_History = "Request History #xpath=//strong[normalize-space()='My Raised Requests']/ancestor::div[@class='p_My_Raised_Requests']";
    public static final String header_Faqs_RAR = "FAQs Header in RAR Choose a Category#xpath=//div[@class='p_faQ_box_title']/strong[normalize-space(text())='FAQs']";


    /*
    Methods
     */
    public void verifyRequestHistoryRedirection() {
        String header = "Header in Request History Page#xpath=//div[@class='my_raisd_title']//strong[normalize-space()='My Raised Requests']";
        try {
            if (isElementDisplayed(header)) {
                testStepPassed("Customer is redirected to Request History Page");
                manualScreenshot("Header Text:" + getTextPresent(header));
            } else {
                testStepFailed(getRefOfXpath(header) + "is not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Request History Page Redirection .Exception:" + e.getClass());
        }
    }

    public void verifyRequestHistoryPageContents() {
        String header = "Header in Request History Page#xpath=//div[@class='my_raisd_title']//strong[normalize-space()='My Raised Requests']";
        String topsection = "Request History #xpath=//strong[normalize-space()='My Raised Requests']/ancestor::div[@class='p_My_Raised_Requests']";
        String faqsection = "FAQ categories#xpath=//div[@class='p_need_help_box']/ancestor::div[@class='p_need_help']";
        String rar = "Raise a Request#xpath=//strong[normalize-space()='FAQ categories']/ancestor::div[@class='p_Raise_a_request_box']";

        try {
            if (isElementDisplayed(header)) {

                verifyElementIsDisplayedOrNot(topsection);
                verifyElementIsDisplayedOrNot(faqsection);
                verifyRhs("Quick Links", "Offerworld", "");
                scrollToWebElement(rar);
                verifyElementIsDisplayedOrNot(rar);


            } else {
                testStepFailed(getRefOfXpath(header) + "is not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Request History Page Contents .Exception:" + e.getClass());
        }

    }

    public void verifyTwoRequests() {
        String header = "Header in Request History Page#xpath=//div[@class='my_raisd_title']//strong[normalize-space()='My Raised Requests']";
        String requests = "Requests Displayed: #xpath=//div[@class='my_raisd_title']/following::div[@class='p_My_Raised_box']";
        String requestdetails = "Requests Info #xpath=//div[@class='p_My_Raised_text']/child::p";

        try {
            int count = 0;
            if (isElementDisplayed(requests)) {
                manualScreenshot("Requests are Displayed in the Top Section");
                count = sizeOfLocator(requests);
                if (count == 2) {
                    testStepPassed(getRefOfXpath(requests) + count + " is verified successfully");
                    String det1 = "Requests Info Tile 1 #xpath=(//div[@class='p_My_Raised_text']/child::p)[1]";
                    String det2 = "Requests Info Tile 2 #xpath=(//div[@class='p_My_Raised_text']/child::p)[2]";
                    String details1 = getTextPresent(det1);
                    String details2 = getTextPresent(det2);
                    String[] date1details = details1.split("•");
                    String[] date2details = details2.split("•");
                    SimpleDateFormat sd = new SimpleDateFormat("dd/MM/yyyy hh:mm aa");
                    System.out.println(date1details[1]);
                    Date date1 = sd.parse(date1details[1].trim());
                    Date date2 = sd.parse(date2details[1].trim());
                    if (date1.after(date2)) {
                        manualScreenshot("Latest Request is displayed first");
                    } else {
                        testStepFailed("Failed in displaying Latest Request first");
                    }

                } else {
                    testStepFailed(getRefOfXpath(requests) + count + "is not verified");
                }

            } else {
                testStepFailed(getRefOfXpath(requests) + "is not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Two Requests .Exception:" + e.getClass());
        }

    }

    public void verifyViewAllRedirection() {
        String header = "Header in Request History Page#xpath=//div[@class='my_raisd_title']//strong[normalize-space()='My Raised Requests']";
        String header1 = "Header in Requests Page#xpath=//strong[normalize-space()='My Requests']/parent::div[@class='p_My_Requests_title']";
        try {
            if (isElementDisplayed(header)) {
                clickOnButtonUsingTextUsingForLoop("View All");
                waitForPageToLoad();
                if (isElementDisplayed(header1)) {
                    manualScreenshot("User redirected to Requests Page");
                } else {
                    testStepFailed(getRefOfXpath(header1) + "is not Displayed");
                }

            } else {
                testStepFailed(getRefOfXpath(header) + "is not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Request History Page Redirection .Exception:" + e.getClass());
        }

    }


    public void verifyTabsRequestPage() {
        String tabs = "Tabs in Request Page#xpath=//ul[@id='ul-menu-list']/child::li/child::a";
        String activetab = "Active Tab in Request Page#xpath=//ul[@id='ul-menu-list']/child::li[@class='active' and @data-tab='General']";
        String open_Requests = "Open Requests#xpath=//div[@class='p_Open_Requests_title']/child::strong[contains(text(),'Open Requests')]";
        try {
            if (isElementDisplayed(activetab)) {
                manualScreenshot("By Default General Tab is selected from the Tabs Present");
                verifyFieldsUsingCommonXpathAndMultipleTextWithHash("//ul[@id='ul-menu-list']/child::li/child::a", "General#Bill Payments#UPI#Wallets", "");
                if (isElementDisplayed(open_Requests)) {
                    manualScreenshot("By Default Open Requests is being Displayed");
                } else {
                    testStepFailed("By Default Open Requests is not Displayed");
                }
            } else {
                testStepFailed(getRefOfXpath(activetab) + "is not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Tabs Request Page .Exception:" + e.getClass());
        }

    }

    public void verifyRequestsCount() {
        String open_Requests = "Open Requests Count: #xpath=//div[@class='p_Open_Requests_title']/child::strong[contains(text(),'Open Requests')]";
        String closed_Requests = "Closed Requests Count: #xpath=//div[@class='p_Open_Requests_title']/child::strong[contains(text(),'Closed Requests')]";
        String status_Filter = "Status Filter#xpath=//div[@class='p_status']";
        String downArrow = "Status Filter Down Arrow#xpath=//div[@class='p_status']/a/img";
        String open = "Open Filter#xpath=//ul[@class='p_list_status']/descendant::p[normalize-space()='Open']/parent::a";
        String closed = "Closed Filter#xpath=//ul[@class='p_list_status']/descendant::p[normalize-space()='Closed']/parent::a";

        try {
            if (isElementDisplayed(status_Filter)) {
                manualScreenshot(getRefOfXpath(status_Filter) + "is Displayed");
                clickOn(downArrow);
                if (isElementDisplayed(open) && isElementDisplayed(closed)) {
                    testStepInfo("Down Arrow is in Enabled Condition");
                    manualScreenshot("Both Open & Closed filters are Displayed successfully");
                } else {
                    testStepFailed("Open & Closed filters are not Displayed");
                }
                clickOn(open);
                if (isElementDisplayed(open_Requests)) {
                    testStepInfo(getRefOfXpath(open_Requests) + "is displayed on click of Open Filter");
                    String or = getTextPresent(open_Requests);
                    String[] ocount = or.split("\\(");
                    String[] ocount1 = ocount[1].split("\\)");
                    String opencount = ocount1[0].trim();
                    manualScreenshot(getRefOfXpath(open_Requests) + opencount);
                } else {
                    testStepFailed(getRefOfXpath(open_Requests) + "is not displayed on click of Open Filter");
                }
                clickOn(downArrow);
                clickOn(closed);
                if (isElementDisplayed(closed_Requests)) {
                    testStepInfo(getRefOfXpath(closed_Requests) + "is displayed on click of Open Filter");
                    String cr = getTextPresent(closed_Requests);
                    String[] ccount = cr.split("\\(");
                    String[] ccount1 = ccount[1].split("\\)");
                    String closedcount = ccount1[0].trim();
                    manualScreenshot(getRefOfXpath(closed_Requests) + closedcount);

                } else {
                    testStepFailed(getRefOfXpath(closed_Requests) + "is not displayed on click of Open Filter");
                }

            } else {
                testStepFailed(getRefOfXpath(status_Filter) + "is not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Requests Count .Exception:" + e.getClass());
        }

    }

    public void verifyDefaultSelected(String locator, String extra) {
        try {
            Boolean flag = scrollToWebElementIfPresent(locator);
            if (flag) {
                if (isElementDisplayed(locator)) {
                    testStepPassed(getRefOfXpath(locator) + " is By Default Selected");
                } else {
                    stepFailed(getRefOfXpath(locator) + " is Not Default Selected");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify " + getRefOfXpath(locator) + " Default Selected. Exception: " + e.getClass());
        }
    }

    public void verifyRelationShouldBeSelectedAndHighlighed(List<String> list) {
        try {
            for (int i = 0; i < list.size(); i++) {
                String relationName = list.get(i);
                String locatorRelation = relationName + " Relation in RAR#xpath=//a[normalize-space(text())='" + relationName.trim() + "']";
                scrollToWebElementIfPresent(locatorRelation);
                if (isElementDisplayed(locatorRelation)) {
                    clickOn(locatorRelation);
                    verifyLocatorColorUsingCssValue(locatorRelation, "", "BLUE", "");
                } else {
                    testStepFailed(getRefOfXpath(locatorRelation) + " is Not Displayed");
                }
//            String locatorRelation = relationName+" Relation in RAR#xpath=//a[normalize-space(text())='"+relationName.trim()+"']/parent::li[contains(@class,'active')]";


            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Relation Should be selectable and Highlighted. Exception: " + e.getClass());
        }
    }

    public void clickOnRelationTabInRAR(String tabText, String extra) {
        try {
            String locatorRelation = tabText + " Relation in RAR#xpath=//a[normalize-space(text())='" + tabText.trim() + "']";
            scrollToWebElementIfPresent(locatorRelation);
            if (isElementDisplayed(locatorRelation)) {
                clickOn(locatorRelation);
                String locatorRelationActive = tabText + " Relation (Active) in RAR#xpath=//a[normalize-space(text())='" + tabText.trim() + "']/parent::li[contains(@class,'active')]";
                if (isElementPresent(locatorRelationActive)) {
                    testStepPassed(getRefOfXpath(locatorRelationActive) + " is Selected successfully");
                } else {
                    stepFailed(getRefOfXpath(locatorRelationActive) + " is Not Selected");
                }
            } else {
                testStepFailed(getRefOfXpath(locatorRelation) + " is Not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in click on " + tabText + " Relation in RAR Page. Exception: " + e.getClass());
        }
    }

    /*
    Choose a category from RAR
     */
    public Boolean clickOnChooseCategoryTile(String relationName, String extra) {
        Boolean flag = false;
        try {
            String locator = relationName + " Tile in RAR Choose Category#xpath=//div[@class='p_need_help_box']//p[normalize-space(text())='" + relationName.trim() + "']";
            flag = scrollToWebElementIfPresent(locator);
            if (flag) {
                if (isElementDisplayed(locator)) {
                    clickOn(locator);
                    waitForPageToLoad();
                } else {
                    testStepFailed(getRefOfXpath(locator) + " is Not Displayed");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in click on Choose Category " + relationName + " Tile. Exception: " + e.getClass());
        }
        return flag;
    }

    public void verifyRedirectionForRarChooseCategory(String tileName, String extra) {
        try {
            String url = "https://cont-sites.bajajfinserv.in/MyAccountService/HelpAndSupport/RARFAQCategory?source=" + tileName + "";
            if (driver.getCurrentUrl().contains(url)) {
                testStepPassed(tileName + " is Redirected successfully");
            } else {
                stepFailed("Current Url: " + driver.getCurrentUrl());
                testStepFailed(tileName + " is Not Redirected as Expected");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in Redirection for RAR Choose " + tileName + " category. Exception: " + e.getClass());
        }
    }


    public void clickOnRelationInChooseCategoryPage(String relationName, String extra) {
        try {
            String locator = relationName + " in Choose A Category Page#xpath=//a[not(contains(@class,'active'))]/strong[normalize-space(text())='" + relationName.trim() + "']";
            String locator1 = relationName + " in Choose A Category Page#xpath=//a[contains(@class,'active')]/strong[normalize-space(text())='" + relationName.trim() + "']";
            if (isElementPresent(locator)) {
                if (isElementDisplayed(locator)) {
                    clickOn(locator);
                    if (isElementPresent(locator1)) {
                        manualScreenshot(getRefOfXpath(locator) + " is Expanded Successfully");
                    } else {
                        testStepFailed(getRefOfXpath(locator) + " is Not Expanded Successfully");
                    }
                } else {
                    testStepFailed(getRefOfXpath(locator) + " is Not Displayed");
                }
            } else if (isElementPresent(locator1)) {
                testStepInfo(getRefOfXpath(locator) + " is already Expanded by Default");
            } else {
                testStepFailed(getRefOfXpath(locator) + " is Not Present");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in Click on " + relationName + " Relation in Choose Category Page. Exception: " + e.getClass());
        }
    }


    public void clickOnQueryRelationInChooseCategoryPage(String relationName, String queryType, String extra) {
        try {
            String locator = relationName + " - " + queryType + " Query in RAR Choose Category Page#xpath=//strong[normalize-space(text())='" + relationName.trim() + "']/../following-sibling::div//a[normalize-space(text())='" + queryType.trim() + "']";
            scrollToWebElementIfPresent(locator);
            if (isElementDisplayed(locator)) {
                clickOn(locator);
            } else {
                testStepFailed(getRefOfXpath(locator) + " is Not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in click on Choose category Relation " + relationName + " - " + queryType + ". Exception: " + e.getClass());
        }
    }


    public void verifyChooseCategoryRelationNames(String names, String extra) {
        String name = null;
        try {
            String[] split = names.split(",");
            for (int i = 0; i < split.length; i++) {
                name = split[i];
                String locator = name + " Relation in RAR Choose Category Page#xpath=//div[@class='p_category_accordian']//strong[normalize-space(text())='" + name.trim() + "']";
                scrollToWebElementIfPresent(locator);
                if (isElementDisplayed(locator)) {
                    testStepPassed(getRefOfXpath(locator) + " is Displayed Successfully");
                } else {
                    testStepFailed(getRefOfXpath(locator) + " is Not Displayed");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Choose category Relation " + name + ". Exception: " + e.getClass());
        }
    }

    public void verifyChooseCategoryRelationQueryTypeNames(String relationName, String names, String extra) {
        String queryType = null;
        try {
            String[] split = names.split(",");
            for (int i = 0; i < split.length; i++) {
                queryType = split[i];
                String locator = relationName + " - " + queryType + " Query in RAR Choose Category Page#xpath=//strong[normalize-space(text())='" + relationName.trim() + "']/../following-sibling::div//a[normalize-space(text())='" + queryType.trim() + "']";
                scrollToWebElementIfPresent(locator);
                if (isElementDisplayed(locator)) {
                    testStepPassed(getRefOfXpath(locator) + " is Displayed Successfully");
                } else {
                    testStepFailed(getRefOfXpath(locator) + " is Not Displayed");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Choose category Relation Query Type" + queryType + ". Exception: " + e.getClass());
        }
    }

    public void verifyFaqs(List<String> list, String extra, String extra1) {
        try {
            for (int i = 0; i < list.size(); i++) {
                String faqText = list.get(i);
                String faq = faqText + "#xpath=//a[not(contains(@class,'active'))]/strong[normalize-space(text())='" + faqText.trim() + "']";
                String faq1 = faqText + "#xpath=//a[contains(@class,'active')]/strong[normalize-space(text())='" + faqText.trim() + "']";
                if (isElementDisplayed(faq)) {
                    testStepPassed(faqText + " is Displayed successfully");
                    clickOn(faq);
                    if (isElementDisplayed(faq1)) {
                        testStepPassed(faqText + " is Expanded successfully");
                        clickOn(faq1);
                    } else {
                        stepFailed(faqText + " is Not Expanded");
                    }
                } else {
                    stepFailed(faqText + " is Not Displayed");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Faqs. Exception: " + e.getClass());
        }
    }

    public void getAllRar(String tabInedx, String relationIndex) throws IOException {
        File file = new File(System.getProperty("user.dir") + "\\UploadDocuments\\RAR.xlsx");
        FileInputStream fi = new FileInputStream(file);
        Workbook wk = new XSSFWorkbook(fi);
        Sheet sheet = wk.getSheet("Sheet1");
        try {
            String tab = tabInedx + " Tab#xpath=(//div[@class='p_raise_request_BTN scroll_BTN']//li)[" + tabInedx + "]";
            String radioButtonRelation = relationIndex + " Relation Radio Button#xpath=(//label[@class='payment_select border']/strong)[" + relationIndex + "]";

            String noRelations = "No Relations Text#xpath=//p[contains(text(),'You don’t have any active relations')]";
            String btn_Proceed = "Proceed Button#xpath=//a[normalize-space(text())='Proceed']";
            String btn_Ok = "OK Button#xpath=//a[@id='redirectClick']";
            String txt_FaqRedirection = "FAQ Page Redirection Text#xpath=(//strong[normalize-space(text())='Here are FAQs that might be useful'])[2]";
            String selectQuery = "Query Dropdown#xpath=//select[@id='ddlQueryType']";
            String selectQueryNoRel = "Query Dropdown#xpath=//select[@id='ddlQueryType_NoRel']";
            String selectSubQuery = "Sub Query Dropdown#xpath=//select[@id='ddlServiceType']";
            String selectSubQueryNoRel = "Sub Query Dropdown#xpath=//select[@id='ddlServiceType_NoRel']";

//for

            String noOfFaq = "FAQ All Questions#xpath=//div[@class='p_faQ_accordian']//strong";
            String noOfFaqAns = "FAQ All Question Answers#xpath=//div[@class='p_faQ_accordian']//p";
            if (isElementDisplayed(tab)) {
                clickOn(tab);
                String tabText = textGet(tab);
                waitForPageToLoad();
                int count = 0;
                if (isElementDisplayed(noRelations)) {
//                Sheet sheet = wk.createSheet(tabText);
//                String noRelationsText = textGet(noRelations);
                    String currentUrl = driver.getCurrentUrl();
                    int qurySize = GetAllOptionsInDropDown(selectQueryNoRel).size();
                    for (int i = 1; i < qurySize; i++) {
                        driver.get(currentUrl);
                        selectDropDownUsingIndex(selectQueryNoRel, i);
                        int subQurySize = GetAllOptionsInDropDown(selectSubQueryNoRel).size();
                        for (int j = 1; j < subQurySize; j++) {
                            driver.get(currentUrl);
                            clickOn(tab);
                            selectDropDownUsingIndex(selectQueryNoRel, i);
                            testStepInfo(getSelectedOptionInRarDropDown(selectQueryNoRel));
                            selectDropDownUsingIndex(selectSubQueryNoRel, j);
//                        testStepInfo(getSelectedOptionInRarDropDown(selectSubQueryNoRel));
                            if (isElementDisplayed(btn_Ok)) {
                                clickOn(btn_Ok);
                                waitForPageToLoad();
                                String pageUrl = driver.getCurrentUrl();
                                testStepInfo("Redirection: " + pageUrl);
                            } else if (isElementDisplayed(txt_FaqRedirection)) {
                                for (int k = 1; k <= findWebElements(noOfFaq).size(); k++) {
                                    String noOfFaq1 = "FAQ All Questions#xpath=(//div[@class='p_faQ_accordian']//strong)[" + k + "]";
                                    String noOfFaqAns1 = "FAQ All Question Answers#xpath=(//div[@class='p_faQ_accordian']//p)[" + k + "]";
                                    String faqText = textGet(noOfFaq1);
                                    String faqAnsText = textGet(noOfFaqAns1);
                                    testStepInfo(faqText);
                                    testStepInfo(faqAnsText);
                                }
                            } else {
                                testStepPassed("Document Compulsory or NULL");
                                //document compulsory or Null
                            }

                        }
                    }
                } else {
                    clickOn(radioButtonRelation);
//                String RelationsText = textGet(radioButtonRelation);
                    clickOn(btn_Proceed);
                    waitForPageToLoad();
                    String currentUrl = driver.getCurrentUrl();
                    int qurySize = GetAllOptionsInDropDown(selectQuery).size();
                    for (int i = 1; i < qurySize; i++) {
                        driver.get(currentUrl);
                        clickOn(tab);
                        if (!isElementDisplayed(radioButtonRelation)) {
                            for (int j = 0; j < 10; j++) {
                                driver.get(currentUrl);
                                if (isElementDisplayed(radioButtonRelation)) {
                                    break;
                                }
                            }
                        }
                        clickOn(radioButtonRelation);
                        clickOn(btn_Proceed);
                        waitForPageToLoad();
                        selectDropDownUsingIndex(selectQuery, i);
                        int subQurySize = GetAllOptionsInDropDown(selectSubQuery).size();
                        for (int j = 1; j < subQurySize; j++) {
                            count++;
                            driver.get(currentUrl);
                            clickOn(tab);
                            if (!isElementDisplayed(radioButtonRelation)) {
                                for (int k = 0; k < 10; k++) {
                                    String logo = "Bajaj Logo#xpath=//img[@class='logo']";
                                    clickOn(logo);
                                    waitForPageToLoad();
                                    driver.get(currentUrl);
                                    if (isElementDisplayed(radioButtonRelation)) {
                                        break;
                                    }
                                }
                            }
                            clickOn(radioButtonRelation);
                            String relationText = textGet(radioButtonRelation);
                            clickOn(btn_Proceed);
                            waitForPageToLoad();
                            selectDropDownUsingIndex(selectQuery, i);
                            String queryText = getSelectedOptionInRarDropDown(selectQuery);
                            Row row = sheet.createRow(count);
                            testStepInfo(queryText);
//                        testStepInfo(getSelectedOptionInRarDropDown(selectSubQuery));
                            String value = selectDropDownUsingIndex(selectSubQuery, j);
                            Cell cell1 = row.createCell(1);
//                            cell1.setCellValue(relationText);
                            cell1.setCellValue(queryText);
                            Cell cell = row.createCell(2);
                            cell.setCellValue(value);
                            if (isElementDisplayed(btn_Ok)) {
                                clickOn(btn_Ok);
                                Cell cell3 = row.createCell(3);
                                cell3.setCellValue("Redirection");
                                waitForPageToLoad();
                                String pageUrl = driver.getCurrentUrl();
                                Cell cell2 = row.createCell(4);
                                cell2.setCellValue(pageUrl);
                                testStepInfo(pageUrl);
                            } else if (isElementDisplayed(txt_FaqRedirection)) {
                                Cell cell3 = row.createCell(3);
                                cell3.setCellValue("FAQ");
                                for (int k = 1; k <= findWebElements(noOfFaq).size(); k++) {
                                    String noOfFaq1 = "FAQ All Questions#xpath=(//div[@class='p_faQ_accordian']//strong)[" + k + "]";
                                    clickOn(noOfFaq1);
                                    String noOfFaqAns1 = "FAQ All Question Answers#xpath=(//div[@class='p_faQ_accordian']//p)[" + k + "]";
                                    String faqText = textGet(noOfFaq1);
                                    String faqAnsText = textGet(noOfFaqAns1);
                                    Cell cell2 = row.createCell(4 + k);
                                    cell2.setCellValue(faqText);
                                    Cell cell5 = row.createCell(20 + k);
                                    cell5.setCellValue(faqAnsText);
                                    testStepInfo(faqText);
                                    testStepInfo(faqAnsText);
                                }
                            } else {
                                testStepPassed("Document Compulsory or NULL");
                                Cell cell3 = row.createCell(3);
                                cell3.setCellValue("Document Upload Page");
                                //document compulsory or Null
                            }
                        }

                    }
                }

            } else {
                testStepFailed(getRefOfXpath(tab) + " is not displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in get all RAR. Exception: " + e.getClass());
        } finally {
            FileOutputStream fo = new FileOutputStream(file);
            wk.write(fo);
            wk.close();
        }
    }


    public String getSelectedOptionInRarDropDown(String selectLocator) {
        String returnValue = "";
        try {
            Select select = createSelectRef(selectLocator);
            scrollToWebElementIfPresent(selectLocator);
            if (isElementDisplayed(selectLocator)) {
                WebElement firstSelectedOption = select.getFirstSelectedOption();
                returnValue = firstSelectedOption.getText();
            } else {
                testStepFailed(selectLocator.split("#")[0] + " is Not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in Get Selected Option in " + getRefOfXpath(selectLocator) + " Drop down. Exception: " + e.getClass());
        }
        return returnValue;
    }


    public void getChooseCategoryAllNames(String tileName) throws IOException {
        File file = new File(System.getProperty("user.dir") + "\\UploadDocuments\\RARChooseCategory.xlsx");
        FileInputStream fi = new FileInputStream(file);
        Workbook wk = new XSSFWorkbook(fi);
        Sheet sheet = wk.getSheet("Sheet1");
        int count = 0;
        try {
            String tileLocator = tileName + " Tile#xpath=//div[@class='p_typeofbox_title']/p[normalize-space(text())='" + tileName.trim() + "']";
            String subRelationsLocatorCommon = tileName + " Sub Relations Common#xpath=//a[@class='p_click_side']/strong";
            String txtFaqPage = "FAQ Page Header#xpath=//strong[normalize-space(text())='FAQs']";
            if (isElementDisplayed(tileLocator)) {
                clickOn(tileLocator);
                waitForPageToLoad();
                if (isElementDisplayed(subRelationsLocatorCommon)) {
                    String currentUrl = driver.getCurrentUrl();
                    int subRelationsSize = sizeOfLocator(subRelationsLocatorCommon);
                    for (int i = 1; i <= subRelationsSize; i++) {
                        driver.get(currentUrl);
                        String subRelationsLocator = tileName + " Sub Relations " + i + "#xpath=(//a[contains(@class,'p_click_side')]/strong)[" + i + "]";
                        scrollToWebElementIfPresent(subRelationsLocator);
                        String subRelationText = textGet(subRelationsLocator);
                        clickOn(subRelationsLocator);
                        waitForPageToLoad();
                        String queryCommon = subRelationText + " Querys Common#xpath=//strong[normalize-space(text())='" + subRelationText.trim() + "']/../following-sibling::div//a";
                        Boolean flag = scrollToWebElementIfPresent(queryCommon);
                        if (flag) {
                            int qurySizes = sizeOfLocator(queryCommon);
                            for (int j = 1; j <= qurySizes; j++) {
                                count++;
                                Row row = sheet.createRow(count);
                                driver.get(currentUrl);
                                String query = subRelationText + " Query " + j + "#xpath=(//strong[normalize-space(text())='" + subRelationText.trim() + "']/../following-sibling::div//a)[" + j + "]";
                                clickOn(subRelationsLocator);
                                Cell cellSubRelation = row.createCell(0);
                                cellSubRelation.setCellValue(subRelationText);
                                scrollToWebElementIfPresent(query);
                                String queryValue = textGet(query);
                                Cell cellQury = row.createCell(1);
                                cellQury.setCellValue(queryValue);
                                testStepPassed(subRelationText + " : " + queryValue);
                                clickOn(query);
                                waitForPageToLoad();
                                if (isElementDisplayed(txtFaqPage)) {
                                    testStepPassed("Faq Page Redirection is Successfull");
                                    String noOfFaq = "FAQ All Questions#xpath=//div[@class='p_faQ_accordian']//strong";
                                    for (int k = 1; k <= findWebElements(noOfFaq).size(); k++) {
                                        String noOfFaq1 = "FAQ All Questions#xpath=(//div[@class='p_faQ_accordian']//strong)[" + k + "]";
                                        scrollToWebElementIfPresent(noOfFaq1);
                                        String faqText = textGet(noOfFaq1);
                                        clickOn(noOfFaq1);
                                        String noOfFaqAns1 = "FAQ All Question Answers#xpath=(//div[@class='p_faQ_accordian']//p)[" + k + "]";
                                        scrollToWebElementIfPresent(noOfFaqAns1);
                                        String faqAnsText = textGet(noOfFaqAns1);
                                        Cell cell2 = row.createCell(2 + k);
                                        cell2.setCellValue(faqText);
                                        Cell cell5 = row.createCell(20 + k);
                                        cell5.setCellValue(faqAnsText);
                                        testStepInfo(faqText);
                                        testStepInfo(faqAnsText);
                                    }
                                } else {
                                    testStepFailed("FAQ Page Redirection Failed");
                                }
                            }
                        } else {
                            testStepFailed(getRefOfXpath(queryCommon) + " is Not Present");
                        }
                    }
                } else {
                    testStepFailed(getRefOfXpath(tileLocator) + " is Not Redirected");
                }

            } else {
                testStepFailed(getRefOfXpath(tileLocator) + " is Not Displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in get choose a category all anames. Exception: " + e.getClass());
        } finally {
            FileOutputStream fo = new FileOutputStream(file);
            wk.write(fo);
            wk.close();
        }
    }

    /////////17012023////////////////
    public void verifyChooseRAROptions(List<String> list, String extra) {
        try {
            String chooseCategory = "Choose a Category Section#xpath=//div[@class='p_need_help']";
            if (isElementDisplayed(chooseCategory)) {
                manualScreenshot(getRefOfXpath(chooseCategory) + " is displayed");
//                String[] values = OptionswithHash.split("#");
                for (int i = 0; i < list.size(); i++) {
                    String value = list.get(i);
//                    String value = values[i].trim();
                    String options = "Options- #xpath=//div[@class='p_typeofbox_title']/p[normalize-space(text())='" + value + "']";
                    String optionsubText = "Options Sub Text- #xpath=(//div[@class='p_Raise_company']/p)[" + i + "]";
                    verifyElementIsDisplayedAndGetText(options);
                    verifyElementIsDisplayedAndGetText(optionsubText);
                }

            } else {
                testStepFailed(getRefOfXpath(chooseCategory) + " is not Displayed");
            }


        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("failed in verify Choose RAR Options. Exception: " + e.getClass());

        }
    }


    public void getRARFAQs() {
        try {
            List<String> list = new LinkedList<>();
            String chooseCategory = "Category #xpath=//div[@class='p_typeofbox_title']/p";
            for (int i = 1; i <= sizeOfLocator(chooseCategory); i++) {
                if (isElementPresent(chooseCategory)) {
                    String Category = "Category #xpath=(//div[@class='p_typeofbox_title']/p)[" + i + "]";
                    scrollToWebElement(Category);
                    String CategoryName = getTextPresent(Category);
                    System.out.println(CategoryName);
                    clickOn(Category);
                    String subCategory = "Sub Category #xpath=//a[@class='p_click_side']/strong";
                    for (int j = 1; j <= sizeOfLocator(subCategory); j++) {
                        String subCategory1 = "Sub Category #xpath=(//a[@class='p_click_side']/strong)[" + i + "]";
                        scrollToWebElement(subCategory1);
                        String subCategoryName = getTextPresent(subCategory1);
                        System.out.println(subCategoryName);

                        clickOn(subCategory1);
                        String queries = "queries#xpath=//div[@class='p_category_points']/ul/li/a";
                        for (int k = 1; k <= sizeOfLocator(queries); k++) {
                            String query1 = "Sub Category #xpath=(//div[@class='p_category_points']/ul/li/a)[" + i + "]";
                            scrollToWebElement(query1);
                            String queryName = getTextPresent(query1);
                            System.out.println(queryName);
                            clickOn(query1);
                            String faqs = "faqs#xpath=//a[@class='p_faQ_click']/strong";
                            for (int l = 1; l <= sizeOfLocator(faqs); l++) {
                                String faqs1 = "faqs#xpath=(//a[@class='p_faQ_click']/strong)[" + i + "]";
                                String faqtext = getTextPresent(faqs1);
                                list.add("+ | +" + faqtext + "+ | +");
                            }
                            System.out.println(list);
                            navigateToBack();
                        }

                    }


                }

            }
//div[@class='p_typeofbox_title']/p
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("failed in verify Part Payment Dropdown. Exception: " + e.getClass());

        }
    }


    /////////////////Greivence Redresaal- 24052023////////////////////////////

    /*
XPATH
 */
    public static final String req_Filter = "Request History Filter#xpath=//a[@class='p_select_status']";
    public static final String header_ClosedRequests = "Header - Closed Requets#xpath=//div[@id='divClose'][not (@style='display: none;')]/strong";
    public static final String resp_Details = "Response Details#xpath=//div[@class='p_Request_ID_BG']";

    /*
    Methods
     */
    public void clickOnReqHistoryFilter(String Option, String extra) {
        String filter = "Filter Option- " + Option + "#xpath=//div[@class='p_status_sel_bg']/descendant::p[normalize-space(text())='" + Option.trim() + "']";
        try {
            if (isElementDisplayed(filter)) {
                clickOn(filter);
            } else {
                testStepFailed(getRefOfXpath(filter) + "is not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in click On Req History Filter .Exception:" + e.getClass());
        }
    }

    public void clickOnReqTile(String TileNO, String extra) {
        String tile = "Tile with SR No- " + TileNO + "#xpath=    //i[normalize-space(text())='" + TileNO.trim() + "']/parent::p/ancestor::a";
        try {
            if (isElementDisplayed(tile)) {
                clickOn(tile);
                waitTime(2);
            } else {
                testStepFailed(getRefOfXpath(tile) + "is not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in click On Req Tile .Exception:" + e.getClass());
        }
    }

    public void verifyResponseHistoryTile(String TileNO, String extra) {
        String tile = "Response History for Tile with SR No- " + TileNO + "#xpath=    //i[normalize-space(text())='" + TileNO.trim() + "']/parent::strong/parent::div[@class='p_Request_ID_list']";
        try {
            if (isElementDisplayed(tile)) {
                testStepPassed(getRefOfXpath(tile) + " is Displayed Successfully");
            } else {
                testStepFailed(getRefOfXpath(tile) + "is not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Response History Tile .Exception:" + e.getClass());
        }
    }


}
