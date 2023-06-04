package TestRunnerLogin;
import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(//plugin = { "html:target/cucumber-html-report",
        //"json:target/cucumber.json", "pretty:target/cucumber-pretty.txt",
        //"usage:target/cucumber-usage.json", "junit:target/cucumber-results.xml" },
        features = "@target/rerun.txt",
//tags = "not @failed",
//        tags = "@Login",
//        dryRun = true,
        glue = {"stepDefinitions", "AppHooksLogin"},
        plugin = {"pretty", "com.aventstack.extentreports.cucumber.adapter.ExtentCucumberAdapter:", "rerun:target/rerun2.txt", "html:target/cucumber-html-report.html",
                "json:target/cucumber.json", "pretty:target/cucumber-pretty.txt",
                "usage:target/cucumber-usage.json", "junit:target/cucumber-results.xml"}

)

public class TestFailedReRunnerLogin {

}
