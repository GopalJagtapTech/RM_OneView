package stepDefinitions;

import PageObjects.GL_Validation_Page;
import PageObjects.PL_CTA_Page;
import io.cucumber.java.After;
import io.cucumber.java.AfterStep;
import io.cucumber.java.Before;
import io.cucumber.java.Scenario;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;
import org.openqa.selenium.*;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;



public class GL_Validations_Steps extends Common {

    PL_CTA_Page CTA = new PL_CTA_Page();
    GL_Validation_Page GL = new GL_Validation_Page();


    @When("^user is on gold loan page$")
    public void personal_loan_page() throws Throwable {
        wait.until(ExpectedConditions.elementToBeClickable(By.xpath(CTA.getour_profile())));
        driver.findElement(By.xpath(CTA.getour_profile())).click();
        Thread.sleep(1000);

        WebElement ele = driver.findElement(By.xpath(CTA.getloan_menu()));
        Actions action = new Actions(driver);
        action.moveToElement(ele).perform();

        driver.findElement(By.xpath(GL.getGoldLoan_menu())).click();


        Thread.sleep(1000);
    }
        @And("^Clicks on Select State dropdown \"([^\"]*)\"$")
        public void clicksOnSelect_State(String State)
    {

        Select drpState = new Select (driver.findElement(By.id(GL.getSelect_State())));
        drpState.selectByVisibleText(State);

    }
        @And("^Clicks on Select City dropdown \"([^\"]*)\"$")
        public void clicksOnSelect_City(String City)
    {

        Select drpCity = new Select (driver.findElement(By.id(GL.getSelect_City())));
        drpCity.selectByVisibleText(City);

    }

    @And("^Clicks on Loan Amount field \"([^\"]*)\"$")
    public void clicksOnLoan_Amt(String Amount)
    {
        WebElement Loan_Amt = driver.findElement(By.id(GL.getLoan_Amt()));
        Loan_Amt.sendKeys(Amount);
        Loan_Amt.sendKeys(Keys.TAB);

    }


    @Then("user should get error message on screen \"([^\"]*)\"$")
    public void errormsg(String message) throws Exception {

        String errormsg = driver.findElement(By.id(GL.geterrormsg())).getText();
        System.out.print("error message:"+ errormsg);
        Assert.assertEquals(errormsg,message);

          }
    @And("^Clicks on terms and conditions checkbox$")
    public void clicksOncheckbox_tc()
    {
        driver.findElement(By.id(GL.getCheckbox_tc())).click();
    }

    @And("^Clicks on Submit button$")
    public void clicksOnSubmit_btn()

    {
        driver.findElement(By.id(GL.getSubmit_btn())).click();
    }

    @Then("user should get success message popup \"([^\"]*)\"$")
    public void success_popup(String message) throws Exception {

        String successmsg = driver.findElement(By.id(GL.getsuccessmsg())).getText();
        Assert.assertEquals(successmsg,message);

            }
    @Then("^Clicks on ok button$")

    public void clicksOnclick_ok()

    {
        driver.findElement(By.id(GL.getClick_ok())).click();
    }

    @Then("^user should get company address on screen$")
    public void getComp_add() throws Exception {

        wait.until(ExpectedConditions.visibilityOfElementLocated(By.id(GL.getComp_add())));
        String branch = driver.findElement(By.id(GL.getComp_add())).getText();
        System.out.print("Company Address: " + branch);
        if (branch.isEmpty())
        {
            Assert.fail();
        }


    }


}

