package AppHooks;

import io.cucumber.java.AfterStep;
import io.cucumber.java.Before;
import io.cucumber.java.After;
import io.cucumber.java.Scenario;
import org.apache.commons.io.FileUtils;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import org.openqa.selenium.WebDriver;
import stepDefinitions.Common;

import java.io.File;
import java.io.IOException;

public class ApplicationHooks extends Common {


    @After(order=0)
    public void quitBrowser()
    {
        driver.quit();
    }

 //   @After(order=1)
    @AfterStep
    public void tearDown(Scenario scenario) throws IOException {
        File src=((TakesScreenshot)driver).getScreenshotAs(OutputType.FILE);
        byte[] fileContent = FileUtils.readFileToByteArray(src);
        scenario.attach(fileContent,"image/png","");
    }
}
