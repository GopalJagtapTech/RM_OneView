package stepDefinitions;

import PageObjects.PL_CTA_Page;
import io.cucumber.java.After;
import io.cucumber.java.Scenario;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;
import org.openqa.selenium.*;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.FluentWait;

import java.util.NoSuchElementException;
import java.util.concurrent.TimeUnit;


public class PL_CTA_Steps extends Common {

   PL_CTA_Page CTA = new PL_CTA_Page();

    @Given("^User is logged in \"([^\"]*)\" \"([^\"]*)\"$")
    public void userloggedin(String cust_ID, String password)  throws Throwable {
        launch_browser();

        Thread.sleep(1000);

        driver.findElement(By.xpath(CTA.getlogin_buttonxpath())).click();
        driver.findElement(By.id(CTA.getCustomerID())).sendKeys(cust_ID);

        try {

            Thread.sleep(1000);
            driver.findElement(By.xpath(CTA.getpassword_button())).click();
            Thread.sleep(1000);
            driver.findElement(By.id(CTA.getpassword())).sendKeys(password);
            Thread.sleep(1000);
            // driver.findElement(By.id(CTA.getcheckbox())).click();
            driver.findElement(By.id(CTA.getLogin_btn())).click();
            Thread.sleep(4000);

            if(driver.findElements(By.xpath("//*[@class='errorMsg']")).size()==1);
            {
                driver.findElement(By.id(CTA.getpassword())).sendKeys(password);
                Thread.sleep(1000);
                // driver.findElement(By.id(CTA.getcheckbox())).click();
                driver.findElement(By.id(CTA.getLogin_btn())).click();
                Thread.sleep(4000);
            }


        } catch (Exception e) {}

        try {

        FluentWait wait = new FluentWait(driver);
        wait.withTimeout(50000, TimeUnit.MILLISECONDS);
        wait.pollingEvery(250, TimeUnit.MILLISECONDS);
        wait.ignoring(NoSuchElementException.class);
        wait.until(ExpectedConditions.visibilityOfElementLocated(By.id("chkTermsKYC")));

        WebElement checkbox=driver.findElement(By.id("chkTermsKYC"));
            JavascriptExecutor executor=(JavascriptExecutor)driver;
            executor.executeScript("arguments[0].click();",checkbox);

            wait.until(ExpectedConditions.elementToBeClickable(By.xpath("//*[text()='This is correct']")));
            WebElement Correct=driver.findElement(By.xpath("//*[text()='This is correct']"));
            JavascriptExecutor executor1=(JavascriptExecutor)driver;
            executor1.executeScript("arguments[0].click();",Correct);

            Thread.sleep(10000);
            driver.findElement(By.xpath("//*[@id='KYC_Conformation']/div/div/div[1]/button")).click();


        } catch (Exception e){
        }


    }


    @When("^user is on personal loan page$")
    public void personal_loan_page() throws Throwable
    {


        wait.until(ExpectedConditions.elementToBeClickable(By.xpath(CTA.getour_profile())));

        driver.findElement(By.xpath(CTA.getour_profile())).click();

        WebElement ele = driver.findElement(By.xpath(CTA.getloan_menu()));
        Actions action = new Actions(driver);
        action.moveToElement(ele).perform();

        driver.findElement(By.xpath(CTA.getPerosonalLoan_menu())).click();

        try {

            wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath("/html/body/div[19]/div/div/div[1]/button")));
            driver.findElement(By.xpath("/html/body/div[19]/div/div/div[1]/button")).click();

        } catch (Exception e) {System.out.print("Exception"+e);}


    }

    @And("Clicks on Eligibility Criteria tab")
    public void clicksOnEligibilityCriteriaTab() {

        driver.findElement(By.id(CTA.getEligibility_tab())).click();
    }


    @And("Clicks on Features & Benefits tab")
    public void clicksOnFeaturesBenefitsTab() {

        driver.findElement(By.id(CTA.getFeaturesnBenefits())).click();
    }


    @And("Clicks on Apply now button")
    public void clicksOnApplyNowButton() throws Throwable{

        Thread.sleep(5000);
        WebElement element = driver.findElement(By.id(CTA.getApply_now()));
        if (element.isEnabled()){
        JavascriptExecutor executor = (JavascriptExecutor)driver;
       // executor.executeScript("arguments[0].scrollIntoView();", element);
        executor.executeScript("arguments[0].click();", element);}
        else
            System.out.print("element not enabled");

    }


    @Then("user should be redirected to Application Form tab")
    public void userShouldBeRedirectedToApplicationFormTab() {

        String Fullname = driver.findElement(By.xpath(CTA.getfull_name())).getText();
        Assert.assertEquals(Fullname,"Full Name");
        
    }

    @And("Clicks on Documents Required tab")
    public void clicksOnDocumentsRequiredTab() {

        driver.findElement(By.id(CTA.getDocsReq())).click();
    }

}
