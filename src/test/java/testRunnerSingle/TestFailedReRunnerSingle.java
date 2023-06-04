package testRunnerSingle;
import base.ApplicationKeywords;
import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.apache.commons.io.FileUtils;
import org.junit.runner.RunWith;

import java.io.File;
import java.io.IOException;

@RunWith(Cucumber.class)
@CucumberOptions(//plugin = { "html:target/cucumber-html-report",
        //"json:target/cucumber.json", "pretty:target/cucumber-pretty.txt",
        //"usage:target/cucumber-usage.json", "junit:target/cucumber-results.xml" },
        features = "@target/rerunSingle.txt",
//tags = "not @failed",
//        tags = "@Login",
//        dryRun = true,
        glue = {"stepDefinitions", "AppHooksSingle"},
        plugin = {"pretty", "com.aventstack.extentreports.cucumber.adapter.ExtentCucumberAdapter:", "rerun:target/rerun2Single.txt", "html:target/cucumber-html-report.html",
                "json:target/cucumber.json", "pretty:target/cucumber-pretty.txt",
                "usage:target/cucumber-usage.json", "junit:target/cucumber-results.xml"}

)

public class TestFailedReRunnerSingle {
    public static void closeBrowser() throws IOException {
        if (ApplicationKeywords.driver!=null){
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
}
