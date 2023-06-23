package AppHooks;

import PageObjects.LoginPage;
import TestData.GOR;
import base.ApplicationKeywords;
import io.cucumber.core.gherkin.Feature;
import io.cucumber.core.gherkin.Pickle;
import io.cucumber.java.*;
import io.cucumber.plugin.event.Node;
import org.apache.commons.io.FileUtils;
import org.assertj.core.api.SoftAssertions;

import org.junit.AfterClass;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;

import java.io.File;
import java.io.IOException;
import java.util.Collection;
import java.util.List;

public class ApplicationHooks extends ApplicationKeywords {

     public static Scenario scena;


     @After(order=3)
    public void logOut()
    {
//        if (GOR.login) {
            verifyLogout();
//        }
    }

//    @After(order=2)
//    public void quitBrowser()
//    {
//            driver.quit();
//            driver=null;
//    }

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
    public void Screenshot(Scenario scenario) throws IOException {
        File src = ((TakesScreenshot) driver).getScreenshotAs(OutputType.FILE);
        byte[] fileContent = FileUtils.readFileToByteArray(src);
        scenario.attach(fileContent, "image/png", "");
    }

    @Before
    public void tearDown(Scenario scenario)  {
        scena = scenario;
        if (driver==null){
            launch_browser();
        }
     }

//    static void addShutdownHook() {
//        Runtime.getRuntime().addShutdownHook(new Thread() {
//            @Override
//            public void run() {
//                driver.quit();
//            }
//        });
//    }
}