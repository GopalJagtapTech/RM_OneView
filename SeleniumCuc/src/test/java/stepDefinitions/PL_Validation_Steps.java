package stepDefinitions;

import PageObjects.PL_CTA_Page;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;


public class PL_Validation_Steps extends Common{

    PL_CTA_Page CTA = new PL_CTA_Page();

    @When("^user enters Monthly Salary less than fifteen thousand \"([^\"]*)\"$")
    public void enter_sal_less(String Sal) throws Throwable
    {
        Thread.sleep(5000);
        try {

            WebElement ele = driver.findElement(By.id(CTA.getMonSal()));
            if(ele.isDisplayed())
            {
                ele.sendKeys(Sal);
                ele.sendKeys(Keys.TAB);
            }
            else {
                WebElement element = driver.findElement(By.id(CTA.getApply_now()));
                if (element.isEnabled()){
                    JavascriptExecutor executor = (JavascriptExecutor)driver;
                    executor.executeScript("arguments[0].click();", element);
                    ele.sendKeys(Sal);
                    ele.sendKeys(Keys.TAB);
                }

                else
                    System.out.print("element not enabled");

            }

        } catch (Exception e){}

    }

    @Then("^validation message should be displayed \"([^\"]*)\"$")
    public void val_msg(String val_msg) throws Exception {

        String Val_msg = driver.findElement(By.id(CTA.getVal_msg())).getText();
        Assert.assertEquals(val_msg,Val_msg );

    }

    @When("^user enters Monthly Salary more than fifteen thousand \"([^\"]*)\"$")
    public void enter_sal_more(String Sal) throws Throwable
    {
        enter_sal_less(Sal);
    }

    @Then("^validation message should not be displayed$")
    public void no_val_msg() throws Exception {
        String Val_msg = driver.findElement(By.id(CTA.getVal_msg())).getText();

        if (Val_msg.isEmpty())
        {
            System.out.print("Message is not displayed");
             }
            else
        {
            Assert.fail("Message is displayed");
        }
    }

    @And("user selects DOB {string} less than eighteen years")
    public void userSelectsDOBLessThanYears(String arg0) {


    }

    @Then("user should not be able to select date")
    public void userShouldNotBeAbleToSelectDate() {
    }

    @And("user selects DOB {string} equal to and more than eighteen years")
    public void userSelectsDOBEqualToAndMoreThanYears(String DOB) throws Throwable {

        Thread.sleep(5000);
        WebElement element = driver.findElement(By.id(CTA.getApply_now()));
        if (element.isEnabled()){
            JavascriptExecutor executor = (JavascriptExecutor)driver;
            executor.executeScript("arguments[0].click();", element);}
        else
            System.out.print("element not enabled");

        driver.findElement(By.id("txtDOB")).click();
        String month_yr = driver.findElement(By.xpath("//*[@class='switch']")).getText();
        System.out.print("Current month_yr:"+month_yr);

        String[] arrDOB = DOB.split(" ");
        System.out.print("Current year:"+arrDOB[2]);

        String [] arrmonth_yr = month_yr.split(" ");
        System.out.print("Current year:"+arrmonth_yr[1]);

        int i=Integer.parseInt(arrDOB[2]);
        int j = Integer.parseInt(arrmonth_yr[1]);
        int c = i-j ;
        System.out.print("Difference is:"+c);

        Date date = new SimpleDateFormat("MMM").parse(arrmonth_yr[0]);
        Calendar cal = Calendar.getInstance();
        cal.setTime(date);
        int monthNumber =cal.get(Calendar.MONTH);
        int MN = monthNumber + 1;
        System.out.println("month number is:"+MN);

        Date date1 = new SimpleDateFormat("MMM").parse(arrDOB[1]);
        Calendar cal1 = Calendar.getInstance();
        cal.setTime(date1);
        int DmonthNumber =cal1.get(Calendar.MONTH);
      //  int MN1 = DmonthNumber + 1;
        System.out.println("month number is:"+arrDOB[1]+DmonthNumber);


        if(c==0) {


        }

            else if(c>0) {

        }

                else if(c<0) {

        }

                    else {

        }

    }

    @Then("user should be able to select date")
    public void userShouldBeAbleToSelectDate() {
    }
}
