package TestRunnerLogin;
import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;
@RunWith(Cucumber.class)
@CucumberOptions(
        features = "classpath:Features/Sprint_2/Services/FdServices/FinalNew/FixedDepositRhs/RenewYourFd",
       // tags = "@Pass",
//stepNotifications = true,
//      dryRun = true,
        glue = {"stepDefinitions","AppHooksLogin"},
        plugin={"pretty","com.aventstack.extentreports.cucumber.adapter.ExtentCucumberAdapter:","rerun:target/rerun.txt","html:target/cucumber-html-report.html",
        "json:target/cucumber.json", "pretty:target/cucumber-pretty.txt",
        "usage:target/cucumber-usage.json", "junit:target/cucumber-results.xml"}
)
public class TestRunnerLogin {

}