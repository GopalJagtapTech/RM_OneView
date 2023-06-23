package stepDefinitions;

import PageObjects.HomePage;
import PageObjects.LoginPage;
import base.ApplicationKeywords;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.assertj.core.api.SoftAssertions;
import org.junit.Assert;

public class HorizontalMenuSteps extends ApplicationKeywords {
LoginPage login;
HomePage home;
public HorizontalMenuSteps(){
    login=new LoginPage();
    home=new HomePage();
}
    @Given("User is logged in {string} {string}")
    public void user_is_logged_in(String string1, String string2) {
    login.verifyLogin(string1,string2);
    }
    @When("User lands on Home Page")
    public void user_lands_on_home_page() {
        if (!isElementDisplayed(HomePage.txt_Home)) {

            home.LoginIndividualForHorizantalMenu("9890801661", "26051982", "123456");

        }

        Boolean flag = verifyFieldsDisplayedUsingLocator(HomePage.txt_Home);
        if (!flag) {
//            testStepFailed("Login is Un Successful");
//            Assert.fail();
//            Assert.assertTrue(false);
            ApplicationKeywords.quitBrowser=true;
            SoftAssertions sa=new SoftAssertions();
            sa.fail("Login is Un Successful");
            sa.assertAll();
        }
    }

    @When("Customer Clicks on {string} Drop-down & Hover over {string}")
    public void customer_clicks_on_drop_down_hover_over(String string1, String string2) {
        try {
            String Locator = "Skip#xpath=//div[@class='cochmark_popup_text L_menu_coach']//a[text()='Skip']";
            if (isElementDisplayed(Locator)) {
                clickOn(Locator,"");
            } else {
            }
        } catch (Exception e) {
            e.printStackTrace();
        }


        home.verifyHorizantalMenu(string1,string2);
    }



    @When("Customer Clicks on {string} Drop-down & Hover over menu {string}")
    public void customer_clicks_on_drop_down_hover_over_menu(String string, String string2) {

        try {
            String Locator = "Skip#xpath=//div[@class='cochmark_popup_text L_menu_coach']//a[text()='Skip']";
            if (isElementDisplayed(Locator)) {
                clickOn(Locator,"");
            } else {
            }
        } catch (Exception e) {
            e.printStackTrace();
        }


        home.clickoneHorizantalMenu(string,string2);
    }




    @When("clicks on {string}& Apply Online {string}")
    public void clicks_on_apply_online(String string, String string2) {
        clickOnHorizantalLevelApplyOnlineMenu(string,string2);
    }

    @When("clicks on single {string} and {string}")
    public void clicks_on_single_and(String string, String string2) {
        clickOnHorizantalLevelSingleSubMenu(string,string2);
    }

    @When("clicks on {string},{string}")
    public void clicks_on(String string1, String string2) {
        clickOnHorizantalLevelTwoSubMenu(string1,string2);
    }

    @When("clicks on {string},{string} and {string}")
    public void clicks_on_and(String string, String string2, String string3) {
        clickOnHorizantalLevelTwoSubheadingSubMenu(string,string2,string3);
    }

    @When("clicks on subheading {string} and {string}")
    public void clicks_on_subheading_and(String string, String string2) {
        clickOnHorizantalLevelTwoSubMenuwithoutSubheading(string,string2);
    }

    @Then("Customer should be Redirected to {string}")
    public void customer_should_be_redirected_to(String string) {
       // home.verifyRedirectionWithNewTab(string);
        verifyRedirectionURLIfContains(string);
    }

    @Then("Customer should be Redirected to new tab {string}")
    public void customer_should_be_redirected_to_new_tab(String string) {
        waitForPageToLoad();
        home.verifyRedirectionWithNewTab(string);
    }


    @Then("verify All options {string}")
    public void verify_all_options_in(String string) {
        verifyTextOptionsIsDisplayedUsingCommonXpath(HomePage.fd_Services_subAllOptions,string);
    }

    @Given("Logout the Application")
    public void Logout_the_Application() {
        login.verifyLogout();
    }

    @Then("close the Application")
    public void close_the_Application() {
    ApplicationKeywords.quitBrowser = true;
    }

    @When("Customer Clicks on {string} Drop-down & Hover over Same {string}")
    public void customer_clicks_on_drop_down_hover_over_Same(String string1, String string2) {
        home.verifyHorizantalMenuForSameSubMenuNames(string1,string2);
    }

    @Given("testing")
    public void testing() {
    System.out.println("STep: 1");
    Assert.fail();
    Assert.assertTrue(false);
    }

    @Given("User is logged in {string} {string} for {string} for Horizontal Menus")
    public void userIsLoggedInForForHorizontalMenus(String mobNumber, String date, String type) {
        if (!isElementDisplayed(HomePage.txt_Home)) {
            login.LoginIndividual(mobNumber, date, "123456");
        }

    }


}
