package PageObjects;

import base.ApplicationKeywords;
import org.openqa.selenium.JavascriptExecutor;

public class YourCustomerPage extends ApplicationKeywords  {


    public String raiseSR = "Raise SR #xpath=//h6[normalize-space()='Raise SR']";



    public void verifyPageReload(){
        JavascriptExecutor js = (JavascriptExecutor) driver;
        String beforeClick = (String) js.executeScript("return document.readyState");

        try {
            Thread.sleep(1000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }

        String afterClick = (String) js.executeScript("return document.readyState");

        if (!beforeClick.equals(afterClick)) {
            testStepFailed("Page was reloaded. Expected no reload.");
        } else {
            testStepInfo("Page did not reload. Only tab content updated.");
        }
    }


}
