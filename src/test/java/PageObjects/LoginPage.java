package PageObjects;

import base.ApplicationKeywords;

public class LoginPage extends ApplicationKeywords {

    //         public static final String btn_Login="Login Button#xpath=(//a[text()='Login'])[1]";
//         public static final String txtBox_CustomerId="Customer Id Text Box#xpath=//input[@id='txtCustomerId']";
//         public static final String btn_Password="Password Button#xpath=//button[text()='Password']";
//         public static final String txtBox_Password="Password Text Box#xpath=//button[@id='btnPassword' and text()='Login']";
//         public static final String btn_Login2="Login Button 2#xpath=//p[text()='Please enter the password you set for Experia']/following-sibling::input//following-sibling::span";
//         public static final String icon_Close="Close Icon#xpath=(//a[@class='closeIcon'])[6]";
    public static final String txtBox_CustomerId = "Customer Id Text Box#xpath=//input[@name='uname']";
    public static final String txtBox_Password = "Password Text Box#xpath=//input[@name='psw']";
    public static final String btn_Login = "Login Button#xpath=//button[normalize-space(text())='Login']";

    public static final String tab_ExperiaHome = "Experia Home Tab#xpath=//ul/li[@id='HomeBtn'and(@class='active')]";
    public static final String icon_Profile = "Profile Menu Icon#xpath=//img[@alt='profile']";
//    public static final String btn_Logout = "Logout Button#xpath=//ul[@class='userdrop']//a[normalize-space(text())='Logout']";
    public static final String btn_Logout = "Sign Out Button#xpath=//ul[@class='userdrop']//a[normalize-space(text())='Sign out']";
    public static final String icon_MyAccount = "MyAccount Icon#xpath=//p[normalize-space(text())='My Account']/ancestor::a";
//    public static final String login_Button = "Login Button#xpath=//div[@class='login_tooltip']//button[normalize-space()='Login']";
    public static final String login_Button = "SignIn Button#xpath=//div[@class='login_tooltip']//button[normalize-space()='Sign in']";
    public static final String frame_Login = "Frame#xpath=(//iframe[@id='bfl_login_iframe'])[2]";
    public static final String popup_Login = "Login PopUp#xpath=//h5[normalize-space(text())='Sign-in to My Account']";
    public static final String skip="Skip Button in Cochmark#xpath=//div[@class='cochmark_btn']/a[normalize-space(text())='Skip']";

    public void LoginIndividual(String mobileNumber, String dob, String otp) {
        try {
            String typeLocator = "Individual Customer tab#xpath=//div[@class='formtab']/descendant::a[normalize-space(text())='Individual']";
            String txtBox_MobileNumber = "Mobile Number Text Box For Individual#xpath=(//input[@id='txtEmailMobile_Individual'])[1]";
            String txtBox_Dob = "DOB Text Box For Individual#xpath=(//input[@id='EnterDOBdate_Individual'])[1]";
            String Proceed_button = "Proceed Button#xpath=//a[normalize-space(text())='PROCEED']|//button[normalize-space(text())='PROCEED']|//input[@value='PROCEED']";
            waitTime(2);
//            boolean flag1 = clickOnIfDisplayed(icon_MyAccount);
//            if (flag1) {
//                boolean flag2 = clickOnIfDisplayed(login_Button);
//                if (flag2) {
//                    clickOnButtonUsingLocatorUsingForLoopWithoutFail(LoginPage.skip);
//                    driver.switchTo().frame(findWebElement(frame_Login));
            clickOnIfDisplayed(typeLocator);
            typeInIfPresent(txtBox_MobileNumber, mobileNumber);
            clickOnButtonUsingTextUsingForLoop("Get OTP");
            waitForPageToLoad();
            enterOtpInTextBox("o", "123456");
            clickOnButtonUsingTextUsingForLoop("Submit");
            if (isElementDisplayed(txtBox_Dob)) {
                testStepInfo("Customer is an ETB");
                typeInIfPresent(txtBox_Dob, dob);
            }else {
                testStepInfo("Customer is not an ETB");
            }
            if (isElementDisplayed(Proceed_button)) {
                clickOnButtonUsingTextUsingForLoop("PROCEED");
            }
            waitForPageToLoad();
//                }
//            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in Login Individual. Exception: " + e.getClass());
        }
//        return flag;
    }

