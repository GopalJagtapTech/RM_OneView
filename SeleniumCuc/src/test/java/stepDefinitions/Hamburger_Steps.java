package stepDefinitions;

import PageObjects.Hamburger_Page;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;
import org.openqa.selenium.By;

import java.awt.*;

public class Hamburger_Steps extends Common  {
    Hamburger_Page Ham = new Hamburger_Page();

    @Given("User launch chrome browser with URL")
    public void userLaunchChromeBrowserWithURL()
    {

        launch_browser();
    }
    @When("User enters logID as {string} and password as {string}")
    public void userEntersLogIDAsAndPasswordAs(String logID, String password) {

        driver.findElement(By.name(Ham.getEmail_button_id())).clear();
        driver.findElement(By.name(Ham.getEmail_button_id())).sendKeys(logID);
        driver.findElement(By.name(Ham.getPassword_button_id())).clear();
        driver.findElement(By.name(Ham.getPassword_button_id())).sendKeys(password);

    }

    @And("Click on Login")
    public void clickOnLogin() throws Throwable{

        Thread.sleep(1000);
        driver.findElement(By.xpath(Ham.getLogin_button_xpath())).click();
    }
    @When("Customer clicks Hamburger menu")
    public void CustomerclicksonHamburgerMenu() {
        driver.findElement(By.xpath(Ham.getHamburgerMenu())).click();

    }

    @And("Clicks on Cross icon")
    public void ClicksonCrossicon(){
        driver.findElement(By.xpath(Ham.getCrossicon())).click();
    }

    @And("Clicks on anywhere outside the hamburger menu")
    public void Clickonanywhereoutside()
    {
        driver.findElement(By.xpath(Ham.getClick_outside())).click();
    }

    @And("Clicks on Down arrow accordion {string}")
    public void ClickonDownarrowaccordion(String menutype)
    {
        driver.findElement(By.xpath("//*[text()='"+menutype+"']")).click();
    }

    @And("Clicks on Up arrow accordion {string}")
    public void ClickonUparrowaccordian(String menutype)
    {

        driver.findElement(By.xpath("//*[text()='"+menutype+"']")).click();
    }

    @And("Clicks on Loan Payment")
    public void ClicksonLoanpayment()
    {
        driver.findElement(By.xpath(Ham.getLoan_payment())).click();
    }

    @And("Clicks on Overdue submenu")
    public void ClicksOnOverdue()
    {
        driver.findElement(By.xpath(Ham.getOverdue_submenu())).click();
    }

    @And("Click on Other payments")
            public void ClicksOnOtherpayment()
    {
        driver.findElement(By.xpath(Ham.getOther_Payments())).click();
    }

    @And("Clicks on Documentation")
    public void Clicksondocumentation()
    {
        driver.findElement(By.xpath(Ham.getDocumentation())).click();
    }

    @And("Click on Update your KYC")
    public void ClicksonUpdateKYC()
    {
        driver.findElement(By.xpath(Ham.getUpdate_KYC())).click();
    }

    @Then("Then Profile Details page should be displayed")
    public void ProfileDetailspagedisplayed()
    {

    }

    @And("Click on Mandate Management sub-menu")
    public void ClickonMandateManagement()
    {
        driver.findElement(By.xpath(Ham.getMandate_management())).click();
    }

    @Then("Then Mandate Management page should be displayed")
    public void MandateManagementpagedisplayed()
    {

    }

    @Then("{string} should be displayed")
    public void menushouldbedisplayed(String SubMenu){

       String Smenu = driver.findElement(By.xpath("//*[text()='"+SubMenu+"']")).getText();
        Assert.assertEquals(SubMenu,Smenu);
       /* switch (SubMenu)
        {

            case "Update your KYC":
                String Menu1 = driver.findElement(By.xpath(Ham.getSubmenu1())).getText();
                Assert.assertEquals(SubMenu,Menu1);
                break;
            case "Mandate Management":
                String Menu2 = driver.findElement(By.xpath(Ham.getSubmenu2())).getText();
                Assert.assertEquals(SubMenu,Menu2);
                break;
            case "Document Center":
                String Menu3 = driver.findElement(By.xpath(Ham.getSubmenu3())).getText();
                Assert.assertEquals(SubMenu,Menu3);
                break;
        }*/

    }

