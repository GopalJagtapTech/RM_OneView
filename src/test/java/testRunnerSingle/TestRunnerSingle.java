package testRunnerSingle;
import PageObjects.LoginPage;
import base.ApplicationKeywords;
import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.apache.commons.io.FileUtils;
import org.junit.AfterClass;
import org.junit.runner.RunWith;

import java.io.File;
import java.io.IOException;

@RunWith(Cucumber.class)
@CucumberOptions(
        features = "classpath:Features/JulyCRs/FF_3403204_MyAccountpageforWeb_LayoutChanges.feature",
//        tags = "not @Not",
        tags = "@single",
//      dryRun = true,
        glue = {"stepDefinitions","AppHooksSingle"},
        plugin={"pretty","com.aventstack.extentreports.cucumber.adapter.ExtentCucumberAdapter:","rerun:target/rerunSingle.txt","html:target/cucumber-html-report.html",
        "json:target/cucumber.json", "pretty:target/cucumber-pretty.txt",
        "usage:target/cucumber-usage.json", "junit:target/cucumber-results.xml"}
)
public class TestRunnerSingle{
    @AfterClass
    public static void closeBrowser(){
        ApplicationKeywords.generateFailureNotePad();
    }
}