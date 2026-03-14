package stepDefinitions;

import AppHooks.ApplicationHooks;
import PageObjects.DashboardPage;
import PageObjects.LoginPage;
import TestData.GOR;
import base.ApplicationKeywords;
import io.cucumber.java.PendingException;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import org.assertj.core.api.SoftAssertions;
import org.junit.Assume;
import org.openqa.selenium.WebElement;

public class LoginSteps extends ApplicationKeywords {

    LoginPage login;


    public LoginSteps() {
        login = new LoginPage();
    }


    @Given("User is on RMSOneView Login Page")
    public void userIsOnRMSOneViewLoginPage() {
        waitTime(2);
        redirectToUrl("https://uatrmoneview.bajajfinserv.in/", "");
        waitForPageToLoad();
    }


    @And("User should be able to see below Domains {string}")
    public void userShouldBeAbleToSeeBelowDomains(String opts) {
        verifyGetAllOptionsInDropDownAndCompare(LoginPage.domain_Dropdown, opts);
    }

    @And("User should select Domain {string}")
    public void userShouldSelectDomain(String domain) {
        selectDropDownUsingText(LoginPage.domain_Dropdown, domain);
    }

    @And("Clicks on LogIn Button")
    public void clicksOnLogInButton() {
        clickOnIfDisplayed(LoginPage.loginButton);
        waitForPageToLoad();
    }

    @And("User enters UserName {string}")
    public void userEntersUserName(String mail) {
        waitTime(5);
//        waitForPageToLoad();
        if (isElementPresent(LoginPage.mailInputBajajMsoft))
            typeIn(LoginPage.mailInputBajajMsoft, mail);
    }

    @And("User enters Password {string}")
    public void userEntersPassword(String pwd) {
        waitTime(2);
        if (isElementPresent(LoginPage.pwdInputBajajMsoft))
            typeIn(LoginPage.pwdInputBajajMsoft, pwd);

    }

    @And("Clicks on Next Button for Login")
    public void clicksOnNextButtonForLogin() {
        waitTime(2);
        if (isElementPresent(LoginPage.nextBajajMsoft))
            clickOn(LoginPage.nextBajajMsoft);
    }

    @And("Clicks on SignIn Button for Login")
    public void clicksOnSignInButtonForLogin() {
        if (isElementPresent(LoginPage.signInBajajMsoft)) {
            clickOn(LoginPage.signInBajajMsoft);
            waitTime(2);
            clickOn(LoginPage.noBtnBajajMsoft);
            waitForPageToLoad();
        }
    }

}
