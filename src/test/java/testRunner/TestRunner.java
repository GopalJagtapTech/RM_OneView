package testRunner;

import base.ApplicationKeywords;
import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.AfterClass;
import org.junit.runner.RunWith;

import java.io.IOException;

@RunWith(Cucumber.class)
@CucumberOptions(
        features = "classpath:Features/Your_Customer/FF_6608144_RM_OneView_Bounce_History.feature",
//        tags = "not @passnew and not @notreleased and not @testdatanew",
        tags = "@cc",
//        tags = "not @not",
//        tags = "@DOI1 and not @DOI2",
//        tags = "@check or @pass",
//        tags = "@Pass and @StopSDP",

//stepNotifications = true,
//      dryRun = true,
        glue = {"stepDefinitions", "AppHooks"},
        plugin = {"pretty", "com.aventstack.extentreports.cucumber.adapter.ExtentCucumberAdapter:", "rerun:target/rerun.txt", "html:target/cucumber-html-report.html",
                "json:target/cucumber.json", "pretty:target/cucumber-pretty.txt",
                "usage:target/cucumber-usage.json", "junit:target/cucumber-results.xml"}
)
public class TestRunner {
    @AfterClass
    public static void closeBrowser() throws IOException {
        if (ApplicationKeywords.driver != null) {

            ApplicationKeywords.driver.quit();
//            File src = ApplicationKeywords.getStaticLatestFilefromDir(System.getProperty("user.dir") + "\\FailedResults");
//            System.err.println(src);
//            String name1 = ApplicationKeywords.getStaticLatestFilefromDir(System.getProperty("user.dir") + "\\Test Results").getName();
//            System.err.println(name1);
//            File name = new File(System.getProperty("user.dir") + "\\Test Results\\" + name1);
//            System.err.println(name);
//            FileUtils.copyFileToDirectory(src, name);
        }
    }
}




