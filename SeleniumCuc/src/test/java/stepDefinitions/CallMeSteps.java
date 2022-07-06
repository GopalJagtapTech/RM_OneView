package stepDefinitions;

import PageObjects.CallMe_Page;
import PageObjects.PL_CTA_Page;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;

public class CallMeSteps extends Common{

    PL_CTA_Page CTA = new PL_CTA_Page();
    CallMe_Page CM = new CallMe_Page();

    @When("User is on Insurance page")
    public void userIsOnInsurancePage() {

        wait.until(ExpectedConditions.elementToBeClickable(By.xpath(CTA.getour_profile())));
        driver.findElement(By.xpath(CTA.getour_profile())).click();

        wait.until(ExpectedConditions.elementToBeClickable(By.xpath(CM.getInsurnace_menu())));
        WebElement ele = driver.findElement(By.xpath(CM.getInsurnace_menu()));
        Actions action = new Actions(driver);
        action.moveToElement(ele).perform();

        driver.findElement(By.xpath(CM.getInsurance_submenu())).click();
        driver.findElement(By.xpath(CM.getCall_me_tab())).click();
    }



    @And("User enters message {string}")
    public void userEntersMessage(String msg) {

        driver.findElement(By.xpath(CM.getRemarks())).sendKeys(msg);
    }

    @And("Clicks on Submit")
    public void clicksOnSubmit() {

        driver.findElement(By.xpath(CM.getSubmitmsg())).click();
    }

    @Then("Sucess message pop-up should be displayed")
    public void sucessMessagePopUpShouldBeDisplayed() {


    }
}
