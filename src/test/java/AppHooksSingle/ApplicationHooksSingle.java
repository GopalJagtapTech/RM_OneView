package AppHooksSingle;

import AppHooks.ApplicationHooks;
import TestData.GOR;
import base.ApplicationKeywords;
import io.cucumber.java.After;
import io.cucumber.java.AfterStep;
import io.cucumber.java.Before;
import io.cucumber.java.Scenario;
import org.apache.commons.io.FileUtils;
import org.assertj.core.api.SoftAssertions;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import testRunner.TestRunner;

import java.io.File;
import java.io.IOException;

public class ApplicationHooksSingle extends ApplicationKeywords {

//     public static Scenario scena;

    @After(order = 3)
    public void verifyHome() {
        try {

            if (driver.getWindowHandles().size()>1) {
                int count=0;//new
                for (int i = driver.getWindowHandles().size(); i>1 ; i--) {
                    count++;//new
                    if (count==1) {//new
                        transferControlToWindow(driver.getWindowHandles().size(),false);//new
                    }//new
                    transferControlToWindow(driver.getWindowHandles().size(),true);
                }
                transferControlToWindow(1,true);
                if (!driver.getCurrentUrl().equals(urlHome)) {
                    driver.get(urlHome);
                }
            } else{
                if (!driver.getCurrentUrl().equals(urlHome)) {
                    driver.get(urlHome);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            stepFailed("Failed in verify Home in Hooks. Exception: "+e.getClass());
        }
    }


//    @After(order=3)
//    public void logOut()
//    {
//        if (GOR.login) {
//            verifyLogout();
//        }
//    }

    @After(order = 2)
    public void quitBrowser() {
        if (quitBrowser) {
            driver.quit();
            driver = null;
        }
    }


    @After(order=1)
    public void failures()
    {
        if (asser){
            asser=false;
            SoftAssertions sa=new SoftAssertions();
            sa.fail("Assert Failed");
            sa.assertAll();
        }
    }


    @AfterStep
    public void Screenshot(Scenario scenario) {
        try {
            File src = ((TakesScreenshot) driver).getScreenshotAs(OutputType.FILE);
            byte[] fileContent = FileUtils.readFileToByteArray(src);
            scenario.attach(fileContent, "image/png", "");
        } catch (Exception e) {
            e.printStackTrace();
            stepFailed("Failed in Screenshot in Hooks");
        }

    }

    Boolean login = false;
    public static String urlHome = "";

    @Before(order = 5)
    public void login() {
        if (login) {
//            urlHome = LoginIndividualForHome("9890801661", "26051982", "123456");
//            urlHome = LoginIndividualForHome("9689890586", "13011992", "123456");
//            urlHome = LoginIndividualForHome("9636078877", "13011992", "123456");
//            urlHome = LoginIndividualForHome("9898989899", "13011992", "123456");
//            urlHome = LoginIndividualForHome("9652374940", "13011992", "123456");
            urlHome = LoginIndividualForHome("8341066905", "13011992", "123456");
            login = false;
        }
    }


    @Before(order = 2)
    public void tearDown(Scenario scenario) {
        ApplicationHooks.scena = scenario;
        if (driver == null) {
            launch_browser();
            getJsonFieFromOnline();
            login = true;
        }
    }
}