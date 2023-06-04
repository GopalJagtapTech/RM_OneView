package PageObjects;

import TestData.TestDataMyRelations;
import base.ApplicationKeywords;
import com.ibm.icu.impl.duration.impl.DataRecord;
import org.openqa.selenium.support.Color;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;


public class MyRelationsPage extends ApplicationKeywords {

    /*
    XPATHS
     */
    public static final String section_MyRelations = "MyRelations Section#xpath=//p[normalize-space(text())='My Relations']/ancestor::div[@class='BG_relation']/parent::div[@class='my_relation']";
    public static final String viewAll_MyRelations = "MyRelations ViewAll#xpath=//p[normalize-space(text())='My Relations']/following-sibling::a[normalize-space(text())='View All']";
    public static final String icon_filter_MyRelations = "MyRelations Filter Icon#xpath=//button[@id='filterIcon' and not(@style='opacity: 0.5;')]/img";
    public static final String icon_CloseFilter_MyRelations = "My Relations Filter Close Icon#xpath=//img[contains(@src,'/icons-cross.svg')]";
    public static final String txt_noRelations = "No Relations Message for 0 relations In My Relations#xpath=//*[starts-with(text(),'There is no ') and contains(text(),'associated with your account.')]";
    public static final String mf_FilterIcon = "Unfunctional FilterIcon#xpath=//div[@class='My_Relations']//img[@src='../../../layout/images/filter.png']";
    public static final String quickActions_RHSMyRelations = "RHSMyRelations QuickActions#xpath=//div[@class='Superstores MyRelationRightSection rhs_inner_Fixed']";
    public static final String tab_Loans_Default = "Loans Tab Default#xpath=//a[normalize-space(text())='Loans']/parent::li[@class='active']";
    public static final String title_MyRelations = "MyRelations Title#xpath=//h2[normalize-space(text())='My Relations']";
    public static final String title_PreApprovedOffers_MyRelations = "Pre Approved Offers for You Title#xpath=//p[normalize-space(text())='Pre-approved offers for you']";










    /*
COMMON XPATHS
 */
    public static final String myRelationTab = "//ul[@class='btm_slider']/li/a";
    public static final String common_BillsAndRecharge = "//div[@class='bill_payment']/descendant::a[contains(@onclick,'bbpsClick')]/p";