    /*@Then("Submenus should be displayed to the customer {string}")
    public void SubmenusShouldbedisplayed(String menutype)
    {
        driver.findElement(By.xpath("//*[text()='"+menutype+"']")).click();
    }
*/
    @Then("Overdue page should be displayed {string}")
    public void Overduepagedisplayed(String Title)
    {
      String Overduepagetitle =  driver.findElement(By.xpath(Ham.getOverdue_Validation())).getText();
      System.out.println(Overduepagetitle);
        Assert.assertEquals(Overduepagetitle,Title);
    }

    @Then("Not any overdues validation message should be displayed {string}")
    public void overduevalidationdisplayed(String Message)
    {
        String Overduevaliation =  driver.findElement(By.xpath(Ham.getOverdue_page())).getText();
        System.out.println(Overduevaliation);
        Assert.assertEquals(Overduevaliation,Message);
    }

    @Then("Not any active loans validation message should be displayed {string}")
    public void Notanyactiveloanvalidation(String Message)
    {
        String Overduevaliation =  driver.findElement(By.xpath(Ham.getOverdue_page())).getText();
        System.out.println(Overduevaliation);
        Assert.assertEquals(Overduevaliation,Message);
    }

   @Then("{string} should expand")
   public void menushouldexpand(String Menu)
   {
       switch (Menu)
       {
           case "Loan Payment":
                String Menu1 = driver.findElement(By.xpath(Ham.getMenu1())).getText();
                Assert.assertEquals(Menu,Menu1);
                break;
           case "Documentation":
               String Menu2 = driver.findElement(By.xpath(Ham.getMenu2())).getText();
               Assert.assertEquals(Menu,Menu2);
               break;
           case "Try Calculators":
               String Menu6 = driver.findElement(By.xpath(Ham.getMenu6())).getText();
               Assert.assertEquals(Menu,Menu6);
               break;
           case "Settings":
               String Menu12 = driver.findElement(By.xpath(Ham.getMenu12())).getText();
               Assert.assertEquals(Menu,Menu12);
               break;
       }

   }

    @Then("Submenus should be displayed to the customer {string}")
    public void SubmenusshouldbeDisplayed(String Menu){

        switch (Menu)
        {
            case "Loan Payment":
                String Menu1 = driver.findElement(By.xpath(Ham.getMenu1())).getText();
                Assert.assertEquals(Menu,Menu1);
                break;
            case "Documentation":
                String Menu2 = driver.findElement(By.xpath(Ham.getMenu2())).getText();
                Assert.assertEquals(Menu,Menu2);
                break;
            case "Request for Loan":
                String Menu3 = driver.findElement(By.xpath(Ham.getMenu3())).getText();
                Assert.assertEquals(Menu,Menu3);
                break;
            case "Passbooks":
                String Menu4 = driver.findElement(By.xpath(Ham.getMenu4())).getText();
                Assert.assertEquals(Menu,Menu4);
                break;
            case "My Orders":
                String Menu5 = driver.findElement(By.xpath(Ham.getMenu5())).getText();
                Assert.assertEquals(Menu,Menu5);
                break;
            case "Try Calculators":
                String Menu6 = driver.findElement(By.xpath(Ham.getMenu6())).getText();
                Assert.assertEquals(Menu,Menu6);
                break;
            case "Help & Support":
                String Menu7 = driver.findElement(By.xpath(Ham.getMenu7())).getText();
                Assert.assertEquals(Menu,Menu7);
                break;
            case "Locate Us":
                String Menu8 = driver.findElement(By.xpath(Ham.getMenu8())).getText();
                Assert.assertEquals(Menu,Menu8);
                break;

            case "Check My Offers":
                String Menu10 = driver.findElement(By.xpath(Ham.getMenu10())).getText();
                Assert.assertEquals(Menu,Menu10);
                break;
            case "Communication History":
                String Menu11 = driver.findElement(By.xpath(Ham.getMenu11())).getText();
                Assert.assertEquals(Menu,Menu11);
                break;
            case "Settings":
                String Menu12 = driver.findElement(By.xpath(Ham.getMenu12())).getText();
                Assert.assertEquals(Menu,Menu12);
                break;

        }
    }
    @Then("Hamburger menu should be closed")
    public void HamburgermenuClosed(){

    }
}
