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
//        features = "classpath:Features/JuneCRs/FF_3035189and3255490_SettlementPayment.feature",
        features = "classpath:Features/JuneCRs/US_2738050_ReKYC_Renewal.feature",
        tags = "@debug",
//        tags = "not @myrel",
//        tags = "@Ham and not @pass",
//        tags = "@FD2 and @Pass",
//        tags = "@Pass or @StopSDP",

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