package AppHooks;

import TestData.GOR;
import base.ApplicationKeywords;
import io.cucumber.core.backend.TestCaseState;
import io.cucumber.java.*;
import io.cucumber.plugin.event.PickleStepTestStep;
import io.cucumber.plugin.event.Result;
import io.cucumber.plugin.event.TestCase;
import org.apache.commons.io.FileUtils;
import org.assertj.core.api.SoftAssertions;

import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;

import java.io.File;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.stream.Collectors;

public class ApplicationHooks extends ApplicationKeywords {

    public static Scenario scena;
    public boolean logout = false;

    @After(order = 3)
    public void logOut() {
        scenarioStepsToRepro = retreiveScenarioSteps();
        failedStepsToRepro = failedSteps();
        failedStepsInScenario = new StringBuilder();
//        if (GOR.login) {
        verifyLogout();
//        }
    }

    @After(order = 2)
    public void azureStepstoReproduce() {
        System.out.println("Steps to Reproduce the Scenario: " + "\r\n" + scenarioStepsToRepro + "\r\n" + "Scenario Failed at: " + "\r\n" + failedStepsToRepro);

    }


//    @After(order=2)
//    public void quitBrowser()
//    {
//            driver.quit();
//            driver=null;
//    }

    @After(order = 1)
    public void failures() {
        if (GOR.isLoggedIn) {
            if (asser) {
                logBuginAzure();
                GOR.isLoggedIn=false;
                asser = false;
                SoftAssertions sa = new SoftAssertions();
                sa.fail("Assert Failed");
                sa.assertAll();

            }
        }
        else {
            if (asser) {
                asser = false;
                SoftAssertions sa = new SoftAssertions();
                sa.fail("Assert Failed");
                sa.assertAll();
            }
        }
    }





    @AfterStep
    public void Screenshot(Scenario scenario) throws IOException {
        File src = ((TakesScreenshot) driver).getScreenshotAs(OutputType.FILE);
        byte[] fileContent = FileUtils.readFileToByteArray(src);
        scenario.attach(fileContent, "image/png", "");

    }

    @Before
    public void tearDown(Scenario scenario) {
        scena = scenario;
        if (driver == null) {
            launch_browser();
        }
    }


    @Before
    public void setup(Scenario scenario) throws Exception {

        this.scenario = scenario;
        this.scenarioName = scenario.getName();
        scenarioStepsToRepro = "";
        failedStepsToRepro = "";

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