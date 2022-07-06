package stepDefinitions;

import PageObjects.Insurance_Page;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;
import org.openqa.selenium.*;
import org.openqa.selenium.support.ui.ExpectedConditions;


public class Insurance_Steps extends Common{

    Insurance_Page INS = new Insurance_Page();

    @Given("^User is on Complete Health Protect Supreme Page$")
    public void insurance(){
        launch_browser();
    }


    @Then("Coverage and membership fees should be pre-populated {string} {string}")
    public void coverageAndMembershipFeesShouldBePrePopulated(String cov, String fees) throws Exception {
        String coverage = driver.findElement(By.xpath(INS.getCoverage())).getText();
        String membership_fees = driver.findElement(By.xpath(INS.getM_fees())).getText();

        Assert.assertEquals(coverage,cov);
        Assert.assertEquals(membership_fees,fees);

    }

    @When("Enters mobile number {string}")
    public void entersMobileNumber(String m_number) {

        WebElement Mob_number = driver.findElement(By.id(INS.getMobilenumber()));
        Mob_number.sendKeys(m_number);
        Mob_number.sendKeys(Keys.TAB);
    }

    @Then("Validation message should be displayed {string}")
    public void validationMessageShouldBeDisplayed(String Val_msg) throws Exception {

        JavascriptExecutor js = (JavascriptExecutor) driver;
        js.executeScript("window.scrollBy(0,350)", "");

        switch (Val_msg)
        {

            case "Mobile number should start with 9 or 8 or 7 or 6 or 5":

                String error1 = driver.findElement(By.xpath(INS.getError1())).getText();
                Assert.assertEquals(Val_msg,error1);
                break;

            case "Please enter your 10 digit mobile number":

                String error2 = driver.findElement(By.xpath(INS.getError2())).getText();
                Assert.assertEquals(Val_msg,error2);
                break;

            case "Thank you for showing interest, currently you do not have an offer":

                clicksOnGenerateOTPButton();
                wait.until(ExpectedConditions.visibilityOfElementLocated(By.id(INS.getError3())));
                String error3 = driver.findElement(By.id(INS.getError3())).getText();
                Assert.assertEquals(Val_msg,error3);
                break;

            case "Please enter your Mobile No":
                String error4 = driver.findElement(By.xpath(INS.getError4())).getText();
                Assert.assertEquals(Val_msg,error4);
                break;

            case "Please Enter Valid OTP." :
                String error5 = driver.findElement(By.xpath(INS.getError5())).getText();
                Assert.assertEquals(Val_msg,error5);
                break;


        }

    }

    @And("Clicks on Generate OTP button")
    public void clicksOnGenerateOTPButton() {

        driver.findElement(By.xpath(INS.getGenerateOTP())).click();
    }

    @Then("Timer should start from {string}")
    public void timerShouldStartFrom(String Timer_value) throws Throwable {

        Thread.sleep(1000);
        String timer = driver.findElement(By.xpath(INS.getTimer())).getText();
        String[] split = timer.split("\n");
        Assert.assertEquals(Timer_value,split[1]);


    }

    @Then("Resend OTP should be displayed when Timers expires")
    public void resendOTPShouldBeDisplayedWhenTimersExpires()throws Throwable {

        Thread.sleep(90000);

        JavascriptExecutor js = (JavascriptExecutor) driver;
        js.executeScript("window.scrollBy(0,350)", "");
        WebElement resend = driver.findElement(By.xpath(INS.getResendOTP()));
        if (resend.isDisplayed())
        {
            System.out.print("Resend OTP button is displayed");
        }
        else Assert.fail();


    }

    @And("Clicks on Enter wrong mobile number")
    public void clicksOnEnterWrongMobileNumber() {

        driver.findElement(By.xpath(INS.getEnterwrongmobile())).click();
    }

    @Then("Enter mobile number field should be displayed")
    public void enterMobileNumberFieldShouldBeDisplayed() throws Exception {

        WebElement Entermob = driver.findElement(By.id(INS.getMobilenumber()));
        if (Entermob.isDisplayed())
        {
            System.out.print("Enter mobile number field is displayed");

        }
        else Assert.fail();

    }

    @And("Enters OTP {string}")
    public void entersOTP(String OTP_Val) {
        WebElement OTP = driver.findElement(By.xpath(INS.getOTP()));
        OTP.sendKeys(OTP_Val);
        OTP.sendKeys(Keys.TAB);
    }


}


