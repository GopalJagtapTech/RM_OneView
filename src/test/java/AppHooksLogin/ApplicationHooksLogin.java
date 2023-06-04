package AppHooksLogin;

import AppHooks.ApplicationHooks;
import base.ApplicationKeywords;
import io.cucumber.java.After;
import io.cucumber.java.AfterStep;
import io.cucumber.java.Before;
import io.cucumber.java.Scenario;
import org.apache.commons.io.FileUtils;
import org.assertj.core.api.SoftAssertions;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;

import java.io.File;
import java.io.IOException;

public class ApplicationHooksLogin extends ApplicationKeywords {



    @After(order=2)
    public void closeBrowser1()
    {
        if (coachMark){
            driver.quit();
            driver=null;
        }

    }


    @After(order=3)
    public void failures()
    {
        if (asser){
            asser=false;
            SoftAssertions sa=new SoftAssertions();
            sa.fail("Assert Failed");
            sa.assertAll();
        }
    }


    @AfterStep
    public void Screenshot(Scenario scenario) throws IOException {

        File src = ((TakesScreenshot) driver).getScreenshotAs(OutputType.FILE);
        byte[] fileContent = FileUtils.readFileToByteArray(src);
        scenario.attach(fileContent, "image/png", "");
    }

    @Before
    public void tearDown(Scenario scenario)  {
        ApplicationHooks.scena = scenario;
        if (driver==null){
            launch_browser();
        }
    }
}