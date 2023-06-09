package testRunner;
import base.ApplicationKeywords;
import io.cucumber.core.gherkin.Feature;
import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import io.cucumber.plugin.event.Node;
import org.apache.commons.io.FileUtils;
import org.junit.AfterClass;
import org.junit.runner.RunWith;

import java.io.File;
import java.io.IOException;

@RunWith(Cucumber.class)
@CucumberOptions(
        features = "classpath:Features/Sprint_1/EmiCardServices/EMICardServices.feature",
//        tags = "not @Not",
        tags = "@runthis",
//        tags = "@FD_2604 and @Pass",
//        tags = "@Pass and @FD2804",

//stepNotifications = true,
//      dryRun = true,
        glue = {"stepDefinitions","AppHooks"},
        plugin={"pretty","com.aventstack.extentreports.cucumber.adapter.ExtentCucumberAdapter:","rerun:target/rerun.txt","html:target/cucumber-html-report.html",
        "json:target/cucumber.json", "pretty:target/cucumber-pretty.txt",
        "usage:target/cucumber-usage.json", "junit:target/cucumber-results.xml"}
)
public class TestRunner{
@AfterClass
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