    public void LoginNonindividual(String mobileNumber, String dob, String otp) {
        try {
            String typeLocator="Non-Individual Customer tab#xpath=//div[@class='formtab']/descendant::a[normalize-space(text())='Corporate/ Business']";
            String txtBox_MobileNumber="Mobile Number Text Box For Non-Individual#xpath=//input[@id='txtEmailMobile_NonIndividual']";
            String txtBox_Doi="DOI Text Box For Non-Individual#xpath=//input[@id='DOIDate_NonIndividual']";
            String Proceed_button = "Proceed Button#xpath=//a[normalize-space(text())='PROCEED']|//button[normalize-space(text())='PROCEED']|//input[@value='PROCEED']";
            Boolean flag1 = clickOnIfDisplayed(icon_MyAccount);
            if (flag1) {
                Boolean flag2 = clickOnIfDisplayed(login_Button);
                if (flag2) {
//                    clickOnButtonUsingLocatorUsingForLoop(typeLocator);
                    clickOnIfDisplayed(typeLocator);
//                    typeInTextBoxUsingLocatorUsingForLoop(txtBox_MobileNumber,mobileNumber);
                    typeInIfPresent(txtBox_MobileNumber,mobileNumber);
//                    typeInTextBoxUsingLocatorUsingForLoop(txtBox_Doi,dob);

//                    clickOnButtonUsingLocatorUsingForLoop(typeLocator);
                    clickOnButtonUsingTextUsingForLoop("Get OTP");
                    waitForPageToLoad();
                    enterOtpInTextBox("o","123456");
                    clickOnButtonUsingTextUsingForLoop("Submit");
//                    waitForThreeDotsDisAppear();
                    waitForPageToLoad();
                    typeInIfPresent(txtBox_Doi,dob);
                    clickOnButtonUsingTextUsingForLoop("PROCEED");
                } else {
                    return;
                }
            } else {
                return;
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in Login Non Individual. Exception: " + e.getClass());
        }
//        return flag;
    }

//    public void LoginNonindividual(String mobileNumber, String dob, String otp) {
//        try {
//
//
//
//
//            String typeLocator="Non-Individual Customer tab#xpath=//div[@class='formtab']/descendant::a[normalize-space(text())='Non-Individual']";
//            String txtBox_MobileNumber="Mobile Number Text Box For Non-Individual#xpath=//input[@id='txtEmailMobile_NonIndividual']";
//            String txtBox_Doi="DOI Text Box For Non-Individual#xpath=//input[@id='DOIDate_NonIndividual']";
//            Boolean flag1 = clickOnIfDisplayed(icon_MyAccount);
//            if (flag1) {
//                Boolean flag2 = clickOnIfDisplayed(login_Button);
//                if (flag2) {
//                    clickOnButtonUsingLocatorUsingForLoop(typeLocator);
//                    typeInTextBoxUsingLocatorUsingForLoop(txtBox_MobileNumber,mobileNumber);
//                    typeInTextBoxUsingLocatorUsingForLoop(txtBox_Doi,dob);
//                    clickOnButtonUsingLocatorUsingForLoop(typeLocator);
//                    clickOnButtonUsingTextUsingForLoop("Get OTP");
//                    waitForPageToLoad();
//                    enterOtpInTextBox("o","123456");
//                    clickOnButtonUsingTextUsingForLoop("Submit");
//                    waitForPageToLoad();
//                } else {
//                    return;
//                }
//            } else {
//                return;
//            }
//        } catch (Exception e) {
//            e.printStackTrace();
//            testStepFailed("Failed in Login Non Individual. Exception: " + e.getClass());
//        }
////        return flag;
//    }

    public void LoginNRI(String mobileNumber, String dob, String otp) {
        try {
            String typeLocator="NRI Customer tab#xpath=//div[@class='formtab']/descendant::a[normalize-space(text())='NRI']";
            String txtBox_MobileNumber="Mobile Number Text Box For NRI#xpath=//input[@id='txtEmailMobile_NRI']";
            String txtBox_Dob="DOB Text Box For NRI#xpath=//input[@id='DOBDate_NRI']";
            Boolean flag1 = clickOnIfDisplayed(icon_MyAccount);
            if (flag1) {
                Boolean flag2 = clickOnIfDisplayed(login_Button);
                if (flag2) {
                    clickOnButtonUsingLocatorUsingForLoop(typeLocator);
                    typeInTextBoxUsingLocatorUsingForLoop(txtBox_MobileNumber,mobileNumber);
                    typeInTextBoxUsingLocatorUsingForLoop(txtBox_Dob,dob);
                    clickOnButtonUsingLocatorUsingForLoop(typeLocator);
                    clickOnButtonUsingTextUsingForLoop("Get OTP");
                    waitForPageToLoad();
                    enterOtpInTextBox("o","123456");
                    clickOnButtonUsingTextUsingForLoop("Submit");
                    waitForPageToLoad();
                } else {
                    return;
                }
            } else {
                return;
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in Login NRI. Exception: " + e.getClass());
        }
//        return flag;
    }


  public Boolean verifyLogin(String custId, String password) {
        Boolean flag = false;
        try {

            typeInIfDisplayed(txtBox_CustomerId, custId);
            typeInIfDisplayed(txtBox_Password, password);
            clickOnIfDisplayed(btn_Login);
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in Login. Exception: " + e.getClass());
        }
        return flag;
    }
//
    public void verifyLogout() {
        try {
            clickOnIfDisplayed(icon_Profile);
            clickOnButtonUsingTextUsingForLoop("Logout");
//            clickOnButtonUsingLocatorUsingForLoop(btn_Logout);
            waitForPageToLoad();
            waitTime(3);
//            verifyFieldsDisplayedUsingLocatorWithComment(txtBox_CustomerId, "Logout ");
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in Logout. Exception: " + e.getClass());
        }
    }
    public void verifyRerunLogin(String custId,String password) {
        try {
            if (!isElementDisplayed(HomePage.logo_Bfinserv)) {
                typeInIfDisplayed(LoginPage.txtBox_CustomerId, custId);
                typeInIfDisplayed(LoginPage.txtBox_Password, password);
                clickOnIfDisplayed(LoginPage.btn_Login);
                ApplicationKeywords.quitBrowser = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Rerun Login. Exception: "+e.getClass());
        }

    }

    public void verifyLoginRedirection() {
        try {
            if (isElementDisplayed(popup_Login)) {
manualScreenshot(getRefOfXpath(popup_Login)+" is Displayed successfully");
//driver.get("https://cont-sites.bajajfinserv.in/MyAccountLogin#;");
//waitForPageToLoad();
            } else {
                testStepFailed(getRefOfXpath(popup_Login)+" is Not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Login Redirection. Exception: "+e.getClass());
        }
    }


}
