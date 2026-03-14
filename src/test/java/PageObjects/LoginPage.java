package PageObjects;

import base.ApplicationKeywords;
import org.openqa.selenium.*;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

public class LoginPage extends ApplicationKeywords {

    /// /////RMOneview

    /********* LHS Contents *********/
    public static final String loginSection = "Login Section#xpath=//div[@class='login-form-bg-left']";
    public static final String bajajFinservLogo = "Bajaj Finserv Logo#xpath=//div[@class='logo-box']//img[contains(@src,'images/Bajaj_Finserv_Logo_Primary.png')]";
    public static final String loginTitle = "Login Title#xpath=//h2[normalize-space()='Login to your account']";
    public static final String loginDescription = "Login Description Text#xpath=//p[normalize-space()='Kindly log in to gain access to your account.']";
    public static final String dropDownLabelText = "Drop Down Label Text#xpath=//label[normalize-space()='Domain']";
//    public static final String dropDownFieldMessage = "Drop Down Field Message#xpath=//div[normalize-space()='Select Domain']";
    public static final String dropDownFieldIcon = "Drop Down Field Icon#xpath=//select[contains(@class,'cust-input-box cust-select-box')]//following::img[@src='assets/images/domain-icon.svg']";
    public static final String loginButtonArrowIcon = "Login Button Arrow Icon#xpath=//button[contains(@class,'login-bg-btn')]//following::img[@src='assets/images/btn-arrow-icon.svg']";
    public static final String domain_Dropdown = "Domain Dropdown#xpath=//select[contains(@class,'cust-input-box cust-select-box')]";
    public static final String loginButton = "Login Button#xpath=//button[contains(@class,'login-bg-btn')]";

    /********* RHS Contents *********/
    public static final String welcomeMessageRHS = "Welcome Message On RHS#xpath=//div[@class='right-contant-titlebox']//p[normalize-space()='Welcome to,']";
    public static final String titleRMOneViewOnRHS = "RMOne View Title On RHS#xpath=//div[@class='right-contant-titlebox']//h2[normalize-space()='RM-OneView Portal']";
    public static final String bflEmployeeIconOnRHS = "BFL Employee Icon On RHS#xpath=//div[@class='portal-list-item']//div//img[@src='assets/images/bfl-employee-icon.svg']";
    public static final String access360IconOnRHS = "Access 360 Icon On RHS#xpath=//div[@class='portal-list-item']//div//img[@src='assets/images/access-360-icon.svg']";
    public static final String ITHelpDeskIconOnRHS = "IT Help Desk Icon On RHS#xpath=//div[@class='portal-list-item']//div//img[@src='assets/images/IT-HelpDesk-icon.svg']";
    public static final String serviceNowIconOnRHS = "Service-Now Icon On RHS#xpath=//div[@class='portal-list-item']//div//img[@src='assets/images/Service-now-icon.svg']";

    public static final String accessUrl1 = "Access Url 1#xpath=(//a[normalize-space(text())='https://access360.bajajfinserv.in/'])[1]";
    public static final String access360Url = "Access 360 Url#xpath=(//a[normalize-space(text())='https://access360.bajajfinserv.in/'])[1]";
    public static final String azureUrl = "Azure Url #xpath=(//a[normalize-space(text())='https://dev.azure.com/BFLDevOpsOrg/IT%20Requests'])";
    public static final String serviceNowUrl = "Service Now Url#xpath=(//a[normalize-space(text())='https://bajajfinserv.service-now.com/bfl'])";



    /********* BFL Mail *********/
    public static final String mailInputBajajMsoft = "Email Input - Bajaj#xpath=//input[@name='loginfmt']";
    public static final String nextBajajMsoft = "Next - Bajaj#xpath=//input[@id='idSIButton9']";
    public static final String pwdInputBajajMsoft = "Pwd Input - Bajaj#xpath=//input[@name='passwd']";
    public static final String signInBajajMsoft = "Sign In Button - Bajaj#xpath=//input[@id='idSIButton9']";
    public static final String noBtnBajajMsoft = "No Button - Bajaj#xpath=//input[@id='idBtn_Back']";

    public static final String profileIcon = "Profile Icon#xpath=//img[@class='user-profile-icon']";


    public boolean isElementDisplayedWithWait(String locator) {
        boolean flag = false;
        try {
            WebElement element = findWebElement(locator);
            WebDriverWait wait = new WebDriverWait(driver, 2);
            wait.until(ExpectedConditions.visibilityOf(element));
            flag = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return flag;
    }

    public void logInPageRhs() {
        try {
            String rhs = "RHS Side of Login Page#xpath=//div[@class='login-contant-right-box']";
            String info = "RHS Side Info Points#xpath=//div[@class='portal-list-bgbox']";

            verifyElementIsDisplayedOrNot(welcomeMessageRHS);
            verifyElementIsDisplayedOrNot(titleRMOneViewOnRHS);

            int size = sizeOfLocator(info);
            for (int i = 1; i <= size; i++) {
                String txtBox = "Info line " + i + "#xpath=(//div[@class='portal-list-bgbox'])[" + i + "]";
                String txtBoxLogo = "Info line Logo " + i + "#xpath=(//div[@class='portal-list-bgbox']/..//img)[" + i + "]";
                verifyElementIsDisplayedAndGetText(txtBox);
                verifyElementIsDisplayedOrNot(txtBoxLogo);
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed at log in Page Rhs" + e.getClass());
        }

    }

    public void logInPageLhs() {
        try {
            verifyElementIsDisplayedOrNot(LoginPage.loginSection);
            verifyElementIsDisplayedOrNot(bajajFinservLogo);
            verifyFieldDisplayedUsingTagAndText("h2", "Login to your account", "");
            verifyFieldsDisplayedUsingText("Kindly log in to gain access to your account.");
            verifyFieldDisplayedUsingTagAndText("label", "Domain", "");
            verifyElementIsDisplayedOrNot(domain_Dropdown);
//            verifyElementIsDisplayedOrNot(userNameBox);
//            verifyElementIsDisplayedOrNot(passwordBox);
//            verifyFieldDisplayedUsingTagAndText("label", "Username", "");
//            verifyFieldDisplayedUsingTagAndText("label", "Password", "");
            verifyElementIsDisplayedOrNot(LoginPage.loginButton);

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed at log in Page Lhs " + e.getClass());
        }

    }


}
