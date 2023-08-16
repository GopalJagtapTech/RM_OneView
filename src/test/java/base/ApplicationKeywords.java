package base;

import io.cucumber.java.Scenario;


import AppHooks.ApplicationHooks;
import PageObjects.FDServicesPage;
import PageObjects.HomePage;
import PageObjects.LoginPage;
import TestData.GOR;
import com.aventstack.extentreports.Status;
import com.aventstack.extentreports.cucumber.adapter.ExtentCucumberAdapter;
import com.aventstack.extentreports.markuputils.ExtentColor;
import com.aventstack.extentreports.markuputils.MarkupHelper;
import io.cucumber.plugin.event.PickleStepTestStep;
import io.cucumber.plugin.event.TestCase;
import io.restassured.RestAssured;
import io.restassured.response.Response;
import io.restassured.response.ResponseBody;
import io.restassured.specification.RequestSpecification;
import org.apache.commons.io.FileUtils;
import org.apache.commons.validator.GenericValidator;
import org.assertj.core.api.SoftAssertions;
import org.junit.Assert;
import org.openqa.selenium.NoSuchElementException;
import org.openqa.selenium.*;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.edge.EdgeDriver;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.remote.DesiredCapabilities;
import org.openqa.selenium.support.Color;
import org.openqa.selenium.support.ui.*;

import java.io.*;
import java.lang.reflect.Field;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.time.Duration;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.*;
import java.util.concurrent.TimeUnit;
import java.util.stream.Collectors;

import org.openqa.selenium.OutputType;
//import io.cucumber.java.Status;

import java.util.ArrayList;
import java.util.List;

import io.cucumber.core.backend.TestCaseState;


public class ApplicationKeywords extends ApplicationXpaths {
    public static WebDriver driver;
    public static WebDriverWait wait;
    public static String strProjectLoc;
    public static Boolean asser = false;
    public static Boolean quitBrowser = false;
    public static boolean newFile = false;
    public static boolean newFileCreated = false;
    public static File notePad;

    public static boolean coachMark = false;
    public static String mobileNumber;

    public static RequestSpecification request;
    public static Response response;

    public static String scenarioName;
    public static Scenario scenario;

    public static String scenarioStepsToRepro;
    public static String failedStepsToRepro;

    public static StringBuilder failedStepsInScenario = new StringBuilder();
    ;


    /**
     * Base Class Methods
     */


    public void launch_browser() {
        //   rewritePropertyFile();
        Properties prop = new Properties();

        InputStream input;
        quitBrowser = false;
        coachMark = false;
        asser = false;
        GOR.countScenario = 0;
        try {
//            String s = DateTimeFormatter.ofPattern("d-MMM-YY-HH-mm-ss").format(LocalDateTime.now().minusSeconds(3));
//            testStepPassed(s);
            strProjectLoc = System.getProperty("user.dir");
            System.out.println(strProjectLoc + "src" + File.separator + "main" + File.separator + "resources" + File.separator + "config" + File.separator + "config.properties");
            input = new FileInputStream(strProjectLoc + File.separator + "src" + File.separator + "main" + File.separator + "resources" + File.separator + "config" + File.separator + "config.properties");
            prop.load(input);
//            deleteAllFilesInInternalDownloadsFolder();
        } catch (FileNotFoundException e) {
        } catch (IOException e) {
        }
        // rewritePropertyFile();
        String strBrowser = prop.getProperty("browser.name");
        String URL = prop.getProperty("App.url");
        putLocator();
        GOR.login = true;
        if (strBrowser.equals("GC")) {
            String chromeDriverLocation = strProjectLoc + "/Drivers/chromedriver.exe";
            System.setProperty("webdriver.chrome.driver", chromeDriverLocation);
            DesiredCapabilities cap = DesiredCapabilities.chrome();
            ChromeOptions options = new ChromeOptions();
//            options.setExperimentalOption("debuggerAddress","localhost:5359");//need comment before execution

            Map<String, Object> prefs = new HashMap<>();
            Map<String, Object> content_setting = new HashMap<>();
            content_setting.put("multiple-automatic-downloads", 1);
            prefs.put("download.prompt_for_download", "false");
            prefs.put("profile.default_content_settings", content_setting);
            prefs.put("download.default_directory", System.getProperty("user.dir") + "\\Downloads\\");
            options.setExperimentalOption("prefs", prefs);
            cap.setCapability(ChromeOptions.CAPABILITY, options);

            driver = new ChromeDriver(options);
            wait = new WebDriverWait(driver, 30);

            driver.manage().timeouts().implicitlyWait(15, TimeUnit.SECONDS);
            driver.manage().window().maximize();
            ApplicationHooks.scena.log("Browser Launched Successfully");
//            driver.get(URL);
        }

        if (strBrowser.equals("ME")) {
            String MEDriverLocation = strProjectLoc + "/Drivers/msedgedriver.exe";
            System.setProperty("webdriver.edge.driver", MEDriverLocation);
            driver = new EdgeDriver();
            wait = new WebDriverWait(driver, 30);
            driver.manage().timeouts().implicitlyWait(15, TimeUnit.SECONDS);
            driver.manage().window().maximize();
//            driver.get(URL);
        }

    }

    private static void takeScreenShot() {
        try {
            File src = ((TakesScreenshot) driver).getScreenshotAs(OutputType.FILE);
            byte[] fileContent = FileUtils.readFileToByteArray(src);
            ApplicationHooks.scena.attach(fileContent, "image/png", "");
//            ApplicationHooks.scena.attach(((TakesScreenshot) driver).getScreenshotAs(OutputType.BYTES), "image/png", ApplicationHooks.scena.getName());
        } catch (Exception e) {
            e.printStackTrace();
            stepFailed("Take screen shot failed. Exception: " + e.getClass());
        }

    }


    public void testStepPassed(String Content) {
        try {
            String markup = MarkupHelper.createLabel(Content, ExtentColor.GREEN).getMarkup();
            ApplicationHooks.scena.log(" - " + markup);
        } catch (Exception e) {
            e.printStackTrace();
            stepFailed("Failed in Test Step Passed. Exception: " + e.getClass());
        }

    }

    public void testStepInfo(String Content) {
        try {
            String markup = MarkupHelper.createLabel(Content, ExtentColor.BLUE).getMarkup();
            ApplicationHooks.scena.log(" - " + markup);
        } catch (Exception e) {
            e.printStackTrace();
            stepFailed("Failed in Test Step Info. Exception: " + e.getClass());
        }
    }

    public void testStepAction(String Content) {
        try {
            String markup = MarkupHelper.createLabel(Content, ExtentColor.BLUE).getMarkup();
            ApplicationHooks.scena.log(markup);
        } catch (Exception e) {
            e.printStackTrace();
            stepFailed("Failed in Test Step Action Failed. Exception: " + e.getClass());
        }
    }

    public void manualScreenshot(String Content) {
        try {
            String markup = MarkupHelper.createLabel(Content, ExtentColor.GREEN).getMarkup();
            ApplicationHooks.scena.log(" - " + markup);
            takeScreenShot();
        } catch (Exception e) {
            e.printStackTrace();
            stepFailed("Failed in Manual screen shot. Exception: " + e.getClass());
        }
    }

    public void testStepScreenShot(String Content) {
        try {
            String markup = MarkupHelper.createLabel(Content, ExtentColor.BLUE).getMarkup();
            ApplicationHooks.scena.log(markup);
            takeScreenShot();
        } catch (Exception e) {
            e.printStackTrace();
            stepFailed("Failed in testStep screen shot. Exception: " + e.getClass());
        }
    }

    public static void assertFail() {
        asser = true;
//        logBuginAzure();
    }

    public static void testStepFailed(String Content) {
        try {
            stepFailed(Content);
//            String markup = MarkupHelper.createLabel(Content, ExtentColor.RED).getMarkup();
//            ExtentCucumberAdapter.getCurrentStep().log(Status.FAIL, " - " + markup);
//            if (newFile) {
//                FileWriter fr = new FileWriter(notePad, true);
//                BufferedWriter br = new BufferedWriter(fr);
//                br.write(Content);
//                br.write("------------>");
//                br.write(ApplicationHooks.scena.getName());
//                br.write(ApplicationHooks.scena.getLine());
//                br.write("\r\n");
//                br.write("\r\n");
//                br.close();
//                fr.close();
//            }
//            System.err.println(Content);
            takeScreenShot();
//            assertFail();
        } catch (Exception e) {
            e.printStackTrace();
            stepFailed("Failed in Test step failed. Exception: " + e.getClass());
        }

    }


    public static void stepFailed(String Content) {
        try {
            String markup = MarkupHelper.createLabel(Content, ExtentColor.RED).getMarkup();
            ExtentCucumberAdapter.getCurrentStep().log(Status.FAIL, " - " + markup);
            if (newFile) {
                newFileCreated = true;
                FileWriter fr = new FileWriter(notePad, true);
                BufferedWriter br = new BufferedWriter(fr);
                br.write(Content);
                br.write("------------>  ");
                br.write(ApplicationHooks.scena.getName());
                br.write(ApplicationHooks.scena.getLine());
                br.write("\r\n");
                br.write("\r\n");
                br.close();
                fr.close();
            }
            System.err.println(Content);
            failedStepsInScenario.append(Content).append("\r\n");
            assertFail();
        } catch (Exception e) {
            e.printStackTrace();
            System.err.println(Content);
        }
    }

