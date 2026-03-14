package testRunner;
import base.ApplicationKeywords;
import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.apache.commons.io.FileUtils;
import org.junit.AfterClass;
import org.junit.runner.RunWith;

import java.io.File;
import java.io.IOException;

@RunWith(Cucumber.class)
@CucumberOptions(//plugin = { "html:target/cucumber-html-report",
        //"json:target/cucumber.json", "pretty:target/cucumber-pretty.txt",
        //"usage:target/cucumber-usage.json", "junit:target/cucumber-results.xml" },
        features = "@target/rerun.txt",
//tags = "not @failed",
//        tags = "@Login",
//        dryRun = true,
        glue = {"stepDefinitions", "AppHooks"},
        plugin = {"pretty", "com.aventstack.extentreports.cucumber.adapter.ExtentCucumberAdapter:", "rerun:target/rerun.txt", "html:target/cucumber-html-report.html",
                "json:target/cucumber.json", "pretty:target/cucumber-pretty.txt",
                "usage:target/cucumber-usage.json", "junit:target/cucumber-results.xml"}

)

public class TestFailedReRunner {
    @AfterClass
    public static void closeBrowser() throws IOException {
        ApplicationKeywords.driver.quit();
        File src = ApplicationKeywords.getStaticLatestFilefromDir(System.getProperty("user.dir")+"\\FailedResults");
        System.err.println(src);
        String name1 = ApplicationKeywords.getStaticLatestFilefromDir(System.getProperty("user.dir")+"\\Test Results").getName();
        System.err.println(name1);
        File name = new File(System.getProperty("user.dir")+"\\Test Results\\"+name1);
        System.err.println(name);
        FileUtils.copyFileToDirectory(src, name);
    }
}
