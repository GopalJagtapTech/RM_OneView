package testRunner;
import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;


@RunWith(Cucumber.class)
@CucumberOptions(
        features = "classpath:Features/FrontEnd/Re-imagine/Hamburger/Hamburger_menu.feature",
       tags = "@run",
        glue = {"stepDefinitions","AppHooks"},
        plugin={"pretty","com.aventstack.extentreports.cucumber.adapter.ExtentCucumberAdapter:"}


)

public class TestRunner {
}