    /*
    METHODS
     */
    public List<String> getValuesOfMyRelationTab(String commonXpath, String ref) {
        List<String> values = new ArrayList<>();
        try {
            String locators = "" + ref + "s#xpath=" + commonXpath + "";
            for (int i = 1; i <= findWebElements(locators).size(); i++) {
                String locator = "" + ref + "#xpath=(" + commonXpath + ")[" + i + "]";
                manualScreenshot("");
                if (isElementDisplayed(locator)) {
                    values.add(getText(locator));
                    testStepPassed(getText(locator) + " is Displayed successfully in the " + ref + "s.");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in get values of My Relation Tab. Exception: " + e.getClass());
        }
        return values;
    }


    public void clickOnMyRelationTab(String value, String redirectionTextContains) {
        try {
            String locator_Tab = "" + value + " Tab#xpath=//ul[@class='btm_slider']/li/a[contains(text(),'" + value.trim() + "')]";
//            String locator_Tab = "" + value + " Tab#xpath=//ul[@class='btm_slider']/li/a[normalize-space(text())='" + value.trim() + "']";
            if (isElementDisplayed(locator_Tab)) {
                clickOn(locator_Tab);
                String redirect = "" + value + " Tab Title#xpath=//div[@class='deposit_found_title']/h2[contains(text(),'" + redirectionTextContains + "')]";
                waitTime(3);
                if (isElementDisplayed(redirect)||isElementDisplayed(txt_noRelations)) {
                    manualScreenshot(redirect.split("#")[0] + " is verified successfully");
                } else {
                    testStepFailed(redirect.split("#")[0] + " is not verified");
                }
            } else {
                testStepFailed(locator_Tab.split("#")[0] + " is Not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in click on My Relation tab. Exception: " + e.getClass());
        }
    }

    public void clickOnRelationshipStatus(String status) {
        try {
            String checkBox_Status = "Filter Status Check Box - " + status + "#xpath=//strong[normalize-space(text())='Relationship Status']/parent::div/following-sibling::ul/descendant::label[normalize-space(text())='" + status.trim() + "']/span";
            if (isElementDisplayed(checkBox_Status)) {
                clickOn(checkBox_Status);
            } else {
                testStepFailed(checkBox_Status.split("#")[0] + " is not displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in click on Relationship status. Exception: " + e.getClass());
        }

    }

    public int getCountOfAllRelations(String tabName) {
        int count = 0;
        try {
            String locator = "" + tabName + " Count#xpath=//div[@id='" + tabName + "']/descendant::span[contains(@class,'myrelation-status status')]";
            waitTime(2);
            if (isElementPresent(locator)) {
                count = findWebElements(locator).size();
            } else {
            if (isElementDisplayed(txt_noRelations)) {
                testStepPassed("There is no relations in this customer Id");
manualScreenshot(getText(txt_noRelations));
            } else {
                testStepFailed(locator.split("#")[0] + " is not present");
            }

            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in get count of All Relations. Exception: " + e.getClass());
        }
        return count;
    }

    public int getCountOfRelations(String tabName, String statusText) {
        int count = 0;
        try {
            String locator = "" + tabName + " " + statusText + " Count#xpath=//div[@id='" + tabName + "']/descendant::span[contains(@class,'myrelation-status status') and normalize-space(text())='" + statusText + "']";
            if (isElementPresent(locator)) {
                count = findWebElements(locator).size();
            } else {
                if (isElementPresent(txt_noRelations)) {
                    testStepPassed("There is no relations in this customer Id");
                    manualScreenshot(getText(txt_noRelations));
                } else {
                    manualScreenshot(locator.split("#")[0] + " is not present for this relations");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in get count of " + statusText + " Relations. Exception: " + e.getClass());
        }
        return count;
    }


    public static int all = 0;

    public void MyRelationsLoanActive() {
        try {
            clickOnMyRelationTab("Loans", "LOAN");
            all = getCountOfAllRelations("Loans");
            int active = getCountOfRelations("Loans", "ACTIVE");
            int closed = getCountOfRelations("Loans", "CLOSED");
            if (isElementDisplayed(icon_filter_MyRelations)) {
                clickOn(icon_filter_MyRelations);
                clickOnButtonUsingLocatorUsingForLoop(icon_CloseFilter_MyRelations);
                clickOn(icon_filter_MyRelations);
                clickOnRelationshipStatus("Active");
                clickOnButtonUsingTextUsingForLoop("Apply");
                int activeFilter = getCountOfRelations("Loans", "ACTIVE");
                if (active == activeFilter) {
                    manualScreenshot("Active Loan in Filter Options is Working successfully");
                } else {
                    stepFailed("Active Loan count: " + active);
                    stepFailed("Active Loan count After Filter: " + activeFilter);
                    testStepFailed("Active Loan in Filter Option is not working");
                }
            } else {
                testStepFailed(icon_filter_MyRelations.split("#")[0] + " is Not Displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in My Relations Loans Active. Exception: " + e.getClass());
        }

    }

    public void MyRelationsLoanClosed() {
        try {
//            clickOnMyRelationTab("Loans","LOAN");
//        int all = getCountOfAllRelations("Loans");
            int active = getCountOfRelations("Loans", "ACTIVE");
            int closed = getCountOfRelations("Loans", "CLOSED");

            if (isElementDisplayed(icon_filter_MyRelations)) {
                clickOn(icon_filter_MyRelations);
                clickOnRelationshipStatus("Active");
                clickOnRelationshipStatus("Closed");
                clickOnButtonUsingTextUsingForLoop("Apply");
                int closedFilter = getCountOfRelations("Loans", "CLOSED");
                if (closed == closedFilter) {
                    manualScreenshot("Closed Loan in Filter Options is Working successfully");
                } else {
                    stepFailed("Closed Loan count: " + closed);
                    stepFailed("Closed Loan count After Filter: " + closedFilter);
                    testStepFailed("Closed Loan in Filter Option is not working");
                }
            } else {
                testStepFailed(icon_filter_MyRelations.split("#")[0] + " is Not Displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in My Relations Loans Active. Exception: " + e.getClass());
        }

    }


    public void MyRelationsLoanBoth() {
        try {
//            clickOnMyRelationTab("Loans","LOAN");
//        int all = getCountOfAllRelations("Loans");
            int active = getCountOfRelations("Loans", "ACTIVE");
            int closed = getCountOfRelations("Loans", "CLOSED");

            if (isElementDisplayed(icon_filter_MyRelations)) {
                clickOn(icon_filter_MyRelations);
                clickOnRelationshipStatus("Active");
                clickOnButtonUsingTextUsingForLoop("Apply");
                int allFilter = getCountOfAllRelations("Loans");
                if (all == allFilter) {
                    manualScreenshot("Both Loan in Filter Options is Working successfully");
                } else {
                    stepFailed("Both Loan count: " + all);
                    stepFailed("Both Loan count After Filter: " + allFilter);
                    testStepFailed("Both Loan in Filter Option is not working");
                }
            } else {
                testStepFailed(icon_filter_MyRelations.split("#")[0] + " is Not Displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in My Relations Loans Both. Exception: " + e.getClass());
        }

    }

    public void MyRelationsClearAll(String TabNameId) {
        try {
//        int all = getCountOfAllRelations(TabNameId);
            if (isElementDisplayed(icon_filter_MyRelations)) {
                clickOn(icon_filter_MyRelations);
                clickOnButtonUsingTextUsingForLoop("Clear All");
                int allFilter = getCountOfAllRelations(TabNameId);
                if (all == allFilter) {
                    manualScreenshot("Clear All in Filter Option is Working successfully");
                } else {
                    stepFailed("Clear All count: " + all);
                    stepFailed("Clear All count After Filter: " + allFilter);
                    testStepFailed("Clear All in Filter Option is not working");
                }
            } else {
                testStepFailed(icon_filter_MyRelations.split("#")[0] + " is Not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in My Relations Loans Both. Exception: " + e.getClass());
        }

    }

    public void myRelationsFilter(String tabId, String tabName, String cardStatus, String filterStatus, String filterStatus2, String ref) {
        try {
            clickOnMyRelationTab(tabId, tabName);
            testStepPassed("***** "+ref+" *****");
            all = getCountOfAllRelations(tabId);
            int status = getCountOfRelations(tabId, cardStatus);
            if (isElementDisplayed(icon_filter_MyRelations)) {
                clickOn(icon_filter_MyRelations);
                if (filterStatus2.equalsIgnoreCase(filterStatus)) {
                    clickOnRelationshipStatus(filterStatus);
                } else {
                    clickOnRelationshipStatus(filterStatus);
                    clickOnRelationshipStatus(filterStatus2);
                }
                clickOnButtonUsingTextUsingForLoop("Apply");
                int statusFilter = getCountOfRelations(tabId, cardStatus);
                if (status == statusFilter) {
                    manualScreenshot(ref + " " + tabId + " in Filter Options is Working successfully");

                } else {
                    stepFailed(ref + " " + tabId + " count: " + status);
                    stepFailed(ref + " " + tabId + " count After Filter: " + statusFilter);
                    testStepFailed(ref + " " + tabId + " in Filter Option is not working");
                }
            } else {
                testStepFailed(icon_filter_MyRelations.split("#")[0] + " is Not Displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in My Relations " + ref + " " + tabId + ". Exception: " + e.getClass());
        }
    }

    public List<String> getValuesOfTabUsingCommonXpath(String commonXpath, String ref) {
        List<String> values = new ArrayList<>();
        try {
            String locators = "" + ref + "s#xpath=" + commonXpath + "";
            for (int i = 1; i <= findWebElements(locators).size(); i++) {
                String locator = "" + ref + "#xpath=(" + commonXpath + ")[" + i + "]";
                manualScreenshot("");
                if (isElementDisplayed(locator)) {
                    values.add(getText(locator));
                    testStepPassed(getText(locator) + " is Displayed successfully in the " + ref + "s.");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in get values of My Relation Tab. Exception: " + e.getClass());
        }
        return values;
    }


    public void verifyColorForRelationsNudge() {
        try {
            List<String> tabs = getValuesOfTabUsingCommonXpath(myRelationTab, "My Relations tab");
            for (int i = 0; i < tabs.size(); i++) {
                testStepPassed(tabs.get(i));
                String loc1 = "" + tabs.get(i) + " Tab#xpath=//ul[@class='btm_slider']/li/a[normalize-space(text())='" + tabs.get(i).trim() + "']";
                scrollToWebElement(loc1);
                clickOn(loc1);
                verifyLoansLabel(tabs,i);
                verifyCardsLabel(tabs,i);
                verifyInsuranceLabel(tabs,i);
                verifyMutualFundsLabel(tabs,i);
                verifyDepositsLabel(tabs,i);
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Color for Relations nudge. Exception: " + e.getClass());
        }
    }


    public void verifyLoansLabel(List<String> tabs,int i) {
        try {
            if (tabs.get(i).trim().toLowerCase().contains("Loans".toLowerCase())) {
                String locator_Tab = tabs.get(i) + "#xpath=//div[@id='Loans']/descendant::span[contains(@class,'myrelation-status status')]|//div[@id='Loans']/descendant::i[contains(@class,'card_badge')]";
                for (int j = 1; j <= findWebElements(locator_Tab).size(); j++) {
                    String loc = "" + tabs.get(i) + " : " + j + " #xpath=(//div[@id='Loans']/descendant::span[contains(@class,'myrelation-status status')]|//div[@id='Loans']/descendant::i[contains(@class,'card_badge')])[" + j + "]";
                    Boolean flag = false;
                    if (getTextPresent(loc).trim().equals("")) {
                        flag = true;
//                        String locActive = "Active Nudge#xpath=//div[@id='Loans']/descendant::span[contains(@class,'myrelation-status status') and text()='ACTIVE' or text()='Active']";
//                    String img_LocActive="Active Nudge Arrow#xpath=//span[contains(@class,'myrelation-status status') and text()='ACTIVE' or text()='Active']/preceding-sibling::img";
                        scrollToWebElement(loc);
                        if (!isElementDisplayed(loc)) {
                            manualScreenshot("Loan - Active Label is not showing successfully");
                        } else {
                            testStepFailed("Loan - Active Label is Showing Wrongly");
                        }
                    }
                    scrollToWebElement(loc);
                    if (isElementDisplayed(loc) && !flag) {
                        if (getText(loc).trim().equalsIgnoreCase("Closed")) {
                            String color = validateCssValues(loc, "background-color");
                            color = Color.fromString(color).asHex();
//                            testStepPassed(color);
                            if (color.equals("#002a53")) {
                                manualScreenshot("Loan - Closed Label color Blue is verified successfully");
                            } else {
                                testStepFailed("Loan - Closed Label color Blue is Not verified ");
                            }
                        } else if (getText(loc).trim().toLowerCase().contains("emi overdue")) {
                            String color = validateCssValues(loc, "background-color");
                            color = Color.fromString(color).asHex();
                            testStepPassed(color);
                            if (color.equals("#b40000")) {
                                manualScreenshot("Loan - Emi Over Due Label color Red is verified successfully");
                            } else {
                                testStepFailed("Loan - Emi Over Due Label color Red is Not verified ");
                            }
                        } else {
                            manualScreenshot(getText(loc) + " is present");
                        }
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Loan Labels. Exception: "+e.getClass());
        }
    }
    public void verifyInsuranceLabel(List<String> tabs,int i) {
        try {
            if (tabs.get(i).trim().toLowerCase().contains("Insurance".toLowerCase())) {
                String locator_Tab = tabs.get(i) + "#xpath=//div[@id='Insurance']/descendant::span[contains(@class,'myrelation-status status')]|//div[@id='Insurance']/descendant::i[contains(@class,'card_badge')]";
                for (int j = 1; j <= findWebElements(locator_Tab).size(); j++) {
                    String loc = "" + tabs.get(i) + " : " + j + " #xpath=(//div[@id='Insurance']/descendant::span[contains(@class,'myrelation-status status')]|//div[@id='Insurance']/descendant::i[contains(@class,'card_badge')])[" + j + "]";
                    Boolean flag = false;
                    if (getTextPresent(loc).trim().equals("")) {
                        flag = true;
//                        String locActive = "Active Nudge#xpath=//div[@id='Loans']/descendant::span[contains(@class,'myrelation-status status') and text()='ACTIVE' or text()='Active']";
//                    String img_LocActive="Active Nudge Arrow#xpath=//span[contains(@class,'myrelation-status status') and text()='ACTIVE' or text()='Active']/preceding-sibling::img";
                        scrollToWebElement(loc);
                        if (!isElementDisplayed(loc)) {
                            manualScreenshot("Insurance - Active Label is not showing successfully");
                        } else {
                            testStepFailed("Insurance - Active Label is Showing Wrongly");
                        }
                    }
                    scrollToWebElement(loc);
                    if (isElementDisplayed(loc) && !flag) {
                        if (getText(loc).trim().equalsIgnoreCase("Closed")) {
                            String color = validateCssValues(loc, "background-color");
                            color = Color.fromString(color).asHex();
                            testStepPassed(color);
                            if (color.equals("#002a53")) {
                                manualScreenshot("Insurance - Closed Label color Blue is verified successfully");
                            } else {
                                testStepFailed("Insurance - Closed Label color Blue is Not verified ");
                            }
                        } else if (getText(loc).trim().equalsIgnoreCase("Cancelled")) {
                            String color = validateCssValues(loc, "background-color");
                            color = Color.fromString(color).asHex();
                            testStepPassed(color);
                            if (color.equals("#002a53")) {
                                manualScreenshot("Loan - Cancelled Label color Blue is verified successfully");
                            } else {
                                testStepFailed("Loan - Cancelled Label color Blue is Not verified ");
                            }
                        } else if (getText(loc).trim().equalsIgnoreCase("Surrendered")) {
                            String color = validateCssValues(loc, "background-color");
                            color = Color.fromString(color).asHex();
                            testStepPassed(color);
                            if (color.equals("#002a53")) {
                                manualScreenshot("Loan - Surrendered Label color Blue is verified successfully");
                            } else {
                                testStepFailed("Loan - Surrendered Label color Blue is Not verified ");
                            }
                        } else if (getText(loc).trim().toLowerCase().contains("Renew".toLowerCase())) {
                            String color = validateCssValues(loc, "background-color");
                            color = Color.fromString(color).asHex();
                            testStepPassed(color);
                            if (color.equals("#00b500")) {
                                manualScreenshot("Loan - Renew Label color Green is verified successfully");
                            } else {
                                testStepFailed("Loan - Renew Label color Green is Not verified ");
                            }
                        } else {
                            manualScreenshot(getText(loc) + " is present");
                        }
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Insurance Labels. Exception: "+e.getClass());
        }
    }

    public void verifyCardsLabel(List<String> tabs,int i) {
        try {
            if (tabs.get(i).trim().toLowerCase().contains("Cards".toLowerCase())) {
                String locator_Tab = tabs.get(i) + "#xpath=//div[@id='Cards']/descendant::span[contains(@class,'myrelation-status status')]|//div[@id='Cards']/descendant::i[contains(@class,'card_badge')]";
                for (int j = 1; j <= findWebElements(locator_Tab).size(); j++) {
                    String loc = "" + tabs.get(i) + " : " + j + " #xpath=(//div[@id='Cards']/descendant::span[contains(@class,'myrelation-status status')]|//div[@id='Cards']/descendant::i[contains(@class,'card_badge')])[" + j + "]";
                    Boolean flag = false;
                    if (getTextPresent(loc).trim().equals("")) {
                        flag = true;
//                        String locActive = "Active Nudge#xpath=//div[@id='Loans']/descendant::span[contains(@class,'myrelation-status status') and text()='ACTIVE' or text()='Active']";
//                    String img_LocActive="Active Nudge Arrow#xpath=//span[contains(@class,'myrelation-status status') and text()='ACTIVE' or text()='Active']/preceding-sibling::img";
                        scrollToWebElement(loc);
                        if (!isElementDisplayed(loc)) {
                            manualScreenshot("Cards - Active Label is not showing successfully");
                        } else {
                            testStepFailed("Cards - Active Label is Showing Wrongly");
                        }
                    }
                    scrollToWebElement(loc);
                    if (isElementDisplayed(loc) && !flag) {
                        if (getText(loc).trim().equalsIgnoreCase("Blocked")) {
                            String color = validateCssValues(loc, "background-color");
                            color = Color.fromString(color).asHex();
                            testStepPassed(color);
                            if (color.equals("#800000")) {
                                manualScreenshot("Cards - Blocked Label color Maroon is verified successfully");
                            } else {
                                testStepFailed("Cards - Blocked Label color Maroon is Not verified ");
                            }
                        } else {
                            manualScreenshot(getText(loc) + " is present");
                        }
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Cards Labels. Exception: "+e.getClass());
        }
    }

    public void verifyMutualFundsLabel(List<String> tabs,int i) {
        try {
            if (tabs.get(i).trim().toLowerCase().contains("Mutual Funds".toLowerCase())) {
                String txt_MutualFunds="Mutual Funds Static Text#xpath=//div[@class='Mutualfunds_width']";
                System.out.println(getText(txt_MutualFunds));
                if (getText(txt_MutualFunds).trim().equals(TestDataMyRelations.txt_MutualFunds)) {
                    manualScreenshot("My Relations Mutual Funds Static Text verified successfully");
                } else {
                    testStepFailed("My Relations Mutula Funds Static Text is Not verified");
                }
                String txt_RelationShipStatus_Filter="Filter Relationship Status Label#xpath=//strong[normalize-space(text())='Relationship Status']";
                if (isElementDisplayed(icon_filter_MyRelations)) {
                    clickOn(icon_filter_MyRelations);
                    if (!isElementDisplayed(txt_RelationShipStatus_Filter)) {
                        manualScreenshot("Filter Icon is Not Able to clickable for Mutual funds Tab in My Relations");
                    } else {
                        testStepFailed("Filter Icon is able to clickable for Mutual Fund tab in My Relations wrongly");
                    }
                } else {
                    manualScreenshot("Filter Icon is Not Displayed for Mutual funds Tab in My Relations");
                }

            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Mutual Funds label. Exception: "+e.getClass());
        }
    }

    public void verifyDepositsLabel(List<String> tabs,int i) {
        try {
            if (tabs.get(i).trim().toLowerCase().contains("Deposit".toLowerCase())) {
                String locator_Tab = tabs.get(i) + "#xpath=//div[@id='Deposits']/descendant::span[contains(@class,'myrelation-status status')]|//div[@id='Deposits']/descendant::i[contains(@class,'card_badge')]";
                for (int j = 1; j <= findWebElements(locator_Tab).size(); j++) {
                    String loc = "" + tabs.get(i) + " : " + j + " #xpath=(//div[@id='Deposits']/descendant::span[contains(@class,'myrelation-status status')]|//div[@id='Deposits']/descendant::i[contains(@class,'card_badge')])[" + j + "]";
                    Boolean flag = false;
                    if (getTextPresent(loc).trim().equals("")) {
                        flag = true;
//                        String locActive = "Active Nudge#xpath=//div[@id='Loans']/descendant::span[contains(@class,'myrelation-status status') and text()='ACTIVE' or text()='Active']";
//                    String img_LocActive="Active Nudge Arrow#xpath=//span[contains(@class,'myrelation-status status') and text()='ACTIVE' or text()='Active']/preceding-sibling::img";
                        scrollToWebElement(loc);
                        if (!isElementDisplayed(loc)) {
                            manualScreenshot("Deposits - Active Label is not showing successfully");
                        } else {
                            testStepFailed("Deposits - Active Label is Showing Wrongly");
                        }
                    }
                    scrollToWebElement(loc);
                    if (isElementDisplayed(loc) && !flag) {
                        if (getText(loc).trim().equalsIgnoreCase("Matured")) {
                            String color = validateCssValues(loc, "background-color");
                            color = Color.fromString(color).asHex();
//                            testStepPassed(color);
                            if (color.equals("#002a53")) {
                                manualScreenshot("Deposits - Matured Label color Blue is verified successfully");
                            } else {
                                testStepFailed("Deposits - Matured Label color Blue is Not verified ");
                            }
                        } else if (getText(loc).trim().toLowerCase().contains("Pre-Matured".toLowerCase())) {
                            String color = validateCssValues(loc, "background-color");
                            color = Color.fromString(color).asHex();
//                            testStepPassed(color);
                            if (color.equals("#002a53")) {
                                manualScreenshot("Deposits - Pre-Matured Label color Blue is verified successfully");
                            } else {
                                testStepFailed("Deposits - Pre-Matured Label color Blue is Not verified ");
                            }
                        } else if (getText(loc).trim().toLowerCase().contains("maturing".toLowerCase())) {
                            String color = validateCssValues(loc, "background-color");
                            color = Color.fromString(color).asHex();
                            testStepPassed(color);
                            if (color.equals("#00b500")) {
                                manualScreenshot("Deposits - Maturing Soon Label color Green is verified successfully");
                            } else {
                                testStepFailed("Deposits - Maturing Soon Label color Green is Not verified ");
                            }}else {
                            manualScreenshot(getText(loc) + " is present");
                        }
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Deposits Labels. Exception: "+e.getClass());
        }
    }

    public void verifyCountsForEachTitle() {
        try {
            List<String> tabs = getValuesOfTabUsingCommonXpath(myRelationTab, "My Relations tab");
            for (int i = 0; i < tabs.size(); i++) {
                testStepPassed(tabs.get(i));
                String loc1 = "" + tabs.get(i) + " Tab#xpath=//ul[@class='btm_slider']/li/a[normalize-space(text())='" + tabs.get(i).trim() + "']";
                scrollToWebElement(loc1);
                clickOn(loc1);
                if (!tabs.get(i).contains("Mutual Funds")) {
                    String txt_Titles = "Titles#xpath=//div[@id='"+tabs.get(i).trim().split("/")[0]+"']/descendant::h2";
                    testStepPassed(tabs.get(i).trim().split("/")[0]);
                    for (int j = 1; j <= findWebElements(txt_Titles).size(); j++) {
                        String txt_Title = tabs.get(i)+": "+j+"#xpath=(//div[@id='"+tabs.get(i).trim().split("/")[0]+"']/descendant::h2)["+j+"]";
                        String countCards=getTextPresent(txt_Title)+": "+j+"#xpath=//div[@id='"+tabs.get(i).trim().split("/")[0]+"']/descendant::h2[normalize-space(text())='"+getTextPresent(txt_Title).trim()+"']/../following-sibling::div[@class='deposit_found_box']/descendant::div[contains(@class,'deposit_found')]";
                        String txt = getTextPresent(txt_Title);
                        if (txt.contains("(")) {
                            int count = Integer.parseInt(txt.split("\\(")[1].split("\\)")[0].trim());

                            if (count == findWebElements(countCards).size()) {
                                testStepPassed("Count: "+findWebElements(countCards).size());
                                manualScreenshot(""+tabs.get(i)+" Tab - "+txt+" Sub title Count verified successfully");
                            } else {
                                testStepFailed("Count Of Cards in "+txt+": "+findWebElements(countCards).size());
                                testStepFailed(""+tabs.get(i)+" Tab - "+txt+" Sub title Count Not verified");
                            }
                        } else {
                            if (findWebElements(countCards).size()==1) {
                                testStepPassed("Count: "+findWebElements(countCards).size());
                                manualScreenshot(""+tabs.get(i)+" Tab - "+txt+" Sub title Count is not showing for single relations verified successfully");
                            } else {
                                testStepFailed("Count Of Cards in "+txt+": "+findWebElements(countCards).size());
                                testStepFailed(""+tabs.get(i)+" Tab - "+txt+" Sub title Single Relation Count is not visible is Not verified");
                            }
                        }

                    }

                }
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Counts for Each Title. Exception: "+e.getClass());
        }

    }

    public void verifyFilter(String tabId, String tabName,String title, String statusTextWithComma, String filterStatus, String filterStatus2, String ref) {
        try {
            clickOnMyRelationTab(tabId, title);
            all = getCountOfAllRelations(tabId);
            int status = getCountOfRelationsMultiple(tabId, statusTextWithComma);
            if (isElementDisplayed(icon_filter_MyRelations)) {
                clickOn(icon_filter_MyRelations);
                if (filterStatus2.equalsIgnoreCase(filterStatus)) {
                    clickOnRelationshipStatus(filterStatus);
                } else {
                    clickOnRelationshipStatus(filterStatus);
                    clickOnRelationshipStatus(filterStatus2);
                }
                clickOnButtonUsingTextUsingForLoop("Apply");
                int statusFilter = getCountOfRelationsMultiple(tabId, statusTextWithComma);
                if (status == statusFilter) {
                    manualScreenshot(ref + " " + tabId + " in Filter Options is Working successfully");
                } else {
                    stepFailed(ref + " " + tabId + " count: " + status);
                    stepFailed(ref + " " + tabId + " count After Filter: " + statusFilter);
                    testStepFailed(ref + " " + tabId + " in Filter Option is not working");
                }
            } else {
                testStepFailed(icon_filter_MyRelations.split("#")[0] + " is Not Displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in My Relations " + ref + " " + tabId + ". Exception: " + e.getClass());
        }
    }

    public int getCountOfRelationsMultiple(String tabName, String statusTextWithComma) {
        int count = 0;
        try {
            String locator = "" + tabName + " " + statusTextWithComma + " Count#xpath=//div[@id='" + tabName + "']/descendant::span[contains(@class,'myrelation-status status') and normalize-space(text())='" + statusTextWithComma.split(",")[0] + "']|//div[@id='" + tabName + "']/descendant::span[contains(@class,'myrelation-status status') and normalize-space(text())='" + statusTextWithComma.split(",")[1] + "']|//div[@id='"+tabName+"']/descendant::p[text()='"+statusTextWithComma.split(",")[0]+"']";
            if (isElementPresent(locator)) {
                count = findWebElements(locator).size();
            } else {
                if (isElementDisplayed(txt_noRelations)) {
                    testStepPassed("There is no relations in this customer Id");
                    manualScreenshot(getText(txt_noRelations));
                } else {
                    testStepFailed(locator.split("#")[0] + " is not present");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in get count of " + statusTextWithComma + " Relations. Exception: " + e.getClass());
        }
        return count;
    }
    public void verifyRHSinMyRelations( String option) {
        try {
            String locator = "Quick Actions - " + option + "#xpath=//p[normalize-space(text())='Quick Actions']/../following-sibling::div//*[normalize-space(text())='" + option + "']";
//            scrollToWebElement(locator);
            clickOnIfDisplayed(locator);
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed verifyRHSinMyRelations. Exception: " + e.getClass());
        }
    }
    public String getALlNamesOfProductsUsingCommonXpath(String commonXpath, String name) {
        String pnames = " ";
        try {
            testStepPassed("******************* " + name + " *******************");
            String locator = "" + name + "#xpath=" + commonXpath + "";
           scrollToWebElement(locator);
            for (int i = 1; i <= findWebElements(locator).size(); i++) {
                testStepPassed(""+findWebElements(locator).size());
                System.out.println(findWebElements(locator).size());
                String product = "" + name + "#xpath=(" + commonXpath + ")[" + i + "]";
                testStepPassed(product);
                System.out.println(product);
                if (i != 1 && i != findWebElements(locator).size()) {
                    pnames = pnames + ",";
                }

                pnames = pnames + getTextPresent(product);
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in get ALl Names of products using Common Xpath. Exception: " + e.getClass());
        }
        return pnames;
    }

    public static final String section_BillPayments = "Bills & Payments Section#xpath=//div[@class='Bill_Payments']";
    public static final String btnSlide_Next = "Next Slide Button#xpath=//button[@class='slick-next slick-arrow']";

    public void clickOnProductUsingCommonXpath(String xpath, String name, String section, String btnNext, String expectedUrl) {
        try {
            String locator = "" + name + "#xpath=" + xpath + "[normalize-space(text())='" + name.trim() + "']";
            scrollToWebElement(section);
            if (!isElementDisplayed(locator)) {
                clickOnIfDisplayed(btnNext);
            }
            if (isElementDisplayed(locator)) {
                manualScreenshot(name + " is Displayed successfully");
                clickOn(locator);
                transferControlToWindow(2, false);
                waitForPageToLoad();
                verifyRedirectionURL(expectedUrl);
                transferControlToWindow(1, true);
            } else {
                testStepFailed(name + " is Not displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in Click On Product Using Common Xpath " + name + ". Exception: " + e.getClass());
        }
    }

    public void verifyBillAndRecharges() {
        try {
//            String all = getALlNamesOfProductsUsingCommonXpath(common_BillsAndRecharge, "Bills & Recharges Section");

//            testStepPassed(all);
            String[] allNames = TestDataMyRelations.products_BillsAndRecharges.split(",");
            for (int i = 0; i < allNames.length; i++) {
                clickOnProductUsingCommonXpath(common_BillsAndRecharge, allNames[i], section_BillPayments, btnSlide_Next, TestDataMyRelations.url_BillsAndRecharges);
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Bills and Recharges. Exception: " + e.getClass());
        }
    }

    public void getMyRelationsTabNames() {
        try {
            List<String> list=new ArrayList<>();
            list.add("Loans");
            list.add("Cards");
            list.add("Deposits");
            list.add("Insurance/ Value Added Services");
            list.add("Mutual Funds");
String locator="My Relation Tab#xpath=//div[@class='tab_link']/descendant::a";
if(sizeOfLocator(locator)==0){
    testStepFailed("My Relations Tab Options not showing");
    return;
}
            for (int i = 1; i <=sizeOfLocator(locator) ; i++) {
                String locator1="My Relation Tab "+1+"#xpath=(//div[@class='tab_link']/descendant::a)["+i+"]";
                manualScreenshot("My Relations");
                if (isElementDisplayed(locator1)) {
                    testStepPassed(textGet(locator1)+" is Displayed Successfully in this Customer Id");
                    list.remove(textGet(locator1).trim());
                } else {
stepFailed(textGet(locator1)+" is Not Displayed");
                }
            }
            for (int i = 0; i < list.size(); i++) {
                testStepInfo(list.get(i)+" is Not Present in this Customer Id.");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in Get My Relations Tab Names. Exception: "+e.getClass());
        }
    }
public void filterWithMyRelationsTabNames() {
        try {
            List<String> list=new ArrayList<>();
            list.add("Loans");
            list.add("Cards");
            list.add("Deposits");
            list.add("Insurance/ Value Added Services");
String locator="My Relation Tab#xpath=//div[@class='tab_link']/descendant::a";
if(sizeOfLocator(locator)==0){
    testStepFailed("My Relations Tab Options not showing");
    return;
}
            for (int i = 1; i <=sizeOfLocator(locator) ; i++) {
                String locator1="My Relation Tab "+1+"#xpath=(//div[@class='tab_link']/descendant::a)["+i+"]";
                manualScreenshot("My Relations");
                if (isElementDisplayed(locator1)) {
                    clickOn(locator1);
                    if (isElementDisplayed(MyRelationsPage.icon_filter_MyRelations)&&textGet(locator1).trim().equalsIgnoreCase("Mutual Funds")) {
                    testStepPassed("Filter Option is Showing for "+textGet(locator1)+" tab successfully");
                    }
                    list.remove(textGet(locator1).trim());
                } else {
stepFailed(textGet(locator1)+" is Not Displayed");
                }
            }
            for (int i = 0; i < list.size(); i++) {
                testStepInfo(list.get(i)+" is Not Present in this Customer Id.");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in Filter options My Relations Tab Names. Exception: "+e.getClass());
        }
    }

    public Boolean clickOnMyRelationTabUsingText(String tabText,String extra) {
        Boolean flag=false;
        try {
            String tabLocator = "" + tabText + " tab#xpath=//div[@class='tab_link']/descendant::a[normalize-space(text())='" + tabText.trim() + "']";
            String tabLocatorActive = "" + tabText + " tab active#xpath=//div[@class='tab_link']/descendant::a[normalize-space(text())='"+tabText.trim()+"']/parent::li[@class='active']";
            waitForElementUntilVisibleFluent(tabLocator);//New
            if (isElementDisplayed(tabLocator)) {
                clickOn(tabLocator);
                waitForPageToLoad();
                if (isElementPresent(tabLocatorActive)) {
                    manualScreenshot(getRefOfXpath(tabLocator)+" is Clicked successfully");
                    flag=true;
                } else {
                    testStepFailed(getRefOfXpath(tabLocator)+" is Not Clicked successfully");
                }
            } else {
                testStepFailed(getRefOfXpath(tabLocator)+" is Not Present in this Customer Id");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in click on My Relation Tab using text "+tabText+". Exception: "+e.getClass());
        }
        return flag;
    }

    public void verifyFilterFieldsForEachTab(String textOptions, String statusOptions,String extra) {
        try {
            String textWithHash = textOptions.replaceAll(",", "#");
            String statusOptionsWithHash = statusOptions.replaceAll(",", "#");
            verifyTextElementUsingOptionsTextUsingHash(textWithHash);
            verifyFieldsUsingCommonXpathAndMultipleTextWithHash("//label[@class='Relation']",statusOptionsWithHash,"");
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Filter Fields each tab. Exceptions: "+e.getClass());
        }
    }

    public int getActiveCountRelations(String id,String extra) {
        int count=0;
        try {
            String activeTile = "Active Relations in MyRelations#xpath=//div[@id='"+id+"']/descendant::span[normalize-space(text())='ACTIVE']|//div[@id='"+id+"']/descendant::span[normalize-space(text())='Active']";
            count= countOfLocator(activeTile);
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in get active Count Relations "+id+". Exception: "+e.getClass());
        }
        return count;
    }

public int CountRelationsUsingNudgeText(String id,String nudgetext,String extra) {
        int count=0;
        try {
            String locator = nudgetext+" Relations in MyRelations#xpath=//div[@id='"+id+"']/descendant::span[normalize-space(text())='"+nudgetext+"']";
            count= countOfLocator(locator);
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in get "+nudgetext+" Count Relations "+id+". Exception: "+e.getClass());
        }
        return count;
    }

public int DepositCountRelations(Boolean active,String extra) {
        int count=0;
        try {
            String locator = "Closed Relations in MyRelations#xpath=//div[@id='Deposits']/descendant::span[normalize-space(text())='MATURED']|//div[@id='Deposits']/descendant::span[normalize-space(text())='PRE-MATURED']";
            String allCount = "All Relations in MyRelations Deposits#xpath=//div[@id='Deposits']/descendant::strong[normalize-space(text())='FIXED DEPOSIT']";
            if (active) {
                int count1= countOfLocator(allCount);
                count= countOfLocator(locator);
                count=count1-count;
            } else {
                count= countOfLocator(locator);
            }
            count= countOfLocator(locator);
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in get Deposit Count Relations. Exception: "+e.getClass());
        }
        return count;
    }

    public void verifyCountAfterFilter(int count,int countAfterFilter,String tabId,String statusText) {
        try {
            if (count == countAfterFilter) {
                testStepPassed(tabId+" - "+statusText+" Filter Working successfully");
                if (count == 0) {
                    if (isElementDisplayed(txt_noRelations)) {
                        manualScreenshot(textGet(txt_noRelations)+" is Displayed for 0 Relations successfully");
                    } else {
                        testStepFailed(getRefOfXpath(txt_noRelations)+" is not Displayed for 0 Relations");
                    }
                }
            } else {
stepFailed(tabId+" - "+statusText+" Filter is not Working");
stepFailed(tabId+" - "+statusText+" Conut: "+count);
stepFailed(tabId+" - "+statusText+" Count After Filter: "+countAfterFilter);
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify count after Filter. Exception: "+e.getClass());
        }
    }

    public  int allRelationsCount(String id) {
        int count=0;
        try {
String locator=""+id+" All Relations Count#xpath=//div[@id='"+id+"']/descendant::div[@class='deposit_name']";
            count = countOfLocator(locator);
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in All Relations Count Get. Exception: "+e.getClass());
        }
        return count;
    }


    public void verifyCountsForEachTitleUsingId(String id) {
        try {
                    String txt_Titles = id+" Sub Titles#xpath=//div[@id='"+id+"']/descendant::h2";
            if (isElementDisplayed(txt_Titles)) {
                for (int j = 1; j <= findWebElements(txt_Titles).size(); j++) {
                    String txt_Title = id + ": Sub Title " + j + "#xpath=(//div[@id='" + id + "']/descendant::h2)[" + j + "]";
                    String countCards = getTextPresent(txt_Title) + "#xpath=//div[@id='" + id + "']/descendant::h2[normalize-space(text())='" + getTextPresent(txt_Title).trim() + "']/../following-sibling::div[@class='deposit_found_box']/descendant::div[contains(@class,'deposit_found')]";
                    String txt = getTextPresent(txt_Title);
                    if (txt.contains("(")) {
                        int count = Integer.parseInt(txt.split("\\(")[1].split("\\)")[0].trim());
                        if (count == findWebElements(countCards).size()) {
                            testStepPassed("Count: " + findWebElements(countCards).size());
                            manualScreenshot("" + id + " Tab - " + txt + " Sub title Count verified successfully");
                        } else {
                            testStepFailed("Count Of Cards in " + txt + ": " + findWebElements(countCards).size());
                            testStepFailed("" + id + " Tab - " + txt + " Sub title Count Not verified");
                        }
                    } else {
                        if (findWebElements(countCards).size() == 1) {
                            testStepPassed("Count: " + findWebElements(countCards).size());
                            manualScreenshot("" + id + " Tab - " + txt + " Sub title Count is not showing for single relations verified successfully");
                        } else {
                            stepFailed("Count Of Cards in " + txt + ": " + findWebElements(countCards).size());
                            testStepFailed("" + id + " Tab - " + txt + " Sub title Count is not showing for single relations is not verified");
                        }
                    }
                }
            } else {
                testStepFailed("Group of Cards Title is not Present");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Counts for Each Title Using Id. Exception: "+e.getClass());
        }

    }


    public void verifyMyRelationsLabelColorUsingText(String id,String labelText,String expectedHexColorValue,String colorName,String extra) {
        try {

            String locator= id+" - "+labelText+" Label#xpath=//div[@id='"+id+"']/descendant::span[contains(@class,'myrelation-status status')][normalize-space(text())='"+labelText+"']|//div[@id='"+id+"']/descendant::i[contains(@class,'card_badge')][normalize-space(text())='"+labelText+"']|//div[@id='"+id+"']/descendant::span[contains(@class,'myrelation-status-renew')][normalize-space(text())='"+labelText+"']";
            if (isElementPresent(locator)) {
                scrollToWebElement(locator);
            }else {
                testStepFailed(getRefOfXpath(locator)+" is Not Available in this Customer Id");
                return;
            }
            if (isElementDisplayed(locator)) {
            verifyLocatorColorUsingCssValue(locator,expectedHexColorValue,colorName,"background-color");
            } else {
             testStepInfo(getRefOfXpath(locator)+" is Not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Labels Color In My Relations Using Text. Exception: "+e.getClass());
        }
    }

public void verifyNoRelationsText(String locator,String statusFilter,String noRelationsText,String extra) {
    try {
        if (!isElementPresent(locator)) {
            boolean flag = clickOnIfDisplayed(MyRelationsPage.icon_filter_MyRelations);
            if (flag) {
                clickOnRelationshipStatus(statusFilter);
                clickOnButtonUsingTextUsingForLoop("Apply");
                waitTime(3);
//                String txt_noRelationsCommon = noRelationsText+" Message for 0 relations After Filtered "+statusFilter+" In My Relations#xpath=//*[starts-with(text(),'There is no ') and contains(text(),'associated with your account.')]";
                //                String txt_noRelationsCommon = noRelationsText+" Message for 0 relations After Filtered "+statusFilter+" In My Relations#xpath=//*[normalize-space(text())='There is "+noRelationsText.toLowerCase()+" associated with your account.']";
//                String txt_noRelationsCommon = noRelationsText+" Message for 0 relations After Filtered "+statusFilter+" In My Relations#xpath=//span[text()=' to start one now .'and' You do not have any "+noRelationsText.trim()+" with us. ']/a[text()=' Check your offers']/..";
                String txt_noRelationsCommon = noRelationsText+" Message for 0 relations After Filtered "+statusFilter+" In My Relations#xpath=//span[normalize-space(text())='You do not have any "+noRelationsText.trim()+" with us.']";
                String txt_CheckYourOffers = "Check Your Offers Link for 0 relations After Filtered "+statusFilter+" In My Relations#xpath=//span[text()=' to start one now .'and' You do not have any "+noRelationsText.trim()+" with us. ']/a[text()=' Check your offers']/..";

                if (isElementDisplayed(txt_noRelationsCommon)) {
                    manualScreenshot(getText(txt_noRelationsCommon)+" "+getRefOfXpath(locator)+" is verified successfully");
                } else {
                    testStepFailed(getRefOfXpath(txt_noRelationsCommon)+" is not Displayed");
                }
//                if (isElementDisplayed(txt_CheckYourOffers)) {
//                    manualScreenshot(getText(txt_CheckYourOffers)+" "+getRefOfXpath(locator)+" is verified successfully");
//                } else {
//                    testStepFailed(getRefOfXpath(txt_CheckYourOffers)+" is not Displayed");
//                }
            }
        } else {
            testStepFailed(getRefOfXpath(locator)+" Count is not zero. Pls change customer Id");
        }
    } catch (Exception e) {
        e.printStackTrace();
        testStepFailed("Failed in verify No Relation Text. Exception: "+e.getClass());
    }
}

    public void verifyNoRelationsTextWithoutFilter(String noRelationsText,String extra) {
        try {
                    String txt_noRelationsCommon = "Message for 0 relations without Filtered "+noRelationsText+" In My Relations#xpath=//span[normalize-space(text())='You do not have any "+noRelationsText.trim()+" with us.']";
                    if (isElementDisplayed(txt_noRelationsCommon)) {
                        manualScreenshot(getText(txt_noRelationsCommon)+" "+getRefOfXpath(txt_noRelationsCommon)+" is verified successfully");
                    } else {
                        testStepFailed(getRefOfXpath(txt_noRelationsCommon)+" is not Displayed");
                    }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify No Relation Text Without filter. Exception: "+e.getClass());
        }
    }


    public Boolean verifyMyRelationTabActiveUsingText(String tabText,String extra) {
        Boolean flag=false;
        try {
            String tabLocator = "" + tabText + " tab#xpath=//div[@class='tab_link']/descendant::a[normalize-space(text())='" + tabText.trim() + "']";
            String tabLocatorActive = "" + tabText + " tab active#xpath=//div[@class='tab_link']/descendant::a[normalize-space(text())='"+tabText.trim()+"']/parent::li[@class='active']";
            waitForElementUntilVisibleFluent(tabLocator);//New
            if (isElementDisplayed(tabLocator)) {
                waitForPageToLoad();
                if (isElementPresent(tabLocatorActive)) {
                    manualScreenshot(getRefOfXpath(tabLocator)+" is Landed successfully");
                    flag=true;
                } else {
                    testStepFailed(getRefOfXpath(tabLocator)+" is Not Landed");
                }
            } else {
                testStepFailed(getRefOfXpath(tabLocator)+" is Not Present");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in Verify My Relation Tab Landed using text "+tabText+". Exception: "+e.getClass());
        }
        return flag;
    }
    public void verifyInsuranceTileDetailsInMyRelationPageUsingAccountNumber(String accNum,String labelNames,String nudgeText,String extra) {
        try {
                  String tilePolicyNo="Policy Number "+accNum+" in Insurance Tile#xpath=//div[@id='Insurance']//*[normalize-space(text())='"+accNum.trim()+"']";
            if (isElementPresent(tilePolicyNo)) {
                String[] split = labelNames.split(", ");
                String tile = "Policy Number in Insurance Tile " + accNum + "#xpath=" + getCommonPathOfLocator(tilePolicyNo) + "/ancestor::div[@class='deposit_found_data']";
                String commonPathOfLocator = getCommonPathOfLocator(tile);
                String number = split[0].trim();
                String amount = split[1].trim();
                String tilePolicyNumberLabel = "Policy Number Label in Insurance Tile " + accNum + "#xpath=" + commonPathOfLocator + "//*[normalize-space(text())='"+ number +"']";
                String tilePolicyNumberValue = "Policy Number Value in Insurance Tile " + accNum + "#xpath=" + commonPathOfLocator + "//*[normalize-space(text())='"+ number +"']/following-sibling::strong";
                String tilePremiumAmountLabel = "Premium Amount Label in Insurance Tile " + accNum + "#xpath=" + commonPathOfLocator + "//*[normalize-space(text())='"+amount+"']";
                String tilePremiumAmountValue = "Premium Amount Value in Insurance Tile " + accNum + "#xpath=" + commonPathOfLocator + "//*[normalize-space(text())='"+amount+"']/following-sibling::strong";
                String tileName = "Policy Name Label in Insurance Tile " + accNum + "#xpath=" + commonPathOfLocator + "//div[@class='deposit_name']/div[@class='fixed_text']/strong";
                String tileViewDetailsIcon = "View Details Icon in Insurance Tile " + accNum + "#xpath=" + commonPathOfLocator + "//div[@class='deposit_name']/img[@id='InsuraceAndVASViewDetails']";
                String tileNudgeText = nudgeText+" Nudge Text in Insurance Tile " + accNum + "#xpath=" + commonPathOfLocator + "//div[@class='deposit_name']/span[normalize-space(text())='"+nudgeText.trim()+"']";
                verifyFieldsDisplayedUsingLocatorWithScroll(tilePolicyNumberLabel);
                verifyFieldsDisplayedUsingLocatorWithScroll(tilePolicyNumberValue);
                verifyFieldsDisplayedUsingLocatorWithScroll(tilePremiumAmountLabel);
                verifyFieldsDisplayedUsingLocatorWithScroll(tilePremiumAmountValue);
                verifyFieldsDisplayedUsingLocatorWithScroll(tileName);
                verifyFieldsDisplayedUsingLocatorWithScroll(tileViewDetailsIcon);
                if (!nudgeText.isEmpty()) {
                    verifyFieldsDisplayedUsingLocatorWithScroll(tileNudgeText);
                }
            } else {
                testStepFailed(accNum+" Policy Number is not available in Insurance Tab Tiles.");
            }


        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Insurance Tile in My Relations Page Using Account Number. Exception: "+e.getClass());
        }
    }


public void verifyInsuranceTileDetailsInMyRelationPage(String label,String extra) {
    try {
String tiles="Insurance Tile#xpath=//div[@id='Insurance']//*[@class='deposit_found_data']";
        int size = sizeOfLocator(tiles);
        for (int i = 1; i <=size ; i++) {
            String tileName="Insurance Tile#xpath=(//div[@id='Insurance']//*[@class='deposit_found_data'])["+i+"]//div[@class='deposit_name']//strong";
            String tileViewIcon="Insurance Tile View Details Icon#xpath=(//div[@id='Insurance']//*[@class='deposit_found_data'])["+i+"]//div[@class='deposit_name']//img[@id='InsuraceAndVASViewDetails']";
            String tilePolicyNo="Insurance Tile Policy Number Text#xpath=(//div[@id='Insurance']//*[@class='deposit_found_data'])["+i+"]//div[@class='deposit_amount']//*[normalize-space(text())='Policy Number']";
            String tilePremiumAmount="Insurance Tile Premium Amount Text#xpath=(//div[@id='Insurance']//*[@class='deposit_found_data'])["+i+"]//div[@class='deposit_amount']//*[normalize-space(text())='Premium Amount']";

        }

    } catch (Exception e) {
        e.printStackTrace();
        testStepFailed("Failed in verify Insurance Tile in My Relations Page. Exception: "+e.getClass());
    }
}



    public void verifyCardTileDetailsInMyRelationPageUsingAccountNumber(String accNum,String labelNames,String nudgeText,String extra) {
        try {
//            String tilePolicyNo="Card Number "+accNum+" in Card Tile#xpath=//div[@id='Cards']//*[normalize-space(text())='"+accNum.trim()+"']";
            String tilePolicyNo="Card Number "+accNum+" in Card Tile#xpath=//div[@id='Cards']//*[normalize-space(text())='"+accNum.trim()+"']";
            if (isElementPresent(tilePolicyNo)) {
                String[] split = labelNames.split(", ");
                String tile = "Card Number in Tile " + accNum + "#xpath=" + getCommonPathOfLocator(tilePolicyNo) + "/ancestor::div[@class='deposit_found_data']";
                String commonPathOfLocator = getCommonPathOfLocator(tile);
                String number = split[0].trim();
                String amount = split[1].trim();
                String tilePolicyNumberLabel = "Available Loan Limit Label in Card Tile " + accNum + "#xpath=" + commonPathOfLocator + "//*[normalize-space(text())='"+ number +"']";
                String tilePolicyNumberValue = "Available Loan Limit Value in card Tile " + accNum + "#xpath=" + commonPathOfLocator + "//*[normalize-space(text())='"+ number +"']/following-sibling::strong";
                String tilePremiumAmountLabel = "Total Loan Limit Label in Insurance Tile " + accNum + "#xpath=" + commonPathOfLocator + "//*[normalize-space(text())='"+amount+"']";
                String tilePremiumAmountValue = "Total Loan Limit Value in Insurance Tile " + accNum + "#xpath=" + commonPathOfLocator + "//*[normalize-space(text())='"+amount+"']/following-sibling::strong";
                String tileName = "Card Name in Card Tile " + accNum + "#xpath=" + commonPathOfLocator + "//div[@class='deposit_name']/div[@class='fixed_text']/strong";
                String tileViewDetailsIcon = "View Details Icon in Card Tile " + accNum + "#xpath=" + commonPathOfLocator + "//div[@class='deposit_name']/img";
                String tileNudgeText = nudgeText+" Nudge Text in Card Tile " + accNum + "#xpath=" + commonPathOfLocator + "//div[@class='deposit_name']/span[normalize-space(text())='"+nudgeText.trim()+"']";
                verifyFieldsDisplayedUsingLocatorWithScroll(tilePolicyNumberLabel);
                verifyFieldsDisplayedUsingLocatorWithScroll(tilePolicyNumberValue);
                verifyFieldsDisplayedUsingLocatorWithScroll(tilePremiumAmountLabel);
                verifyFieldsDisplayedUsingLocatorWithScroll(tilePremiumAmountValue);
                verifyFieldsDisplayedUsingLocatorWithScroll(tileName);
                verifyFieldsDisplayedUsingLocatorWithScroll(tileViewDetailsIcon);
                if (!nudgeText.isEmpty()) {
                    verifyFieldsDisplayedUsingLocatorWithScroll(tileNudgeText);
                }
            } else {
                testStepFailed(accNum+" Card Number is not available in Crads Tab Tiles.");
            }


        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Card Tile in My Relations Page Using Account Number. Exception: "+e.getClass());
        }
    }

}