    public void waitForPageToLoad() {
        try {
            testStepInfo("Wait for Page Loading...");
            JavascriptExecutor js = (JavascriptExecutor) driver;
            for (int i = 0; i < 20000; i++) {
                String status = js.executeScript("return document.readyState").toString();
                if (status.equalsIgnoreCase("complete")) {
                    Thread.sleep(1000);
                    break;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in Wait For Page To Load. Exception: " + e.getClass());
        }
    }

    public void stopPageLoading() {
        try {
            waitTime(2);
            JavascriptExecutor js = (JavascriptExecutor) driver;
            js.executeScript("window.stop();");
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Wait For Page To Load Failed. Exception: " + e.getClass());
        }
    }

    public void transferControlToWindow(int index, boolean closeAllWindow) {
        try {
            waitForPageToLoad();
            Set<String> AllHandles = driver.getWindowHandles();
            List<String> HandlesToList = new ArrayList<String>();
            HandlesToList.addAll(AllHandles);
            int windows = HandlesToList.size();
            if (windows >= 2) {
                if (index == 1 || index == 2) {
                    for (int iterBrowWind = (HandlesToList.size() - 1); iterBrowWind > (index - 1); iterBrowWind--) {
                        driver.switchTo().window(HandlesToList.get(iterBrowWind));
                        if (closeAllWindow) {
                            driver.close();
                        }
                    }
                    driver.switchTo().window(HandlesToList.get(index - 1));
                } else if (index <= HandlesToList.size()) {

                    driver.switchTo().window(HandlesToList.get(index - 1));
                    if (closeAllWindow) {
                        driver.close();
                    }
                }
            } else {
                driver.switchTo().window(HandlesToList.get(0));
                if (index >= 2) {
                    testStepFailed("The given window \"" + index + "\" is failed to open");
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in Transfer Control To Window " + index + ". Exception: " + e.getClass());
        }
    }


    public void scrollToWebElement(String objectLocator) {
        try {
            WebElement element = findWebElement(objectLocator);
            String scrollElementIntoMiddle = "var viewPortHeight = Math.max(document.documentElement.clientHeight, window.innerHeight || 0);"
                    + "var elementTop = arguments[0].getBoundingClientRect().top;"
                    + "window.scrollBy(0, elementTop-(viewPortHeight/2));";
            ((JavascriptExecutor) driver).executeScript(scrollElementIntoMiddle, element);
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in scroll To WebElement for " + getRefOfXpath(objectLocator) + ". Exception: " + e.getClass());
        }
    }

    public Boolean scrollToWebElementIfPresent(String objectLocator) {
        Boolean flag = false;
        try {
            if (isElementPresent(objectLocator)) {
                flag = true;
//                if (!isElementDisplayed(objectLocator)) {
                WebElement element = findWebElement(objectLocator);
                String scrollElementIntoMiddle = "var viewPortHeight = Math.max(document.documentElement.clientHeight, window.innerHeight || 0);"
                        + "var elementTop = arguments[0].getBoundingClientRect().top;"
                        + "window.scrollBy(0, elementTop-(viewPortHeight/2));";
                ((JavascriptExecutor) driver).executeScript(scrollElementIntoMiddle, element);
//                }
            } else {
                testStepFailed(getRefOfXpath(objectLocator) + " is Not Present");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in scroll To WebElement If Present for " + getRefOfXpath(objectLocator) + ". Exception: " + e.getClass());
        }
        return flag;
    }

    public static WebElement findWebElement(String locator) {
        WebElement element = driver.findElement(By.xpath(locator.split("#xpath=")[1]));
        return element;
    }

    public int sizeOfLocator(String locator) {
        int n = 0;
        try {
            n = findWebElementsForSize(locator);
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in size of Locator " + getRefOfXpath(locator) + ". Exception: " + e.getClass());
        } finally {
            return n;
        }
    }


    public static List<WebElement> findWebElements(String locator) {
        List<WebElement> elements = null;
        try {
            if (isElementPresent(locator)) {
                elements = driver.findElements(By.xpath(locator.split("#xpath=")[1]));
            } else {
                testStepFailed(getRefOfXpath(locator) + " is Not Present in findElements");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in find Web Elements " + locator.split("#")[0] + ". Exception: " + e.getClass());
        }
        return elements;
    }

    public static int findWebElementsForSize(String locator) {
        int n = 0;
        try {
            if (isElementPresent(locator)) {
                List<WebElement> elements = driver.findElements(By.xpath(locator.split("#xpath=")[1]));
                n = elements.size();
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in find Web Elements for size " + locator.split("#")[0] + ". Exception: " + e.getClass());
        }
        return n;
    }


    public void untilElementVisible(String locator, int timeout) {
        try {
            WebElement element = findWebElement(locator);
            WebDriverWait wait = new WebDriverWait(driver, timeout);
            wait.until(ExpectedConditions.visibilityOf(element));
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in Until Element Visible to " + locator.split("#")[0] + " for " + timeout + ". Exception: " + e.getClass());
        }
    }

    public String getCurrentNodeUsername() {
        String machineUsername = null;
        try {
            machineUsername = System.getProperty("user.name");
            System.out.println(
                    "Getting current node's username to verify the exported file in 'C:/Users/[username]/Downloads' folder. Current node's username = "
                            + machineUsername);
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in Get Current Node Username. Exception: " + e.getClass());
        }
        return machineUsername;
    }

    public File getLatestFilefromDir(String dirPath) {
        File lastModifiedFile = null;
        try {
            File dir = new File(dirPath);
            File[] files = dir.listFiles();
            if (files == null || files.length == 0) {
                return null;
            }
            lastModifiedFile = files[0];
            for (int i = 1; i < files.length; i++) {
                if (lastModifiedFile.lastModified() < files[i].lastModified()) {
                    lastModifiedFile = files[i];
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Get Latest File from Directory Failed. Exception: " + e.getClass());
        }
        return lastModifiedFile;
    }

    public static File getStaticLatestFilefromDir(String dirPath) {
        File lastModifiedFile = null;
        try {
            File dir = new File(dirPath);
            File[] files = dir.listFiles();
            if (files == null || files.length == 0) {
                return null;
            }
            lastModifiedFile = files[0];
            for (int i = 1; i < files.length; i++) {
                if (lastModifiedFile.lastModified() < files[i].lastModified()) {
                    lastModifiedFile = files[i];
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Get Latest File from Directory Failed. Exception: " + e.getClass());
        }
        return lastModifiedFile;
    }


    public String getLatestFileFromLocalMachine(String file_Name) {
        boolean flag = false;
        String downloadedFileName = null;
        try {
            String currentNodeUsername = getCurrentNodeUsername();
//            File dir = new File("C:\\Users\\" + currentNodeUsername + "\\Downloads");
            File dir = new File(System.getProperty("user.dir") + "\\Downloads");
            for (int i = 0; i <= 15; i++) {
                String path = dir.getAbsolutePath();
                File getLatestFile = getLatestFilefromDir(path);
                downloadedFileName = getLatestFile.getName();
                if (downloadedFileName.equals(file_Name)) {
                    testStepPassed("Successfully '" + downloadedFileName + "' file is downloaded.");
                    flag = true;
                    break;
                }
                Thread.sleep(2000);
            }
            if (!flag) {
                testStepFailed(file_Name + " file is not downloaded.");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Get Latest File From Local Machine Failed. Exception: " + e.getClass());
        }
        return downloadedFileName;

    }

    public void deleteFileFromLocalMachine(String fileName) {
        boolean flag = false;
        try {
            String currentNodeUsername = getCurrentNodeUsername();
//            File file = new File("C:\\Users\\" + currentNodeUsername + "\\Downloads\\" + fileName);
            File file = new File(System.getProperty("user.dir") + "\\Downloads\\" + fileName);
            for (int i = 0; i <= 5; i++) {
                if (file.exists()) {
                    if (file.delete()) {
                        System.out.println("Downloaded file is successfully deleted. " + fileName);
                        flag = true;
                        break;
                    }
                }
                waitTime(1);
            }
            if (!flag) {
                System.out.println("Downloaded file is not deleted. " + fileName);
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Delete File From Local Machine Failed. Exception: " + e.getClass());
        }
    }

    public static void waitTime(int seconds) {
        try {
            long millis = TimeUnit.SECONDS.toMillis(seconds);
            System.out.println("Waiting... " + seconds + " seconds");
            Thread.sleep(millis);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void verifyDownLoadAndDeleteLatestFileNameFromLocalMachine(String file_Name) {
        try {
            getLatestFileFromLocalMachine(file_Name);
            waitTime(10);
            deleteFileFromLocalMachine(file_Name);
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("verify DownLoad And Delete Latest File From Local Machine Failed. Exception: " + e.getClass());
        }
    }

    public static boolean isElementDisplayed(String locator, int timeOut) {
        boolean flag = false;
        try {
            driver.manage().timeouts().implicitlyWait(timeOut, TimeUnit.SECONDS);
            flag = findWebElement(locator).isDisplayed();
        } catch (Exception e) {
            testStepFailed(locator.split("#")[0] + " Is Element Displayed with Time Failed. Exception: " + e.getClass());
        }
        return flag;
    }

    public static boolean isElementDisplayed(String locator) {
        boolean flag = false;
        try {
            if (isElementPresent(locator)) {
                if (findWebElement(locator).isDisplayed()) {
                    flag = true;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed(locator.split("#")[0] + " Is Element Displayed Failed. Exception: " + e.getClass());
        }
        return flag;
    }

    public boolean verifyRadiobuttonIsEnabledUsingText(String labelName) {
        boolean flag = false;
        try {
            String radiobutton = labelName + "#xpath=//label[contains(text(),'" + labelName + "')]/..//input";
            WebElement objElement = findWebElement(radiobutton);
            scrollToWebElement(radiobutton);
            if (objElement.isEnabled()) {
                manualScreenshot(labelName + "  is able to selected Successfully");
                flag = true;
            } else {
                testStepFailed(labelName + "  is  Not Enabled");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("verify Radiobutton Is Enabled using Text Failed " + labelName + ". Exception: " + e.getClass());
        }
        return flag;
    }

    public boolean verifyRadiobuttonIsDisabledUsingText(String labelName) {
        boolean flag = false;
        try {
            String radiobutton = labelName + "#xpath=//label[contains(text(),'" + labelName + "')]/..//input";
            WebElement objElement = findWebElement(radiobutton);
            scrollToWebElement(radiobutton);
            if (!objElement.isEnabled()) {
                manualScreenshot(labelName + "  is Disabled Successfully");
                flag = true;
            } else {
                testStepFailed(labelName + "  is  Not Disabled");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("verify Radiobutton Is Disabled  using Text Failed " + labelName + ". Exception: " + e.getClass());
        }
        return flag;
    }

    public boolean verifyRadiobuttonIsEnabledUsingLocator(String locator) {
        boolean flag = false;
        try {
            scrollToWebElement(locator);
            WebElement objElement = findWebElement(locator);
            if (objElement.isEnabled()) {
                manualScreenshot(locator.split("#")[0] + "  is able to selected successfully");
                flag = true;
            } else {
                testStepFailed(locator.split("#")[0] + "  is  Not Enabled");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("verify Radiobutton Is Enabled using Locator Failed " + getRefOfXpath(locator) + ". Exception: " + e.getClass());
        }
        return flag;
    }

    public boolean verifyRadiobuttonIsDisabledUsingLocator(String locator) {
        boolean flag = false;
        try {
            scrollToWebElement(locator);
            WebElement objElement = findWebElement(locator);
            if (!objElement.isEnabled()) {
                manualScreenshot(locator.split("#")[0] + "  is Disabled successfully");
                flag = true;
            } else {
                testStepFailed(locator.split("#")[0] + "  is  Not Disabled");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("verify Radiobutton Is Disabled using Locator Failed for " + locator + ". Exception: " + e.getClass());
        }
        return flag;
    }

    public void verifyLocatorColor(String objectLocator, String expectedColorHexValue) {
        try {
            Boolean flag = scrollToWebElementIfPresent(objectLocator);
            if (isElementDisplayed(objectLocator)) {
                manualScreenshot(objectLocator.split("#")[0] + " is Displayed Successfully");
                String color = findWebElement(objectLocator).getCssValue("background-color");
                String hex = Color.fromString(color).asHex();
                if (hex.equals(expectedColorHexValue)) {
                    manualScreenshot(objectLocator.split("#")[0] + " - Expected Color Verified Successfully");
                } else {
                    testStepFailed(objectLocator.split("#")[0] + " - Expected Color is Not Verified");
                }
            } else {
                testStepFailed(objectLocator.split("#")[0] + " is Not Displayed Successfully");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("verify Element Color Failed " + getRefOfXpath(objectLocator) + ". Exception: " + e.getClass());
        }
    }


    public void verifyFieldsDisplayedUsingText(String fieldText) {
        try {
            String field = "";
            if (fieldText.equalsIgnoreCase("Date Of Birth")) {
                field = "" + fieldText + "#xpath=//a[normalize-space(text())='" + fieldText.trim()
                        + "']|//*[@placeholder='" + fieldText.trim() + "']|//input[@value='" + fieldText.trim() + "']";
            } else {
                field = "" + fieldText + "#xpath=//*[normalize-space(text())='" + fieldText.trim()
                        + "']|//*[@placeholder='" + fieldText.trim() + "']|//input[@value='" + fieldText.trim() + "']";
            }

            Boolean flag = scrollToWebElementIfPresent(field);
            if (flag) {
                if (isElementDisplayed(field)) {
                    testStepPassed(fieldText + " is Verified Successfully");
                } else {
                    testStepFailed(fieldText + " is Not Verified");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Fields Displayed Using Text " + fieldText + ". Exception: " + e.getClass());
        }
    }

    public Boolean verifyFieldsDisplayedUsingLocatorWithScroll(String locator) {
        Boolean flag = false;
        try {
            Boolean flag1 = scrollToWebElementIfPresent(locator);
            if (flag1) {
                if (isElementDisplayed(locator)) {
                    flag = true;
                    testStepPassed(locator.split("#")[0] + " is Verified Successfully");
                } else {
                    testStepFailed(locator.split("#")[0] + " is Not Verified");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Fields Displayed Using Locator with scroll " + getRefOfXpath(locator) + ". Exception: " + e.getClass());
        }
        return flag;
    }

    public boolean verifyFieldsDisplayedUsingLocator(String locator) {
        boolean flag = false;
        try {
            if (isElementDisplayed(locator)) {
                flag = true;
                testStepPassed(locator.split("#")[0] + " is Verified Successfully");
            } else {
                testStepFailed(locator.split("#")[0] + " is Not Verified");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Fields Displayed Using Locator " + getRefOfXpath(locator) + ". Exception: " + e.getClass());
        }
        return flag;
    }

    public Select createSelectRef(String element) {
        Select select = null;
        try {
            select = new Select(findWebElement(element));
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in Create select ref " + getRefOfXpath(element) + ". Exceptioon:" + e.getClass());
        }
        return select;
    }

    public static boolean isElementPresent(String locator) {
        boolean flag = driver.findElements(By.xpath(locator.split("#xpath=")[1])).size() > 0;
        return flag;
    }

    public void deleteFileIfPresentFromLocalMachineWithoutFail(String fileName) {

        try {
            String currentNodeUsername = getCurrentNodeUsername();
//            File file = new File("C:\\Users\\" + currentNodeUsername + "\\Downloads\\" + fileName);
            File file = new File(System.getProperty("user.dir") + "\\Downloads\\" + fileName);
            for (int i = 0; i <= 5; i++) {
                if (file.exists()) {
                    if (file.delete()) {
                        System.out.println("Already Existing Downloaded file is successfully deleted Before download. " + fileName);
                        break;
                    }
                }
                waitTime(1);
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in Delete File if present From Local Machine without fail. Exception: " + e.getClass());
        }
    }


    public boolean clickOnIfDisplayed(String locator) {
        boolean flag = false;
        try {
            boolean flag1 = scrollToWebElementIfPresent(locator);
            if (flag1) {
                if (isElementDisplayed(locator)) {
                    clickOn(locator);
                    flag = true;
                    waitForPageToLoad();
                    waitTime(2);
                    testStepPassed(locator.split("#")[0] + " is Displayed and Clicked Successfully");
                } else {
                    testStepFailed(locator.split("#")[0] + " is Not Displayed");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in Click On If Displayed " + getRefOfXpath(locator) + ". Exception: " + e.getClass());
        }
        return flag;
    }

    public boolean clickOnIfPresent(String locator) {
        Boolean flag = false;
        try {
            if (isElementPresent(locator)) {
                scrollToWebElement(locator);
                clickOn(locator);
                waitForPageToLoad();
                testStepPassed(locator.split("#")[0] + " is Present and Clicked Successfully");
                flag = true;
            } else {
                testStepFailed(locator.split("#")[0] + " is Not Present");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in Click On If Present " + getRefOfXpath(locator) + ". Exception: " + e.getClass());
        }
        return flag;
    }

    public void clickOn(String objLocator) {
        try {
            JavascriptExecutor js = (JavascriptExecutor) driver;
            js.executeScript("arguments[0].click();", findWebElement(objLocator));
//            findWebElement(objLocator).click();
            testStepAction("Click On: " + objLocator.split("#")[0]);
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in Click On " + getRefOfXpath(objLocator) + ". Exception: " + e.getClass());
        }
    }

    public void verifyTextBoxIsDisabledUsingLocator(String locator) {
        try {
            String disabled_txtBox_PartPrePayment = "" + getRefOfXpath(locator) + "#xpath=" + getCommonPathOfLocator(locator) + "[@disabled]|" + getCommonPathOfLocator(locator) + "[@readonly]";
            if (isElementDisplayed(disabled_txtBox_PartPrePayment)) {
                manualScreenshot(getRefOfXpath(locator) + " is Non Editable (OR) Disabled successfully");
            } else {
                testStepFailed(getRefOfXpath(locator) + " is not Disabled (OR) Editable");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify text box is Disabled using Locator " + getRefOfXpath(locator) + ". Exception: " + e.getClass());
        }
    }

    public void verifyTextBoxIsEditabledUsingLocator(String locator) {
        try {
            String disabled_txtBox_PartPrePayment = "" + getRefOfXpath(locator) + "#xpath=" + getCommonPathOfLocator(locator) + "[not(@disabled)]|" + getCommonPathOfLocator(locator) + "[not(@readonly)]";
            if (isElementDisplayed(disabled_txtBox_PartPrePayment)) {
                manualScreenshot(getRefOfXpath(locator) + " is Editable verified successfully");
            } else {
                testStepFailed(getRefOfXpath(locator) + " is not Editable");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify text box is Editable using Locator " + getRefOfXpath(locator) + ". Exception: " + e.getClass());
        }
    }

    public void verifyGetAllOptionsInDropDownAndCompare(String selectLocator, String splitText) {
        try {
            Select select = createSelectRef(selectLocator);
            scrollToWebElement(selectLocator);
            if (isElementDisplayed(selectLocator)) {
                clickOn(selectLocator);
                String[] dropdownOptions = splitText.split("#");
                manualScreenshot("");
                for (int i = 0; i < dropdownOptions.length; i++) {
                    String opt = dropdownOptions[i];
                    List<WebElement> allOptions = select.getOptions();
                    Boolean stat = false;
                    for (int j = 0; j < allOptions.size(); j++) {
                        String optionText = allOptions.get(j).getText().trim();
                        if (optionText.toLowerCase().equals(opt.toLowerCase().trim())) {
                            stat = true;
                        }
                    }
                    if (stat) {
                        testStepPassed(opt + " is Present in Dropdown successfully " + selectLocator.split("#")[0]);
                    } else {
                        testStepFailed(opt + " is Not Present in Dropdown " + selectLocator.split("#")[0]);
                    }

                }
                clickOn(selectLocator);
            } else {
                testStepFailed(selectLocator.split("#")[0] + " is Not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in Get All Options in Drop down " + selectLocator + ". Exception" + e.getClass());
        }

    }


    public void verifyDropDownOptionIsNotPresent(String selectLocator, String notContain) {

        try {
            Select select = createSelectRef(selectLocator);
            scrollToWebElement(selectLocator);
            if (isElementDisplayed(selectLocator)) {
                List<WebElement> options = select.getOptions();
                Boolean flag = false;
                for (WebElement webElement : options) {
                    if (!webElement.getText().trim().equalsIgnoreCase(notContain)) {
                        flag = true;
                    }
                }
                clickOn(selectLocator);
                waitTime(3);
                if (flag) {
                    manualScreenshot(notContain + " is Not Present successfully");
                } else {
                    testStepFailed(notContain + " is present Wrongly");
                }
                clickOn(selectLocator);
            } else {
                testStepFailed(selectLocator.split("#")[0] + " is Not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Drop Down Option Is Not Present " + getRefOfXpath(selectLocator) + ". Exception" + e.getClass());
        }
    }


    public List<WebElement> GetAllOptionsInDropDown(String selectLocator) {
        List<WebElement> options = new LinkedList<>();
        try {
            Select select = createSelectRef(selectLocator);
            scrollToWebElement(selectLocator);
            if (isElementDisplayed(selectLocator)) {
                clickOn(selectLocator);
                manualScreenshot("");
                options = select.getOptions();
            } else {
                testStepFailed(selectLocator.split("#")[0] + " is Not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in Get All Options in Drop down " + getRefOfXpath(selectLocator) + ". Exception" + e.getClass());
        }
        return options;
    }


    public void selectDropDownUsingText(String selectLocator, String text) {

        try {
            Select select = createSelectRef(selectLocator);
            scrollToWebElementIfPresent(selectLocator);
            if (isElementDisplayed(selectLocator)) {
                select.selectByVisibleText(text);
            } else {
                testStepFailed(selectLocator.split("#")[0] + " is Not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in select " + getRefOfXpath(selectLocator) + " DropDown Using Text as " + text + ". Exception : " + e.getClass());
        }
    }

    public String selectDropDownUsingIndex(String selectLocator, int index) {
        String value = " ";
        try {
            Select select = createSelectRef(selectLocator);
            scrollToWebElementIfPresent(selectLocator);
            if (isElementDisplayed(selectLocator)) {
                String loc = getRefOfXpath(selectLocator) + " : " + index + "#xpath=(" + getCommonPathOfLocator(selectLocator) + "/option)[" + (index + 1) + "]";
                value = getTextPresent(loc);
                testStepInfo(value);
                select.selectByIndex(index);
                waitTime(2);
            } else {
                testStepFailed(selectLocator.split("#")[0] + " is Not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed(getRefOfXpath(selectLocator) + " select DropDown Using Index as " + index + " Failed. Exception : " + e.getClass());
        }
        return value;
    }

    public void verifyDropDownOptionIsPresent(String selectLocator, String contain) {
        try {
            Select select = createSelectRef(selectLocator);
            scrollToWebElementIfPresent(selectLocator);
            if (isElementDisplayed(selectLocator)) {
                List<WebElement> options = select.getOptions();
                Boolean flag = false;
                for (WebElement webElement : options) {
                    if (webElement.getText().trim().equalsIgnoreCase(contain)) {
                        flag = true;
                    }
                }
                if (flag) {
                    testStepPassed(contain + " is Present in " + selectLocator.split("#")[0]);
                } else {
                    testStepFailed(contain + " is Not present in " + selectLocator.split("#")[0]);
                }
            } else {
                testStepFailed(selectLocator.split("#")[0] + " is Not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify " + getRefOfXpath(selectLocator) + " DropDown Option " + contain + " is present. Exception: " + e.getClass());
        }
    }

    public String getSelectedOptionInDropDown(String selectLocator, String verifySelectedText) {
        String returnValue = "";
        try {
            Select select = createSelectRef(selectLocator);
            scrollToWebElementIfPresent(selectLocator);
            if (isElementDisplayed(selectLocator)) {
                WebElement firstSelectedOption = select.getFirstSelectedOption();
                returnValue = firstSelectedOption.getText();

                if (returnValue.trim().equalsIgnoreCase(verifySelectedText)) {
                    manualScreenshot(verifySelectedText + " is  Selected verified successfully in " + selectLocator.split("#")[0]);
                } else {
                    testStepFailed(verifySelectedText + " is Not selected::Current selected Text"
                            + firstSelectedOption.getText() + " in " + selectLocator.split("#")[0]);
                }

            } else {
                testStepFailed(selectLocator.split("#")[0] + " is Not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in Get Selected Option " + verifySelectedText + " in " + getRefOfXpath(selectLocator) + " Drop down. Exception: " + e.getClass());
        }
        return returnValue;
    }


    public void typeIn(String objectLocator, String inputValue) {
        try {
//            if (isElementDisplayed(objectLocator)) {
            findWebElement(objectLocator).sendKeys(inputValue);
            testStepScreenShot(objectLocator.split("#")[0] + " Input Value is : " + inputValue);
//            } else {
//                testStepFailed(objectLocator.split("#")[0] + " is not Displayed and Type In Failed");
//            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in Type In " + getRefOfXpath(objectLocator) + " value as " + inputValue + ". Exception: " + e.getClass());
        }
    }

    public void typeInIfDisplayed(String objectLocator, String inputValue) {
        try {

            if (isElementDisplayed(objectLocator)) {
//                typeIn();
                findWebElement(objectLocator).sendKeys(inputValue);
                testStepScreenShot(objectLocator.split("#")[0] + " Input Value is : " + inputValue);
            } else {
                testStepFailed(objectLocator.split("#")[0] + " is not Displayed and Type In Failed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in Type In if displayed " + getRefOfXpath(objectLocator) + ". Exception: " + e.getClass());
        }
    }

    public void verifyTextboxAcceptValidDataOnly(String textBoxLocator, String value, int validNumber) {
        try {
            scrollToWebElementIfPresent(textBoxLocator);
            if (isElementDisplayed(textBoxLocator)) {
                typeInIfDisplayed(textBoxLocator, value);
                if (findWebElement(textBoxLocator).getAttribute("value").length() == validNumber) {
                    manualScreenshot("Only Accepted Valid " + validNumber + " digits successfully");
                } else {
                    testStepFailed("It Accepted more than " + validNumber + " values wrongly:: Accepted value is "
                            + findWebElement(textBoxLocator).getAttribute("value").length());
                }
            } else {
                testStepFailed(textBoxLocator.split("#")[0] + " is Not displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in " + getRefOfXpath(textBoxLocator) + " Text Box With More than valid data  .Exception: " + e.getClass());
        }
    }


    public Boolean verifyRedirectionURL(String Url) {
        Boolean flag = false;
        try {
            if (driver.getCurrentUrl().equals(Url)) {
                testStepPassed("Redirected URL verified successfully : " + Url);
                flag = true;
            } else {
                testStepFailed("Redirected URL is not Matched : " + driver.getCurrentUrl());
                testStepFailed("Expecte URL : " + Url);
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Redirection URL " + Url + ". Exception: " + e.getClass());
        }
        return flag;
    }

    public Boolean verifyRedirectionURLIfContains(String Url) {
        boolean flag = false;
        try {
//            waitForPageToLoad();
            if (driver.getCurrentUrl().contains(Url)) {
                manualScreenshot("Redirected URL verified successfully : " + Url);
                flag = true;
            } else {
                testStepFailed("Redirected URL is not Matched : " + driver.getCurrentUrl());
                testStepFailed("Expected URL : " + Url);
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Redirection URL contains " + Url + ". Exception: " + e.getClass());
        }
        return flag;
    }

    public Boolean verifyRedirectionWithCommonUrlContains(String Url) {
        boolean flag = false;
        try {
//            waitForPageToLoad();
            if (driver.getCurrentUrl().contains(GOR.BaseUrl + Url)) {
                manualScreenshot("Redirected URL verified successfully : " + GOR.BaseUrl + Url);
                flag = true;
            } else {
                testStepFailed("Redirected URL is not Matched : " + driver.getCurrentUrl().split("\\?")[0]);
                testStepFailed("Expected URL : " + GOR.BaseUrl + Url);
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Redirection URL contains " + GOR.BaseUrl + Url + ". Exception: " + e.getClass());
        }
        return flag;
    }


    public String getText(String objLocator) {
        String getText1 = "";
        try {
            if (isElementDisplayed(objLocator)) {
                getText1 = findWebElement(objLocator).getText();
            } else {
                testStepFailed(objLocator.split("#")[0] + " is Not Displayed. GetText");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Get Text Failed for " + getRefOfXpath(objLocator) + ". Exception" + e.getClass());
        }
        return getText1;
    }

    public String getTextPresent(String objLocator) {
        String getText1 = "";
        try {
            if (isElementPresent(objLocator)) {
                getText1 = findWebElement(objLocator).getText();
            } else {
                testStepFailed(objLocator.split("#")[0] + " is Not Present for Get Text");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in Get Text Present " + getRefOfXpath(objLocator) + ". Exception" + e.getClass());
        }
        return getText1;
    }


    public Boolean verifyRedirectionHeaderText(String headerText) {
        Boolean flag = false;
        headerText = headerText.trim();
        try {
            String txtHeader = "#xpath=//h2[normalize-space(text())='" + headerText
                    + "']|//h1[normalize-space(text())='" + headerText + "']|//h3[normalize-space(text())='"
                    + headerText + "']|//h4[normalize-space(text())='" + headerText + "']|//strong[normalize-space(text())='" + headerText + "']";
            if (isElementDisplayed(txtHeader)) {
                manualScreenshot(getText(txtHeader) + " : Redirected Header verified successfully");
                flag = true;
            } else {
                testStepFailed("Redirected Header is not Matched");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Redirection Header Text " + headerText + ". Exception: " + e.getClass());
        }
        return flag;
    }

    public void verifyMultipleElementIsDisplayedUsingTexts(String allOptions) {
        try {
            String[] split = allOptions.split(",");
            for (int i = 0; i < split.length; i++) {
                String text = split[i];
                String locator = "" + text + "#xpath=//*[normalize-space(text())='" + text.trim() + "']";
                scrollToWebElementIfPresent(locator);
                verifyFieldsDisplayedUsingLocator(locator);
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Multiple Element Is Displayed Using Text " + allOptions + ". Exception: " + e.getClass());
        }

    }

    public void verifyMultipleSecondElementIsDisplayedUsingTexts(String allOptions) {
        try {
            String[] split = allOptions.split(",");
            for (int i = 0; i < split.length; i++) {
                String text = split[i];
                String locator = "" + text + "#xpath=(//*[normalize-space(text())='" + text.trim() + "'])[2]";
                scrollToWebElementIfPresent(locator);
                verifyFieldsDisplayedUsingLocator(locator);
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Multiple second Element Is Displayed Using Text " + allOptions + ". Exception: " + e.getClass());
        }

    }

    public int getLocatorX_Position(String locator) {
        int x = 0;
        try {
            if (isElementPresent(locator)) {
                x = findWebElement(locator).getLocation().getX();
            } else {
                testStepFailed(locator.split("#")[0] + " is not present");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Get Locator X Position Failed " + getRefOfXpath(locator) + ". Exception: " + e.getClass());
        }
        return x;
    }

    public int getLocatorY_Position(String locator) {
        int y = 0;
        try {
            if (isElementPresent(locator)) {
                y = findWebElement(locator).getLocation().getY();
            } else {
                testStepFailed(locator.split("#")[0] + " is not present");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Get Locator Y Position Failed " + getRefOfXpath(locator) + ": Exception" + e.getClass());
        }
        return y;
    }

    public int getLocatorWidth(String locator) {
        int x = 0;
        try {
            if (isElementPresent(locator)) {
                x = findWebElement(locator).getSize().getWidth();
            } else {
                testStepFailed(locator.split("#")[0] + " is not present");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Get Locator Width Failed " + getRefOfXpath(locator) + ": Exception" + e.getClass());
        }
        return x;
    }

    public int getLocatorHeight(String locator) {
        int x = 0;
        try {
            if (isElementPresent(locator)) {
                x = findWebElement(locator).getSize().getHeight();
            } else {
                testStepFailed(locator.split("#")[0] + " is not present");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Get Locator Height Failed " + getRefOfXpath(locator) + ": Exception" + e.getClass());
        }
        return x;
    }


    public int getWindowWidth() {
        int width = 0;
        try {
            Dimension size = driver.manage().window().getSize();
            width = size.getWidth();
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Get Window Width Failed: Exception" + e.getClass());
        }
        return width;
    }

    public int getWindowHeight() {
        int height = 0;
        try {
            Dimension size = driver.manage().window().getSize();
            height = size.getHeight();
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Get Window Height Failed: Exception" + e.getClass());
        }
        return height;
    }

    public void verifyLocatorPresentInLeftSideOfAnotherLocator(String locator, String anotherLocator, int plusMinusValue) {
        try {
            int locator1X = getLocatorX_Position(locator);
            int locator1Y = getLocatorY_Position(locator);
            int locator1Width = getLocatorWidth(locator);
//		int locator1Height = getLocatorHeight(locator);

            int locator2X = getLocatorX_Position(anotherLocator);
            int locator2Y = getLocatorY_Position(anotherLocator);
//		int locator2Width = getLocatorWidth(anotherLocator);
//		int locator2Height = getLocatorHeight(anotherLocator);

//		int windowHeight = getWindowHeight();
//		int windowWidth = getWindowWidth();

            int pos1 = locator1X + locator1Width;
            int pos2 = locator2X - plusMinusValue;

            scrollToWebElementIfPresent(locator);
            if (locator1Y == locator2Y) {
                testStepPassed(locator.split("#")[0] + " and " + anotherLocator.split("#")[0] + " Y positions verified successfully");
            } else {
                testStepFailed(locator.split("#")[0] + " and " + anotherLocator.split("#")[0] + " Y positions verified successfully");
            }
            if (pos2 > pos1) {
                manualScreenshot(locator.split("#")[0] + " is Present on Left Side of " + anotherLocator.split("#")[0] + " is Verified Successfully");
            } else {
                testStepFailed(locator.split("#")[0] + " is Not Present on Left Side of " + anotherLocator.split("#")[0]);
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("verify Locator " + getRefOfXpath(locator) + " Present on Left Side Of Another Locator " + getRefOfXpath(anotherLocator) + " Failed . Exception: " + e.getClass());
        }

    }

    public void verifyLocatorPresentInRightSideOfAnotherLocator(String locator, String anotherLocator, int plusMinusValue) {
        try {
            int locator1X = getLocatorX_Position(locator);
            int locator1Y = getLocatorY_Position(locator);
            int locator1Width = getLocatorWidth(locator);
//		int locator1Height = getLocatorHeight(locator);

            int locator2X = getLocatorX_Position(anotherLocator);
            int locator2Y = getLocatorY_Position(anotherLocator);
            int locator2Width = getLocatorWidth(anotherLocator);
//		int locator2Height = getLocatorHeight(anotherLocator);

//		int windowHeight = getWindowHeight();
//		int windowWidth = getWindowWidth();

            int pos1 = locator2X + locator2Width;
            int pos2 = locator1X - plusMinusValue;

            scrollToWebElementIfPresent(locator);
            if (locator1Y == locator2Y) {
                testStepPassed(locator.split("#")[0] + " and " + anotherLocator.split("#")[0] + " Y positions verified successfully");
            } else {
                testStepFailed(locator.split("#")[0] + " and " + anotherLocator.split("#")[0] + " Y positions verified successfully");
            }
            if (pos2 < pos1) {
                manualScreenshot(locator.split("#")[0] + " is Present on Right Side of " + anotherLocator.split("#")[0] + " is Verified Successfully");
            } else {
                testStepFailed(locator.split("#")[0] + " is Not Present on Right Side of " + anotherLocator.split("#")[0]);
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("verify Locator " + getRefOfXpath(locator) + " Present In Right Side Of Another Locator " + getRefOfXpath(anotherLocator) + " Failed. Exception: " + e.getClass());
        }
    }

    public void verifyLocatorPresentInAboveOfAnotherLocator(String locator, String anotherLocator) {
        try {
            int locator1X = getLocatorX_Position(locator);
            int locator1Y = getLocatorY_Position(locator);
//            int locator1Width = getLocatorWidth(locator);
//            int locator1Height = getLocatorHeight(locator);

            int locator2X = getLocatorX_Position(anotherLocator);
            int locator2Y = getLocatorY_Position(anotherLocator);
//            int locator2Width = getLocatorWidth(anotherLocator);
//            int locator2Height = getLocatorHeight(anotherLocator);
//
//            int windowHeight = getWindowHeight();
            int windowWidth = getWindowWidth();

            scrollToWebElementIfPresent(locator);
//            if ((windowWidth / 2) > locator1X) {
            if (locator1X == locator2X) {
                manualScreenshot(locator.split("#")[0] + " and " + anotherLocator.split("#")[0] + " X positions is Verified Successfully");
            } else {
                testStepFailed(locator.split("#")[0] + " and " + anotherLocator.split("#")[0] + " X Positions are not verified");
            }
//            } else {
            if (locator1Y < locator2Y) {
                manualScreenshot(locator.split("#")[0] + " is Present Above the " + anotherLocator.split("#")[0] + " is Verified Successfully");
            } else {
                testStepFailed(locator.split("#")[0] + " is Not Present in Above of " + anotherLocator.split("#")[0]);
            }
//            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("verify Locator " + getRefOfXpath(locator) + " Present In Above Of Another Locator " + getRefOfXpath(anotherLocator) + " Failed. Exception: " + e.getClass());
        }
    }

    public void verifyLocatorPresentInAboveOfAnotherLocatorWithoutXposition(String locator, String anotherLocator) {
        try {
            int locator1X = getLocatorX_Position(locator);
            int locator1Y = getLocatorY_Position(locator);

            int locator2X = getLocatorX_Position(anotherLocator);
            int locator2Y = getLocatorY_Position(anotherLocator);
            int windowWidth = getWindowWidth();

            scrollToWebElementIfPresent(locator);

            if (locator1Y < locator2Y) {
                manualScreenshot(locator.split("#")[0] + " is Present Above the " + anotherLocator.split("#")[0] + " is Verified Successfully");
            } else {
                testStepFailed(locator.split("#")[0] + " is Not Present in Above of " + anotherLocator.split("#")[0]);
            }
//            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("verify Locator " + getRefOfXpath(locator) + " Present In Above Of Another Locator " + getRefOfXpath(anotherLocator) + " Failed without X pos. Exception: " + e.getClass());
        }
    }


    public void verifyLocatorPresentInBelowOfAnotherLocator(String locator, String anotherLocator) {
        try {
            int locator1X = getLocatorX_Position(locator);
            int locator1Y = getLocatorY_Position(locator);
            int locator1Width = getLocatorWidth(locator);
            int locator1Height = getLocatorHeight(locator);

            int locator2X = getLocatorX_Position(anotherLocator);
            int locator2Y = getLocatorY_Position(anotherLocator);
            int locator2Width = getLocatorWidth(anotherLocator);
            int locator2Height = getLocatorHeight(anotherLocator);

            int windowHeight = getWindowHeight();
            int windowWidth = getWindowWidth();

            scrollToWebElementIfPresent(locator);
//            if ((windowWidth / 2) > locator1X) {
            if (locator1X > locator2X) {
                manualScreenshot(locator.split("#")[0] + " and " + anotherLocator.split("#")[0] + " X Positions Verified is Verified Successfully");
            } else {
                testStepFailed(locator.split("#")[0] + " and " + anotherLocator.split("#")[0] + " X Positions are not verified");
            }
//            } else {
            if (locator1Y > locator2Y) {
                manualScreenshot(locator.split("#")[0] + " is Present Below the " + anotherLocator.split("#")[0] + " is Verified Successfully");
            } else {
                testStepFailed(locator.split("#")[0] + " is Not Present Below the " + anotherLocator.split("#")[0]);
            }
//            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("verify Locator " + getRefOfXpath(locator) + " Present In Below Of Another Locator " + getRefOfXpath(anotherLocator) + " Failed. Exception: " + e.getClass());
        }
    }

    public void verifyLocatorPresentInBelowOfAnotherLocatorWithoutXpos(String locator, String anotherLocator) {
        try {
            int locator1X = getLocatorX_Position(locator);
            int locator1Y = getLocatorY_Position(locator);
            int locator1Width = getLocatorWidth(locator);
            int locator1Height = getLocatorHeight(locator);

            int locator2X = getLocatorX_Position(anotherLocator);
            int locator2Y = getLocatorY_Position(anotherLocator);
            int locator2Width = getLocatorWidth(anotherLocator);
            int locator2Height = getLocatorHeight(anotherLocator);

            int windowHeight = getWindowHeight();
            int windowWidth = getWindowWidth();

            scrollToWebElementIfPresent(locator);
            if (locator1Y > locator2Y) {
                manualScreenshot(locator.split("#")[0] + " is Present Below the " + anotherLocator.split("#")[0] + " is Verified Successfully");
            } else {
                testStepFailed(locator.split("#")[0] + " is Not Present Below the " + anotherLocator.split("#")[0]);
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Locator " + getRefOfXpath(locator) + " Present In Below Of Another Locator " + getRefOfXpath(anotherLocator) + " Failed without Y pos. Exception: " + e.getClass());
        }
    }


    public void verifyLocatorIsPresentInRightSideOfPage(String locator) {
        try {
            int windowWidth = getWindowWidth();
            int locatorX_Position = getLocatorX_Position(locator);
            scrollToWebElement(locator);
            if (isElementPresent(locator)) {
                if ((windowWidth / 2) < locatorX_Position) {
                    manualScreenshot(locator.split("#")[0] + " is Present In Right side of the Page Verified Successfully");
                } else {
                    testStepFailed(locator.split("#")[0] + " is Not Present In Right side of the Page");
                }
            } else {
                stepFailed(locator.split("#")[0] + " is Not Present");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("verify Locator " + getRefOfXpath(locator) + " Is Present In Right Side Of Page Failed. Exception: " + e.getClass());
        }
    }


    public void verifyLocatorIsPresentInLeftSideOfPage(String locator) {
        try {
            int windowWidth = getWindowWidth();
            int locatorX_Position = getLocatorX_Position(locator);
            scrollToWebElement(locator);
            if (isElementPresent(locator)) {
                if ((windowWidth / 2) > locatorX_Position) {
                    manualScreenshot(locator.split("#")[0] + " is Present In Left side of the Page Verified Successfully");
                } else {
                    testStepFailed(locator.split("#")[0] + " is Not Present In Left side of the Page");
                }
            } else {
                stepFailed(locator.split("#")[0] + " is Not Present");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("verify Locator " + getRefOfXpath(locator) + " Is Present In Left Side Of Page Failed. Exception: " + e.getClass());
        }
    }

    public Boolean verifySSO_Redirection() {
        Boolean flag = false;
        try {
            Set<String> allWindows = driver.getWindowHandles();
            if (allWindows.size() == 1) {
                testStepPassed("SSO Redirection verified successfully");
                flag = true;
            } else {
                testStepFailed("SSO Redirection is not verified");
                stepFailed("Number of Windows Opened: " + allWindows.size());
                transferControlToWindow(2, false);
                manualScreenshot("New Window Url: " + driver.getCurrentUrl());
                transferControlToWindow(1, true);
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("verify SSO Redirection Failed. Exception: " + e.getClass());
        }
        return flag;
    }


    public String getTextUsingLocator(String locator) {
        String text = "";
        try {
            scrollToWebElementIfPresent(locator);
            if (isElementDisplayed(locator)) {
                text = getText(locator);
                if (text.equals("")) {
                    text = getAttributeValue(locator);
                }
                manualScreenshot(locator.split("#")[0] + " is Displayed Successfully.");
            } else {
                testStepFailed(locator.split("#")[0] + " is Not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Get Text Using Locator " + getRefOfXpath(locator) + " Failed. Exception: " + e.getClass());
        }
        return text;
    }


    public void verifyTextElementUsingOptionsTextUsingHash(String allOptionsText) {
        try {
            String[] options = allOptionsText.split("#");
            for (int i = 0; i < options.length; i++) {
                String option = options[i];
                String xpath = "" + option + "#xpath=//*[normalize-space(text())='" + option.trim() + "']";
                scrollToWebElementIfPresent(xpath);
                if (isElementDisplayed(xpath)) {
                    manualScreenshot(option + " is Displayed Successfully");
                } else {
                    testStepFailed(option + " is Not Displayed");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("verify Element Text Using # " + allOptionsText + " Failed. Exception: " + e.getClass());
        }
    }

    public void verifyLocatorAppeared(String locator, String commentPositive) {
        try {
            scrollToWebElementIfPresent(locator);
            if (isElementDisplayed(locator)) {
                manualScreenshot(commentPositive);
            } else {
                testStepFailed(locator.split("#")[0] + " is Not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("verify Locator " + getRefOfXpath(locator) + " Appeared Failed. Exception: " + e.getClass());
        }
    }

    public void verifyTextOptionsIsDisplayedUsingCommonXpath(String commonXpath, String AllOptions) {
        try {
            String[] options = AllOptions.split("#");
            for (int i = 0; i < options.length; i++) {
                String optionText = options[i];
                String locator = "" + optionText + "#xpath=" + commonXpath + "[normalize-space(text())='" + optionText.trim() + "']";
                scrollToWebElementIfPresent(locator);
                if (isElementDisplayed(locator)) {
                    manualScreenshot(optionText + " is Displayed Successfully");
                } else {
                    testStepFailed(optionText + " is Not Displayed");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("verify Text Options " + AllOptions + " Is Displayed Using Common Xpath Failed. Exception: " + e.getClass());
        }
    }

    public void verifyTextOptionsIsDisplayedUsingCommonXpathNew(String commonXpath, String optionText) {
        try {
            boolean flag = true;
            String locator1 = "" + optionText + "#xpath=" + commonXpath + "";
            if (isElementPresent(locator1)) {
                for (int j = 1; j <= 3; j++) {
                    String locatorSub = "" + optionText + " " + j + "#xpath=(" + commonXpath + ")[" + j + "]";
                    String s = textGet(locatorSub).toLowerCase().trim();
                    if (s.equalsIgnoreCase(optionText.trim())) {
                        flag = false;
                    }
                }
            }

            String locator = "" + optionText + "#xpath=" + commonXpath + "[normalize-space(text())='" + optionText.trim() + "']";
//                String subTitle=title+" subtitle in Relationship Details#xpath=//div[@class='Relationshipbox_title']//strong[normalize-space(text())='"+title.trim()+"']";
            if (flag && isElementPresent(locator) && isElementPresent(FDServicesPage.btn_NextSlider)) {
                clickOn(FDServicesPage.btn_NextSlider);
                clickIfOnlyDisplayed(FDServicesPage.btn_NextSlider);
            }
            scrollToWebElementIfPresent(locator);
            if (isElementDisplayed(locator)) {
                manualScreenshot(optionText + " is Displayed Successfully");
            } else {
                testStepFailed(optionText + " is Not Displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("verify Text Options " + optionText + " Is Displayed Using Common Xpath New Failed. Exception: " + e.getClass());
        }
    }


    public void verifyTextOptionsIsNotPresentUsingCommonXpath(String commonXpath, String AllOptions) {
        try {
            String[] options = AllOptions.split("#");
            for (int i = 0; i < options.length; i++) {
                String optionText = options[i];
                String locator = "" + optionText + "#xpath=" + commonXpath + "[normalize-space(text())='" + optionText.trim() + "']";

                if (!isElementPresent(locator)) {
                    manualScreenshot(optionText + " is not Present Successfully");
                } else {
                    testStepFailed(optionText + " is Present wrongly");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed(" Failed in verify Text Options " + AllOptions + " Is not Present Using Common Xpath. Exception: " + e.getClass());
        }
    }


    public String generateTodayDate(String format) {
        String todayDate = "";
        try {
            todayDate = LocalDate.now().format(DateTimeFormatter.ofPattern(format));
//		todayDate = LocalDate.now().format(DateTimeFormatter.ofPattern("E,MMMM,dd,yyyy")).toString();
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Generate Today Date. Exception: " + e.getClass());
        }
        return todayDate;
    }

    public List<String> getNumberOfDatesPlus(String format, int number) {
        List<String> dates = new LinkedList<>();
        try {
            for (int i = 1; i <= number; i++) {
                String f = LocalDate.now().plusMonths(i).format(DateTimeFormatter.ofPattern(format));
                dates.add(f);
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in get Number Of Dates Plus. Exception: " + e.getClass());
        }
        return dates;
    }

    public List<String> getNumberOfDatesMinus(String format, int number) {
        List<String> dates = new LinkedList<>();
        try {
            for (int i = 1; i <= number; i++) {
                String f = LocalDate.now().minusMonths(number).format(DateTimeFormatter.ofPattern(format));
                dates.add(f);
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in get Number Of Dates Minus. Exception: " + e.getClass());
        }
        return dates;
    }

    public String generateFutureDate(int daysFuture, String format) {
        String futureDate = "";
        try {
            futureDate = LocalDate.now().plusDays(daysFuture).format(DateTimeFormatter.ofPattern(format));
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Generate Future Date. Exception: " + e.getClass());
        }
        return futureDate;
    }


    public String generatePastYears(int yearPast, String format) {
        String pastDate = "";
        try {
            pastDate = LocalDate.now().minusYears(yearPast).format(DateTimeFormatter.ofPattern(format));
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Generate Past Years. Exception: " + e.getClass());
        }
        return pastDate;
    }

    public String generatePastDate(int daysPast, String format) {
        String pastDate = "";
        try {
            pastDate = LocalDate.now().minusDays(daysPast).format(DateTimeFormatter.ofPattern(format));
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Generate Past Date. Exception: " + e.getClass());
        }
        return pastDate;
    }

    public String generatePastMonths(int monthsPast, String format) {
        String pastDate = "";
        try {
            pastDate = LocalDate.now().minusMonths(monthsPast).format(DateTimeFormatter.ofPattern(format));
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Generate Past Month. Exception: " + e.getClass());
        }
        return pastDate;
    }

    public String generatePast18Years1Day(int yearPast, String format) {
        String pastDate = "";
        try {
            pastDate = LocalDate.now().minusYears(yearPast).plusDays(1).format(DateTimeFormatter.ofPattern(format));
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Generate Past Date. Exception: " + e.getClass());
        }
        return pastDate;
    }

    public void verifyIconAndIconTextDisplayed(String text) {
        try {
            String[] menus = text.split(",");
            for (int i = 0; i < menus.length; i++) {
                String subMenu = "" + menus[i] + "#xpath=//a[normalize-space()='" + menus[i].trim() + "']";
                String subMenuLogo = "" + menus[i] + " Logo#xpath=//a[normalize-space()='" + menus[i].trim() + "']/img";
                if (isElementDisplayed(subMenuLogo)) {
                    testStepPassed(menus[i] + " : logo is displayed");
                } else {
                    testStepFailed(menus[i] + " : logo is not displayed");
                }
                if (isElementDisplayed(subMenu)) {
                    testStepPassed(menus[i] + " : text is displayed");
                } else {
                    testStepFailed(menus[i] + " : text is not displayed");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Icon And Icon Text " + text + " Displayed. Exception : " + e.getClass());
        }
    }

    // Commented on 09012023
//    public Boolean clickOnHorizantalMenu(String menuText) {
//        Boolean flag = false;
//        try {
//            String locator = "Horizantal Menu - " + menuText + "#xpath=//ul[@class='menuitems']/descendant::a[normalize-space(text())='" + menuText.trim() + "']";
//            if (isElementDisplayed(locator)) {
//                clickOn(locator);
//                flag = true;
//            } else {
//                testStepFailed("Horizantal Menu - " + menuText + " is not displayed");
//            }
//        } catch (Exception e) {
//            e.printStackTrace();
//            testStepFailed("Failed in click On Horizantal Menu "+menuText+". Exception: " + e.getClass());
//        }
//        return flag;
//    }
// Commented on 09012023
    public Boolean clickOnHorizantalSubMenu(String menuText) {
        Boolean flag = false;
        try {
            String locator = "Horizantal sub Menu - " + menuText + "#xpath=//div[@class='sub_items']/descendant::a[normalize-space(text())='" + menuText.trim() + "']|//li[normalize-space(text())='" + menuText.trim() + "']";
            if (isElementDisplayed(locator)) {
                clickOn(locator);
                waitForPageToLoad();
                flag = true;
            } else {
                testStepFailed("Horizantal sub Menu - " + menuText + " is not displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in click On Horizantal sub Menu " + menuText + ". Exception: " + e.getClass());
        }
        return flag;
    }

    // Commented on 09012023
//    public Boolean clickOnHorizantalLevelTwoSubMenu(String firstLevelMenuText, String menuText) {
//        Boolean flag = false;
//        try {
//            String locator = "Horizantal level 2 sub Menu - " + menuText + "#xpath=//a[normalize-space(text())='" + firstLevelMenuText.trim() + "']/../div[@class='leveltwo_sub_items']/descendant::a[normalize-space(text())='" + menuText.trim() + "']";
//            //scrollToWebElement(locator);
//            if (isElementDisplayed(locator)) {
//                clickOn(locator);
//                waitForPageToLoad();
//                flag = true;
//            } else {
//                testStepFailed("Horizantal level 2 sub Menu - " + menuText + " is not displayed");
//            }
//        } catch (Exception e) {
//            e.printStackTrace();
//            testStepFailed("Failed in click On Horizantal level 2 sub  Menu "+menuText+". Exception: " + e.getClass());
//        }
//        return flag;
//    }
// Commented on 09012023
    public Boolean clickOnHorizantalSubMenuForSameMenuNames(String menuText, String subMenuText) {
        Boolean flag = false;
        try {
            String locator = "Horizantal sub Menu - " + subMenuText + "#xpath=//a[normalize-space(text())='" + menuText + "']/following-sibling::div[@class='sub_items']/descendant::a[normalize-space(text())='" + subMenuText.trim() + "']";
            if (isElementDisplayed(locator)) {
                clickOn(locator);
                flag = true;
            } else {
                testStepFailed("Horizantal sub Menu - " + subMenuText + " is not displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in click On Horizantal sub Menu For Same Menu Names " + subMenuText + ". Exception: " + e.getClass());
        }
        return flag;
    }

    public void navigateToBack() {
        try {
            driver.navigate().back();
            waitForPageToLoad();
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed to navigate Back. Exception: " + e.getClass());
        }
    }

    public void verifyLocatorIsClickableUsingCommonXpath(String commonXpath, String text) {
        try {
            String locator = "" + text + "#xpath=//" + commonXpath + "[normalize-space(text())='" + text.trim() + "']";
            scrollToWebElementIfPresent(locator);
            clickOnIfDisplayed(locator);
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed(text + "Failed in verify Locator Is Clickable Using Common Xpath. Exception: " + e.getClass());
        }
    }


    public Boolean verifyElementIsDisplayedUsingLocator(String locator) {
        Boolean flag = false;
        try {
            if (isElementDisplayed(locator)) {
                manualScreenshot(locator.split("#")[0] + " is Displayed successfully");
                flag = true;
            } else {
                testStepFailed(locator.split("#")[0] + " is Not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Element Is Displayed Using Locator " + getRefOfXpath(locator) + ". Exception: " + e.getClass());
        }
        return flag;
    }

    public void clickIfOnlyDisplayed(String locator) {
        try {
            if (isElementPresent(locator)) {
                scrollToWebElement(locator);
            }

            if (isElementDisplayed(locator)) {
                clickOn(locator);
                waitTime(3);
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in click if only displayed. Exception: " + e.getClass());
        }

    }

    public boolean verifyElementIsDisplayedOrNot(String locator) {
        boolean flag = false;
        try {
            if (isElementDisplayed(locator)) {
                flag = true;
                manualScreenshot(locator.split("#")[0] + " is Displayed Successfully");
            } else {
                testStepFailed(locator.split("#")[0] + " is Not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Element Is Displayed Or Not " + getRefOfXpath(locator) + ". Exception: " + e.getClass());
        }
        return flag;
    }


    public Boolean clickOnCardIcons(String iconText) {
        Boolean flag = false;
        try {
            String locator = "Card Icons - " + iconText + "#xpath=//div[@class='wallet_card_row']/descendant::p[normalize-space(text())='" + iconText.trim() + "']";
            if (isElementDisplayed(locator)) {
                clickOn(locator);
                flag = true;
            } else {
                testStepFailed("Cards - " + iconText + " is not displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed to click On Cards " + iconText + ". Exception: " + e.getClass());
        }
        return flag;
    }

    public void verifyGetText(String locator, String expectedText) {
        try {
            scrollToWebElementIfPresent(locator);
            String text = getText(locator);
            if (text.trim().equals(expectedText.trim())) {
                testStepPassed("Expected Text is verified successfully");
                manualScreenshot(text);
            } else {
                stepFailed("Expected text is not verified");
                testStepFailed("Current Text : " + text);
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in  " + getRefOfXpath(locator) + " verify get text " + expectedText + ". Exception: " + e.getClass());
        }

    }

    public Boolean verifyGetTextContains(String locator, String expectedText) {
        Boolean flag = false;
        try {
            scrollToWebElementIfPresent(locator);
            String text = getText(locator);
            if (text.trim().contains(expectedText.trim())) {
                testStepPassed("Expected Text is verified successfully");
                testStepPassed("Expected Text: " + expectedText);
                manualScreenshot(text);
                flag = true;
            } else {
                stepFailed("Expected text is not verified");
                testStepFailed("Current Text : " + text);
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in " + getRefOfXpath(locator) + " verify get text contains " + expectedText + ". Exception: " + e.getClass());
        }
        return flag;
    }

    public Boolean booleanGetTextContains(String locator, String expectedText, String extra) {
        Boolean flag = false;
        try {
            if (isElementPresent(locator)) {
                scrollToWebElement(locator);
            }
            String text = getText(locator);
            if (text.trim().contains(expectedText.trim())) {
                flag = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in " + getRefOfXpath(locator) + " Boolean get text Contains " + expectedText + ". Exception: " + e.getClass());
        }
        return flag;
    }

    public Boolean booleanGetTextEqualsIgnoreCase(String locator, String expectedText, String extra) {
        Boolean flag = false;
        try {

            Boolean flag1 = scrollToWebElementIfPresent(locator);
            if (flag1) {
                String text = getText(locator);
                if (text.trim().equalsIgnoreCase(expectedText.trim())) {
                    flag = true;
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in " + getRefOfXpath(locator) + " Boolean get text Equals Ignore case " + expectedText + ". Exception: " + e.getClass());
        }
        return flag;
    }

    public void clearEditBox(String locator) {
        try {
            findWebElement(locator).clear();
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in Clear edit Box " + getRefOfXpath(locator) + ". Exception: " + e.getClass());
        }

    }


    public void verifyErrorMessageUsingText(String errorMessageText) {
        try {
            String locatorErrMsg = "Error Msg: " + errorMessageText + "#xpath=//*[normalize-space(text())='" + errorMessageText.trim() + "']";
            waitTime(2);
            if (isElementDisplayed(locatorErrMsg)) {
                manualScreenshot(errorMessageText + " error message is displayed successfully");
            } else {
                testStepFailed(errorMessageText + " error message is not displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verifyError Message " + errorMessageText + ". Exception: " + e.getClass());
        }
    }

    public void verifyErrorMessageUsingLocator(String locatorErrMsg) {
        try {
            if (isElementDisplayed(locatorErrMsg)) {
                manualScreenshot(locatorErrMsg.split("#")[0] + " error message is displayed successfully");
            } else {
                testStepFailed(locatorErrMsg.split("#")[0] + " error message is not displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verifyError Message " + getRefOfXpath(locatorErrMsg) + ". Exception: " + e.getClass());
        }
    }

    public String getCurrentPath() {
        String path = System.getProperty("user.dir");
        return path;
    }

    public String validateFont(String locator) {
        String font = "";
        try {
            boolean elementDisplayed = isElementDisplayed(locator);
            if (elementDisplayed) {
                font = findWebElement(locator).getCssValue("font-family");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Font " + getRefOfXpath(locator) + ". Exception: " + e.getClass());
        }
        return font;
    }

    public String validateFontSize(String locator) {
        String fontSize = "";
        try {
            boolean elementDisplayed = isElementDisplayed(locator);
            if (elementDisplayed) {
                fontSize = findWebElement(locator).getCssValue("font-size");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify FontSize " + getRefOfXpath(locator) + ". Exception: " + e.getClass());
        }
        return fontSize;
    }

    public String validateFontTextAlign(String locator) {
        String textAlign = "";
        try {
            boolean elementDisplayed = isElementDisplayed(locator);
            if (elementDisplayed) {
                textAlign = findWebElement(locator).getCssValue("text-align");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Font text align " + getRefOfXpath(locator) + ". Exception: " + e.getClass());
        }
        return textAlign;
    }

    public void waitForThreeDotsDisAppear() {
        try {
            String threeDotsLocator = "Loader Circle#xpath=//div[not(contains(@style,'display: none;')) and @class='loadingbox' and not(contains(@style,'display:none'))]|//*[local-name()='svg']/*";
            if (isElementDisplayed(threeDotsLocator)) {
                LocalTime now = LocalTime.now();
                while (isElementDisplayed(threeDotsLocator)) {

                }
                LocalTime now1 = LocalTime.now();
                long l = Duration.between(now, now1).toSeconds();
                testStepPassed("Loading Time: " + l);
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in Three Dots DisAppear. Exception: " + e.getClass());
        }
    }

    public void waitForElementVisibility(String locator) {
        try {
            WebDriverWait wait = new WebDriverWait(driver, 60);
            wait.until(ExpectedConditions.visibilityOf(findWebElement(locator)));
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in wait for Element visibility " + getRefOfXpath(locator) + ". Exception: " + e.getClass());
        }
    }

    public void waitForElementUrlLoaded(String url) {
        try {
            WebDriverWait wait = new WebDriverWait(driver, 10);
            wait.until(ExpectedConditions.urlContains(url));
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in wait for Element Loaded URL: " + url + ". Exception: " + e.getClass());
        }
    }

    public String validateCssValues(String locator, String cssValue) {
        String textAlign = "";
        try {

            if (isElementDisplayed(locator)) {
                textAlign = findWebElement(locator).getCssValue(cssValue);
            } else {
                testStepFailed(getRefOfXpath(locator) + " is Not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify " + getRefOfXpath(locator) + " Css Value " + cssValue + ". Exception: " + e.getClass());
        }
        return textAlign;
    }

    public void clickOnButtonUsingTextUsingForLoop(String buttonText) {
        try {
            Boolean flag = false;
            String locator = buttonText + "#xpath=//a[normalize-space(text())='" + buttonText + "']|//button[normalize-space(text())='" + buttonText + "']|//input[@value='" + buttonText.trim() + "']";
            for (int i = 1; i <= findWebElements(locator).size(); i++) {
                String button = "" + buttonText + " Button#xpath=(//a[normalize-space(text())='" + buttonText + "']|//button[normalize-space(text())='" + buttonText + "']|//input[@value='" + buttonText.trim() + "'])[" + i + "]";
                scrollToWebElementIfPresent(button);
                if (isElementDisplayed(button)) {
                    manualScreenshot(buttonText + " button is Displayed successfully");
                    clickOn(button);
                    waitForPageToLoad();
                    flag = true;
                    break;
                }
            }
            if (!flag) {
                testStepFailed(buttonText + " button is Not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in click on " + buttonText + " button using for Loop. Exception: " + e.getClass());
        }

    }


    public void clickOnButtonUsingLocatorUsingForLoop(String locator) {
        try {
            Boolean flag = false;
            int size = findWebElements(locator).size();
            for (int i = 1; i <= size; i++) {
                String button = "" + locator.split("#")[0] + "#xpath=(" + locator.split("#xpath=")[1] + ")[" + i + "]";
                if (isElementDisplayed(button)) {
                    manualScreenshot(locator.split("#")[0] + " button is Displayed successfully");
                    clickOn(button);
                    waitForPageToLoad();
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

    public void clickOnButtonUsingLocatorUsingForLoopWithoutFail(String locator) {
        try {
            int size = findWebElements(locator).size();
            for (int i = 1; i <= size; i++) {
                String button = "" + locator.split("#")[0] + "#xpath=(" + locator.split("#xpath=")[1] + ")[" + i + "]";
                if (isElementDisplayed(button)) {
                    manualScreenshot(locator.split("#")[0] + " button is Displayed successfully");
                    clickOn(button);
                    waitForPageToLoad();
                    break;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in click on  " + getRefOfXpath(locator) + " button using locator using for loop without Fail. Exception: " + e.getClass());
        }

    }


    public String getCommonPathOfLocator(String locator) {
        String ref = "";
        try {
            ref = locator.split("#xpath=")[1];
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in get Common path of locator " + getRefOfXpath(locator) + ". Exception: " + e.getClass());
        }
        return ref;
    }

    public void typeInTextBoxUsingLocatorUsingForLoop(String locator, String value) {
        try {
            Boolean flag = false;
            for (int i = 1; i <= findWebElements(locator).size(); i++) {
                String txtBox = "" + locator.split("#")[0] + "#xpath=(" + locator.split("#xpath=")[1] + ")[" + i + "]";
                if (isElementDisplayed(txtBox)) {
                    typeInIfDisplayed(locator, value);
                    waitForPageToLoad();
                    flag = true;
                    break;
                }
            }
            if (!flag) {
                testStepFailed(locator.split("#")[0] + "  is not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in Type In " + getRefOfXpath(locator) + " Text Box using locator using for loop. Exception: " + e.getClass());
        }

    }

    public Boolean verifyLocatorColorUsingCssValue(String objectLocator, String expectedColorHexValue, String expectedColor, String cssValue) {
        Boolean flag = false;
        try {
            scrollToWebElementIfPresent(objectLocator);
            if (isElementDisplayed(objectLocator)) {
                manualScreenshot(objectLocator.split("#")[0] + " is Displayed Successfully");
                String color = findWebElement(objectLocator).getCssValue(cssValue);
                String hex = Color.fromString(color).asHex();
                testStepInfo(hex);
                if (hex.toLowerCase().contains(expectedColorHexValue.toLowerCase())) {
//                    if (hex.equals(expectedColorHexValue)||hex.contains(expectedColorHexValue)) {
                    flag = true;
                    manualScreenshot(objectLocator.split("#")[0] + " - " + expectedColor + " Color Verified Successfully");
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


    public void verifyGetTextContainsIfPresent(String locator, String expectedText) {
        try {
            scrollToWebElementIfPresent(locator);
            String text = getTextPresent(locator);
            if (text.trim().contains(expectedText.trim())) {
                testStepPassed("Expected Text is verified successfully");
                testStepPassed("Expected Text: " + expectedText);
                manualScreenshot(text);
            } else {
                stepFailed("Expected text is not verified");
                testStepFailed("Current Text : " + text);
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify get text " + getRefOfXpath(locator) + ". Exception: " + e.getClass());
        }

    }

    public void screenShotLocator(String locator, String name) {
        try {
            File src = findWebElement(locator).getScreenshotAs(OutputType.FILE);
            byte[] fileContent = FileUtils.readFileToByteArray(src);
            ApplicationHooks.scena.attach(fileContent, "image/png", name);
        } catch (Exception e) {
            e.printStackTrace();
            stepFailed("screen shot " + getRefOfXpath(locator) + " for failed. Exception: " + e.getClass());
        }

    }

    public String validateGetTextCustomized(String locator, String comment) {
        String text = "";
        try {
            scrollToWebElementIfPresent(locator);
            Boolean falg = verifyElementIsDisplayedUsingLocator(locator);
            if (falg) {
                text = getText(locator);
                manualScreenshot(getRefOfXpath(locator) + " " + comment + " " + text);
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in validate Get Text Customized " + getRefOfXpath(locator) + ". Exception: " + e.getClass());
        }
        return text;
    }

    public Date getDateUsingString(String dateValue) {
        Date d = null;
        try {
            d = new Date(dateValue);
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in get date using Sring " + dateValue + ". Exception: " + e.getClass());
        }
        return d;
    }

    public Boolean compareDates(Date d1, Date d2, Boolean before) {
        Boolean flag = false;
        try {
            if (before) {
                flag = d1.before(d2) || d1.equals(d2);
            } else {
                flag = d1.after(d2) || d1.equals(d2);
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in Compare Dates of " + d1 + " and " + d2 + ". Exception: " + e.getClass());
        }
        return flag;
    }

    public void verifyGetTextContainsUsingCommonXpath(String commonXpath, String locatorText, String expectedText, String commonXpathAfter, String extra) {
        try {

            String locator = "" + locatorText + " Value in RHS Section#xpath=" + commonXpath + "[normalize-space(text())='" + locatorText.trim() + "']" + commonXpathAfter + "";
            scrollToWebElement(locator);
            String text = getText(locator);
            if (text.trim().contains(expectedText.trim())) {
//                testStepPassed("Expected Text is verified successfully");
//                testStepPassed("Expected Text: "+expectedText);
                manualScreenshot(locatorText + ": " + text + " is verified successfully");
            } else {
                testStepFailed(locatorText + ": " + text + " is not verified");
//                stepFailed("Expected text is not verified");
//                testStepFailed("Current Text : "+text);
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify get text: " + locatorText + " - Expected Text: " + expectedText + ". Exception: " + e.getClass());
        }

    }

    public void verifyGetTextUsingCommonXpath(String commonXpath, String locatorText, String commonXpathAfter, String extra) {
        try {
            String locator = "" + locatorText + " value in RHS Section#xpath=" + commonXpath + "[normalize-space(text())='" + locatorText.trim() + "']" + commonXpathAfter + "";
            scrollToWebElement(locator);
            String text = getText(locator);
            if (text != null) {
//                testStepPassed("Expected Text is verified successfully");
//                testStepPassed("Expected Text: "+expectedText);
                manualScreenshot(locatorText + ": " + text + " is verified successfully");
            } else {
                testStepFailed(locatorText + " is not verified");
//                stepFailed("Expected text is not verified");
//                testStepFailed("Current Text : "+text);
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify get text " + locatorText + ". Exception: " + e.getClass());
        }

    }


    public String verifyValueUsingLabel(String commonPath, String labelText, String additionalPath, String extra) {
        String value = "";
        try {
            String label = "" + labelText + " Label#xpath=" + commonPath + "[normalize-space(text())='" + labelText.trim() + "']";
            String labelValue = "" + labelText + " Value#xpath=" + getCommonPathOfLocator(label) + "" + additionalPath + "";
            scrollToWebElement(label);
            if (isElementDisplayed(label)) {
                manualScreenshot(getRefOfXpath(label) + " is Displayed Successfully");
                if (isElementDisplayed(labelValue)) {
                    if (extra.equals("attribute")) {
                        value = findWebElement(labelValue).getAttribute("value").trim();
                    } else {
                        value = getTextPresent(labelValue).trim();
                    }
                    manualScreenshot(getRefOfXpath(labelValue) + " is Displayed Successfully. Value: " + getText(labelValue));
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

    public void refreshThePage() {
        try {
            driver.navigate().refresh();
            waitForPageToLoad();
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in refresh The Page. Exception:" + e.getClass());
        }
    }


    public void verifyDisplayedAndPrintValueUsingLocator(String locator, String extra) {
        try {
            if (isElementDisplayed(locator)) {
                manualScreenshot(getRefOfXpath(locator) + " is Displayed successfully");
                testStepPassed(getText(locator));
            } else {
                testStepFailed(getRefOfXpath(locator) + " is not displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Displayed and Print value using Locator " + getRefOfXpath(locator) + ". Exception:" + e.getClass());
        }
    }


    public void verifyElementNotClickable(String locator) {
        try {
            if (!isElementPresent(locator)) {
                testStepPassed("The element " + getRefOfXpath(locator) + "is not clickable");
            } else {
                testStepFailed("The element " + getRefOfXpath(locator) + "is clickable");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify " + getRefOfXpath(locator) + " Button NotClickable. Exception:" + e.getClass());
        }
    }

    public void verifyRedirectionInCommon(String expectedUrl, String extra) {
        try {
            Boolean flag = false;
            if (driver.getWindowHandles().size() >= 2) {
                transferControlToWindow(2, false);
                flag = true;
            }
            verifyRedirectionURLIfContains(expectedUrl);
            if (flag) {
                transferControlToWindow(1, true);
            } else {
//                navigateToBack();
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Redirection In Common URL: " + expectedUrl + ". Exception: " + e.getClass());
        }
    }

    public void verifyRedirectioninNewTab(String expectedUrl, String extra) {
        try {
            transferControlToWindow(2, false);
            verifyRedirectionURLIfContains(expectedUrl);
            transferControlToWindow(1, true);
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Redirection in New Tab URL: " + expectedUrl + ". Exception: " + e.getClass());
        }
    }


    public void verifyRedirectioninSameTab(String expectedUrl, String extra) {
        try {
            verifyRedirectionURLIfContains(expectedUrl);
            navigateToBack();
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Redirection in Same Tab URL: " + expectedUrl + ". Exception: " + e.getClass());
        }
    }

    public void verifyRedirectioninSSO_Tab(String expectedUrl, String extra) {
        try {
            if (driver.getWindowHandles().size() > 1) {
                stepFailed("New Tab is Opened instead of SSO");
                transferControlToWindow(2, false);
                verifyRedirectionURLIfContains(expectedUrl);
                transferControlToWindow(1, true);
            } else {
                verifyRedirectionURLIfContains(expectedUrl);
                navigateToBack();
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Redirection in Same Tab URL: " + expectedUrl + ". Exception: " + e.getClass());
        }
    }


    public void verifyMaskedAndUnmaskedFormatUsingLocator(String locator, String maskedSymbol, int start, int noOfMaskedOrUnmaskedInEnd, Boolean masked, String extra) {
        try {
            int end = noOfMaskedOrUnmaskedInEnd;
            String value = validateGetTextCustomized(locator, "is Displayed successfully. Number: ");
            if (!value.equalsIgnoreCase("Not Available") || !value.equalsIgnoreCase("NA")) {
                if (extra.equals("0")) {
                    start = start;
                    end = value.length() - end;
//                    text = value.trim().substring(start, value.length() - end);
                } else {
                    start = value.length() - end;
                    end = value.length();
//                    text = value.trim().substring(value.length() - start,value.length());
                }
                String text = value.trim().substring(start, end);
                String maskedValue = "";
                if (masked) {
                    for (int i = 1; i <= text.length(); i++) {
                        maskedValue = maskedValue + maskedSymbol;
                    }
                    if (text.equals(maskedValue)) {
                        manualScreenshot(getRefOfXpath(locator) + " : Masked Format verified successfully for " + start + 1 + " character to " + end + " character. Value: " + text);
                    } else {
                        testStepFailed(getRefOfXpath(locator) + " : Masked Format is not verified for " + start + 1 + " character to " + end + " character. Value: " + text);
                    }
                } else {
                    if (!text.contains(maskedSymbol)) {
                        manualScreenshot(getRefOfXpath(locator) + " : UnMasked Format verified successfully for " + start + 1 + " character to " + end + " character. Value: " + text);
                    } else {
                        testStepFailed(getRefOfXpath(locator) + " : Unmasked Format is Not Verified for " + start + 1 + " character to " + end + " character. Value: " + text);
                    }
                }
            } else {
                testStepInfo(getRefOfXpath(locator) + " is not Given. Present Value is 'Not Available'.");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in Verify Masked Format Using Locator " + getRefOfXpath(locator) + ". Exception: " + e.getClass());
        }
    }

    public void verifyMaskedAndUnmaskedFormatUsingValue(String value, String label, String maskedSymbol, int start, int noOfMaskedOrUnmaskedInEnd, Boolean masked, String zeroForInitialOneForEnd) {
        try {
            int end = noOfMaskedOrUnmaskedInEnd;
            testStepInfo("Value: " + value);
            if (!value.equalsIgnoreCase("Not Available") || !value.equalsIgnoreCase("NA")) {
                if (zeroForInitialOneForEnd.equals("0")) {
                    start = start;
                    end = value.length() - end;
                } else {
                    start = value.length() - end;
//                       testStepPassed(start+"");
                    end = value.length();
//                        testStepPassed(end+"");
                }
                String text = value.trim().substring(start, end);
                String maskedValue = "";
                if (masked) {
                    for (int i = 1; i <= text.length(); i++) {
                        maskedValue = maskedValue + maskedSymbol;
                    }
                    if (text.equals(maskedValue)) {
                        manualScreenshot(label + " : Masked Format verified successfully for " + (start + 1) + " character to " + end + " character. Value: " + text);
                    } else {
                        testStepFailed(label + " : Masked Format is not verified for " + (start + 1) + " character to " + end + " character. Value: " + text);
                    }
                } else {
                    if (!text.contains(maskedSymbol)) {
                        manualScreenshot(label + " : UnMasked Format verified successfully for " + (start + 1) + " character to " + end + " character. Value: " + text);
                    } else {
                        testStepFailed(label + " : Unmasked Format is Not Verified for " + (start + 1) + " character to " + end + " character. Value: " + text);
                    }
                }
            } else {
                testStepInfo(label + " is not Given. Present Value is 'Not Available'.");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in Verify Masked Format Using Value " + label + ". Exception: " + e.getClass());
        }
    }


    public static String getRefOfXpath(String locator) {
        String ref = "";
        try {
            ref = locator.split("#")[0];
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in get Ref of xpath. Exception: " + e.getClass());
        }
        return ref;
    }


    public void verifyLabelValuesWithHash(List<String> list, String labelValuesWithHash) {
        try {
            String[] values = labelValuesWithHash.split("#");
            manualScreenshot("");
            for (int i = 0; i < values.length; i++) {
                String value = values[i].trim();
                if (list.contains(value)) {
                    testStepPassed(value + " Label is Verified successfully");
                } else {
                    stepFailed(value + " Label is not Verified");
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Label Values with hash. Exception: " + e.getClass());
        }
    }

    public Boolean verifyFieldsDisplayedUsingLocatorWithComment(String locator, String comment) {
        Boolean flag = false;
        try {
//            scrollToWebElement(locator);
            if (isElementDisplayed(locator)) {
                manualScreenshot(comment + " is Verified Successfully");
                flag = true;
            } else {
                testStepFailed(comment + " is Not Verified");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("verify Fields Displayed Using Locator " + getRefOfXpath(locator) + " with comment Failed. Exception: " + e.getClass());
        }
        return flag;
    }

    public Map<String, String> verifyRelationShipSubTitleDetails(String commonXpath, String titleFirst, String subTitleText, String labelXpath, String valueXpath, String labelValuesWithHash, String extra) {
        Map<String, String> map = new LinkedHashMap<>();
        try {
            String title = titleFirst + " " + subTitleText + " Sub Title#xpath=" + commonXpath + "[normalize-space(text())='" + subTitleText.trim() + "']";
            System.out.println(title);
            Boolean flag = verifyElementIsDisplayedUsingLocator(title);
            if (flag) {
                String[] values = labelValuesWithHash.split("#");
                for (int i = 0; i < values.length; i++) {
                    String label = values[i].trim();
//                    verifyValueUsingLabel(getCommonPathOfLocator(title) + "/../following-sibling::div/p", value, "/following-sibling::strong", "");
                    String value = verifyValueUsingLabel(getCommonPathOfLocator(title) + labelXpath, label.trim(), valueXpath, "");
                    map.put(label.trim(), value);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify  Relationship Sub Title Details " + titleFirst + " - " + subTitleText + " with " + labelValuesWithHash + ". Exception: " + e.getClass());
        }
        return map;
    }


    public String TypeInUsingLabelText(String labeltext, String folowingXpath, String value, String extra) {
        String locator = "";
        try {
            locator = "" + labeltext + " TextBox#xpath=//label[normalize-space(text())='" + labeltext + "']" + folowingXpath + "";
            if (isElementPresent(locator)) {
                scrollToWebElement(locator);
            }
            if (isElementDisplayed(locator)) {
                clearEditBox(locator);
                typeIn(locator, value);
            } else {
                testStepFailed(getRefOfXpath(locator) + " is Not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in Type In Using Label " + labeltext + ". Exception: " + e.getClass());
        }

        return locator;
    }

    public void validateTextBoxAcceptOnly(String value, String locatorName, int n, String extra) {
        try {
            Boolean flag = false;
            switch (n) {
                case 1:
                    for (int i = 0; i < value.trim().length(); i++) {
                        char c = value.charAt(i);
                        if (!Character.isAlphabetic(c)) {
                            flag = true;
                        }
                    }
                    if (flag) {
                        testStepFailed(locatorName + " is Accepted other than Alphabets Wrongly");
                    } else {
                        testStepPassed(locatorName + " is Accepted only Alphabets verified successfully");
                    }
                    break;
                case 2:
                    for (int i = 0; i < value.trim().length(); i++) {
                        char c = value.charAt(i);
                        if (!Character.isDigit(c)) {
                            flag = true;
                        }
                    }
                    if (flag) {
                        testStepFailed(locatorName + " is Accepted other than Digits Wrongly");
                    } else {
                        testStepPassed(locatorName + " is Accepted only Digits verified successfully");
                    }
                    break;
                case 3:
                    for (int i = 0; i < value.trim().length(); i++) {
                        char c = value.charAt(i);
                        if (!Character.isLetterOrDigit(c)) {
                            flag = true;
                        }
                    }
                    if (flag) {
                        testStepFailed(locatorName + " is Accepted other than Letter or Digits Wrongly");
                    } else {
                        testStepPassed(locatorName + " is Accepted only letters and Digits verified successfully");
                    }
                    break;
                case 4:
                    for (int i = 0; i < value.trim().length(); i++) {
                        char c = value.charAt(i);
                        if (!Character.isAlphabetic(c) || !Character.isSpaceChar(c)) {
                            flag = true;
                        }
                    }
                    if (flag) {
                        testStepFailed(locatorName + " is Accepted other than Alphabets and Space Wrongly");
                    } else {
                        testStepPassed(locatorName + " is Accepted only Alphabets and Space verified successfully");
                    }
                    break;
                default:
                    stepFailed("Wrong Switch case");
                    break;
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in validate Text Box Accept Other Than Alphabets. Exception: " + e.getClass());
        }


    }

    public Boolean verifyPageRedirectionUsingLocator(String locator, String extra) {
        Boolean flag = false;
        try {
            WebDriverWait wait = new WebDriverWait(driver, 30);
            WebElement element = wait.until(ExpectedConditions.visibilityOf(findWebElement(locator)));
            if (isElementDisplayed(locator)) {
                flag = true;
                manualScreenshot(getRefOfXpath(locator) + " is Displayed. Page successfully Redirected.");
            } else {
                testStepFailed(getRefOfXpath(locator) + " is Not Displayed. Page Redirection is Failed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Page Redirection Using Locator " + getRefOfXpath(locator) + ". Exception: " + e.getClass());
        }
        return flag;
    }


    public void verifyPageRedirectionUsingTagAndText(String tag, String text, String extra) {
        try {
            String locator = "";
            if (extra.equals("")) {
                locator = "" + text + "#xpath=//" + tag + "[normalize-space(text())='" + text.trim() + "']";
            } else {
                locator = "" + text + "#xpath=(//" + tag + "[normalize-space(text())='" + text.trim() + "'])[" + extra + "]";
            }
            WebDriverWait wait = new WebDriverWait(driver, 30);
            wait.until(ExpectedConditions.visibilityOf(findWebElement(locator)));
            if (isElementDisplayed(locator)) {
                manualScreenshot(text + " is Displayed. Page successfully Redirected.");
            } else {
                testStepFailed(text + " is Not Displayed. Page Redirection is Failed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Page Redirection Using Tag and Text " + text + ". Exception: " + e.getClass());
        }

    }

    public void verifyFieldsUsingCommonXpathAndMultipleTextWithHash(String commonXpath, String textsWithHash, String extra) {
        String text = "";
        try {
            String[] split = textsWithHash.split("#");
            for (int i = 0; i < split.length; i++) {
                text = split[i];
                String locator = "" + text + "#xpath=" + commonXpath + "[normalize-space(text())='" + text.trim() + "']";
                if (isElementDisplayed(locator)) {
                    manualScreenshot(text + " is Displayed successfully.");
                } else {
                    testStepFailed(text + " is Not Displayed.");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify fields using common xpath and text with hash " + text + ". Exception: " + e.getClass());
        }

    }
//        public Boolean verifyFieldsDisplayedUsingLocatorWithScroll(String locator) {
//            Boolean flag = false;
//            try {
//                if (isElementPresent(locator)) {
//                    scrollToWebElement(locator);
//                }
//                if (isElementDisplayed(locator)) {
//                    flag = true;
//                    testStepPassed(locator.split("#")[0] + " is Verified Successfully");
//                } else {
//                    testStepFailed(locator.split("#")[0] + " is Not Verified");
//                }
//            } catch (Exception e) {
//                e.printStackTrace();
//                testStepFailed("verify Fields Displayed Using Locator with scroll Failed. Exception: " + e.getClass());
//            }
//            return flag;
//        }

    public Map<String, String> verifyLabelsInTopSectionOfServices(String commonXpath, String valueXpath, String labelValuesWithHash, String extra) {
        Map<String, String> map = new LinkedHashMap<>();
        try {
            String[] values = labelValuesWithHash.split("#");
            for (int i = 0; i < values.length; i++) {
                String label = values[i].trim();
                String value = verifyValueUsingLabel(commonXpath, label, valueXpath, "");
                map.put(label.trim(), value);
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify  Labels in Top Section of Services " + labelValuesWithHash + ". Exception: " + e.getClass());
        }
        return map;
    }

    public String textGet(String objLocator) {
        String getText1;
        return getText1 = findWebElement(objLocator).getText();
    }

    public String getAttributeValue(String locator) {
        String value = "";
        try {
            value = findWebElement(locator).getAttribute("value");
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in get Attribute in text box. Exception: " + getClass());
        }
        return value;
    }

    public String getAttributeValueIfDisplayed(String locator) {
        String value = "";
        try {
            Boolean flag = scrollToWebElementIfPresent(locator);
            if (flag) {
                if (isElementDisplayed(locator)) {
                    value = getAttributeValue(locator);
                } else {
                    testStepFailed(getRefOfXpath(locator) + " is Not Displayed");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in get Attribute If Displayed in text box. Exception: " + getClass());
        }
        return value;
    }


    public void verifyLocatorIsNOT_Displayed(String locator, String comment, String extra) {
        try {
            if (!isElementDisplayed(locator)) {
                manualScreenshot(getRefOfXpath(locator) + " is Not Displayed." + comment + " verified");
            } else {
                testStepFailed(getRefOfXpath(locator) + " Displayed. " + comment + " Not verified");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Loactor is Not Displayed " + getRefOfXpath(locator) + ". Exception: " + e.getClass());
        }
    }

    public Boolean verifyTextIsNOT_Displayed(String text, String comment, String extra) {
        Boolean flag = true;
        try {
            String locator = text + "#xpath=//*[normalize-space(text())='" + text.trim() + "']";
            for (int i = 1; i <= sizeOfLocator(locator); i++) {
                String locator1 = text + "#xpath=(//*[normalize-space(text())='" + text.trim() + "'])[" + i + "]";
                if (isElementDisplayed(locator1)) {
                    flag = false;
                }
            }
            if (flag) {
                manualScreenshot(getRefOfXpath(locator) + " is Not Displayed " + comment + " Verified successfully");
            } else {
                testStepFailed(getRefOfXpath(locator) + " Displayed Wrongly " + comment);
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Text is Not Displayed " + text + ". Exception: " + e.getClass());
        }
        return flag;
    }


    public int countOfLocator(String locator) {
        int n = 0;
        try {
            if (isElementPresent(locator)) {
                n = driver.findElements(By.xpath(locator.split("#xpath=")[1])).size();
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in count of Locator " + getRefOfXpath(locator) + ". Exception: " + e.getClass());
        } finally {
            return n;
        }
    }

    public void clickOnAnyThingUsingTextAndTagWithForLoop(String tag, String linkText, String extra) {
        try {
            Boolean flag = false;
            String locator = "#xpath=//" + tag + "[normalize-space(text())='" + linkText.trim() + "']";
            for (int i = 1; i <= findWebElements(locator).size(); i++) {
                String button = "" + linkText + " Button#xpath=(//" + tag + "[normalize-space(text())='" + linkText.trim() + "'])[" + i + "]";
                if (isElementDisplayed(button)) {
                    manualScreenshot(linkText + " is Displayed successfully");
                    clickOn(button);
                    waitForPageToLoad();
                    flag = true;
                    break;
                }
            }
            if (!flag) {
                testStepFailed(linkText + " button is Not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in click on Anything using for Loop Using Text and tag. Exception: " + e.getClass());
        }

    }


    public void verifyLogout() {
        try {
            if (!isElementDisplayed(LoginPage.icon_Profile)) {
                String close = "close#xpath=//img[@src='https://experia-uat.bajajfinserv.in/UI/images/modal-cross.svg']";
                for (int i = 0; i < sizeOfLocator(close); i++) {
                    String close1 = "close#xpath=(//img[@src='https://experia-uat.bajajfinserv.in/UI/images/modal-cross.svg'])[" + i + "]";
                    if (findWebElement(close1).isDisplayed()) {
                        clickOn(close1);
                        break;
                    }
                }
            }
            if (isElementDisplayed(LoginPage.icon_Profile)) {
                clickOnButtonUsingLocatorUsingForLoop(LoginPage.icon_Profile);
                waitTime(3);
                clickOnIfDisplayed(LoginPage.btn_Logout);
                waitForPageToLoad();
                manualScreenshot("After Logout");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in Logout. Exception: " + e.getClass());
        }
    }

    public int getSizeOfSplittedText(String text, String regex) {
        int size = 0;
        try {
            if (text != null) {
                size = text.split(regex).length;
            } else {
                stepFailed("Splitted Text value is null in get Size of splitted Text");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in get size of Splitted Text. EXception: " + e.getClass());
        }
        return size;
    }

    public String[] getValuesAfterSplitText(String text, String regex) {
        String[] split = null;
        try {
            if (text != null) {
                split = text.split(regex);
            } else {
                stepFailed("Splitted Text value is null in get values of splitted Text");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in get Values of Splitted Text. EXception: " + e.getClass());
        }
        return split;
    }

    public void enterOtpInTextBox(String id, String sixDigitOtp) {
        try {
            for (int i = 1; i <= 6; i++) {
                String locator = "OTP Text Box " + i + "#xpath=//input[@id='" + id + "" + i + "']";
                if (i == 1) {
                    waitForElementUntilVisibleFluent(locator);
                }
                if (isElementDisplayed(locator)) {
                    typeInIfDisplayed(locator, String.valueOf(sixDigitOtp.charAt(i - 1)));
                } else {
                    testStepFailed(locator.split("#")[0] + " is Not Displayed");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in enter otp in Text Box . Exception: " + e.getClass());
        }
    }

    public void readLine() {
        try {
            List l = readFileInList(System.getProperty("user.dir") + "\\target\\rerun.txt");
            for (int i = 0; i < l.size(); i++) {
                if (l.get(i + 1).toString().contains("HorizontalMenu")) {
                    quitBrowser = true;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("File Reader. Exception: " + e.getClass());
        }
    }

    public static List<String> readFileInList(String fileName) {

        List<String> lines = Collections.emptyList();
        try {
            lines =
                    Files.readAllLines(Paths.get(fileName), StandardCharsets.UTF_8);
        } catch (IOException e) {
            e.printStackTrace();
            testStepFailed("Failed in read File in List");
        }
        return lines;
    }

    public String getAttributeUsingLocatorAndAttribute(String locator, String attribute) {
        String value = "";
        try {
            value = findWebElement(locator).getAttribute(attribute);
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in get Attribute in Using Locator and Attribute " + getRefOfXpath(locator) + ". Exception: " + getClass());
        }
        return value;
    }

    public void verifyOtpScreenTiming(int timeInSeconds) {
        try {

            int count = 0;
            if (isElementDisplayed(FDServicesPage.timer)) {
                String timeWithSeconds = textGet(FDServicesPage.timer);
                count = Integer.parseInt(timeWithSeconds.split(" ")[0]);
                if (count <= timeInSeconds && count >= timeInSeconds - 20) {
                    testStepPassed("Timer start with " + timeInSeconds + " is verified successfully");
                } else {
                    stepFailed("Timer start with " + timeInSeconds + " is not verified");
                }
                if (isElementDisplayed(FDServicesPage.btn_ResendOtp_Disabled)) {
                    testStepPassed(getRefOfXpath(FDServicesPage.btn_ResendOtp_Disabled) + " is Disabled for " + timeInSeconds + " verified successfully");
                } else {
                    stepFailed(getRefOfXpath(FDServicesPage.btn_ResendOtp_Disabled) + " is Not Disabled for " + timeInSeconds + " seconds");
                }
                boolean flag = true;
                for (int i = 0; i < 3; i++) {
                    int count1 = Integer.parseInt(textGet(FDServicesPage.timer).split(" ")[0]);
                    if (count1 <= count) {
                        testStepPassed("Count: " + count1 + "");
                        count = count1;
                        waitTime(2);
                    } else {
                        flag = false;
                    }
                }
                if (flag) {
                    testStepPassed("Count Down Reverse Order Verified Successfully");
                } else {
                    stepFailed("Count Down Reverse Order is Not Verified");
                }
                if (timeWithSeconds.contains("Secs")) {
                    testStepPassed("Timing present in seconds verified successfully");
                } else {
                    stepFailed("Timing is not present with seconds");
                }
            } else {
                testStepFailed(getRefOfXpath(FDServicesPage.timer) + " is Not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Otp Screen timing. Exception: " + e.getClass());
        }
    }

    public void verifyResendOtpButton(int timeInSeconds) {

        try {
            if (isElementDisplayed(FDServicesPage.timer)) {
                int count1 = Integer.parseInt(textGet(FDServicesPage.timer).split(" ")[0]);
                waitTime(timeInSeconds);
                if (count1 == 0 && isElementDisplayed(FDServicesPage.enableResendOtp)) {
                    testStepPassed("Resend OTP Button is Enabled after timer become 0 successfully");
                    clickOnIfDisplayed(FDServicesPage.enableResendOtp);
                    verifyOtpScreenTiming(timeInSeconds);
                } else {
                    stepFailed("Resend OTP Button is Not Enable after timer become 0");
                }
            } else {
                stepFailed(getRefOfXpath(FDServicesPage.timer) + " is Not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Resend OTP Button. Exception: " + e.getClass());
        }
    }

    public void verifyTextContentInOtpScreen() {
        try {

            verifyElementIsDisplayedUsingLocator(FDServicesPage.content1);
            verifyElementIsDisplayedUsingLocator(FDServicesPage.content3);
            String text = getText(FDServicesPage.content3);
            String mobNumber = text.split("91 ")[1];
            verifyMaskedAndUnmaskedFormatUsingValue(mobNumber.trim(), "Mobile Number", "X", 0, 4, true, "0");
            verifyMaskedAndUnmaskedFormatUsingValue(mobNumber.trim(), "Mobile Number", "X", 0, 4, false, "1");
            verifyButtonIsDisabledUsingLocator(FDServicesPage.btn_Submit_Otp);
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Text Content In Otp Screen. Exception: " + e.getClass());
        }
    }

    public void type(String objectLocator, String inputValue) {
        try {
            findWebElement(objectLocator).sendKeys(inputValue);
            testStepScreenShot(objectLocator.split("#")[0] + " Input Value is : " + inputValue);
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Type In Failed " + getRefOfXpath(objectLocator) + ". Exception: " + e.getClass());
        }
    }

    public void typeInOtpInTextBox(int noOfDigits, String sixDigitOtp) {
        try {
            String locator1 = "xpath=//input[@type='number'and(contains(@class,'digit'))]";
            Boolean falg = false;
            if (isElementDisplayed(locator1)) {
                falg = true;
            }
            if (falg) {
                for (int i = 1; i <= noOfDigits; i++) {
                    String locator = "OTP Text Box " + i + "#xpath=//input[@type='number'and(contains(@class,'digit'))and(contains(@id,'" + i + "'))]";
                    if (isElementDisplayed(locator)) {
                        clearEditBox(locator);
                        type(locator, String.valueOf(sixDigitOtp.charAt(i - 1)));
                    } else {
                        testStepFailed(locator.split("#")[0] + " is Not Displayed");
                    }
                }
                if (noOfDigits != 6) {
                    for (int i = noOfDigits + 1; i <= 6; i++) {
                        String locator = "OTP Text Box " + i + "#xpath=//input[@type='number'and(contains(@class,'digit'))and(contains(@id,'" + i + "'))]";
                        if (isElementDisplayed(locator)) {
                            clearEditBox(locator);
                        } else {
                            testStepFailed(locator.split("#")[0] + " is Not Displayed");
                        }
                    }
                } else if (findWebElements(locator1).size() == 12) {
                    for (int i = 1; i <= noOfDigits; i++) {
                        String locator = "OTP Text Box " + i + "#xpath=(//input[@type='number'and(contains(@class,'digit'))and(contains(@id,'" + i + "'))])[2]";
                        if (isElementDisplayed(locator)) {
                            clearEditBox(locator);
                            type(locator, String.valueOf(sixDigitOtp.charAt(i - 1)));
                        } else {
                            testStepFailed(locator.split("#")[0] + " is Not Displayed");
                        }
                    }
                }
                if (noOfDigits != 6) {
                    for (int i = noOfDigits + 1; i <= 6; i++) {
                        String locator = "OTP Text Box " + i + "#xpath=(//input[@type='number'and(contains(@class,'digit'))and(contains(@id,'" + i + "'))])[2]";
                        if (isElementDisplayed(locator)) {
                            clearEditBox(locator);
                        } else {
                            testStepFailed(locator.split("#")[0] + " is Not Displayed");
                        }
                    }
                }
            } else {
                for (int i = 1; i <= noOfDigits; i++) {
                    String locator = "OTP Text Box " + i + "#xpath=(//input[@type='number'and(contains(@class,'digit'))and(contains(@id,'" + i + "'))])[3]";
                    if (isElementDisplayed(locator)) {
                        clearEditBox(locator);
                        type(locator, String.valueOf(sixDigitOtp.charAt(i - 1)));
                    } else {
                        testStepFailed(locator.split("#")[0] + " is Not Displayed");
                    }
                }
                if (noOfDigits != 6) {
                    for (int i = noOfDigits + 1; i <= 6; i++) {
                        String locator = "OTP Text Box " + i + "#xpath=(//input[@type='number'and(contains(@class,'digit'))and(contains(@id,'" + i + "'))])[3]";
                        if (isElementDisplayed(locator)) {
                            clearEditBox(locator);
                        } else {
                            testStepFailed(locator.split("#")[0] + " is Not Displayed");
                        }
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in enter otp in Text Box . Exception: " + e.getClass());
        }

    }

    //10_08_2022
//        public void verifyButtonIsEnabledUsingLocator(String locator) {
//            try {
//                String disabledTextBox="#xpath="+getCommonPathOfLocator(locator)+"[not(@disabled)]";
//                if (isElementDisplayed(disabledTextBox)) {
//                    manualScreenshot(getRefOfXpath(locator)+" is Enabled verified successfully");
//                } else {
//                    testStepFailed(getRefOfXpath(locator)+" is Enabled not verified");
//                }
//            } catch (Exception e) {
//                e.printStackTrace();
//                testStepFailed("Failed in verify Button is Enabled using Locator. Exception: "+e.getClass());
//            }
//        }
//        public void verifyButtonIsDisabledUsingLocator(String locator) {
//            try {
//                String disabledTextBox="#xpath="+getCommonPathOfLocator(locator)+"[@disabled]";
//                if (isElementDisplayed(disabledTextBox)) {
//                    manualScreenshot(getRefOfXpath(locator)+" is Disabled verified successfully");
//                } else {
//                    testStepFailed(getRefOfXpath(locator)+" is Disabled not verified");
//                }
//            } catch (Exception e) {
//                e.printStackTrace();
//                testStepFailed("Failed in verify Button is Disabled using Locator. Exception: "+e.getClass());
//            }
//        }
    //Invalid OTP !
    //OTP Limit exceeded! Please try after sometime.
    public void verifyOtpTextBox() {
        String err1 = "Invalid Otp Error Message#xpath=//*[normalize-space(text())='Invalid OTP !']";
        try {
            typeInOtpInTextBox(6, "ABCDEF");
            verifyButtonIsDisabledUsingLocator(FDServicesPage.btn_Submit_Otp);
            typeInOtpInTextBox(6, "abcdef");
            verifyButtonIsDisabledUsingLocator(FDServicesPage.btn_Submit_Otp);
            typeInOtpInTextBox(6, "!@#$%^");
            verifyButtonIsDisabledUsingLocator(FDServicesPage.btn_Submit_Otp);
            typeInOtpInTextBox(1, "1");
            verifyButtonIsDisabledUsingLocator(FDServicesPage.btn_Submit_Otp);
            typeInOtpInTextBox(2, "12");
            verifyButtonIsDisabledUsingLocator(FDServicesPage.btn_Submit_Otp);
            typeInOtpInTextBox(3, "123");
            verifyButtonIsDisabledUsingLocator(FDServicesPage.btn_Submit_Otp);
            typeInOtpInTextBox(4, "1234");
            verifyButtonIsDisabledUsingLocator(FDServicesPage.btn_Submit_Otp);
            typeInOtpInTextBox(5, "12345");
            verifyButtonIsDisabledUsingLocator(FDServicesPage.btn_Submit_Otp);
            typeInOtpInTextBox(6, "123456");
            verifyButtonIsEnabledUsingLocator(FDServicesPage.btn_Submit_Otp);
            typeInOtpInTextBox(6, "111111");
            verifyButtonIsEnabledUsingLocator(FDServicesPage.btn_Submit_Otp);
            clickOnIfDisplayed(FDServicesPage.btn_Submit_Otp);
            verifyFieldsDisplayedUsingLocator(err1);
            clickOnIfDisplayed(FDServicesPage.icon_Close_OTP);
            verifyLocatorIsNOT_Displayed(FDServicesPage.content1, "Close Icon is", "");
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Otp Text Box. Exception: " + e.getClass());
        }
    }

    public void clickOnToolTip(String labelText) {
        try {
            String toolTip = labelText + " Tool Tip#xpath=//*[normalize-space(text())='" + labelText.trim() + "']/following-sibling::*//img[contains(@src,'icons-info.svg')]";
            if (isElementDisplayed(toolTip)) {
                clickOn(toolTip);
            } else {
                testStepFailed(labelText + " Tool Tip is Not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in click on tool Tip. Exception: " + e.getClass());
        }
    }

    //09_08_2022
//        public void verifyTextBoxIsDisabledUsingLocator(String locator) {
//            try {
//                String disabledTextBox="#xpath="+getCommonPathOfLocator(locator)+"[@disabled]";
//                if (isElementDisplayed(disabledTextBox)) {
//                    manualScreenshot(getRefOfXpath(locator)+" is Non editable verified successfully");
//                } else {
//                    testStepFailed(getRefOfXpath(locator)+" is Non editable not verified");
//                }
//            } catch (Exception e) {
//                e.printStackTrace();
//                testStepFailed("Failed in verify text Box is Disabled using Locator. Exception: "+e.getClass());
//            }
//        }
    //09_08_2022
    public void verifyTextBoxIsEnabledUsingLocator(String locator) {
        try {
            String disabledTextBox = "#xpath=" + getCommonPathOfLocator(locator) + "[not(@disabled)]";
            if (isElementDisplayed(disabledTextBox)) {
                manualScreenshot(getRefOfXpath(locator) + " is editable verified successfully");
            } else {
                testStepFailed(getRefOfXpath(locator) + " is editable not verified");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify text Box is Enabled using Locator. Exception: " + e.getClass());
        }
    }

    //10_08_2022
    public void verifyButtonIsDisabledUsingLocator(String locator) {
        try {
            String disabledTextBox = "#xpath=" + getCommonPathOfLocator(locator) + "[@disabled]";
            if (isElementDisplayed(disabledTextBox)) {
                manualScreenshot(getRefOfXpath(locator) + " is Disabled verified successfully");
            } else {
                testStepFailed(getRefOfXpath(locator) + " is Disabled not verified");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Button is Disabled using Locator. Exception: " + e.getClass());
        }
    }

    //10_08_2022
    public void verifyButtonIsEnabledUsingLocator(String locator) {
        try {
            String disabledTextBox = "#xpath=" + getCommonPathOfLocator(locator) + "[not(@disabled)]";
            if (isElementDisplayed(disabledTextBox)) {
                manualScreenshot(getRefOfXpath(locator) + " is Enabled verified successfully");
            } else {
                testStepFailed(getRefOfXpath(locator) + " is Enabled not verified");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Button is Enabled using Locator. Exception: " + e.getClass());
        }
    }


    /**
     * Page Objects Methods
     */

    public void verifyRelationShipDetails(String subTitleText, String labelValuesWithHash, String extra) {
        try {
            String title = "" + subTitleText + " Sub Title#xpath=//div[@class='Relationship_Details']/descendant::div[@class='Relationshipbox_title']/strong[normalize-space(text())='" + subTitleText.trim() + "']";
            Boolean flag = verifyElementIsDisplayedUsingLocator(title);
            if (flag) {
                String[] values = labelValuesWithHash.split("#");
                for (int i = 0; i < values.length; i++) {
                    String value = values[i];
                    verifyValueUsingLabel(getCommonPathOfLocator(title) + "/../following-sibling::div/ul/li/p", value, "/following-sibling::strong", "");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Relationship Details for " + subTitleText + " with " + labelValuesWithHash + ". Exception: " + e.getClass());
        }
    }

    public void verifyRelationShipInsuranceDetails(String subTitleText, String labelValuesWithHash, String extra) {
        try {
            String title = "Insurance Details " + subTitleText + " Sub Title#xpath=//div[@class='Relationship_Details']/descendant::div[@class='Relationshipbox_title']/strong[normalize-space(text())='Insurance Details']/../following-sibling::div/div/div/strong[normalize-space(text())='" + subTitleText.trim() + "']";
            Boolean flag = verifyElementIsDisplayedUsingLocator(title);
            if (flag) {
                String[] values = labelValuesWithHash.split("#");
                for (int i = 0; i < values.length; i++) {
                    String value = values[i];
                    verifyValueUsingLabel(getCommonPathOfLocator(title) + "/../following-sibling::ul/li/p", value, "/following-sibling::strong", "");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Relationship Details for Insurance Details " + subTitleText + " with " + labelValuesWithHash + ". Exception: " + e.getClass());
        }
    }

    public List<String> verifyTopSectionInServices(String logoLocator, String amountText, String labelWithHash, String nudgeText, String hexValue, String colorName, String cssValue, String LANText, Boolean emiDueDate, String extra) {
        List<String> list = new ArrayList<>();
        try {
            String name = "Name of Product#xpath=//div[@class='fixed_deposit_text']/strong";
            String nudgeIcon = "" + nudgeText + " Nudge#xpath=//div[@class='fixed_deposit_text']/strong/i[normalize-space(text())='" + nudgeText + "']";
            String number = "Number#xpath=//div[@class='fixed_deposit_text']/p";
            String label_amount = "" + amountText + "#xpath=//div[@class='fixed_deposit_amount']/p[normalize-space(text())='" + amountText + "']";
            String amount = "" + amountText + " Value#xpath=//div[@class='fixed_deposit_amount']/p[normalize-space(text())='" + amountText + "']/following-sibling::strong";
            String dueDate = "Due Date for Next Emi#xpath=//div[@class='fixed_points_one']/p[normalize-space(text())='Next EMI Due Amount']/following-sibling::i[contains(text(),'Due Date')]|//div[@class='fixed_points_one']/p[normalize-space(text())='Next EMI Due Amount']/following-sibling::i[contains(text(),'(Due on Not Available)')]";
            verifyElementIsDisplayedUsingLocator(logoLocator);
            validateGetTextCustomized(name, " is Displayed Successfully. Name: ");
            if (!nudgeText.equals("")) {
                validateGetTextCustomized(nudgeIcon, " is Displayed Successfully. Nudge Text: ");
                verifyLocatorColorUsingCssValue(nudgeIcon, hexValue, colorName, cssValue);
//                if (nudgeText.toLowerCase().contains("overdue")) {
//                }
            }
            if (emiDueDate) {
                validateGetTextCustomized(dueDate, " is Displayed Successfully. Due Date Text: ");
            }

            String nameValue = validateGetTextCustomized(number, " is Displayed Successfully. Name: ");
            if (nameValue.contains(LANText)) {
                manualScreenshot(nameValue + " is Displayed successfully");
            } else {
                testStepFailed(LANText + " is Not Displayed");
            }
            validateGetTextCustomized(label_amount, " is Displayed successfully. Label Name: ");
            validateGetTextCustomized(amount, " is Displayed successfully. " + amountText + ": ");

            String common = "Label#xpath=//div[@class='fixed_points_one']/p|//div[@class='a_monthamt_flex']/p";
            for (int i = 1; i <= sizeOfLocator(common); i++) {
                String label = "Label " + i + "#xpath=(//div[@class='fixed_points_one']/p|//div[@class='a_monthamt_flex']/p)[" + i + "]";
                String labelValue = "" + getText(label) + " Value#xpath=(//div[@class='fixed_points_one']/strong|//div[@class='a_monthamt_flex']/strong)[" + i + "]";
                if (isElementDisplayed(label)) {
//                    manualScreenshot(getRefOfXpath(label) + " is displayed successfully");
                    if (isElementDisplayed(labelValue)) {
                        list.add(getText(label));
                        testStepPassed(getRefOfXpath(labelValue) + " is displayed successfully");
                        testStepPassed(getText(label) + " : " + getText(labelValue));
                    } else {
                        list.add(getText(label));
                        testStepFailed(getRefOfXpath(labelValue) + " is not displayed");
                    }
                } else {
                    testStepFailed(getRefOfXpath(label) + " is not displayed");
                }
            }
            verifyLabelValuesWithHash(list, labelWithHash);
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Top section in Services. Exception: " + e.getClass());
        }
        return list;
    }

    public void verifyElementIsNotPresentUsingtext(String text) {
        try {
            String locator = text + "#xpath=//*[normalize-space(text())='" + text.trim() + "']";
            if (!isElementPresent(locator)) {
                testStepPassed(text + " is Not Present Successfully");
            } else {
                stepFailed(text + " is Present");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("failed in verify Element is not displayed Using text. Exception: " + e.getClass());
        }
    }


    public Map<String, String> verifyRhs(String title, String optionsWithHash, String extra) {
        Map<String, String> map = new LinkedHashMap<>();
        try {
            String titleLocator = title + "in RHS#xpath=//*[normalize-space(text())='" + title.trim() + "']";
            String[] split = optionsWithHash.split("#");
            for (int i = 0; i < split.length; i++) {
                String optionText = split[i];
                String optionLocator1 = optionText + " Option in " + title + " RHS#xpath=//*[normalize-space(text())='" + title + "']/../following-sibling::div//*[normalize-space(text())=\"" + optionText.trim() + "\"]";
                boolean flag = false;
                for (int j = 1; j <= sizeOfLocator(optionLocator1); j++) {
                    String optionLocator = optionText + " Option in " + title + " RHS#xpath=(//*[normalize-space(text())='" + title + "']/../following-sibling::div//*[normalize-space(text())=\"" + optionText.trim() + "\"])[" + j + "]";
                    if (isElementDisplayed(optionLocator)) {
                        flag = true;
                        map.put(optionText, optionLocator);
                        testStepPassed(getRefOfXpath(optionLocator) + " is Displayed successfully");
                        break;
                    }
                }
                if (!flag) {
                    testStepFailed(getRefOfXpath(optionLocator1) + " is Not Displayed");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify RHS. Exception: " + e.getClass());
        }
        return map;
    }

    public void verifyRhsOptionIsNotDisplayed(String title, String optionsWithHash, String extra) {
        try {
            String titleLocator = title + "in RHS#xpath=//*[normalize-space(text())='" + title.trim() + "']";
            String[] split = optionsWithHash.split("#");
            for (int i = 0; i < split.length; i++) {
                String optionText = split[i];
                String optionLocator1 = optionText + " Option in " + title + " RHS#xpath=//*[normalize-space(text())='" + title + "']/../following-sibling::div//*[normalize-space(text())=\"" + optionText + "\"]";
                boolean flag = true;
                for (int j = 1; j <= sizeOfLocator(optionLocator1); j++) {
                    String optionLocator = optionText + " Option in " + title + " RHS#xpath=(//*[normalize-space(text())='" + title + "']/../following-sibling::div//*[normalize-space(text())=\"" + optionText + "\"])[" + j + "]";
                    if (isElementDisplayed(optionLocator)) {
                        flag = false;
                        testStepFailed(getRefOfXpath(optionLocator1) + " is Displayed Wrongly");
                        break;
                    }
                }
                if (flag) {
                    testStepPassed(getRefOfXpath(getRefOfXpath(optionLocator1) + " is Not Displayed successfully"));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify RHS Option " + optionsWithHash + " is Not Displayed. Exception: " + e.getClass());
        }
    }


    public void typeInIfPresent(String objectLocator, String inputValue) {
        try {
            if (isElementPresent(objectLocator)) {
                typeIn(objectLocator, inputValue);
//                typeInIfDisplayed(objectLocator,inputValue);
//                findWebElement(objectLocator).sendKeys(inputValue);
//                manualScreenshot(objectLocator.split("#")[0] + " Input Value is : " + inputValue);
            } else {
                testStepFailed(objectLocator.split("#")[0] + " is not Present and Type In Failed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Type In If Present Failed " + getRefOfXpath(objectLocator) + ". Exception: " + e.getClass());
        }
    }

    public String getLocator(String locator) {
//        Map<String, String> loc = putLocator();
        String s = loc.get(locator);
        return s;
    }


    public Boolean verifyElementIsNotPresentUsingLocator(String locator) {
        Boolean flag = false;
        try {
            if (!isElementPresent(locator)) {
                manualScreenshot(locator.split("#")[0] + " is Not Present successfully");
                flag = true;
            } else {
                testStepFailed(locator.split("#")[0] + " is  Present Wrongly");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Element Is NOt Present Using Locator " + getRefOfXpath(locator) + ". Exception: " + e.getClass());
        }
        return flag;
    }

    public void verifyMaskedAndUnmaskedFormat(String locator, String maskedSymbol, int start, int end, Boolean masked, String extra) {
        try {
            String value = validateGetTextCustomized(locator, "is Displayed successfully. Number: ");
            String text = value.trim().substring(start, value.length() - end);
            String maskedValue = "";
            if (masked) {
                for (int i = 1; i <= text.length(); i++) {
                    maskedValue = maskedValue + maskedSymbol;
                }
                if (text.equals(maskedValue)) {
                    manualScreenshot(getRefOfXpath(locator) + " : Masked Format verified successfully for " + start + 1 + " character to " + end + " character. Value: " + text);
                } else {
                    testStepFailed(getRefOfXpath(locator) + " : Masked Format is not verified for " + start + 1 + " character to " + end + " character. Value: " + text);
                }
            } else {
                if (!text.contains(maskedSymbol)) {
                    manualScreenshot(getRefOfXpath(locator) + " : UnMasked Format verified successfully for " + start + 1 + " character to " + end + " character. Value: " + text);
                } else {
                    testStepFailed(getRefOfXpath(locator) + " : Unmasked Format is Not Verified for " + start + 1 + " character to " + end + " character. Value: " + text);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in Verify Masked Format. Exception: " + e.getClass());
        }
    }

    public void redirectToUrl(String url, String etxra) {
        try {
            driver.get(url);
            testStepInfo("Browser Redirected to URL: " + url);
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in redurect to Url " + url + ". Exception: " + e.getClass());
        }
    }

    public boolean verifyFieldsDisplayedUsingLocatorWithouFail(String locator) {
        boolean flag = false;
        try {
            if (isElementDisplayed(locator)) {
                flag = true;
                testStepPassed(locator.split("#")[0] + " is Verified Successfully");
            } else {
                testStepInfo(locator.split("#")[0] + " is Not Verified");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Fields Displayed Using Locator " + getRefOfXpath(locator) + ". Exception: " + e.getClass());
        }
        return flag;
    }

    public void verifyFieldsDisplayedUsingTextAndForLoop(String fieldText, String extra) {
        try {
            String field = "" + fieldText + "#xpath=//*[normalize-space(text())='" + fieldText.trim() + "']";
            int size = findWebElements(field).size();
            if (isElementPresent(field)) {
                boolean flag = false;
                for (int i = 1; i <= size; i++) {
                    String field1 = "" + fieldText + "#xpath=(//*[normalize-space(text())='" + fieldText.trim() + "'])[" + i + "]";
                    if (isElementDisplayed(field1)) {
                        testStepPassed(fieldText + " is Verified Successfully");
                        flag = true;
                    }
                }
                if (!flag) {
                    testStepFailed(fieldText + " is Not Displayed");
                }
            } else {
                testStepFailed(fieldText + " is Not Present");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Fields Displayed Using Text " + fieldText + " and For Loop. Exception: " + e.getClass());
        }
    }

    public void hardRefresh() {
        try {
            JavascriptExecutor js = (JavascriptExecutor) driver;
            js.executeScript("window.location.reload(true);");
            testStepInfo("Hard Refreshed...");
            waitForPageToLoad();
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in Hard Refresh. Exception: " + e.getClass());
        }
    }

    public String changedCommaToHash(String values, String extra) {
        String s = null;
        try {
            s = values.replaceAll(", ", "#").trim();
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in changed to Hash. Exception: " + e.getClass());
        }
        return s;
    }

    public void skipSteps(String comment) {
        try {
            ApplicationKeywords.quitBrowser = true;
            GOR.login = false;
            SoftAssertions sa = new SoftAssertions();
            testStepFailed(comment);
            sa.fail(comment);
            sa.assertAll();
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in skip step " + comment + ". Exception: " + e.getClass());
        }
    }

    public void verifyFieldsNotDisplayedUsingTextUsingForLoop(String fieldText, String type, String extra) {
        try {
            String field = "";
            if (type.toLowerCase().contains("button") || type.toLowerCase().contains("link text")) {
                field = "" + fieldText + " Button#xpath=//a[normalize-space(text())='" + fieldText.trim()
                        + "']|//*[@placeholder='" + fieldText.trim() + "']|//input[@value='" + fieldText.trim() + "']|//button[normalize-space(text())='" + fieldText.trim() + "']";
            } else if (type.toLowerCase().contains("text box")) {
                field = "" + fieldText + " text box#xpath=//label[normalize-space(text())='" + fieldText.trim()
                        + "']/following-sibling::input";
            } else {
                field = "" + fieldText + " " + type + "#xpath=//*[normalize-space(text())='" + fieldText.trim()
                        + "']";
            }
            boolean status = false;
            int size = sizeOfLocator(field);
            for (int i = 1; i <= size; i++) {
                String loc = getRefOfXpath(field) + " " + i + "#xpath=(" + getCommonPathOfLocator(field) + ")[" + i + "]";
                if (isElementPresent(loc)) {
                    Boolean flag = scrollToWebElementIfPresent(loc);
                    if (flag) {
                        if (isElementDisplayed(loc)) {
                            testStepFailed(fieldText + " is Displayed Wrongly");
                            status = true;
                            break;
                        }
                    }
                }
            }
            if (!status) {
                manualScreenshot(fieldText + " is Not Displayed Verified");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Fields Displayed Using Text " + fieldText + " and For Loop. Exception: " + e.getClass());
        }
    }

    public void verifyFieldsDisplayedUsingTextUsingForLoop(String fieldText, String type, String extra) {
        try {
            String field = "";
            if (type.toLowerCase().contains("button") || type.toLowerCase().contains("link text")) {
                field = "" + fieldText + " Button#xpath=//a[normalize-space(text())='" + fieldText.trim()
                        + "']|//*[@placeholder='" + fieldText.trim() + "']|//input[@value='" + fieldText.trim() + "']|//button[normalize-space(text())='" + fieldText.trim() + "']";
            } else if (type.toLowerCase().contains("text box")) {
                field = "" + fieldText + " text box#xpath=//label[normalize-space(text())='" + fieldText.trim()
                        + "']/following-sibling::input";
            } else {
                field = "" + fieldText + " " + type + "#xpath=//*[normalize-space(text())='" + fieldText.trim()
                        + "']";
            }
            boolean status = false;
            int size = sizeOfLocator(field);
            for (int i = 1; i <= size; i++) {
                String loc = getRefOfXpath(field) + " " + i + "#xpath=(" + getCommonPathOfLocator(field) + ")[" + i + "]";
                Boolean flag = scrollToWebElementIfPresent(loc);
                if (flag) {
                    if (isElementDisplayed(loc)) {
                        testStepPassed(fieldText + " is Verified Successfully");
                        status = true;
                        break;
                    }
                }
            }
            if (!status) {
                testStepFailed(fieldText + " is Not Verified");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Fields Displayed Using Text " + fieldText + " and For Loop. Exception: " + e.getClass());
        }
    }


    public void verifyErrorMessageForMultipleValuesUsingLocator(String locator, String values, String errMsg) {
        try {
            Boolean flag = scrollToWebElementIfPresent(locator);
            if (flag) {
                if (isElementDisplayed(locator)) {
                    String[] split = values.split("#");
                    for (int i = 0; i < split.length; i++) {
                        String value = split[i];
                        clearEditBox(locator);
                        typeIn(locator, value);
                        verifyErrorMessageUsingLocator(errMsg);
                    }
                } else {
                    testStepFailed(getRefOfXpath(locator) + " is Not displayed");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Error Message " + getRefOfXpath(locator) + " Multiple values. Exception: " + e.getClass());
        }
    }

    public void verifyErrorMessageNotDisplayedForMultipleValuesUsingLocator(String locator, String values, String errMsg) {
        try {
            Boolean flag = scrollToWebElementIfPresent(locator);
            if (flag) {
                if (isElementDisplayed(locator)) {
                    String[] split = values.split("#");
                    for (int i = 0; i < split.length; i++) {
                        String value = split[i];
                        clearEditBox(locator);
                        typeIn(locator, value);
                        waitTime(2);
                        if (!isElementPresent(errMsg)) {
                            manualScreenshot(getRefOfXpath(errMsg) + " is Not Present successfully for Value: " + value);
                        } else if (!isElementDisplayed(errMsg)) {
                            manualScreenshot(getRefOfXpath(errMsg) + " is Not Displayed successfully for Value: " + value);
                        } else {
                            testStepFailed(getRefOfXpath(errMsg) + " is Displayed for Valid Value: " + value);
                        }
                    }
                } else {
                    testStepFailed(getRefOfXpath(locator) + " is Not displayed");
                }

            }


        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Error Message Not Displayed " + getRefOfXpath(locator) + " Multiple values. Exception: " + e.getClass());
        }
    }

    public void verifyErrorMessageIsNotDisplayedUsingLocator(String errLocator, String value) {
        try {

            if (!isElementPresent(errLocator)) {
                manualScreenshot(getRefOfXpath(errLocator) + " is Not Displayed successfully for Value: " + value);
            } else {
                testStepFailed(getRefOfXpath(errLocator) + " is Displayed for Valid Value: " + value);
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Error Message Is Not Displayed using Locator. Exception: " + e.getClass());
        }
    }

    public void verifyButtonIsNotEnabledForMultipleValuesInTextBoxUsingLocator(String locator, String values, String button) {
        try {
            Boolean flag = scrollToWebElementIfPresent(locator);
            if (flag) {
                if (isElementDisplayed(locator)) {
                    String[] split = values.split("#");
                    for (int i = 0; i < split.length; i++) {
                        String value = split[i];
                        clearEditBox(locator);
                        typeIn(locator, value);
                        verifyButtonIsDisabledUsingLocator(button);
                    }
                } else {
                    testStepFailed(getRefOfXpath(locator) + " is Not displayed");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Button is not Enabled for " + getRefOfXpath(locator) + " Multiple values. Exception: " + e.getClass());
        }
    }

    public void verifyTextBoxIsNotAcceptedUsingMultipleValuesUsingLocator(String locator, String values) {
        try {
            Boolean flag = scrollToWebElementIfPresent(locator);
            if (flag) {
                if (isElementDisplayed(locator)) {
                    String[] split = values.split("#");
                    for (int i = 0; i < split.length; i++) {
                        String value = split[i];
                        clearEditBox(locator);
                        typeIn(locator, value);
                        String attributeValue = getAttributeValue(locator);
                        if (!attributeValue.trim().equalsIgnoreCase(value)) {
                            testStepPassed("Accepted Value: " + attributeValue);
                            manualScreenshot(getRefOfXpath(locator) + " is Not Accepted following value: " + value + "");
                        } else {
                            testStepFailed(getRefOfXpath(locator) + " is Wrongly Accepted following value: " + value + "");
                            stepFailed("Actual Value: " + attributeValue);
                        }
                    }
                } else {
                    testStepFailed(getRefOfXpath(locator) + " is Not displayed");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Button is not Accepted for " + getRefOfXpath(locator) + " Multiple values. Exception: " + e.getClass());
        }
    }

    public void verifyTextBoxIsAcceptedUsingMultipleValuesUsingLocator(String locator, String values) {
        try {
            Boolean flag = scrollToWebElementIfPresent(locator);
            if (flag) {
                if (isElementDisplayed(locator)) {
                    String[] split = values.split("#");
                    for (int i = 0; i < split.length; i++) {
                        String value = split[i];
                        clearEditBox(locator);
                        typeIn(locator, value);
                        String attributeValue = getAttributeValue(locator);
                        if (attributeValue.trim().equalsIgnoreCase(value)) {
                            testStepPassed("Accepted Value: " + attributeValue);
                            manualScreenshot(getRefOfXpath(locator) + " is Accepted following value: " + value + "");
                        } else {
                            testStepFailed(getRefOfXpath(locator) + " is Not Accepted following value: " + value + "");
                            stepFailed("Actual Value: " + attributeValue);
                        }
                    }
                } else {
                    testStepFailed(getRefOfXpath(locator) + " is Not displayed");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Button is Accepted for " + getRefOfXpath(locator) + " Multiple values. Exception: " + e.getClass());
        }
    }

    public void verifyErrorMessageUsingLocatorAndClick(String locatorTextBox, String clickLocator, String nagtiveValues, String negativeErrorMessage, String extra) {
        try {
            if (isElementPresent(locatorTextBox)) {
                String[] values = nagtiveValues.split(",");
                for (int i = 0; i < values.length; i++) {
                    String value = values[i];
                    clearEditBox(locatorTextBox);
                    typeIn(locatorTextBox, value);
                    waitTime(2);
//                    clickOn(locatorTextBox);
                    if (!clickLocator.equalsIgnoreCase("")) {
                        //
                        clickUsingMouse(clickLocator);
//                        clickOnIfDisplayed(clickLocator);
                        waitTime(2);
                    }
                    verifyErrorMessageUsingLocator(negativeErrorMessage);
                }
            } else {
                testStepFailed(getRefOfXpath(locatorTextBox) + " is Not Present");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Error Message " + getRefOfXpath(negativeErrorMessage) + ". Exception: " + e.getClass());
        }
    }

    public void clickUsingMouse(String locator) {
        try {
            Actions ac = new Actions(driver);
            ac.click(findWebElement(locator)).perform();
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in Click Uisng Mouse. Exception: " + e.getClass());
        }
    }

    ///////Mustaq

    //////////25112022
    public boolean verifyButtonIsDisplayedInThePage(String buttonText) {
        boolean flag = false;
        try {
            String locator = buttonText + "#xpath=//a[normalize-space(text())='" + buttonText + "']|//button[normalize-space(text())='" + buttonText + "']";
            for (int i = 1; i <= findWebElements(locator).size(); i++) {
                String button = "" + buttonText + " Button#xpath=(//a[normalize-space(text())='" + buttonText + "']|//button[normalize-space(text())='" + buttonText + "'])[" + i + "]";
                if (isElementPresent(button)) {
                    scrollToWebElement(button);
                    if (isElementDisplayed(button))
                        manualScreenshot(buttonText + " is Displayed successfully");
                    flag = true;
                    break;
                }
            }
            if (!flag) {
                testStepFailed(buttonText + " button is Not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify " + buttonText + " button Is Displayed In The Page. Exception: " + e.getClass());
        }

        return flag;
    }

    public Boolean verifyElementIsDisplayedOrNotusingScroll(String locator) {
        Boolean flag = false;
        try {
            if (isElementPresent(locator)) {
                scrollToWebElement(locator);
                if (isElementDisplayed(locator)) {
                    flag = true;
                    manualScreenshot(locator.split("#")[0] + " is Displayed Successfully");
                } else {
                    testStepFailed(locator.split("#")[0] + " is Not Displayed");
                }
            } else {
                testStepFailed(locator.split("#")[0] + " is Not Present");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Element Is Displayed Or Not using Scroll " + getRefOfXpath(locator) + ". Exception: " + e.getClass());
        }
        return flag;
    }

    public void waitForElementUntilVisible(String locator, int seconds) {
        try {
            WebDriverWait wait = new WebDriverWait(driver, seconds);
            wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(getCommonPathOfLocator(locator))));
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in wait for Element " + getRefOfXpath(locator) + " Until Visible with time " + seconds + ". Exception: " + e.getClass());
        }

    }

    public void waitForElementUntilVisible(String locator) {
        try {
            WebDriverWait wait = new WebDriverWait(driver, 30);
            wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(getCommonPathOfLocator(locator))));
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in wait for " + getRefOfXpath(locator) + "  Until Visible. Exception: " + e.getClass());
        }

    }


    public void waitForElementUntilVisibleFluent(String locator) {
        try {
            Wait<WebDriver> fluentWait = new FluentWait<WebDriver>(driver)
                    .withTimeout(Duration.ofSeconds(35))
                    .pollingEvery(Duration.ofSeconds(5))
                    .ignoring(NoSuchElementException.class);
            fluentWait.until((ExpectedConditions.visibilityOfElementLocated(By.xpath(getCommonPathOfLocator(locator)))));
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in wait for " + getRefOfXpath(locator) + " Until Visible Fluent. Exception: " + e.getClass());
        }

    }

    public void pageLoadTimeOut() {
        try {
            driver.manage().timeouts().pageLoadTimeout(30, TimeUnit.SECONDS);
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in Page Load Time out. Exception: " + e.getClass());
        }

    }

    public void waitUntilElementVisible(String locator, int timeout) {
        try {
            WebElement element = findWebElement(locator);
            WebDriverWait wait = new WebDriverWait(driver, timeout);
            wait.until(ExpectedConditions.visibilityOf(element));
        } catch (NoSuchElementException e) {
            testStepFailed(locator + "Not displayed.Exception: " + e.getClass());
        } catch (WebDriverException e) {
            testStepFailed(locator + "Not displayed.Exception: " + e.getClass());
        }
    }

    public void clickOnTab() {
        try {
            Actions actions = new Actions(driver);
            Dimension size = driver.manage().window().getSize();
            int x = size.getHeight();
            int y = size.getWidth();
            actions.sendKeys(Keys.TAB).build().perform();
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("failed in click on inside of page. Exception: " + e.getClass());
        }
    }


    public void verifyFieldsDisplayedUsingLocatorUsingForLoop(String field, String extra) {
        try {
            boolean status = false;
            int size = sizeOfLocator(field);
            for (int i = 1; i <= size; i++) {
                String loc = getRefOfXpath(field) + " " + i + "#xpath=(" + getCommonPathOfLocator(field) + ")[" + i + "]";
                Boolean flag = scrollToWebElementIfPresent(loc);
                if (flag) {
                    if (isElementDisplayed(loc)) {
                        testStepPassed(getRefOfXpath(field) + " is Verified Successfully");
                        status = true;
                        break;
                    }
                }
            }
            if (!status) {
                testStepFailed(getRefOfXpath(field) + " is Not Verified");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Fields Displayed Using Locator " + getRefOfXpath(field) + " and For Loop. Exception: " + e.getClass());
        }
    }

    public void verifyGetTextUsingLocatorAndCompareWithText(String locator, String expectedtext, String extra) {
        try {
            Boolean flag = scrollToWebElementIfPresent(locator);
            if (flag) {
                if (isElementDisplayed(locator)) {
                    String text = getText(locator).trim();
                    if (text.equalsIgnoreCase(expectedtext.trim())) {
                        testStepPassed(expectedtext);
                        manualScreenshot(getRefOfXpath(locator) + "\n text verified successfully");
                    } else {
                        stepFailed("Expected Text: " + expectedtext);
                        stepFailed("Actual Text: " + text);
                        manualScreenshot(getRefOfXpath(locator) + "\n text is not verified");
                    }
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify get text using locator: " + getRefOfXpath(locator) + " and compare with text. Exception: " + e.getClass());
        }
    }

    public void clickOnLocatorIfDisplayedUsingLocatorUsingForLoop(String locator) {
        try {
            Boolean flag = false;
            int size = findWebElements(locator).size();
            for (int i = 1; i <= size; i++) {
                String button = "" + locator.split("#")[0] + "#xpath=(" + locator.split("#xpath=")[1] + ")[" + i + "]";
                if (isElementDisplayed(button)) {
                    manualScreenshot(locator.split("#")[0] + " button is Displayed successfully");
                    clickOn(button);
                    waitForPageToLoad();
                    break;
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in click on  " + getRefOfXpath(locator) + " button using locator using for loop. Exception: " + e.getClass());
        }

    }

    ////////Mustaq////////////start
    public void verifymultipleButtonIsDisplayedInThePageusingText(String buttonswithComma, String extra) {
        try {
            String[] split = buttonswithComma.split(",");
            for (int i = 0; i < split.length; i++) {
                String button = split[i];
                verifyButtonIsDisplayedInThePage(button);
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify multiple Button Is Displayed In The Page. Exception: " + e.getClass());
        }

    }

    public boolean verifyButtonIsDisabledInThePageusingText(String buttonText) {
        boolean flag = false;
        try {
            String disabled = buttonText + "#xpath=//a[normalize-space(text())='" + buttonText + "'][@disabled]|//button[normalize-space(text())='" + buttonText + "'][@disabled]";
            for (int i = 1; i <= findWebElements(disabled).size(); i++) {
                String disabledButton = "" + buttonText + " Button#xpath=(//a[normalize-space(text())='" + buttonText + "'][@disabled]|//button[normalize-space(text())='" + buttonText + "'][@disabled])[" + i + "]";
                if (isElementPresent(disabledButton)) {
                    scrollToWebElement(disabledButton);
                    if (isElementDisplayed(disabledButton))
                        manualScreenshot(buttonText + " is in Diabled Condition verified successfully");
                    flag = true;
                    break;
                }
            }
            if (!flag) {
                testStepFailed(buttonText + " button is Not in Disabled Condition");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify " + buttonText + " button Is Disabled In The Page. Exception: " + e.getClass());
        }

        return flag;
    }

    public void verifymultipleButtonIsDisabledInThePageusingText(String buttonswithComma, String extra) {
        try {
            String[] split = buttonswithComma.split(",");
            for (int i = 0; i < split.length; i++) {
                String button = split[i];
                verifyButtonIsDisabledInThePageusingText(button);
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify multiple Button Is Disabled In The Page. Exception: " + e.getClass());
        }

    }

    public boolean verifyButtonIsEnabledInThePageusingText(String buttonText) {
        boolean flag = false;
        try {

            String enabled = buttonText + "#xpath=//a[normalize-space(text())='" + buttonText + "'][not(@disabled)]|//button[normalize-space(text())='" + buttonText + "'][not(@disabled)]";
            for (int i = 1; i <= findWebElements(enabled).size(); i++) {
                String enabledButton = "" + buttonText + " Button#xpath=(//a[normalize-space(text())='" + buttonText + "'][not(@disabled)]|//button[normalize-space(text())='" + buttonText + "'][not(@disabled)])[" + i + "]";
                if (isElementPresent(enabledButton)) {
                    scrollToWebElement(enabledButton);
                    if (isElementDisplayed(enabledButton))
                        manualScreenshot(buttonText + " is in Diabled Condition verified successfully");
                    flag = true;
                    break;
                }
            }
            if (!flag) {
                testStepFailed(buttonText + " button is Not in Disabled Condition");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify " + buttonText + " button Is Enabled In The Page. Exception: " + e.getClass());
        }

        return flag;
    }

    public void verifymultipleButtonIsEnabledInThePageusingText(String buttonswithComma, String extra) {
        try {
            String[] split = buttonswithComma.split(",");
            for (int i = 0; i < split.length; i++) {
                String button = split[i];
                verifyButtonIsDisabledInThePageusingText(button);
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify multiple Button Is Enabled In The Page. Exception: " + e.getClass());
        }

    }

    ///Mustaq end////////////
//////// Neelakandan ////////
    public String LoginIndividualForHome(String mobileNumber, String dob, String otp) {
        String urlHome = "";
        try {
            notePad = new File(System.getProperty("user.dir") + "//FailedResults//" + DateTimeFormatter.ofPattern("d-MMM-YY-HH-mm-ss").format(LocalDateTime.now().minusSeconds(3)) + ".txt");
            newFile = notePad.createNewFile();
            String typeLocator = "Individual Customer tab#xpath=//div[@class='formtab']/descendant::a[normalize-space(text())='Individual']";
            String txtBox_MobileNumber = "Mobile Number Text Box For Individual#xpath=(//input[@id='txtEmailMobile_Individual'])[1]";
            String txtBox_Dob = "DOB Text Box For Individual#xpath=(//input[@id='EnterDOBdate_Individual'])[1]";
            redirectToUrl("https://uat-oneweb.bajajfinserv.in/MyAccountLogin/Login/LogoutUserBasedOnMobile?MobileNo=" + mobileNumber + "", "");
            waitTime(2);
            redirectToUrl("https://uat-oneweb.bajajfinserv.in/MyAccountLogin", "");
            clickOnButtonUsingLocatorUsingForLoopWithoutFail(LoginPage.skip);
            String load = "Loader#xpath=//div[@id='status']";
            String loadInACtive = "Loader In Active#xpath=//div[@id='status'and(@style)]";
            while (isElementDisplayed(load)) {
                if (isElementPresent(loadInACtive)) {
                    break;
                }
            }

            waitTime(2);
//            boolean flag1 = clickOnIfDisplayed(LoginPage.icon_MyAccount);
//            if (flag1) {
//                boolean flag2 = clickOnIfDisplayed(LoginPage.login_Button);
//                if (flag2) {
            clickOnButtonUsingLocatorUsingForLoopWithoutFail(LoginPage.skip);
            clickOnIfDisplayed(typeLocator);
            typeInIfPresent(txtBox_MobileNumber, mobileNumber);
            clickOnButtonUsingTextUsingForLoop("Get OTP");
            waitForPageToLoad();
            enterOtpInTextBox("o", "123456");
            clickOnButtonUsingTextUsingForLoop("Submit");
            typeInIfPresent(txtBox_Dob, dob);
            clickOnButtonUsingTextUsingForLoop("PROCEED");
            waitForPageToLoad();
            if (!isElementDisplayed(HomePage.txt_Home)) {
                skipSteps("Login is Un Successful");
//                        ApplicationKeywords.quitBrowser = true;
//                        SoftAssertions sa = new SoftAssertions();
//                        sa.fail("Login is Un Successful");
//                        sa.assertAll();
            } else {
                testStepPassed("Login is Successful");
                clickOnButtonUsingLocatorUsingForLoopWithoutFail(LoginPage.skip);
            }
            urlHome = driver.getCurrentUrl();
//                } else {
//                    skipSteps("Login is Un Successful");
//                    ApplicationKeywords.quitBrowser=true;
//                    SoftAssertions sa=new SoftAssertions();
//                    sa.fail("Login is Un Successful");
//                    sa.assertAll();
//                }
//            } else {
//                skipSteps("Login is Un Successful");
//                ApplicationKeywords.quitBrowser=true;
//                SoftAssertions sa=new SoftAssertions();
//                sa.fail("Login is Un Successful");
//                sa.assertAll();
//            }


        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in Login Individual. Exception: " + e.getClass());
            ApplicationKeywords.quitBrowser = true;
            SoftAssertions sa = new SoftAssertions();
            sa.fail("Login is Un Successful");
            sa.assertAll();
        }
        return urlHome;
    }

    public void clickOnTabRightSide() {
        try {
            Actions actions = new Actions(driver);
            Dimension size = driver.manage().window().getSize();
            int x = size.getHeight();
            int y = size.getWidth();
            actions.moveByOffset((x / 3), y).click().build().perform();
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("failed in click on inside of page Right Side. Exception: " + e.getClass());
        }
    }

    public void clickOnRadioButtonUsingLabel(String label, String extra) {
        try {
            String labelLoc = label + "Radio button label#xpath=//*[normalize-space(text())='" + label.trim() + "']";
            Boolean flag = scrollToWebElementIfPresent(labelLoc);
            if (flag) {
                if (isElementDisplayed(labelLoc)) {
                    testStepPassed(getRefOfXpath(labelLoc) + " is Displayed successfully");
                    String radioLoc = label + " Radio Button#xpath=" + getCommonPathOfLocator(labelLoc) + "/following-sibling::input|" + getCommonPathOfLocator(labelLoc) + "/input";
                    if (isElementPresent(radioLoc)) {
                        clickOn(radioLoc);
                    } else {
                        testStepFailed(getRefOfXpath(radioLoc) + " is not Present");
                    }
                } else {
                    testStepFailed(getRefOfXpath(labelLoc) + " is Not Displayed");
                }
            }


        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Faile din Click on Radio button using Label " + label + ". Exception: " + e.getClass());
        }
    }
////// ravi - Start ////////////////

    public void clickOn(String objLocator, String param) {
        try {

            findWebElement(objLocator).click();
            testStepAction("Click On: " + objLocator.split("#")[0]);
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in Click On " + getRefOfXpath(objLocator) + ". Exception: " + e.getClass());
        }
    }


    public Boolean clickOnHorizantalLevelSingleSubMenu(String firstLevelMenuText, String menuText) {
        Boolean flag = false;
        try {

            String locator = "Horizantal level 1 sub Menu - " + menuText + "#xpath=//a[normalize-space(text())='" + firstLevelMenuText + "']/following::a[normalize-space(text())='" + menuText + "']";
            // String locator = "Horizantal level 2 sub Menu - " + menuText + "#xpath=//a[normalize-space(text())='" + firstLevelMenuText.trim() + "']/../div[@class='leveltwo_sub_items']/descendant::a[normalize-space(text())='" + menuText.trim() + "']";
            //scrollToWebElement(locator);
            if (isElementDisplayed(locator)) {
                clickOn(locator, "");
                waitForPageToLoad();
                flag = true;
            } else {
                testStepFailed("Horizantal level 2 sub Menu - " + menuText + " is not displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in click On Horizantal level 2 sub  Menu " + menuText + ". Exception: " + e.getClass());
        }
        return flag;
    }


    public Boolean clickOnHorizantalLevelApplyOnlineMenu(String firstLevelMenuText, String menuText) {
        Boolean flag = false;
        try {

            String locator = "Horizantal level 2 sub Menu - " + menuText + "#xpath=//li[@class='dropdown-parent']//following-sibling::li[normalize-space(text())='" + firstLevelMenuText.trim() + "']//a[normalize-space(text())='" + menuText.trim() + "']";
            if (isElementDisplayed(locator)) {
                clickOn(locator, "");
                waitForPageToLoad();
                flag = true;
            } else {
                testStepFailed("Horizantal level 2 sub Menu - " + menuText + " is not displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in click On Horizantal level 2 sub  Menu " + menuText + ". Exception: " + e.getClass());
        }
        return flag;
    }

    public Boolean clickOnHorizantalMenu(String menuText) {
        Boolean flag = false;
        try {
            //  String locator = "Horizantal Menu - " + menuText + "#xpath=//ul[@class='menuitems']/descendant::a[normalize-space(text())='" + menuText.trim() + "']";
            String locator = "Horizantal Menu - " + menuText + "#xpath=//div[@class='newcust_subheader']/descendant::a[normalize-space(text())='" + menuText.trim() + "']";
            if (isElementDisplayed(locator)) {
                clickOn(locator, "");
                flag = true;
            } else {
                testStepFailed("Horizantal Menu - " + menuText + " is not displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in click On Horizantal Menu " + menuText + ". Exception: " + e.getClass());
        }
        return flag;
    }


    public Boolean clickOnHorizantalLevelTwoSubMenu(String firstLevelMenuText, String menuText) {
        Boolean flag = false;
        try {

            String locator = "Horizantal level 2 sub Menu - " + menuText + "#xpath=//li[@class='dropdown-parent']//following-sibling::li[normalize-space(text())='" + firstLevelMenuText.trim() + "']//ul[@class='list-unstyled']//a[normalize-space(text())='" + menuText.trim() + "']";
            // String locator = "Horizantal level 2 sub Menu - " + menuText + "#xpath=//a[normalize-space(text())='" + firstLevelMenuText.trim() + "']/../div[@class='leveltwo_sub_items']/descendant::a[normalize-space(text())='" + menuText.trim() + "']";
            //scrollToWebElement(locator);
            if (isElementDisplayed(locator)) {
                clickOn(locator, "");
                waitForPageToLoad();
                flag = true;
            } else {
                testStepFailed("Horizantal level 2 sub Menu - " + menuText + " is not displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in click On Horizantal level 2 sub  Menu " + menuText + ". Exception: " + e.getClass());
        }
        return flag;
    }


    public Boolean clickOnHorizantalLevelTwoSubMenuwithoutSubheading(String firstLevelMenuText, String menuText) {
        Boolean flag = false;
        try {

            String locator = "Horizantal level 2 sub Menu - " + menuText + "#xpath=//li[@class='dropdown-parent']//following-sibling::li[normalize-space(text())='" + firstLevelMenuText.trim() + "']//ul//a[normalize-space(text())='" + menuText.trim() + "']";
            // String locator = "Horizantal level 2 sub Menu - " + menuText + "#xpath=//a[normalize-space(text())='" + firstLevelMenuText.trim() + "']/../div[@class='leveltwo_sub_items']/descendant::a[normalize-space(text())='" + menuText.trim() + "']";
            //scrollToWebElement(locator);
            if (isElementDisplayed(locator)) {
                clickOn(locator, "");
                waitForPageToLoad();
                flag = true;
            } else {
                testStepFailed("Horizantal level 2 sub Menu - " + menuText + " is not displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in click On Horizantal level 2 sub  Menu " + menuText + ". Exception: " + e.getClass());
        }
        return flag;
    }


    public Boolean clickOnHorizantalLevelTwoSubheadingSubMenu(String firstLevelMenuText, String subHeading, String menuText) {
        Boolean flag = false;
        try {
            String locator = "Horizantal level 2 sub Menu - " + menuText + "#xpath=//li[@class='dropdown-parent']//following-sibling::li[normalize-space(text())='" + firstLevelMenuText.trim() + "']//h4[text()='" + subHeading + "']/following-sibling::ul//a[normalize-space(text())='" + menuText.trim() + "']";
            scrollToWebElement(locator);
            if (isElementDisplayed(locator)) {
                clickOn(locator);
                waitForPageToLoad();
                flag = true;
            } else {
                testStepFailed("Horizantal level 2 sub Menu - " + menuText + " is not displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in click On Horizantal level 2 sub  Menu " + menuText + ". Exception: " + e.getClass());
        }
        return flag;
    }

////// ravi - End ////////////////

    ////// Mustaq - Start ////////////////
    public Boolean verifyLocatorColorUsingCssValueUsingPresent(String objectLocator, String expectedColorHexValue, String expectedColor, String cssValue) {
        Boolean flag = false;
        try {
            if (isElementPresent(objectLocator)) {
                manualScreenshot(objectLocator.split("#")[0] + " is Displayed Successfully");
                String color = findWebElement(objectLocator).getCssValue(cssValue);
                String hex = Color.fromString(color).asHex();
                testStepInfo(hex);
                if (hex.equals(expectedColorHexValue)) {
                    flag = true;
                    manualScreenshot(objectLocator.split("#")[0] + " - " + expectedColor + " Color Verified Successfully");
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


    public void verifyFieldDisplayedUsingTagAndText(String tag, String text, String extra) {
        try {
            String locator = "";
            if (extra.equals("")) {
                locator = "" + text + "#xpath=//" + tag + "[normalize-space(text())='" + text.trim() + "']";
            } else {
                locator = "" + text + "#xpath=(//" + tag + "[normalize-space(text())='" + text.trim() + "'])[" + extra + "]";
            }
            if (isElementDisplayed(locator)) {
                manualScreenshot(text + " is Displayed Successfully");
            } else {
                testStepFailed(text + " is Not Displayed in the Page");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Field Displayed Using Tag And Text " + text + ". Exception: " + e.getClass());
        }

    }

    public String verifyValueUsingLabelUsingIteration(String commonPath, String labelText, String additionalPath, int i, String extra) {
        String value = "";
        try {
            String label = "" + labelText + " Label#xpath=(" + commonPath + "[normalize-space(text())='" + labelText.trim() + "'])[" + i + "]";
            String labelValue = "" + labelText + " Value#xpath=(" + commonPath + "[normalize-space(text())='" + labelText.trim() + "']" + additionalPath + ")[" + i + "]";
            scrollToWebElement(label);
            if (isElementDisplayed(label)) {
                manualScreenshot(getRefOfXpath(label) + " is Displayed Successfully");
                if (isElementDisplayed(labelValue)) {
                    if (extra.equals("attribute")) {
                        value = findWebElement(labelValue).getAttribute("value").trim();
                    } else {
                        value = getTextPresent(labelValue).trim();
                    }
                    manualScreenshot(getRefOfXpath(labelValue) + " is Displayed Successfully. Value: " + getText(labelValue));
                } else {
                    testStepFailed(getRefOfXpath(labelValue) + " is not displayed");
                }
            } else {
                testStepFailed(labelText + " is not displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Value using Label Using Iteration " + labelText + ". Exception: " + e.getClass());
        }
        return value;
    }


    ////// Mustaq - End ////////////////

    public void getJsonFieFromOnline() {
        try {
//            driver.get("https://cms-api.bajajfinserv.in/content/bajajfinserv/experia/in/en/homepage");
            driver.get("https://stage-aem-api.bajajfinserv.in/content/bajajfinserv/experia/in/en/homepage");
            String jsonLocator = "AEM Jason Value#xpath=//pre";
            String Content = getTextPresent(jsonLocator);
            File file;
            file = new File(System.getProperty("user.dir") + "\\UploadDocuments\\NewHomeAEM.json");
            if (file.exists()) {
                file.delete();
                file = new File(System.getProperty("user.dir") + "\\UploadDocuments\\NewHomeAEM.json");
            }
            FileWriter fr = new FileWriter(file, true);
            BufferedWriter br = new BufferedWriter(fr);
            br.write(Content);
            br.close();
            fr.close();
            System.out.println("Home Json from AEM download successfully");
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in get Json from Online. Exception: " + e.getClass());
        }
    }


    public static void generateFailureNotePad() {
        try {
            if (driver != null) {
                driver.quit();
                File src = ApplicationKeywords.getStaticLatestFilefromDir(System.getProperty("user.dir") + "\\FailedResults");
                System.err.println(src);
                String name1 = ApplicationKeywords.getStaticLatestFilefromDir(System.getProperty("user.dir") + "\\Test Results").getName();
                System.err.println(name1);
                File name = new File(System.getProperty("user.dir") + "\\Test Results\\" + name1);
                System.err.println(name);
                FileUtils.copyFileToDirectory(src, name);
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in generate Failure Note Pad. Exception: " + e.getClass());
        }
    }


    public void verifyLogoutForTestRunner() {
        try {
            if (isElementDisplayed(LoginPage.icon_Profile)) {
                clickOnIfDisplayed(LoginPage.icon_Profile);
                clickOnButtonUsingTextUsingForLoop("Logout");
                waitForPageToLoad();
                waitTime(3);
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in Logout for Test Runner. Exception: " + e.getClass());
        }
    }

    public boolean isElementDisplayedWithWait(String locator) {
        boolean flag = false;
        try {
            WebElement element = findWebElement(locator);
            WebDriverWait wait = new WebDriverWait(driver, 2);
            wait.until(ExpectedConditions.visibilityOf(element));
            flag = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return flag;
    }

    public boolean isElementNotDisplayedWithWait(String locator) {
        boolean flag = false;
        try {
            WebElement element = findWebElement(locator);
            WebDriverWait wait = new WebDriverWait(driver, 2);
            wait.until(ExpectedConditions.invisibilityOf(element));
            flag = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return flag;
    }

    public void pageDown() {
        try {
            Actions actions = new Actions(driver);
            actions.sendKeys(Keys.PAGE_DOWN).build().perform();
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in Page Down. Exception: " + e.getClass());
        }
    }

    /////// Mustaq - start ////////
    public void verifyAmountWithRs(String locatorXPath, String locatorLabel, String symbol, String extra) {
        try {
            String locator = "" + locatorLabel + "#xpath=" + locatorXPath + "";
//            verifyElementIsPresentAndGetText(locator);
            verifyElementIsDisplayedAndGetText(locator);
            String valueAmount = getTextPresent(locator);
            String[] split = valueAmount.split("Rs. ");
            String value = split[1].replaceAll(symbol, "");
            Boolean s = true;
            for (int i = 0; i < value.length(); i++) {
                if (!Character.isDigit(value.charAt(i))) {
                    s = false;
                }
            }
            if (s) {
                testStepPassed(locatorLabel + " value has only digits verified successfully");
            } else {
                stepFailed(locatorLabel + " value has only digits is not verified");
            }

        } catch (ArrayIndexOutOfBoundsException e) {
            e.printStackTrace();
            testStepFailed("There is no space between Rs. and Amount. Exception: " + e.getClass());
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify " + locatorLabel + " Amount with Rs. and Digits -. Exception: " + e.getClass());
        }
    }


    public void verifyDateFormat(String locatorXPath, String locatorLabel, String format, String extra) {
        try {
            String locator = "" + locatorLabel + "#xpath=" + locatorXPath + "";
            verifyElementIsDisplayedAndGetText(locator);
            String value = getTextPresent(locator);
            boolean flag = GenericValidator.isDate(value, format, true);
            if (flag) {
                testStepPassed(locatorLabel + " Value has Date Format verified successfully. " + format);
            } else {
                stepFailed(locatorLabel + " Value has Date Format is not verified");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed i verify value is Date Format. Exception: " + e.getClass());
        }
    }

    public Boolean verifyElementIsDisplayedAndGetText(String locator) {
        Boolean flag = false;
        try {
            if (isElementPresent(locator)) {
                flag = true;
                scrollToWebElement(locator);
                verifyElementIsDisplayedOrNot(locator);
                testStepInfo(locator.split("#")[0] + "-" + getTextPresent(locator));
            } else {
                testStepFailed(locator.split("#")[0] + " is Not Present");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verifyElementIsPresentAndGetText . Exception: " + e.getClass());
        }
        return flag;
    }
    /////// Mustaq - end ////////


    public void deleteAllFilesInInternalDownloadsFolder() {
        try {
            File directory = new File(System.getProperty("user.dir") + "\\Downloads");
            for (File file : Objects.requireNonNull(directory.listFiles())) {
                if (!file.isDirectory()) {
                    file.delete();
                    System.out.println("Delete All Files in Internal Downloads Folder successfully");
                }
            }
//            FileUtils.cleanDirectory(directory);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void navigateBack() {
        try {
            driver.navigate().back();
            waitForPageToLoad();
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in Navigate Back. Exception: " + e.getClass());
        }
    }

    //Neelakandan

    public void verifyFieldsNotDisplayedUsingTextUsingForLoopWithoutScroll(String fieldText, String type, String extra) {
        try {
            String field = "";
            if (type.toLowerCase().contains("button") || type.toLowerCase().contains("link text")) {
                field = "" + fieldText + " Button#xpath=//a[normalize-space(text())='" + fieldText.trim()
                        + "']|//*[@placeholder='" + fieldText.trim() + "']|//input[@value='" + fieldText.trim() + "']|//button[normalize-space(text())='" + fieldText.trim() + "']";
            } else if (type.toLowerCase().contains("text box")) {
                field = "" + fieldText + " text box#xpath=//label[normalize-space(text())='" + fieldText.trim()
                        + "']/following-sibling::input";
            } else {
                field = "" + fieldText + " " + type + "#xpath=//*[normalize-space(text())='" + fieldText.trim()
                        + "']";
            }
            boolean status = false;
            if (isElementPresent(field)) {
                int size = sizeOfLocator(field);
                for (int i = 1; i <= size; i++) {
                    String loc = getRefOfXpath(field) + " " + i + "#xpath=(" + getCommonPathOfLocator(field) + ")[" + i + "]";
                    if (isElementDisplayed(loc)) {
                        testStepFailed(fieldText + " is Displayed Wrongly");
                        status = true;
                        break;
                    }
                }
                if (!status) {
                    testStepPassed(fieldText + " is Not Displayed successfully");
                }

            } else {
                testStepPassed(getRefOfXpath(field) + " is not present successfully");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Fields is Not Displayed Using Text " + fieldText + " and For Loop. Exception: " + e.getClass());
        }
    }

    //ravi
    public Boolean verifyLocatorColorUsingCssValueUsingRGB(String objectLocator, String expectedColorHexValue, String expectedColor, String cssValue) {
        Boolean flag = false;
        try {
            scrollToWebElementIfPresent(objectLocator);
            if (isElementDisplayed(objectLocator)) {
                manualScreenshot(objectLocator.split("#")[0] + " is Displayed Successfully");
                String color = findWebElement(objectLocator).getCssValue(cssValue);
                String[] rgba = color.replace("rgba(", "").replace(")", "").split(", ");
                int r = Integer.parseInt(rgba[0]);
                int g = Integer.parseInt(rgba[1]);
                int b = Integer.parseInt(rgba[2]);
                int a = Integer.parseInt(rgba[3]);
                Color color2 = new Color(r, g, b, a);
                String hex = color2.asHex().toUpperCase();
//            hex = hex.toUpperCase();
//            String hex = Color.fromString(color2).asHex();
                testStepInfo(hex);
                if (hex.equals(expectedColorHexValue)) {
                    flag = true;
                    manualScreenshot(objectLocator.split("#")[0] + " - " + expectedColor + " Color Verified Successfully");
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

    //neelakandan
    public void verifyRedirectionForCommon(String expectUrl, String withSSO, String extra) {
        try {
            testStepPassed("******* " + extra + " *******");
            if (withSSO.toLowerCase().contains("sso")) {
                waitForElementUrlLoaded(expectUrl);
                verifyRedirectioninSSO_Tab(expectUrl, "");
            } else {
                verifyRedirectioninNewTab(expectUrl, "");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Redirection common. Exception: " + e.getClass());
        }
    }

    ////Mustaq- 07022023//// start
    public void arrowDown(String locator, int times, String extra) {
        try {
            for (int i = 1; i <= times; i++) {
                findWebElement(locator).sendKeys(Keys.ARROW_DOWN, Keys.RETURN);
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in Arrow Down. Exception: " + e.getClass());
        }
    }


    public static String generateRandomAlphanumericString(int length, String extra) {
        String randomstring = "";
        try {
            String chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
            StringBuilder sb = new StringBuilder();
            Random random = new Random();
            for (int i = 0; i < length; i++) {
                sb.append(chars.charAt(random.nextInt(chars
                        .length())));
            }
            randomstring = sb.toString();

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in generate Random Alphanumeric String. Exception: " + e.getClass());
        }
        return randomstring;
    }


    public boolean verifyRadioButtonIsSelectedUsingLocator(String locator, String extra) {
        boolean flag = false;
        try {
            scrollToWebElement(locator);
            WebElement objElement = findWebElement(locator);
            if (objElement.isSelected()) {
                manualScreenshot(locator.split("#")[0] + " is selected successfully");
                flag = true;
            } else {
                testStepFailed(locator.split("#")[0] + " is Not Selected");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("failed in verify Radio Button Is Selected Using Locator. Exception: " + e.getClass());

        }
        return flag;
    }

    public boolean verifyRadioButtonIsUnSelectedUsingLocator(String locator, String extra) {
        boolean flag = false;
        try {
            scrollToWebElement(locator);
            WebElement objElement = findWebElement(locator);
            if (!objElement.isSelected()) {
                manualScreenshot(locator.split("#")[0] + " is Un-selected successfully");
                flag = true;
            } else {
                testStepFailed(locator.split("#")[0] + " is Not Un-Selected");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("failed in verify RadioButton Is UnSelected Using Locator. Exception: " + e.getClass());

        }
        return flag;
    }


////14032023

    public void verifyErrorMessageUsingLocatorAndGetText(String locatorErrMsg) {
        try {
            if (isElementDisplayed(locatorErrMsg)) {
                manualScreenshot(getText(locatorErrMsg) + " : error message is displayed successfully");
            } else {
                testStepFailed("Error message is not displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Error Message Using Locator And GetText. Exception: " + e.getClass());
        }
    }

    //end

    public void verifyerrorMessageForTextBoxUsingLabel(String label, String errmsg, String extra) {
        try {
            String errLocator = label + " Err Msg: " + errmsg + "#xpath=//label[normalize-space(text())='" + label.trim() + "']/following-sibling::*[normalize-space(text())='" + errmsg.trim() + "'][contains(@class,'errormsg')][@style='display:block']";
            Boolean flag = scrollToWebElementIfPresent(errLocator);
            if (flag) {
                verifyElementIsDisplayedUsingLocator(errLocator);
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify error message for text box using Label. Exception: " + e.getClass());
        }
    }

    public void enterValueUsingLabel(String label, String value, String extra) {
        try {
            String loc = label + " Text box#xpath=//label[normalize-space(text())='" + label.trim() + "']/following-sibling::input";
            Boolean aBoolean = scrollToWebElementIfPresent(loc);
            if (aBoolean) {
                typeInIfDisplayed(loc, value);
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in enter " + value + " in " + label + " text box. Exception: " + e.getClass());
        }
    }

    public void clearValueUsingLabel(String label, String extra) {
        try {
            String loc = label + " Text box#xpath=//label[normalize-space(text())='" + label.trim() + "']/following-sibling::input";
            Boolean aBoolean = scrollToWebElementIfPresent(loc);
            if (aBoolean) {
                clearEditBox(loc);
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in Clear the value in " + label + " text box. Exception: " + e.getClass());
        }
    }

    public Boolean verifyElementIsNotDisplayedUsingLocator(String locator) {
        Boolean flag = false;
        try {
            if (!isElementDisplayed(locator)) {
                manualScreenshot(locator.split("#")[0] + " is Not displaying successfully");
                flag = true;
            } else {
                testStepFailed(locator.split("#")[0] + " is  still displaying ");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Element Is NOt Present Using Locator " + getRefOfXpath(locator) + ". Exception: " + e.getClass());
        }
        return flag;
    }

    ///////////////////////09052023
    public void verifyFieldsNotDisplayedUsingCommonXpathAndMultipleTextWithHash(String commonXpath, String textsWithHash, String extra) {
        String text = "";
        try {
            String[] split = textsWithHash.split("#");
            for (int i = 0; i < split.length; i++) {
                text = split[i];
                String locator = "" + text + "#xpath=" + commonXpath + "[normalize-space(text())='" + text.trim() + "']";
                if (!isElementDisplayed(locator)) {
                    manualScreenshot(text + " is not Displayed successfully.");
                } else {
                    testStepFailed(text + " is Displayed.");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify fields Not Displayedusing common xpath and text with hash " + text + ". Exception: " + e.getClass());
        }

    }

    public void clickOnButtonUsingTextUsingForLoopWithoutWait(String buttonText) {
        try {
            Boolean flag = false;
            String locator = buttonText + "#xpath=//a[normalize-space(text())='" + buttonText + "']|//button[normalize-space(text())='" + buttonText + "']|//input[@value='" + buttonText.trim() + "']";
            for (int i = 1; i <= findWebElements(locator).size(); i++) {
                String button = "" + buttonText + " Button#xpath=(//a[normalize-space(text())='" + buttonText + "']|//button[normalize-space(text())='" + buttonText + "']|//input[@value='" + buttonText.trim() + "'])[" + i + "]";
//                    scrollToWebElementIfPresent(button);
                if (isElementDisplayed(button)) {
                    manualScreenshot(buttonText + " button is Displayed successfully");
                    clickOn(button);
                    flag = true;
                }
                if (!flag) {
                    testStepFailed(buttonText + " button is Not Displayed");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in click on " + buttonText + " button using for Loop Without Wait. Exception: " + e.getClass());
        }

    }


    /////////////////Mustaq-24042023

    public void verifyByDefaultSelectedTab(String Tab, String extra) {
        String activeTab = "" + Tab + " Tab #xpath=//a[normalize-space(text())='" + Tab.trim() + "']/parent::li[@class='active']";
        try {
            if (isElementDisplayed(activeTab)) {
                testStepPassed(Tab + " Tab is selected by Default");
            } else {
                testStepFailed(getRefOfXpath(activeTab) + "is not selected by Default");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify by Default Selected Tab .Exception:" + e.getClass());
        }

    }


    //////////////Mustaq-29052023
    public boolean verifyCheckBoxIsSelectedUsingLocator(String locator, String extra) {
        boolean flag = false;
        try {
            scrollToWebElement(locator);
            WebElement objElement = findWebElement(locator);
            if (objElement.isSelected()) {
                manualScreenshot(locator.split("#")[0] + " is selected successfully");
                flag = true;
            } else {
                testStepFailed(locator.split("#")[0] + " is Not Selected");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("failed in verify Check Box Is Selected Using Locator. Exception: " + e.getClass());

        }
        return flag;
    }

    public boolean verifyCheckBoxIsNotSelectedUsingLocator(String locator, String extra) {
        boolean flag = false;
        try {
            scrollToWebElement(locator);
            WebElement objElement = findWebElement(locator);
            if (!objElement.isSelected()) {
                manualScreenshot(locator.split("#")[0] + " is not/Un Selected");
                flag = true;
            } else {
                testStepFailed(locator.split("#")[0] + " is in Selected condition");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("failed in verify Check Box Is Not Selected Using Locator. Exception: " + e.getClass());

        }
        return flag;
    }

    //////////////////////////////////2706/////
    public void verifyErrorMessageUsingTextUsingForLoop(String errorMessageText) {
        try {
            Boolean flag = false;
            String locatorErrMsg = "Error Msg: " + errorMessageText + "#xpath=//*[normalize-space(text())='" + errorMessageText.trim() + "']";
            waitTime(2);
            int num = sizeOfLocator(locatorErrMsg);
            for (int i = 1; i <= num; i++) {
                String locatorErrMsg1 = "Error Msg: " + errorMessageText + "#xpath=(//*[normalize-space(text())='" + errorMessageText.trim() + "'])[" + i + "]";
                if (isElementDisplayed(locatorErrMsg1)) {
                    manualScreenshot(errorMessageText + " error message is displayed successfully");
                    flag = true;
                    break;
                }
            }
            if (!flag) {
                testStepFailed(errorMessageText + " error message is not displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verifyError Message " + errorMessageText + ". Exception: " + e.getClass());
        }
    }


    ///////////////////-AZURE//////////////////////////


    public static void logBuginAzure() {

        Properties prop = new Properties();
        InputStream input;
        strProjectLoc = System.getProperty("user.dir");

        try {

            input = new FileInputStream(strProjectLoc + File.separator + "src" + File.separator + "main" + File.separator + "resources" + File.separator + "config" + File.separator + "config.properties");
            prop.load(input);

        } catch (Exception e) {

            System.out.println("Exception found" + e);

        }

        String AssginedTo = prop.getProperty("AssignedTo");
        String BugEnvironment = prop.getProperty("BugEnvironment");
        String BugDetectedIn = prop.getProperty("BugDetectedIn");
        String BugSeverity = prop.getProperty("BugSeverity");
        String Devices = prop.getProperty("Devices");
        String OS = prop.getProperty("OS");
        String BuildNumber = prop.getProperty("BuildNumber");
        String AreaPath = prop.getProperty("AreaPath");
        String endpoint = prop.getProperty("APIEndpoint");


        request = RestAssured.given();
        request.contentType("multipart/form-data; boundary=----WebKitFormBoundary7MA4YWxkTrZu0gW");
        request.multiPart("Title", scenarioName);
        request.multiPart("BugDetectedIn", BugDetectedIn);
        request.multiPart("BugEnvironment", BugEnvironment);
        request.multiPart("BugSeverity", BugSeverity);
        request.multiPart("BuildNumber", BuildNumber);
        request.multiPart("Devices", Devices);
        request.multiPart("OS", OS);
        request.multiPart("ReproSteps", "Steps to Reproduce the Scenario: " + "\r\n" + scenarioStepsToRepro + "\r\n" + "Scenario Failed at: " + "\r\n" + failedStepsToRepro);
        request.multiPart("AreaPath", AreaPath);
        request.multiPart("AssignedTo", AssginedTo);
        request.multiPart("ParentWorkitemId", "2401228");


        File src = ((TakesScreenshot) driver).getScreenshotAs(OutputType.FILE);

        request.multiPart("file", src);

        response = request.post(endpoint);

        int actualStatusCode = response.getStatusCode();
        ResponseBody body = response.getBody();
        Assert.assertEquals(200, actualStatusCode);
        System.out.print("response body is : " + body.asString());
        ExtentCucumberAdapter.getCurrentStep().log(Status.FAIL, "Azure Bug ID: " + body.asString());


    }

    public String failedSteps() {
        String value = "";
        value = (failedStepsInScenario.toString());
        return value;
    }


    public String retreiveScenarioSteps() {
        String value = "";

        try {
            List<String> tags = (ArrayList<String>) ApplicationHooks.scena.getSourceTagNames();
            Field f = ApplicationHooks.scena.getClass().getDeclaredField("delegate");
            f.setAccessible(true);
            TestCaseState sc = (TestCaseState) f.get(ApplicationHooks.scena);
            Field f1 = sc.getClass().getDeclaredField("testCase");
            f1.setAccessible(true);
            TestCase t = (TestCase) f1.get(sc);
            List<PickleStepTestStep> testSteps = t.getTestSteps().stream().filter(x -> x instanceof PickleStepTestStep).map(x -> (PickleStepTestStep) x).collect(Collectors.toList());
            StringBuilder st = new StringBuilder();
            for (PickleStepTestStep ts : testSteps) {
                st.append(ts.getStep().getKeyword() + ts.getStep().getText()).append(System.getProperty("line.separator"));
            }
            value = st.toString();


        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in retreive Scenario Steps.Exception: " + e.getClass());

        }


        return value;
    }

////250723

    public void verifyPopupDisplayedUsingTagAndText(String tag, String text, String extra) {
        try {
            String locator = "";
            if (extra.equals("")) {
                locator = "" + text + "#xpath=//" + tag + "[normalize-space(text())='" + text.trim() + "']";
            } else {
                locator = "" + text + "#xpath=(//" + tag + "[normalize-space(text())='" + text.trim() + "'])[" + extra + "]";
            }
            if (isElementDisplayed(locator)) {
                manualScreenshot(text + " Popup is Displayed Successfully");
            } else {
                testStepFailed(text + " Popup is Not Displayed in the Page");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Popup Displayed Using Tag And Text " + text + ". Exception: " + e.getClass());
        }

    }

    public void clickOnButtonUsingXpathAndText(String xpath, String buttonText) {
        try {
            Boolean flag = false;
            String locator = buttonText + "#xpath=" + xpath.trim() + "[normalize-space(text())='" + buttonText.trim() + "']";
//                String button = "" + buttonText + " Button#xpath=(//a[normalize-space(text())='" + buttonText + "']|//button[normalize-space(text())='" + buttonText + "']|//input[@value='" + buttonText.trim() + "'])[" + i + "]";
            scrollToWebElementIfPresent(locator);
            if (isElementDisplayed(locator)) {
                manualScreenshot(buttonText + " button is Displayed successfully");
                clickOn(locator);
                waitForPageToLoad();
                flag = true;
            }
            if (!flag) {
                testStepFailed(buttonText + " button is Not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in click on " + buttonText + " button using Xpath And Text. Exception: " + e.getClass());
        }

    }


}