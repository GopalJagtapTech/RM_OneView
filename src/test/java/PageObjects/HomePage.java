package PageObjects;

//import jdk.incubator.foreign.SymbolLookup;
import base.ApplicationKeywords;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;

import java.util.*;

public class HomePage extends ApplicationKeywords {
    public static String homeUrl="";
    /*
    Xpaths
     */
    public static final String logo_Bfinserv = "BajajFinserv Logo in Home Page#xpath=//a[@class='bajaj_logo']";
    public static final String txt_Home = "Home Page Text#xpath=//img[@alt='profile']/following-sibling::p[text()='Profile']";
    public static final String icon_Hamburger = "Hamburger Menu Icon#xpath=//a[@class='hem_menu']";
    public static final String icon_Menu = "Menu Icon#xpath=//div/strong[normalize-space(text())='Menu']";
    public static final String btn_Close = "Close Button#xpath=//*[@id=\"desk_close\"]";
    public static final String btn_MyRelations = "MyRelations Button#xpath=//*[@id=\"MyRelationBtn\"]/a";
    public static final String logo_Ecart = "Ecart Logo#xpath=//a[@class='b-logo-wrap  marktsHeader']";
    public static final String icon_Cart = "Cart Icon#xpath=//li[@class=\"cart\"]";
    public static final String icon_Wallet = "Wallet Icon#xpath=//div/ul[@class='listwalltcard']//a/p[normalize-space(text())= 'Wallet']";
    public static final String popup_QRCode = "QRCode Popup#xpath=//div[@class='block_tags']/img[@id='walletQRCode']";
    public static final String section_Carousal = "Carousal Section#xpath=//div[@class='cbl_slider slick-initialized slick-slider slick-dotted']/parent::div/parent::div[@class='BHFL_Box']";
    public static final String title_SuperStores = "RHS Super store Title#xpath=//div[@class='Superstores rhs_Fixed']//p[normalize-space(text())='Superstores']";
    public static final String title_BrandStore = "Brand store Title#xpath=//div[@class='Brand_Store']//p[normalize-space(text())='Brand Stores']";
    public static final String section_PreApprovedOffers = "Pre-approved Offers Section#xpath=//p[normalize-space(text())='Pre-approved Offers']/ancestor::div[@class='offersfore_you']";
    public static final String icon_Profile = "Profile Icon#xpath=//li[@class='userprofile']/div/a";
    public static final String link_ViewProfile = "ViewProfile Link#xpath=//a[normalize-space(text())='View Profile']";
    public static final String link_ChangePassword = "ChangePassword Link#xpath=//a[text()='Change Password']";
    public static final String closer_QRCode = "QRCode Closer#xpath=//div[@class='BHFL_rightpart']/following-sibling::div[@id='qrdiv']/div[@class='dialog_body']/descendant::img[@loading='lazy']";
    public static final String icon_PassBook = "PassBook Icon#xpath=//div[@class='wallet_card_row']/descendant::p[normalize-space(text())='Passbook']";
    public static final String icon_ActiveEMI = "ActiveEMI Icon#xpath=//div[@class='Bajaj_Finserv_BG emi-net']/descendant::i[normalize-space()='ACTIVE']";
    public static final String icon_BlockedEMI = "BlockedEMI Icon#xpath=//div[@class='Bajaj_Finserv_BG emi-net']/descendant::i[normalize-space()='BLOCKED']";
    public static final String card_GreyedTransactions = "GreyedTransactions Card#xpath=//div[@class='wallet_card_row']/descendant::p[normalize-space(text())='Fees & Charges']/parent::a[@class='disabled']";
    public static final String icon_GetItNow = "GetItNow Icon#xpath=//div[@class='Bajaj_Finserv_BG emi-net']//a[@class='shopbox2']//i[contains(text(),'GET IT NOW')]";
    public static final String logo_CreditCard = "CreditCard Logo#xpath=//div[@class='Bajaj_Finserv_Wallet']/following::div[@class='CreditCard_data']//img[@alt='supercard']";
    public static final String text_CreditCard = "CreditCard Text#xpath=//div[@class='Bajaj_Finserv_Wallet']/following::div[@class='CreditCard_data']//div[@class='CreditCard_list neither']/descendant::ul";
    public static final String icon_GetItNowCreditCard = "GetItNowCreditCard Icon#xpath=//div[@class='supercard']//i[contains(text(),'GET IT NOW')]";
    public static final String card_CreditCard = "CreditCard Card#xpath=//div[@class='CreditCard_data']/ancestor::div[@class='Bajaj_Finserv_Wallet']";
    public static final String btn_viewall="View All#xpath=//p[normalize-space()='Exclusive offers for you']//..//a[1]";
    public static final String section_MyRelations = "MyRelations Section#xpath=//p[normalize-space(text())='My Relations']/ancestor::div[@class='BG_relation']/ancestor::div[@class='my_relation']";
    public static final String title_MyRelations = "MyRelations Title#xpath=//p[normalize-space(text())='My Relations']";
    public static final String section_Footer = "Footer Section#xpath=//div[@class='loansPart']/parent::footer";
    public static final String section_BajajFinservInsights = "BajajFinservInsights Section#xpath=//div[@class='loansPart']/child::div/descendant::a[normalize-space(text())='Bajaj Finserv Insights']/parent::div";
    public static final String footersubmenu_ReachUs = "ReachUs Footersubmenu#xpath=//div[@class='reachUsPart']//h3[@class='linksTitle collapse']/self::h3[normalize-space(text())='Reach Us']";
    public static final String submenucontent_ReachUs = "ReachUs SubmenuContent#xpath=//div[@class='reachUsPart']//h3[@class='linksTitle collapse active']/following::div[@style='display: block;']";
    public static final String myRelationsSection_HomePage = "My Relations Section in Home Page#xpath=//div[@class='rela_items_bar']/../..";


    /**
     * Common Xpaths
     */
    public static final String fd_Services_subAllOptions = "//a[normalize-space(text())='FD Services']/../div[@class='leveltwo_sub_items']/descendant::a";

    /*
    End
     */

    public void LoginIndividualForHorizantalMenu(String mobileNumber, String dob, String otp) {
        try {
            String typeLocator="Individual Customer tab#xpath=//div[@class='formtab']/descendant::a[normalize-space(text())='Individual']";
            String txtBox_MobileNumber="Mobile Number Text Box For Individual#xpath=(//input[@id='txtEmailMobile_Individual'])[1]";
            String txtBox_Dob="DOB Text Box For Individual#xpath=(//input[@id='DOBdate_Individual'])[1]";
            Boolean flag1 = clickOnIfDisplayed(LoginPage.icon_MyAccount);
            if (flag1) {
                Boolean flag2 = clickOnIfDisplayed(LoginPage.login_Button);
                if (flag2) {
                    driver.switchTo().frame(findWebElement(LoginPage.frame_Login));
                    clickOnIfDisplayed(typeLocator);
                    typeInIfPresent(txtBox_MobileNumber,mobileNumber);
                    typeInIfPresent(txtBox_Dob,dob);
                    clickOnButtonUsingTextUsingForLoop("Get OTP");
                    waitForPageToLoad();
                    enterOtpInTextBox("o","123456");
                    clickOnButtonUsingTextUsingForLoop("Submit");
                    if (!isElementDisplayed(HomePage.txt_Home)) {
                        driver.get("https://experia-uat.bajajfinserv.in/");
                        LoginIndividual("7827553033","08041986","123456");
                    }
                } else {
                    return;
                }
            } else {
                return;
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in Login Individual. Exception: " + e.getClass());
        }
//        return flag;
    }

    public void LoginIndividual(String mobileNumber, String dob, String otp) {
        try {
            String typeLocator="Individual Customer tab#xpath=//div[@class='formtab']/descendant::a[normalize-space(text())='Individual']";
            String txtBox_MobileNumber="Mobile Number Text Box For Individual#xpath=(//input[@id='txtEmailMobile_Individual'])[1]";
            String txtBox_Dob="DOB Text Box For Individual#xpath=(//input[@id='DOBdate_Individual'])[1]";
            Boolean flag1 = clickOnIfDisplayed(LoginPage.icon_MyAccount);
            if (flag1) {
                Boolean flag2 = clickOnIfDisplayed(LoginPage.login_Button);
                if (flag2) {
                    driver.switchTo().frame(findWebElement(LoginPage.frame_Login));
                    clickOnIfDisplayed(typeLocator);
                    typeInIfPresent(txtBox_MobileNumber,mobileNumber);
                    typeInIfPresent(txtBox_Dob,dob);
                    clickOnButtonUsingTextUsingForLoop("Get OTP");
                    waitForPageToLoad();
                    enterOtpInTextBox("o","123456");
                    clickOnButtonUsingTextUsingForLoop("Submit");
                } else {
                    return;
                }
            } else {
                return;
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in Login Individual. Exception: " + e.getClass());
        }
//        return flag;
    }

//    public void LoginIndividual(String mobileNumber, String dob, String otp) {
//        try {
//            String typeLocator="Individual Customer tab#xpath=//div[@class='formtab']/descendant::a[normalize-space(text())='Individual']";
//            String txtBox_MobileNumber="Mobile Number Text Box For Individual#xpath=(//input[@id='txtEmailMobile_Individual'])[1]";
//            String txtBox_Dob="DOB Text Box For Individual#xpath=(//input[@id='DOBdate_Individual'])[1]";
//            Boolean flag1 = clickOnIfDisplayed(LoginPage.icon_MyAccount);
//            if (flag1) {
//                Boolean flag2 = clickOnIfDisplayed(LoginPage.login_Button);
//                if (flag2) {
//                    driver.switchTo().frame(findWebElement(LoginPage.frame_Login));
//                    clickOnIfDisplayed(typeLocator);
//                    typeInIfPresent(txtBox_MobileNumber,mobileNumber);
//                    typeInIfPresent(txtBox_Dob,dob);
//                    clickOnButtonUsingTextUsingForLoop("Get OTP");
//                    waitForPageToLoad();
//                    enterOtpInTextBox("o","123456");
//                    clickOnButtonUsingTextUsingForLoop("Submit");
//                } else {
//                    return;
//                }
//            } else {
//                return;
//            }
//        } catch (Exception e) {
//            e.printStackTrace();
//            testStepFailed("Failed in Login Individual. Exception: " + e.getClass());
//        }
////        return flag;
//    }

    public void verifyHorizantalMenu(String menu, String subMenu) {
        try {
//            LoginForRerunHorizantalMenu("163961", "Bajaj@123");
//            if (!isElementDisplayed(txt_Home)) {
//                LoginIndividual("9890801661","26051982","123456");
//            }
            Boolean flag = clickOnHorizantalMenu(menu);
            manualScreenshot("");
            if (!flag) {
                return;
            }
            clickOnHorizantalSubMenu(subMenu);
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Horizantal Menu. Exception: " + e.getClass());
        }
    }

    public void LoginForRerunHorizantalMenu(String custId, String password) {
        try {
            if (!isElementDisplayed(HomePage.logo_Bfinserv)) {
                typeInIfDisplayed(LoginPage.txtBox_CustomerId, custId);
                typeInIfDisplayed(LoginPage.txtBox_Password, password);
                clickOnIfDisplayed(LoginPage.btn_Login);
                ApplicationKeywords.quitBrowser = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in Login For Rerun. Exception: " + e.getClass());
        }
    }

    public void verifyHorizantalMenuForSameSubMenuNames(String menu, String subMenu) {
        try {
            Boolean flag = clickOnHorizantalMenu(menu);
            manualScreenshot("");
            if (!flag) {
                return;
            }
            clickOnHorizantalSubMenuForSameMenuNames(menu, subMenu);
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Horizantal For Same Sub Menu Names. Exception: " + e.getClass());
        }
    }

    public void verifyRedirectionWithNewTab(String expectedUrl) {
        try {
            Boolean flag=false;
            if (driver.getWindowHandles().size()<=2) {
                transferControlToWindow(2, false);
                flag=true;
            }
            waitTime(5);
            stopPageLoading();
            verifyRedirectionURLIfContains(expectedUrl);
            if (flag) {
                transferControlToWindow(1, true);
            } else {
                navigateToBack();
                waitForPageToLoad();
            }
//            Description description = new Description(driver,"",@After);
//            String className = description.getClassName();
//            testStepPassed(className);
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Redirection with new tab. Exception: " + e.getClass());
        }
    }

    public void verifyTilesOptionsInHomePage(String header, String option) {
        try {
            LoginForRerunHorizantalMenu("163961", "Bajaj@123");
//     String locator=""+header+" - "+option+"#xpath=//p[normalize-space(text())='"+header+"']/../../descendant::p[normalize-space(text())='"+option+"']|//p[normalize-space(text())='"+header+"']/../../descendant::strong[normalize-space(text())='"+option+"']";
            String locator = "" + header + " - " + option + "#xpath=//p[normalize-space(text())='" + header + "']/../../descendant::*[normalize-space(text())='" + option + "']";
//     String txt_Title=""+header+" Title#xpath=//p[normalize-space(text())='"+header+"']";
            String btn_Next = "" + header + " - Next Slider Button#xpath=//p[normalize-space(text())='" + header + "']/../../descendant::a/ancestor::div[@class='slick-list']/following-sibling::button";
            scrollToWebElement(locator);
            if (!isElementDisplayed(locator)) {
                if (isElementDisplayed(btn_Next)) {
                    clickOn(btn_Next);
                    waitTime(3);
                }
            }
            clickOnIfDisplayed(locator);

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed verify Tiles Options In Home Page. Exception: " + e.getClass());
        }
    }

    public int verifyRightSliderInHomePage(String header, String index) {
        int x = 0;
        try {
            String locator = "" + header + "#xpath=(//p[normalize-space(text())='" + header + "']/../../descendant::strong|//p[normalize-space(text())='" + header + "']/../../descendant::h4)[" + index + "]";
            String btn_Next = "" + header + " - Next Slider Button#xpath=//p[normalize-space(text())='" + header + "']/../../descendant::a/ancestor::div[@class='slick-list']/following-sibling::button";
            String btn_Previous = "" + header + " - Pervious Slider Button#xpath=//p[normalize-space(text())='" + header + "']/../../descendant::a/ancestor::div[@class='slick-list']/preceding-sibling::button";
            scrollToWebElement(locator);
            if (isElementDisplayed(btn_Previous)) {
                clickOn(btn_Previous);
                waitTime(3);
            }
            if (isElementPresent(locator)) {
                x = getLocatorX_Position(locator);
                clickOnIfDisplayed(btn_Next);
                waitTime(3);
            } else {
                testStepFailed(locator.split("#")[0] + " is not present");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed verify Right Slider In Home Page. Exception: " + e.getClass());
        }
        return x;
    }

    public void verifyRightSliderPart2InHomePage(String header, String index, int x_Value) {
        try {
            String locator = "" + header + "#xpath=(//p[normalize-space(text())='" + header + "']/../../descendant::strong|//p[normalize-space(text())='" + header + "']/../../descendant::h4)[" + index + "]";
            String btn_Next = "" + header + " - Next Slider Button#xpath=//p[normalize-space(text())='" + header + "']/../../descendant::a/ancestor::div[@class='slick-list']/following-sibling::button";
            String btn_Prevoius = "" + header + " - Previous Slider Button#xpath=//p[normalize-space(text())='" + header + "']/../../descendant::a/ancestor::div[@class='slick-list']/preceding-sibling::button";
            int x1 = getLocatorX_Position(locator);
            if (x_Value > x1) {
                manualScreenshot("Right slider of" + header + " is working successfully");
            } else {
                testStepFailed("Right slider of " + header + " is not working");
            }
            if (isElementDisplayed(btn_Prevoius)) {
                clickOn(btn_Prevoius);
                waitTime(3);
            }
            waitTime(3);
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed verify Right Slider Part 2 In Home Page. Exception: " + e.getClass());
        }
    }

    public int verifyLeftSliderInHomePage(String header, String index) {
        int x = 0;
        try {
            String locator = "" + header + "#xpath=(//p[normalize-space(text())='" + header + "']/../../descendant::strong|//p[normalize-space(text())='" + header + "']/../../descendant::h4)[" + index + "]";
            String btn_Previous = "" + header + " - Previous Slider Button#xpath=//p[normalize-space(text())='" + header + "']/../../descendant::a/ancestor::div[@class='slick-list']/preceding-sibling::button";
            String btn_Next = "" + header + " - Next Slider Button#xpath=//p[normalize-space(text())='" + header + "']/../../descendant::a/ancestor::div[@class='slick-list']/following-sibling::button";
            scrollToWebElement(btn_Next);
            clickOnIfDisplayed(btn_Next);
            waitTime(3);
            if (isElementPresent(locator)) {
                x = getLocatorX_Position(locator);
                clickOnIfDisplayed(btn_Previous);
            } else {
                testStepFailed(locator.split("#")[0] + " is not present");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed verify Left Slider In Home Page. Exception: " + e.getClass());
        }
        return x;
    }

    public void verifyLeftSliderPart2InHomePage(String header, String index, int x_Value) {
        try {
            String locator = "" + header + "#xpath=(//p[normalize-space(text())='" + header + "']/../../descendant::strong|//p[normalize-space(text())='" + header + "']/../../descendant::h4)[" + index + "]";
            String btn_Previous = "" + header + " - Previous Slider Button#xpath=//p[normalize-space(text())='" + header + "']/../../descendant::a/ancestor::div[@class='slick-list']/preceding-sibling::button";
            int x1 = getLocatorX_Position(locator);
            if (x_Value < x1) {
                manualScreenshot("Left slider of" + header + " is working successfully");
            } else {
                testStepFailed("Left slider of " + header + " is not working");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed verify Left Slider Part 2 In Home Page. Exception: " + e.getClass());
        }
    }


    public void clickOnRightSlider(String header) {
        try {
            String locator = "" + header + "#xpath=//p[normalize-space(text())='" + header + "']/../../descendant::strong|//p[normalize-space(text())='" + header + "']/../../descendant::h4";
            String btn_Next = "" + header + " - Next Slider Button#xpath=//p[normalize-space(text())='" + header + "']/../../descendant::a/ancestor::div[@class='slick-list']/following-sibling::button";
            scrollToWebElement(btn_Next);
            clickOnIfDisplayed(btn_Next);
            waitTime(3);
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed click on Right Slider In HomePage. Exception: " + e.getClass());
        }
    }

    public void verifyTilesOptionSizeWithSlider(String header, String size) {
        int Count = 0;

        try {
            String locator = "" + header + "#xpath=//p[normalize-space(text())='" + header + "']/../../descendant::a//img";
            scrollToWebElement(locator);
            List<WebElement> element = findWebElements(locator);
            for (int i = 1; i <= element.size(); i++) {
                String locator_1 = "" + header + "#xpath=(//p[normalize-space(text())='" + header + "']/../../descendant::a//img)[" + i + "]";
                String locator_2 = "" + header + "#xpath=(//p[normalize-space(text())='" + header + "']/../../descendant::strong)[" + i + "]";
                if (isElementDisplayed(locator_1)) {
//                if (i<=6) {
                    testStepPassed("Tiles " + i + " : " + getText(locator_2) + " is Displayed Successfully");
//                }
                    Count++;
                }
            }
            System.out.println(Count);
            if (Count > Integer.parseInt(size.trim())) {
                Count = Count - 1;
            }
            if ((Count) == Integer.parseInt(size.trim())) {
                testStepPassed("As expected the maximum " + size + " tiles is displayed on " + header + " section");
            } else {
                testStepFailed("Maximum " + size + " tiles is not displayed under the " + header + " section :: " + Count);
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed verify Tiles with Slider Options In Home Page. Exception: " + e.getClass());
        }
    }

    public void verifyTileTextDetailsInHomepage(String header) {
        try {
            String commonLocator = "#xpath=//p[normalize-space(text())='" + header + "']/../../descendant::strong";
            String btn_Next = "" + header + " - Next Slider Button#xpath=//p[normalize-space(text())='" + header + "']/../../descendant::a/ancestor::div[@class='slick-list']/following-sibling::button";
            String btn_Prevoius = "" + header + " - Previous Slider Button#xpath=//p[normalize-space(text())='" + header + "']/../../descendant::a/ancestor::div[@class='slick-list']/preceding-sibling::button";

            List<String> list = new ArrayList<>();
            scrollToWebElement(commonLocator);
            for (int i = 1; i <= findWebElements(commonLocator).size(); i++) {

                if (i <= 6) {
                    if (isElementDisplayed(btn_Prevoius)) {
                        clickOn(btn_Prevoius);
                        waitTime(3);
                    }
                }

                if (i == 7) {
                    if (isElementDisplayed(btn_Next)) {
                        clickOn(btn_Next);
                        waitTime(3);
                    }
//                else {
//                    clickOn(btn_Prevoius);
//                }
                }

                String locator = "" + header + " Option " + i + "#xpath=(//p[normalize-space(text())='" + header + "']/../../descendant::strong)[" + i + "]";
                list.add(getText(locator));

                if (findWebElements(commonLocator).size() == i) {
                    if (isElementDisplayed(btn_Prevoius)) {
                        clickOn(btn_Prevoius);
                        waitTime(3);
                    }
                }

            }


            for (int i = 0; i < list.size(); i++) {//
                System.out.println(list.get(i) + ":" + i);//
            }//

            for (int i = 0; i < list.size(); i++) {
                testStepPassed(list.get(i));//
                String product = list.get(i).trim();
                String productName = "" + header + "" + product + " #xpath=//p[normalize-space(text())='" + header + "']/../../descendant::strong[normalize-space(text())='" + product + "']";
                String productValue = "" + header + "" + product + " EMI Starts Value (OR) cash Back Up to#xpath=//p[normalize-space(text())='" + header + "']/../../descendant::strong[normalize-space(text())='" + product + "']/following-sibling::i[normalize-space(text())='EMI Starting at']/following-sibling::p|//p[normalize-space(text())='" + header + "']/../../descendant::strong[normalize-space(text())='" + product + "']/following-sibling::i[normalize-space(text())='Cashback of up to']/following-sibling::p";
                String productImg = "" + header + "" + product + " Product Image #xpath=//p[normalize-space(text())='" + header + "']/../../descendant::strong[normalize-space(text())='" + product + "']/../preceding-sibling::div[@class='product_img']";

                if (i == 6) {
                    if (isElementDisplayed(btn_Next)) {
                        clickOn(btn_Next);
                        waitTime(3);
                    }
                }

//            scrollToWebElement(productName);
                if (i == 0) {
                    if (isElementDisplayed(btn_Prevoius)) {
                        clickOn(btn_Prevoius);
                        waitTime(3);
                    }
                }

                if (isElementDisplayed(productName)) {
                    manualScreenshot(product + " is Displayed successfully");
                } else {
                    testStepFailed(product + " is Not Displayed");
                }
                if (isElementDisplayed(productValue)) {
                    manualScreenshot(product + ": Product EMI Value is Displayed successfully. Product EMI Value is " + getText(productValue));
                } else {
                    testStepFailed(product + ": Product Value is Not Displayed");
                }
                if (isElementDisplayed(productImg)) {
                    manualScreenshot(product + ": Product Image is Displayed successfully");
                } else {
                    testStepFailed(product + ": Product Image is Not Displayed");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed verify Tile Text Details In Home Page. Exception: " + getClass());
        }
    }

    public void verifyCarousalCardsDisplayed() {
        try {
//String locator="Carousal cards#xpath=//div[@class='cbl_slider slick-initialized slick-slider slick-dotted']/descendant::p";
            String locator = "Carousal cards#xpath=//div[@class='cbl_init slick-slide slick-current slick-active']/descendant::p";
            Set<String> set = new LinkedHashSet<>();
            for (int i = 0; i < 50; i++) {
                waitTime(2);
                set.add(getText(locator));
                if (set.size() == 3) {
                    manualScreenshot("3 cards displayed successfully in the carousal section");
                    break;
                }
            }
            for (String name : set) {
                String locator3 = "" + name + "#xpath=//div[@class='cbl_init slick-slide slick-current slick-active']/descendant::p[normalize-space(text())='" + name.trim() + "']";
                String btn_Dot = "Dot Button#xpath=//li[@role='presentation']/button";
                Boolean flag = false;
                for (int i = 1; i <= findWebElements(btn_Dot).size(); i++) {
                    String btn_Dot1 = "Dot Button " + i + "#xpath=(//li[@role='presentation']/button)[" + i + "]";
                    clickOnIfDisplayed(btn_Dot1);
                    if (isElementDisplayed(locator3, 20)) {
                        manualScreenshot(name + " card displayed successfully in the carousal scetion");
                        flag = true;
                        verifyOptionClickable(locator3);
                        break;
                    }
                }
                if (!flag) {
                    testStepFailed(locator3.split("#")[0] + " Card is not displayed");
                    break;

                }

            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Carousal Cards Displayed. Exception: " + e.getClass());
        }
    }

    private void verifyOptionClickable(String locator) {
        try {
            clickOn(locator);
            waitForPageToLoad();
            if (driver.getWindowHandles().size()==1) {
                testStepFailed(getRefOfXpath(locator)+" is not Redirected");
                return;
            }
            transferControlToWindow(2, false);
            manualScreenshot(locator.split("#")[0] + " is redirected to " + driver.getCurrentUrl());
            transferControlToWindow(1, true);
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Option Clickable. Exception: " + e.getClass());
        }
    }

    public void verifyRhsSuperStoreOptionsRedirected(String text, String url) {
        try {
            verifyLocatorIsClickableUsingCommonXpath("div[contains(@class,'Superstores_list')]/descendant::p", text);
            verifyRedirectionWithNewTab(url);
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify RHS super store options. Exception: " + e.getClass());
        }
    }

    public void verifyAllLogoVisibleUnderBrandStores() {
        try {
            String commonLocator = "Brand Logos#xpath=//p[normalize-space(text())='Brand Stores']/ancestor::div[@class='Brand_Store']//div[@class='skeleton']/following-sibling::a/img";
            String btn_Next = "Brand Stores - Next Slider Button#xpath=//p[normalize-space(text())='Brand Stores']/../../descendant::a/ancestor::div[@class='slick-list']/following-sibling::button";
            String btn_Prevoius = "Brand Stores - Previous Slider Button#xpath=//p[normalize-space(text())='Brand Stores']/../../descendant::a/ancestor::div[@class='slick-list']/preceding-sibling::button";
            for (int i = 1; i <= findWebElements(commonLocator).size(); i++) {
                String locator_BrandLogos = "Brand Logos " + i + "#xpath=(//p[normalize-space(text())='Brand Stores']/ancestor::div[@class='Brand_Store']//div[@class='skeleton']/following-sibling::a/img)[" + i + "]";
                if (!isElementDisplayed(locator_BrandLogos) && i == 11) {
                    if (isElementDisplayed(btn_Next)) {
                        clickOn(btn_Next);
                    }
                }
                if (isElementDisplayed(locator_BrandLogos)) {
                    manualScreenshot(locator_BrandLogos.split("#")[0] + " is displayed successfully");
                    verifyOptionClickable(locator_BrandLogos);
                    clickIfOnlyDisplayed(btn_Prevoius);
                } else {
                    clickIfOnlyDisplayed(btn_Prevoius);
                    testStepFailed(locator_BrandLogos.split("#")[0] + " is not displayed");
                }

            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify All Logo Visible Under BrandStores. Exception: " + e.getClass());
        }
    }

    /**
     * Pre Approved Offers
     * @param expectedOptions
     * @param currentOptions
     */

    public void verifySequenceOrder(String expectedOptions, String currentOptions) {
        try {
            int count=0;
            String[] split=currentOptions.split("#");
            for (int i = 0; i < split.length; i++) {
                Boolean falg1=false;
                String[] split1=expectedOptions.split("#");
                for (int j = 0; j < split1.length; j++) {
                    String current=split[i];
                    String expected=split1[j];
                    if (current.trim().equalsIgnoreCase(expected.trim())) {
                        if (j<count) {
                        testStepFailed(current+" is not present in a sequential order");
                        }
                    count=j;
                    falg1=true;
                    }
                }
                if (!falg1) {
                    testStepFailed(split[i]+" is not in existing sequence");
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify sequence order. Exception: " + e.getClass());
        }
    }

    public String getAllTilesTitleInPreApprovedOferSection() {
        String titles="";
        try {
String locator="Pre Approved Offers common#xpath=//p[normalize-space(text())='Pre-approved Offers']/ancestor::div[@class='offersfore_you']/descendant::div[@class='offersfore_youbox']/descendant::div[@aria-live='polite']/descendant::div[@class='loantitle']/p";////p[normalize-space(text())='Pre-approved Offers']/ancestor::div[@class='offersfore_you']/descendant::div[@class='offersfore_youbox']/descendant::div[@aria-live='polite']/descendant::div[@class='loantitle']/p
            String btn_Next = "Pre-approved Offers - Next Slider Button#xpath=//p[normalize-space(text())='Pre-approved Offers']/../../following-sibling::div/descendant::a/ancestor::div[@class='slick-list']/following-sibling::button";
            String btn_Prevoius = "Pre-approved Offers - Previous Slider Button#xpath=//p[normalize-space(text())='Pre-approved Offers']/../../following-sibling::div/descendant::a/ancestor::div[@class='slick-list']/preceding-sibling::button";
            for (int i = 1; i<=findWebElements(locator).size() ; i++) {
                String locator1="Pre Approved Offers "+i+"#xpath=(//p[normalize-space(text())='Pre-approved Offers']/ancestor::div[@class='offersfore_you']/descendant::div[@class='offersfore_youbox']/descendant::div[@aria-live='polite']/descendant::div[@class='loantitle']/p)["+i+"]";
                if (i==5||(i>5&&!isElementDisplayed(locator1))) {
                    if (isElementDisplayed(btn_Next)) {
                        clickIfOnlyDisplayed(btn_Next);
                        waitTime(3);
                    }
                }
                manualScreenshot(""+i+""+getText(locator1)+" is Displayed successfully");
                if (i != 1) {
                    titles = titles + "#" + getText(locator1);
                } else {
                    titles =getText(locator1);
                }


            }

            if (isElementDisplayed(btn_Prevoius)) {
                Boolean flag=false;
                manualScreenshot("");
                for (int i=0;i<5;i++) {
                    if (isElementDisplayed(btn_Prevoius)) {
                        clickOnIfDisplayed(btn_Prevoius);
                        waitTime(3);
                        manualScreenshot("");
                    }
                    if (isElementDisplayed(locator)) {
                        flag=true;
                        manualScreenshot("Previous Slider button working successfully");
                        break;
                    }
                }
                if (!flag) {
                    manualScreenshot("Previous Slider button is not working");
                }
            }
            System.out.println(titles);
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in getAllTileTitleInPreApprovedOffers. Exception: "+e.getClass());
        }
        return titles;


    }

    public void verifyPreApprovedOffersTextOptions(String currentOptions) {//
        try {
            String[] split=currentOptions.split("#");
            for (int i = 0; i < split.length; i++) {
                String current=split[i];
                String locator = ""+current+"#xpath=//p[normalize-space(text())='Pre-approved Offers']/ancestor::div[@class='offersfore_you']/descendant::div[@class='offersfore_youbox']/descendant::div[@aria-live='polite']/descendant::p[normalize-space(text())='"+current+"']";
                String locatorApproveAmount = ""+current+" Approve Amount#xpath=//p[normalize-space(text())='Pre-approved Offers']/ancestor::div[@class='offersfore_you']/descendant::div[@class='offersfore_youbox']/descendant::div[@aria-live='polite']/descendant::p[normalize-space(text())='"+current+"']/../following-sibling::div/i[normalize-space(text())='approved amount']/following-sibling::p[contains(text(),'Rs. ')]";
                String btn_ApplyNowPreApprovedOffer = ""+current+" CTA Button#xpath=//p[normalize-space(text())='Pre-approved Offers']/ancestor::div[@class='offersfore_you']/descendant::div[@class='offersfore_youbox']/descendant::div[@aria-live='polite']/descendant::p[normalize-space(text())='"+current+"']/../following-sibling::div/a[@class='btnOffer']";//[normalize-space(text())='Apply Now']
                String locatorThreeDots = ""+current+" Three Dots#xpath=//p[normalize-space(text())='Pre-approved Offers']/ancestor::div[@class='offersfore_you']/descendant::div[@class='offersfore_youbox']/descendant::div[@aria-live='polite']/descendant::p[normalize-space(text())='"+current+"']/../following-sibling::div[@class='j_three_dots']/a";
                String locatorThreeDotsDetails = ""+current+" Three Dots Details#xpath=//p[normalize-space(text())='Pre-approved Offers']/ancestor::div[@class='offersfore_you']/descendant::div[@class='offersfore_youbox']/descendant::div[@aria-live='polite']/descendant::p[normalize-space(text())='"+current+"']/../following-sibling::div[@class='j_three_dots']/a/following-sibling::div/descendant::a[normalize-space(text())='Details']";
                String locatorThreeDotsFAQs = ""+current+" Three Dots FAQs#xpath=//p[normalize-space(text())='Pre-approved Offers']/ancestor::div[@class='offersfore_you']/descendant::div[@class='offersfore_youbox']/descendant::div[@aria-live='polite']/descendant::p[normalize-space(text())='"+current+"']/../following-sibling::div[@class='j_three_dots']/a/following-sibling::div/descendant::a[normalize-space(text())='FAQs']";
                String btn_Next = "Pre-approved Offers - Next Slider Button#xpath=//p[normalize-space(text())='Pre-approved Offers']/../../following-sibling::div/descendant::a/ancestor::div[@class='slick-list']/following-sibling::button";
                String btn_Prevoius = "Pre-approved Offers - Previous Slider Button#xpath=//p[normalize-space(text())='Pre-approved Offers']/../../following-sibling::div/descendant::a/ancestor::div[@class='slick-list']/preceding-sibling::button";
                for (int j = 0; j <5 ; j++) {
                    clickIfOnlyDisplayed(btn_Prevoius);
                }
                for (int j = 0; j < 5; j++) {
                    if (i>=4&&!isElementDisplayed(locatorThreeDots)) {
                        clickIfOnlyDisplayed(btn_Next);
                    }
                }
                verifyElementIsDisplayedOrNot(locator);
                verifyElementIsDisplayedOrNot(locatorApproveAmount);
                verifyElementIsDisplayedOrNot(btn_ApplyNowPreApprovedOffer);
                verifyElementIsDisplayedOrNot(locatorThreeDots);
                verifyLocatorPresentInBelowOfAnotherLocator(locatorApproveAmount,locator);
                verifyLocatorPresentInBelowOfAnotherLocator(btn_ApplyNowPreApprovedOffer,locator);
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Pre Approved Offers Using Tile Title. Exception: "+e.getClass());
        }

    }

    public void verifyPreApprovedOffersThreeDotOptions(String currentOptions) {//
        try {
            String[] split=currentOptions.split("#");
            for (int i = 0; i < split.length; i++) {
                String current=split[i];
                String locator = ""+current+"#xpath=//p[normalize-space(text())='Pre-approved Offers']/ancestor::div[@class='offersfore_you']/descendant::div[@class='offersfore_youbox']/descendant::div[@aria-live='polite']/descendant::p[normalize-space(text())='"+current+"']";
                String locatorApproveAmount = ""+current+" Approve Amount#xpath=//p[normalize-space(text())='Pre-approved Offers']/ancestor::div[@class='offersfore_you']/descendant::div[@class='offersfore_youbox']/descendant::div[@aria-live='polite']/descendant::p[normalize-space(text())='Doctor Loan']/../following-sibling::div/i[normalize-space(text())='approved amount']/following-sibling::p[contains(text(),'Rs. ')]";
                String btn_ApplyNowPreApprovedOffer = ""+current+" Apply Now Button#xpath=//p[normalize-space(text())='Pre-approved Offers']/ancestor::div[@class='offersfore_you']/descendant::div[@class='offersfore_youbox']/descendant::div[@aria-live='polite']/descendant::p[normalize-space(text())='Doctor Loan']/../following-sibling::div/a[normalize-space(text())='Apply Now']";
                String locatorThreeDots = ""+current+" Three Dots#xpath=//p[normalize-space(text())='Pre-approved Offers']/ancestor::div[@class='offersfore_you']/descendant::div[@class='offersfore_youbox']/descendant::div[@aria-live='polite']/descendant::p[normalize-space(text())='"+current+"']/../following-sibling::div[@class='j_three_dots']/a";
                String locatorThreeDotsDetails = ""+current+" Three Dots Details#xpath=//p[normalize-space(text())='Pre-approved Offers']/ancestor::div[@class='offersfore_you']/descendant::div[@class='offersfore_youbox']/descendant::div[@aria-live='polite']/descendant::p[normalize-space(text())='"+current+"']/../following-sibling::div[@class='j_three_dots']/a/following-sibling::div/descendant::a[normalize-space(text())='Details']";
                String locatorThreeDotsFAQs = ""+current+" Three Dots FAQs#xpath=//p[normalize-space(text())='Pre-approved Offers']/ancestor::div[@class='offersfore_you']/descendant::div[@class='offersfore_youbox']/descendant::div[@aria-live='polite']/descendant::p[normalize-space(text())='"+current+"']/../following-sibling::div[@class='j_three_dots']/a/following-sibling::div/descendant::a[normalize-space(text())='FAQs']";
                String btn_Next = "Pre-approved Offers - Next Slider Button#xpath=//p[normalize-space(text())='Pre-approved Offers']/../../following-sibling::div/descendant::a/ancestor::div[@class='slick-list']/following-sibling::button";
                String btn_Prevoius = "Pre-approved Offers - Previous Slider Button#xpath=//p[normalize-space(text())='Pre-approved Offers']/../../following-sibling::div/descendant::a/ancestor::div[@class='slick-list']/preceding-sibling::button";

                for (int j = 0; j <5 ; j++) {
                    clickIfOnlyDisplayed(btn_Prevoius);
                }

                for (int j = 0; j < 5; j++) {
                    if (i>=4&&!isElementDisplayed(locatorThreeDots)) {
                        clickIfOnlyDisplayed(btn_Next);
                    }
                }

                Boolean flag=verifyElementIsDisplayedOrNot(locatorThreeDots);
                if (flag) {
                    clickOn(locatorThreeDots);
                    Boolean flag1=verifyElementIsDisplayedOrNot(locatorThreeDotsDetails);
                    if (flag1) {
                        clickOn(locatorThreeDotsDetails);
                        waitTime(3);
                        transferControlToWindow(2,false);
                        waitForPageToLoad();
                        manualScreenshot(locatorThreeDotsDetails+" is Redirected to this Url: "+driver.getCurrentUrl());
                        transferControlToWindow(1,true);
                    }

                }
                Boolean flag3=verifyElementIsDisplayedOrNot(locatorThreeDots);
                if (flag3) {
                    clickOn(locatorThreeDots);
                    Boolean flag1=verifyElementIsDisplayedOrNot(locatorThreeDotsFAQs);
                    if (flag1) {
                        clickOn(locatorThreeDotsFAQs);
                        waitTime(3);
                        transferControlToWindow(2,false);
                        waitForPageToLoad();
                        manualScreenshot(locatorThreeDotsFAQs.split("#")[0]+" is Redirected to this Url: "+driver.getCurrentUrl());
                        transferControlToWindow(1,true);
                    }

                }

//                Boolean flag4=verifyElementIsDisplayedOrNot(btn_ApplyNowPreApprovedOffer);
//                if (flag4) {
//                        clickOn(btn_ApplyNowPreApprovedOffer);
//                        waitTime(3);
//                        transferControlToWindow(2,false);
//                        waitForPageToLoad();
//                        manualScreenshot(btn_ApplyNowPreApprovedOffer+" is Redirected to this Url: "+driver.getCurrentUrl());
//                        transferControlToWindow(1,true);
//                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Pre Approved Offers Using Tile Title. Exception: "+e.getClass());
        }
    }

    public void verifyClickOnCardIcons(String iconText) {
        try {
            Boolean flag = clickOnCardIcons(iconText);
            if (!flag) {
                return;
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed to click on wallet card icons. Exception: " + e.getClass());
        }
    }

    public Boolean clickOnEMICardIcons( String iconText){
        Boolean flag=false;
        try {
            String locator="EMI Card Icons - "+iconText+"#xpath=//div[@class='Bajaj_Finserv_BG emi-net']/descendant::p[normalize-space(text())='"+iconText.trim()+"']";
            if (isElementDisplayed(locator))
            {
                clickOn(locator);
                waitForPageToLoad();
                flag=true;
            }else{
                testStepFailed("EMI Cards - "+iconText+" is not displayed");
            }
        }catch (Exception e)
        {
            e.printStackTrace();
            testStepFailed("Failed to click On EMICards. Exception: "+e.getClass());
        }
        return flag;
    }



    public void verifyTilesOptionSize(String header,String size){
        int Count = 0;
        try {
            String locator=header+"#xpath=//p[normalize-space(text())='"+header+"']/../../descendant::a//img";
            scrollToWebElement(locator);
            List<WebElement> element = findWebElements(locator);
            for(int i =1;i<=element.size();i++) {
                String locator_1=header+"#xpath=(//p[normalize-space(text())='"+header+"']/../../descendant::a//img)["+i+"]";
                if (isElementDisplayed(locator_1)) {
                    Count++;
                }
            }
            if(Count ==Integer.valueOf(size)){
                testStepPassed("As expected the maximum "+size+" tiles is displayed on "+header+" section");
            }else{
                testStepFailed("Maximum "+size+" tiles is not displayed under the "+header+" section :: "+Count);
            }


        }catch (Exception e){
            e.printStackTrace();
            testStepFailed("Failed verify Tiles Options In Home Page. Exception: "+e.getClass());
        }
    }



    public void selectExclusiveOption(String string){
        try{
            String locator="Exclusive Offer for u Options#xpath=//p[normalize-space()='"+string.trim()+"']/..//following-sibling::div//following-sibling::h4";
            String nextButton= "Next Button#xpath=//p[normalize-space()='"+string.trim()+"']/..//following-sibling::div//following::button[contains(@class,'slick-next')]";
            String previousButton= "Previous Button#xpath=//p[normalize-space()='"+string.trim()+"']/..//following-sibling::div//following::button[contains(@class,'slick-prev')]";

            List<String> list=new LinkedList<>();

            if (isElementPresent(locator)) {
                List<WebElement> elements = findWebElements(locator);
                for(int i =1;i<=elements.size();i++){
                    String locator_1="Exclusive Offer for u Options#xpath=(//p[normalize-space()='"+string.trim()+"']/..//following-sibling::div//following-sibling::h4)["+i+"]";
                    if (i==1) {
                        scrollToWebElementIfPresent(locator_1);
                    }
                    if(isElementDisplayed(locator_1)){
                        list.add(findWebElement(locator_1).getText());
                    }else{
                        waitTime(2);
                        clickOn(nextButton);
                        waitTime(2);
                        list.add(findWebElement(locator_1).getText());
                    }
                }
            } else {
                testStepFailed(string+" section is not present");
            }
            String url="";
            for (int i = 0; i < 10; i++) {
                if (isElementDisplayed(previousButton)) {
                    clickOn(previousButton);
                } else {
                    break;
                }

            }

            for(int i =0;i<list.size();i++){
                String locator_3= list.get(i)+"#xpath=//p[normalize-space()='"+string.trim()+"']/..//following::h4[normalize-space(text())='"+list.get(i).trim()+"']/..//following-sibling::a[1]";
                if (i==0) {
                    scrollToWebElementIfPresent(locator_3);
                }
                if (!isElementDisplayed(locator_3)) {
                    clickOn(nextButton);
                }

                if(isElementDisplayed(locator_3)) {
                    waitTime(2);
                    url = driver.getCurrentUrl();
                    clickOn(locator_3);
                }
//                else {
//                    try {
//                        if (isElementDisplayed(nextButton, 5)) {
//                            clickOn(nextButton);
//                        } else {
//                            clickOn(previousButton);
//                        }
//                    }catch (Exception e){
//
//                    }
//                    waitTime(2);
//                    clickOn(locator_3);
//                }
                //new
                if (driver.getWindowHandles().size() > 1) {
                    transferControlToWindow(2, false);
                    waitTime(5);
                    waitForPageToLoad();
                    manualScreenshot(getRefOfXpath(locator_3)+" is Redirected to New Page. "+driver.getCurrentUrl());
                    transferControlToWindow(1, true);
                } else if (!driver.getCurrentUrl().equals(url)) {
                    manualScreenshot(getRefOfXpath(locator_3) + " is Redirected with SSO: " + driver.getCurrentUrl());
                    waitTime(5);
                    driver.navigate().back();
                    waitForPageToLoad();
                } else {
                    testStepFailed(getRefOfXpath(locator_3)+" is Not Redirected.");
                }
                //new
                transferControlToWindow(2,false);
//                waitForPageToLoad();
//                String[] text = list.get(i).toLowerCase().replace(" ","-").split("-");
//                if (text[0].equals("online")) {
//                    if (driver.getCurrentUrl().contains("bfsltrade")) {
//                        testStepPassed("Redirected URL verified successfully : " + driver.getCurrentUrl());
//                    } else {
//                        testStepFailed("Redirected URL is not Matched : " + text[0]);
//                        testStepFailed("Actual URL : " + driver.getCurrentUrl());
//                    }
//                }else{
//                    if (driver.getCurrentUrl().contains(text[0])) {
//                        testStepPassed("Redirected URL verified successfully : " + driver.getCurrentUrl());
//                    } else {
//                        testStepFailed("Redirected URL is not Matched : " + text[0]);
//                        testStepFailed("Actual URL : " + driver.getCurrentUrl());
//                    }
//                }

//                transferControlToWindow(1,true);
            }

        }catch (Exception e){
e.printStackTrace();
testStepFailed("Failed in verify exclusive offer section. Exception: "+e.getClass());
        }
    }

    //////////////////////FOOTER SECTION///////////////////////////////////////////

//div[@class='loansPart']/child::div/descendant::li/a[normalize-space(text())='Personal Loan']
public Boolean clickOnFooterOS( String footerOS){
    Boolean flag=false;
    try {
        String locator="Footer OS - "+footerOS+"#xpath=//div[@class='downloadAppPart']/child::a/img[@src='"+footerOS.trim()+"']";
        if (isElementPresent(locator))
        {
            scrollToWebElement(locator);
            clickOn(locator);
            flag=true;
        }else{
            testStepFailed("Footer OS - "+footerOS+" is not displayed");
        }
    }catch (Exception e)
    {
        e.printStackTrace();
        testStepFailed("Failed to click On FooterOS. Exception: "+e.getClass());
    }
    return flag;
}

    public void verifyFooterSubMenu(String subMenu, String contents){
        try{
            String locator="Footer SubMenu - "+subMenu+"#xpath=//div[@class='fullBlockFooter']/child::h3[normalize-space(text())='"+subMenu.trim()+"']";
            String locator1="FooterSubMenu Contents - "+contents+"#xpath=//div[@class='fullBlockFooter']/child::h3[normalize-space(text())='"+contents.trim()+"']/following-sibling::ul[@style='display: block;']";
            scrollToWebElement(locator);
            if(isElementDisplayed(locator)){
                clickOn(locator);
              if(verifyElementIsDisplayedOrNot(locator1)){
                  testStepPassed("SubMenu contents is displayed successfully");
                  manualScreenshot("SubMenu displayed successfully");
              }
            }
        else{
            testStepFailed("Failed to verify the SubMenu contents");
            }

        }

        catch (Exception e)
        {
            e.printStackTrace();
            testStepFailed("Failed to click On FooterOS. Exception: "+e.getClass());
        }
    }





    public static final String common = "Common Icons for My relations#xpath=//div[@class='cat_icon']/img";


    public void verifyMyRelationSectionTiles(String name){
        try {
            String loanTile="Loan Tile in My Relations#xpath=//img[@src='../../../layout/images/Loans.png']/../../..";
            String insuranceTile="Insurance Tile in My Relations#xpath=//img[@src='../../../layout/images/Insurance.png']/../../..";
            String depositTile="Deposit Tile in My Relations#xpath=//img[@src='../../../layout/images/Deposit.png']/../../..";
            String mutualFundTile="Deposit Tile in My Relations#xpath=//img[@src='../../../layout/images/icons-mutual-funds.svg']/../../..";

            Boolean flag = verifyElementIsDisplayedUsingLocator(title_MyRelations);
            Boolean flag1=false;
            if (flag) {
                if (isElementPresent(common)) {
                    for (int i = 1; i <= sizeOfLocator(common); i++) {
                        String myRelationImg = "My relations Icon " + i + "#xpath=(//div[@class='cat_icon']/img)[" + i + "]";
                        String scrImg = findWebElement(myRelationImg).getAttribute("src");

                        if (scrImg.contains("Loans")&&name.contains("Loans")) {
                            flag1=true;
                            verifyMyRelationLoan(myRelationImg);
                        }

                        if (scrImg.contains("Insurance")&&name.contains("Insurance")) {
                            flag1=true;
                            verifyMyRelationInsurance(myRelationImg);
                        }

                        if (scrImg.contains("Deposit")&&name.contains("Deposit")) {
                            flag1=true;
                            verifyMyRelationFD(myRelationImg);
                        }

                        if (scrImg.contains("mutual-funds")&&name.contains("mutual-funds")) {
                            flag1=true;
                            verifyMyRelationMF(myRelationImg);
                        }

//                        else {
//testStepFailed("My Relation icon "+i+" is Not Matching with existing");
//                        }

                    }
                    if (!flag1) {
                        testStepFailed(name+" is Not displayed in this customer Id");
                    }
                } else {
                    testStepFailed(getRefOfXpath(common) + " is Not present");
                }
            }
        }catch (Exception e){
            e.printStackTrace();
            testStepFailed("Failed in Verify My Relation Section Tiles. Exception: "+e.getClass());

        }




    }


    public void verifyMyRelationLoan(String commonPathLocator) {
        try {
//            for (int i = 0; i < sizeOfLocator(logo_Loan_MyRelationTile); i++) {
                String logo_Loan_MyRelationTile="My Relation Loan Tile Logo #xpath="+getCommonPathOfLocator(commonPathLocator)+"[@src='https://experia-uat.bajajfinserv.in/UI/images/Loans.png']";
                String name_Loan_MyRelationTile="My Relation Loan #xpath="+getCommonPathOfLocator(commonPathLocator)+"[@src='https://experia-uat.bajajfinserv.in/UI/images/Loans.png']/../following-sibling::div/descendant::p[@class='item']";
                String number_Loan_MyRelationTile="My Relation Loan Number #xpath="+getCommonPathOfLocator(commonPathLocator)+"[@src='https://experia-uat.bajajfinserv.in/UI/images/Loans.png']/../following-sibling::div/descendant::p[@class='item']/following-sibling::i";
                String amount_Loan_MyRelationTile="My Relation Loan Amount #xpath="+getCommonPathOfLocator(commonPathLocator)+"[@src='https://experia-uat.bajajfinserv.in/UI/images/Loans.png']/../following-sibling::div/descendant::p[@class='item']/../following-sibling::div/p";
                String emiAmount_Loan_MyRelationTile="My Relation Loan EMI Amount #xpath="+getCommonPathOfLocator(commonPathLocator)+"[@src='https://experia-uat.bajajfinserv.in/UI/images/Loans.png']/../following-sibling::div/descendant::p[@class='item']/../following-sibling::div/i";
                String emiPeriod_Loan_MyRelationTile="My Relation Loan EMI period #xpath="+getCommonPathOfLocator(commonPathLocator)+"[@src='https://experia-uat.bajajfinserv.in/UI/images/Loans.png']/../following-sibling::div/../following-sibling::div[@class='bottom_tags']/i";
                String emiOverdueNudge_Loan_MyRelationTile="My Relation Loan EMI Over Due Nudge #xpath="+getCommonPathOfLocator(commonPathLocator)+"[@src='https://experia-uat.bajajfinserv.in/UI/images/Loans.png']/../following-sibling::div/../following-sibling::div[@class='bottom_tags']/i/following-sibling::p[normalize-space(text())='EMI OVERDUE']";
                String btnPayNow_Loan_MyRelationTile="My Relation Loan Pay Now button #xpath="+getCommonPathOfLocator(commonPathLocator)+"[@src='https://experia-uat.bajajfinserv.in/UI/images/Loans.png']/../following-sibling::div/../following-sibling::div[@class='bottom_tags']/i/following-sibling::a[normalize-space(text())='Pay Now']";
                String btnViewDetails_Loan_MyRelationTile="My Relation Loan view Details button #xpath="+getCommonPathOfLocator(commonPathLocator)+"[@src='https://experia-uat.bajajfinserv.in/UI/images/Loans.png']/../following-sibling::div/../following-sibling::div[@class='bottom_tags']/a[normalize-space(text())='View Details']";
                String slider_Loan_MyRelationTile="My Relation Loan Progress Level slider #xpath="+getCommonPathOfLocator(commonPathLocator)+"[@src='https://experia-uat.bajajfinserv.in/UI/images/Loans.png']/../following-sibling::div/../following-sibling::div[@class='task_progress']/div";
                if (isElementDisplayed(logo_Loan_MyRelationTile)) {
                    manualScreenshot("Loan Logo is Displayed successfully");
                } else {
                    testStepFailed("Loan Logo is not displayed");
                }
                validateGetTextCustomized(name_Loan_MyRelationTile,"is displayed successfully. Name: ");
                validateGetTextCustomized(number_Loan_MyRelationTile,"is displayed successfully. Number: ");
                validateGetTextCustomized(amount_Loan_MyRelationTile,"is displayed successfully. Total Loan Amount: ");
                validateGetTextCustomized(emiAmount_Loan_MyRelationTile,"is displayed successfully. Emi Amount: ");
                String period = validateGetTextCustomized(emiPeriod_Loan_MyRelationTile, "is displayed successfully. Emi Period: ").trim().split(" ")[0];
                String[] period1 = period.split("/");
//                String width = validateCssValues(slider_Loan_MyRelationTile, "width");
            String width = getAttributeUsingLocatorAndAttribute(slider_Loan_MyRelationTile, "style").trim().split("%")[0].replaceAll("width:", "").trim();
            int percentage =(int) (((Double.parseDouble(period1[0].trim())) / (Double.parseDouble(period1[1].trim()))) * 100);
                if (width.contains(String.valueOf(percentage))) {
                    manualScreenshot("Slider is gradually increased based on EMIs Paid successfully");
                } else {
                    stepFailed("Value: "+width);
                    stepFailed("%: "+percentage);
                    testStepFailed("Slider is not working");
                }
                if (isElementDisplayed(btnPayNow_Loan_MyRelationTile)) {
                    if (isElementDisplayed(emiOverdueNudge_Loan_MyRelationTile)) {
                        manualScreenshot("Pay Now Button showing with EMI Over Due Nudge successfully");
                        verifyLocatorColorUsingCssValue(emiOverdueNudge_Loan_MyRelationTile," ","Red","background-color");
                        validateCssValues(emiOverdueNudge_Loan_MyRelationTile,"background-color");
                    } else {
                        testStepFailed("Pay Now Button is not showing with EMI Over Due Nudge");
                    }
                } else if (isElementDisplayed(emiOverdueNudge_Loan_MyRelationTile)) {
                    if (isElementDisplayed(btnPayNow_Loan_MyRelationTile)) {
                        manualScreenshot("Pay Now Button showing with EMI Over Due Nudge successfully");
                        verifyLocatorColorUsingCssValue(emiOverdueNudge_Loan_MyRelationTile," ","Red","background");
                    } else {
                        testStepFailed("Pay Now Button is not showing with EMI Over Due Nudge");
                    }
                } else {
                    if (isElementDisplayed(btnViewDetails_Loan_MyRelationTile)) {
                        validateGetTextCustomized(btnViewDetails_Loan_MyRelationTile, "is displayed successfully. Button Text: ");
                        if (!isElementDisplayed(emiOverdueNudge_Loan_MyRelationTile)) {
                            manualScreenshot("EMI Over Due Nudge is not showing with View Details Button successfully");
                        } else {
                            testStepFailed("EMI Over Due Nudge is showing with View Details Button");
                        }
                    } else {
                        testStepFailed("CTA Button is not showing for Loan Tile in my relation");
                    }
                }
//            }
        } catch (Exception e) {

            e.printStackTrace();
            testStepFailed("Failed in verify My Relation Loan. Exception: "+e.getClass());
        }
    }

    public void verifyMyRelationInsurance(String commonPathLocator) {
        try {
//            for (int i = 0; i < sizeOfLocator(logo_Insurance_MyRelationTile); i++) {
                String logo_Insurance_MyRelationTile="My Relation Insurance Tile Logo #xpath="+getCommonPathOfLocator(commonPathLocator)+"[@src='https://experia-uat.bajajfinserv.in/UI/images/Insurance.png']";
                String name_Insurance_MyRelationTile="My Relation Insurance #xpath="+getCommonPathOfLocator(commonPathLocator)+"[@src='https://experia-uat.bajajfinserv.in/UI/images/Insurance.png']/../following-sibling::div/descendant::p[@class='item']";
                String number_Insurance_MyRelationTile="My Relation Insurance Number #xpath="+getCommonPathOfLocator(commonPathLocator)+"[@src='https://experia-uat.bajajfinserv.in/UI/images/Insurance.png']/../following-sibling::div/descendant::p[@class='item']/following-sibling::i";
                String amount_Insurance_MyRelationTile="My Relation Insurance Amount #xpath="+getCommonPathOfLocator(commonPathLocator)+"[@src='https://experia-uat.bajajfinserv.in/UI/images/Insurance.png']/../following-sibling::div/descendant::p[@class='item']/../following-sibling::div/p";
//                String emiAmount_Insurance_MyRelationTile="My Relation Insurance EMI Amount #xpath="+getCommonPathOfLocator(commonPathLocator)+"[@src='https://experia-uat.bajajfinserv.in/UI/images/Insurance.png']/../following-sibling::div/descendant::p[@class='item']/../following-sibling::div/i";
//                String emiPeriod_Insurance_MyRelationTile="My Relation Insurance EMI period #xpath="+getCommonPathOfLocator(commonPathLocator)+"[@src='https://experia-uat.bajajfinserv.in/UI/images/Insurance.png']/../following-sibling::div/../following-sibling::div[@class='bottom_tags']/i";
                String dayToRenew="My Relation Insurance Days to Renew#xpath="+getCommonPathOfLocator(commonPathLocator)+"[@src='https://experia-uat.bajajfinserv.in/UI/images/Insurance.png']/../following-sibling::div/../following-sibling::div[@class='bottom_tags']/i";
                String btnRenewNow_Insurance_MyRelationTile="My Relation Insurance Pay Now button #xpath="+getCommonPathOfLocator(commonPathLocator)+"[@src='https://experia-uat.bajajfinserv.in/UI/images/Insurance.png']/../following-sibling::div/../following-sibling::div[@class='bottom_tags']/i/following-sibling::a[normalize-space(text())='Renew Now']";
                String btnViewDetails_Insurance_MyRelationTile="My Relation Insurance view Details button #xpath="+getCommonPathOfLocator(commonPathLocator)+"[@src='https://experia-uat.bajajfinserv.in/UI/images/Insurance.png']/../following-sibling::div/../following-sibling::div[@class='bottom_tags']/a[normalize-space(text())='View Details']";
                String slider_Insurance_MyRelationTile="My Relation Insurance Progress Level slider #xpath="+getCommonPathOfLocator(commonPathLocator)+"[@src='https://experia-uat.bajajfinserv.in/UI/images/Insurance.png']/../following-sibling::div/../following-sibling::div[@class='task_progress']/div";
                if (isElementDisplayed(logo_Insurance_MyRelationTile)) {
                    manualScreenshot("Insurance Logo is Displayed successfully");
                } else {
                    testStepFailed("Insurance Logo is not displayed");
                }
                validateGetTextCustomized(name_Insurance_MyRelationTile,"is displayed successfully. Name: ");
                validateGetTextCustomized(number_Insurance_MyRelationTile,"is displayed successfully. Number: ");
                validateGetTextCustomized(amount_Insurance_MyRelationTile,"is displayed successfully. Total Insurance Amount: ");
//                validateGetTextCustomized(emiAmount_Insurance_MyRelationTile,"is displayed successfully. Emi Amount: ");
//                String period = validateGetTextCustomized(emiPeriod_Insurance_MyRelationTile, "is displayed successfully. Emi Period: ").trim().split(" ")[0];
//                String[] period1 = period.split("/");
//                String width = validateCssValues(slider_Insurance_MyRelationTile, "width");
//                int percentage = ((Integer.parseInt(period1[0].trim())) / (Integer.parseInt(period1[1].trim()))) * 100;
//                if (width.contains(String.valueOf(percentage))) {
//                    manualScreenshot("Slider is gradually increased based on EMIs Paid successfully");
//                } else {
//                    stepFailed("Value: "+width);
//                    stepFailed("%: "+percentage);
//                    testStepFailed("Slider is not working");
//                }
                if (isElementDisplayed(btnRenewNow_Insurance_MyRelationTile)) {
                    if (isElementDisplayed(dayToRenew)) {
                        String days = validateGetTextCustomized(dayToRenew, "is displayed successfully. Days: ");
                    } else {
                        testStepFailed("Days to renew is not showing with EMI Over Due Nudge");
                    }
                } else if (isElementDisplayed(dayToRenew)) {
                    if (isElementDisplayed(btnRenewNow_Insurance_MyRelationTile)) {
                        manualScreenshot("Renew Now Button showing with Renew days successfully");
                    } else {
                        testStepFailed("Renew Now Button is not showing with Renew Days");
                    }
                }else {
                    if (isElementDisplayed(btnViewDetails_Insurance_MyRelationTile)) {
                        validateGetTextCustomized(btnViewDetails_Insurance_MyRelationTile, "is displayed successfully. Button Text: ");
                        if (!isElementDisplayed(dayToRenew)) {
                            manualScreenshot("Days to Renew is not showing with View Details Button successfully");
                        } else {
                            testStepFailed("Days to Renew is showing with View Details Button");
                        }
                    } else {
                        testStepFailed("CTA Button is not showing for Insurance Tile in my relation");
                    }
                }
//            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify My Relation Insurance. Exception: "+e.getClass());
        }
    }

    public void verifyMyRelationFD(String commonPathLocator) {
        try {
//            for (int i = 0; i < sizeOfLocator(logo_Fd_MyRelationTile); i++) {
                String logo_FD_MyRelationTile="My Relation FD Tile Logo #xpath="+getCommonPathOfLocator(commonPathLocator)+"[@src='https://experia-uat.bajajfinserv.in/UI/images/Deposit.png']";
                String name_FD_MyRelationTile="My Relation FD #xpath="+getCommonPathOfLocator(commonPathLocator)+"[@src='https://experia-uat.bajajfinserv.in/UI/images/Deposit.png']/../following-sibling::div/descendant::p[@class='item']";
                String number_FD_MyRelationTile="My Relation FD Number #xpath="+getCommonPathOfLocator(commonPathLocator)+"[@src='https://experia-uat.bajajfinserv.in/UI/images/Deposit.png']/../following-sibling::div/descendant::p[@class='item']/following-sibling::i";
                String amount_FD_MyRelationTile="My Relation FD Amount #xpath="+getCommonPathOfLocator(commonPathLocator)+"[@src='https://experia-uat.bajajfinserv.in/UI/images/Deposit.png']/../following-sibling::div/descendant::p[@class='item']/../following-sibling::div/p";
//                String emiAmount_FD_MyRelationTile="My Relation FD EMI Amount #xpath="+getCommonPathOfLocator(commonPathLocator)+"[@src='https://experia-uat.bajajfinserv.in/UI/images/Deposit.png']/../following-sibling::div/descendant::p[@class='item']/../following-sibling::div/i";
//                String emiPeriod_FD_MyRelationTile="My Relation FD EMI period #xpath="+getCommonPathOfLocator(commonPathLocator)+"[@src='https://experia-uat.bajajfinserv.in/UI/images/Deposit.png']/../following-sibling::div/../following-sibling::div[@class='bottom_tags']/i";
                String maturingToday_FD_MyRelationTile="My Relation FD EMI Over Due Nudge #xpath="+getCommonPathOfLocator(commonPathLocator)+"[@src='https://experia-uat.bajajfinserv.in/UI/images/Deposit.png']/../following-sibling::div/../following-sibling::div[@class='bottom_tags']/i[normalize-space(text())='Maturing Today']";
//                String emiOverdueNudge_FD_MyRelationTile="My Relation FD EMI Over Due Nudge #xpath="+getCommonPathOfLocator(commonPathLocator)+"[@src='https://experia-uat.bajajfinserv.in/UI/images/Deposit.png']/../following-sibling::div/../following-sibling::div[@class='bottom_tags']/i/following-sibling::p[normalize-space(text())='Maturing Today']";
                String btnRenewNow_FD_MyRelationTile="My Relation FD Renew Now button #xpath="+getCommonPathOfLocator(commonPathLocator)+"[@src='https://experia-uat.bajajfinserv.in/UI/images/Deposit.png']/../following-sibling::div/../following-sibling::div[@class='bottom_tags']/i/following-sibling::a[normalize-space(text())='Renew Now']";
                String btnViewDetails_FD_MyRelationTile="My Relation FD view Details button #xpath="+getCommonPathOfLocator(commonPathLocator)+"[@src='https://experia-uat.bajajfinserv.in/UI/images/Deposit.png']/../following-sibling::div/../following-sibling::div[@class='bottom_tags']/a[normalize-space(text())='View Details']";
//              String slider_FD_MyRelationTile="My Relation FD Progress Level slider #xpath="+getCommonPathOfLocator(commonPathLocator)+"[@src='https://experia-uat.bajajfinserv.in/UI/images/Deposit.png']/../following-sibling::div/../following-sibling::div[@class='task_progress']/div";
                if (isElementDisplayed(logo_FD_MyRelationTile)) {
                    manualScreenshot("FD Logo is Displayed successfully");
                } else {
                    testStepFailed("FD Logo is not displayed");
                }
                validateGetTextCustomized(name_FD_MyRelationTile,"is displayed successfully. Name: ");
                validateGetTextCustomized(number_FD_MyRelationTile,"is displayed successfully. Number: ");
                validateGetTextCustomized(amount_FD_MyRelationTile,"is displayed successfully. Total FD Amount: ");

                if (isElementDisplayed(btnRenewNow_FD_MyRelationTile)) {
                    if (isElementDisplayed(maturingToday_FD_MyRelationTile)) {
                        manualScreenshot("Renew Now Button showing with Maturing Today Label successfully");
//                        verifyLocatorColorUsingCssValue(emiOverdueNudge_FD_MyRelationTile," ","Red","background");
//                        validateCssValues(emiOverdueNudge_FD_MyRelationTile,"background");
                    } else {
                        testStepFailed("Renew Now Button is not showing with Maturing Today Label");
                    }
                } else if (isElementDisplayed(maturingToday_FD_MyRelationTile)) {
                    if (isElementDisplayed(btnRenewNow_FD_MyRelationTile)) {
                        manualScreenshot("Renew Now Button showing with Maturing Today Label successfully");
//                        verifyLocatorColorUsingCssValue(emiOverdueNudge_FD_MyRelationTile," ","Red","background");
                    } else {
                        testStepFailed("Renew Now Button is not showing with Maturing today Label");
                    }
                } else {
                    if (isElementDisplayed(btnViewDetails_FD_MyRelationTile)) {
                        validateGetTextCustomized(btnViewDetails_FD_MyRelationTile, "is displayed successfully. Button Text: ");
                        if (!isElementDisplayed(maturingToday_FD_MyRelationTile)) {
                            manualScreenshot("Maturing today label is not showing with View Details Button successfully");
                        } else {
                            testStepFailed("Maturing today label is showing with View Details Button");
                        }
                    } else {
                        testStepFailed("CTA Button is not showing for FD Tile in my relation");
                    }
                }
//            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify My Relation FD. Exception: "+e.getClass());
        }
    }

    public void verifyMyRelationMF(String commonPathLocator) {
        try {
String logoMF="Mutual fund tile Logo#xpath="+getCommonPathOfLocator(commonPathLocator)+"[@src='https://experia-uat.bajajfinserv.in/UI/images/icons-mutual-funds.svg']";
String nameMF="Mutual fund tile name#xpath="+getCommonPathOfLocator(commonPathLocator)+"[@src='https://experia-uat.bajajfinserv.in/UI/images/icons-mutual-funds.svg']/../following-sibling::div//p[normalize-space(text())='Mutual Funds']";
String lineFirstMF="'For Queries on your existing Mutual Fund portfolio, kindly reach us at' TEXT#xpath="+getCommonPathOfLocator(commonPathLocator)+"[@src='https://experia-uat.bajajfinserv.in/UI/images/icons-mutual-funds.svg']/../following-sibling::div//i[normalize-space(text())='For Queries on your existing Mutual Fund portfolio, kindly reach us at']";
String lineSecondMF="'investmentservices@bajajfinserv.in' in MF Tile#xpath="+getCommonPathOfLocator(commonPathLocator)+"[@src='https://experia-uat.bajajfinserv.in/UI/images/icons-mutual-funds.svg']/../following-sibling::div//div[normalize-space(text())='investmentservices@bajajfinserv.in']";
verifyFieldsDisplayedUsingLocator(logoMF);
verifyFieldsDisplayedUsingLocator(nameMF);
verifyFieldsDisplayedUsingLocator(lineFirstMF);
verifyFieldsDisplayedUsingLocator(lineSecondMF);
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify My relation Mutual Fund. Exception: "+e.getClass());
        }
    }


    /////Mustaq
    public static final String icon_Alert = "Alert Icon #xpath=//img[@alt='bell']/parent::a";
    public static final String popup_Alert = "Popup with Coming Soon Text#xpath=//div[@class='Notifications_popBG']//strong[contains(text(),'Coming Soon')]";
    public static final String card_EMIActive = "Active EMI Card without Nudge#xpath=//p[normalize-space(text())='EMI Card']/preceding-sibling::img[@src='https://cms-assets.bajajfinserv.in/is/image/bajajfinancestage/emi-card-6?scl=1&fmt=png-alpha']";
    public static final String icon_PassbookWallet = "Passbook icon in Wallet MastHead#xpath=//ul[@class='listwalltcard']/descendant::a//p[normalize-space(text())='Passbook']";
    public static final String cross_Hamburger = "Hamburger Close Icon#xpath=//div[@class='menuclose']/child::a[@class='fristslide']";
    public static final String icon_HamburgerMenu = "Hamburger Menu in Home Page#xpath=//a[@class='hem_menu']/img";


    public void verifyAlertPopupClosed() {
        try {

            if (!isElementDisplayed(popup_Alert)) {
                testStepPassed("Pop Up is Closed successfully on Outside click");
            } else {
                testStepFailed("Pop Up is not Closed on Outside click");
            }


        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Alert Popup Closed .Exception:" + e.getClass());
        }
    }
    public void verifyPassbooknotDisplayed() {
        try {

            if (!isElementDisplayed(icon_PassbookWallet)) {
                testStepPassed("Passbook Icon is not displayed in Wallet Masthead successfully");
            } else {
                testStepFailed("Passbook Icon is displayed in Wallet Masthead");
            }


        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Alert Popup Closed .Exception:" + e.getClass());
        }
    }


    public void verifyActiveEMICard() {
        try {

            if (isElementDisplayed(card_EMIActive) && !isElementDisplayed(icon_BlockedEMI) && !isElementDisplayed(icon_GetItNow)) {
                testStepPassed("Active EMI Card is displayed with No nudge Successfully");
            } else {
                testStepFailed("Active EMI card is not displayed as expected");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify ed Active EMICard.Exception:" + e.getClass());
        }
    }
/*
New Home Page
 */
public void verifyLogoIsDisplayed(String sectionName,String optionName,String extra) {
    try {
        String locatorSection = sectionName + " Section#xpath=(//*[normalize-space(text())='" + sectionName.trim() + "'])[1]";
        String locator = sectionName + " section : " + optionName + " Logo#xpath=(//*[normalize-space(text())='" + sectionName.trim() + "'])[1]/../following-sibling::div//p[normalize-space(text())='" + optionName.trim() + "']/preceding-sibling::img|(//*[normalize-space(text())='" + sectionName.trim() + "'])[1]/../following-sibling::ul//p[normalize-space(text())='" + optionName.trim() + "']/preceding-sibling::img";
        String locatorNext = sectionName + " Next Button#xpath=(//*[text()='" + sectionName.trim() + "'])[1]/../following-sibling::div//p[text()='" + optionName.trim() + "']/ancestor::div/following-sibling::button[@aria-label='Next']";
        String locatorPrevious = sectionName + " Previous Button#xpath=(//*[text()='" + sectionName.trim() + "'])[1]/../following-sibling::div//p[text()='" + optionName.trim() + "']/ancestor::div/preceding-sibling::button[@aria-label='Previous']";
        Boolean flag = scrollToWebElementIfPresent(locatorSection);
        if (flag) {
            verifyAndClickNextSliderButton(locator,locatorNext);
            if (isElementDisplayed(locator)) {
                manualScreenshot(getRefOfXpath(locator) + " is Displayed");
            } else {
                testStepFailed(getRefOfXpath(locator)+" is Not Displayed");
            }
        }
    } catch (Exception e) {
        e.printStackTrace();
        testStepFailed("Failed in verify "+sectionName+" "+optionName+" Logo is Displayed. Exception: " + e.getClass());
    }
}

    public void verifyProductIsDisplayed(String sectionName,String optionName,String extra) {
        try {
            String locatorSection = sectionName + " Section#xpath=(//*[normalize-space(text())='" + sectionName.trim() + "'])[1]";
            String locator = sectionName + " section : " + optionName + " Name#xpath=(//*[normalize-space(text())='" + sectionName.trim() + "'])[1]/../following-sibling::div//p[normalize-space(text())='" + optionName.trim() + "']|(//*[normalize-space(text())='" + sectionName.trim() + "'])[1]/../following-sibling::ul//p[normalize-space(text())='" + optionName.trim() + "']";
            String locatorNext = sectionName + " Next Button#xpath=(//*[text()='" + sectionName.trim() + "'])[1]/../following-sibling::div//p[text()='" + optionName.trim() + "']/ancestor::div/following-sibling::button[@aria-label='Next']";
            String locatorPrevious = sectionName + " Previous Button#xpath=(//*[text()='" + sectionName.trim() + "'])[1]/../following-sibling::div//p[text()='" + optionName.trim() + "']/ancestor::div/preceding-sibling::button[@aria-label='Previous']";
            Boolean flag = scrollToWebElementIfPresent(locatorSection);
            if (flag) {
                verifyAndClickNextSliderButton(locator,locatorNext);
                if (isElementDisplayed(locator)) {
                    manualScreenshot(getRefOfXpath(locator) + " is Displayed");
                } else {
                    testStepFailed(getRefOfXpath(locator)+" is Not Displayed");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify "+sectionName+" "+optionName+" Product is Displayed. Exception: " + e.getClass());
        }
    }

    public void clickOnProduct(String sectionName,String optionName,String extra) {
        try {
            String locatorSection = sectionName + " Section#xpath=(//*[normalize-space(text())='" + sectionName.trim() + "'])[1]";
            String locator = sectionName + " section : " + optionName + " Name#xpath=(//*[normalize-space(text())='" + sectionName.trim() + "'])[1]/../following-sibling::div//p[normalize-space(text())='" + optionName.trim() + "']|(//*[normalize-space(text())='" + sectionName.trim() + "'])[1]/../following-sibling::ul//p[normalize-space(text())='" + optionName.trim() + "']";
            String locatorNext = sectionName + " Next Button#xpath=(//*[text()='" + sectionName.trim() + "'])[1]/../following-sibling::div//p[text()='" + optionName.trim() + "']/ancestor::div/following-sibling::button[@aria-label='Next']";
            String locatorPrevious = sectionName + " Previous Button#xpath=(//*[text()='" + sectionName.trim() + "'])[1]/../following-sibling::div//p[text()='" + optionName.trim() + "']/ancestor::div/preceding-sibling::button[@aria-label='Previous']";
                if (isElementDisplayed(locator)) {
                    clickOn(locator);
                    waitForPageToLoad();
                } else {
                    testStepFailed(getRefOfXpath(locator)+" is Not Displayed");
                }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in click on "+sectionName+" "+optionName+" Product. Exception: " + e.getClass());
        }
    }

public void verifyAndClickNextSliderButton(String locator,String locatorNext) {
    try {
        int count=0;
        if (isElementPresent(locator)) {
            if (!isElementDisplayed(locator)) {
                while (!isElementDisplayed(locator)) {
                    count++;
                    if (isElementDisplayed(locatorNext)) {
                        clickOn(locatorNext);
                        waitTime(2);
                        if (isElementDisplayed(locator)||count==10) {
                            break;
                        }
                    }
                }
            }
        } else {
            testStepFailed(getRefOfXpath(locator) + " is Not Present");
            return;
        }
    } catch (Exception e) {
        e.printStackTrace();
        testStepFailed("Failed in verify and click on "+getRefOfXpath(locator)+" Next Slider button. Exception: "+e.getClass());
    }
}

public void verifyNoOfTiles(String sectionName,int noOfTiles,String extra) {
    try {
String locator=sectionName+" Section#xpath=(//*[normalize-space(text())='"+sectionName.trim()+"'])[1]/../following-sibling::div//a";
        int sizeOfLocator = sizeOfLocator(locator);
        if (noOfTiles==sizeOfLocator) {
            testStepPassed("Number Tiles of the "+sectionName+" is verified successfully");
        } else {
            stepFailed("Expected Tiles: "+noOfTiles);
            stepFailed("Actual Tiles: "+sizeOfLocator);
            stepFailed("Number Tiles of the "+sectionName+" is not verified");
        }
    } catch (Exception e) {
        e.printStackTrace();
        testStepFailed("Failed in verify "+noOfTiles+" No Of Tiles for "+sectionName+" Section. Exception: "+e.getClass());
    }
}


public void verifySliderWorking(String sectionName,int noOfTiles,String extra) {
    try {
//        String locator=sectionName+" Section#xpath=(//*[normalize-space(text())='"+sectionName.trim()+"'])[1]/../following-sibling::div//a";
        String locatorSection = sectionName + " Section#xpath=(//*[normalize-space(text())='" + sectionName.trim() + "'])[1]";
        String locator = sectionName + " section #xpath=(//*[normalize-space(text())='" + sectionName.trim() + "'])[1]/../following-sibling::div//p|(//*[normalize-space(text())='" + sectionName.trim() + "'])[1]/../following-sibling::ul//p";
        String locatorNext = sectionName + " Next Button#xpath=(//*[text()='" + sectionName.trim() + "'])[1]/../following-sibling::div//p/ancestor::div/following-sibling::button[@aria-label='Next']";
        String locatorPrevious = sectionName + " Previous Button#xpath=(//*[text()='" + sectionName.trim() + "'])[1]/../following-sibling::div//p/ancestor::div/preceding-sibling::button[@aria-label='Previous']";
        Boolean flag = scrollToWebElementIfPresent(locatorSection);
        if (flag) {
            int size = sizeOfLocator(locator);
            if (size>=noOfTiles) {
                if (isElementDisplayed(locatorNext)) {
                    manualScreenshot(getRefOfXpath(locator)+" Next Slider Button is Displayed for "+size+" tiles in the section successfully");
                    for (int i = 0; i < size; i++) {
                        String locator1 = sectionName + " section #xpath=((//*[normalize-space(text())='" + sectionName.trim() + "'])[1]/../following-sibling::div//p|(//*[normalize-space(text())='" + sectionName.trim() + "'])[1]/../following-sibling::ul//p)["+i+"]";
                        if (isElementDisplayed(locator1)) {
                        } else {
                            String locator2 = sectionName + " section #xpath=((//*[normalize-space(text())='" + sectionName.trim() + "'])[1]/../following-sibling::div//p|(//*[normalize-space(text())='" + sectionName.trim() + "'])[1]/../following-sibling::ul//p)["+i+"]";
                            clickOn(locatorNext);
                            waitTime(2);
                            if (isElementDisplayed(locator2)) {
                                manualScreenshot(getRefOfXpath(locator)+" Next Slider Button is working successfully");
                            } else {
                                testStepFailed(getRefOfXpath(locator)+" Next Slider Button is NOt Working");
                            }
                            if (isElementDisplayed(locatorPrevious)) {
                                manualScreenshot(getRefOfXpath(locator)+" Previous Slider Button is Displayed After Clicking Next Slider Button successfully");
                                String locator3 = sectionName + " section #xpath=((//*[normalize-space(text())='" + sectionName.trim() + "'])[1]/../following-sibling::div//p|(//*[normalize-space(text())='" + sectionName.trim() + "'])[1]/../following-sibling::ul//p)[1]";
                                clickOn(locatorPrevious);
                                waitTime(2);
                                if (isElementDisplayed(locator3)) {
                                    manualScreenshot(getRefOfXpath(locator)+" Previous Slider Button is working successfully");
                                } else {
                                    testStepFailed(getRefOfXpath(locator)+" Previous Slider Button is NOt Working");
                                }
                            } else {
                                testStepFailed(getRefOfXpath(locator)+" Previous Slider Button is Not Displayed After Clicking Next Slider Button");
                            }
                        }
                    }
                } else {
                    testStepFailed(getRefOfXpath(locator)+" Next Slider Button is Not Displayed for "+size+" tiles in the section");
                }
            }else{
                if (!isElementDisplayed(locatorNext)) {
                    manualScreenshot(getRefOfXpath(locator)+" Next Slider Button is Not Displayed for "+size+" tiles in the section successfully");
                } else {
                    testStepFailed(getRefOfXpath(locator)+" Next Slider Button is Displayed for "+size+" tiles in the section");
                }
            }
        }


    } catch (Exception e) {
        e.printStackTrace();
        testStepFailed("Failed in verify Slider Working "+sectionName+" Section. Exception: "+e.getClass());
    }
}

    public void verifySliderButtonsIsNotVisible(String sectionName,String extra) {
        try {
            String locatorSection = sectionName + " Section#xpath=(//*[normalize-space(text())='" + sectionName.trim() + "'])[1]";
            String locatorNext = sectionName + " Next Button#xpath=(//*[text()='" + sectionName.trim() + "'])[1]/../following-sibling::div//p/ancestor::div/following-sibling::button[@aria-label='Next']";
            String locatorPrevious = sectionName + " Previous Button#xpath=(//*[text()='" + sectionName.trim() + "'])[1]/../following-sibling::div//p/ancestor::div/preceding-sibling::button[@aria-label='Previous']";
            Boolean flag = scrollToWebElementIfPresent(locatorSection);
            if (flag) {
                if (!isElementDisplayed(locatorNext) && !isElementDisplayed(locatorPrevious)) {
                    manualScreenshot(sectionName + " section is Not Showing Next and Previous Slider Buttons Successfully");
                } else {
                    testStepFailed(sectionName + " section is Showing Next or Previous Slider Buttons");
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify "+sectionName+" Section Slider Buttons Is Not Visible. Exception: "+e.getClass());
        }
    }

    //*[normalize-space(text())='Offers for you']/../following-sibling::div//img[@alt]

    public void clickOnImagesUsingSectionName(String sectionName,String optionName,String altName,String extra) {
        try {
            String locatorSection=sectionName+" Section#xpath=//*[normalize-space(text())='"+sectionName.trim()+"']";
String locator=sectionName+" : "+optionName+"#xpath=//*[normalize-space(text())='"+sectionName.trim()+"']/../following-sibling::div//img[normalize-space(@alt)='"+altName.trim()+"']";
            Boolean flag = scrollToWebElementIfPresent(locatorSection);
            if (flag) {
                String previous=sectionName+" Previous Slider Button#xpath=//*[normalize-space(text())='"+sectionName.trim()+"']/../following-sibling::div//button[@aria-label='Previous']";
                String next=sectionName+" Next Slider Button#xpath=//*[normalize-space(text())='"+sectionName.trim()+"']/../following-sibling::div//button[@aria-label='Next']";
                if (isElementPresent(locator)) {
                    if (!isElementDisplayed(locator)) {
                        for (int i = 0; i < 10; i++) {
                            if (isElementDisplayed(next)) {
                                clickOn(next);
                                if (isElementDisplayed(locator)) {
                                    clickOn(locator);
                                    break;
                                }
                            } else {
                                testStepFailed(getRefOfXpath(locator) + " is Not Displayed");
                                break;
                            }

                        }
                    } else {
                        clickOn(locator);
                    }
                } else {
                    testStepFailed(getRefOfXpath(locator)+" is not present");
                }

            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in  click on "+sectionName+" "+optionName+" Option Images using Secetion name. Exception: "+e.getClass());
        }
    }

    public void verifySequentialOrder(String commonLocatorPath,String sequenceNames,String extra) {
        try {
            if (isElementPresent(commonLocatorPath)) {
                int size = sizeOfLocator(commonLocatorPath);
//                String currentSequence="";
                String[] split = sequenceNames.split("#");
                int count=0;
                for (int i = 1; i <= size; i++) {
                    List<WebElement> elements = driver.findElements(By.xpath(getCommonPathOfLocator(commonLocatorPath)));
                    for (int j = 0; j < elements.size(); j++) {
                        String name = elements.get(i).getText().trim().toLowerCase();
                        boolean flag=false;
                        for (int k = 0; k < split.length; k++) {
                            String sName = split[i].trim().toLowerCase();
                            if (name.equalsIgnoreCase(sName)) {
                                flag=true;
                                if (count <= k) {
                                    count=k;
                                    testStepPassed(name + " sequential order is verified successfully");
                                } else {
                                    stepFailed(name + " sequential order is not verified");
                                }
                            }
                        }
                        if (!flag) {
                            testStepFailed(name+" is New Product in "+getRefOfXpath(commonLocatorPath));
                        }
                    }
                }
            } else {
                testStepFailed(getRefOfXpath(commonLocatorPath)+" is Not Present");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Sequential Order. Exception: "+e.getClass());
        }

    }


    ////////23112022-Mustaq - Start //////


    public static final String passbook_Page="Passbook page Section#xpath=//div[@class='passbook_alldata']";
    public static final String popup_Rating="Rate us Popup#xpath=//strong[normalize-space()='Your feedback will help us improve']";
    public static final String header_HamburgerMenu = "Menu Header in Hamburger#xpath=//strong[normalize-space(text())='Menu']";

    public void clickOnSubListMenus(String SubListMenu) {
        String sublistMenus = "Hamburger:" + SubListMenu + "#xpath=//div[@class='under_menu_list']//li/a[normalize-space(text())='" + SubListMenu + "']";
        try {
            if (isElementDisplayed(sublistMenus)) {
                clickOn(sublistMenus);
                waitForPageToLoad();
            } else {
                testStepFailed(getRefOfXpath(sublistMenus) + "is not Displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in Click on SubList Menus .Exception:" + e.getClass());
        }
    }

    public void verifyAccordionCollapsable(String SubListMenu, String extra) {
        try {
            String[] split=SubListMenu.split("#");
            for (int i = 1; i < 2; i++) {
                String current=split[i];
                String sublistMenus = "Hamburger:" + SubListMenu + "#xpath=//div[@class='under_menu_list']//li/a[normalize-space(text())='" + current.trim() + "']";
                if (!isElementDisplayed(sublistMenus)) {
                    testStepPassed("Accordion Collapsed Successfully");
                }else {
                    testStepFailed(getRefOfXpath(sublistMenus) + "Accordion is not Collapsed");
                }
            }
        }  catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Accordion Collapsable .Exception:" + e.getClass());
        }
    }


    public void clickOnEMICalculator(String calculatorType, String URL) {
        String calc = "Calculator:" + calculatorType + "#xpath=//p[normalize-space(text())='"+calculatorType.trim()+"']/parent::div[@class='j_calcText']/parent::a";
        try {
            if (isElementDisplayed(calc)) {
                clickOn(calc);
                verifyRedirectionInCommon(URL,"");
            } else {
                testStepFailed(getRefOfXpath(calc) + "is not Displayed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in Click on EMI Calculator .Exception:" + e.getClass());
        }
    }



    ///////23122022
    public static final String super_StoresHeader = "Super Stores Header #xpath=//p[normalize-space(text())='Superstores']";





    //02012023

    public static final String ourCompanies = "Our Companies section in Footer #xpath=//h3[normalize-space(text())='Our Companies']";
    public static final String address_CorporateOffice = "Address Section#xpath=//h3[normalize-space(text())='Corporate Office']";
    public static final String office_Regd = "Office#xpath=//h3[normalize-space(text())='Bajaj Finance Limited Regd. Office']";

    public Boolean clickOnAppFormsFooterOptions( String footerText, String extra){
        Boolean flag=false;
        try {
//            String locator="Footer Icons in Application Forms - "+footerText+"#xpath=//div[@class='loansPart']/child::div/descendant::a[normalize-space(text())='"+footerText.trim()+"']";
            String locator="Footer Icons in Application Forms - "+footerText+"#xpath=//h3[normalize-space(text())='Application Forms']/parent::div/child::ul[@class='singlelinks']/li/a[normalize-space(text())='"+footerText.trim()+"']";
            if (isElementPresent(locator))
            {
                scrollToWebElement(locator);
                clickOn(locator);
                flag=true;
            }else{
                testStepFailed(getRefOfXpath(locator)+" is not displayed");
            }
        }catch (Exception e)
        {
            e.printStackTrace();
            testStepFailed("Failed to click On App Forms Footer Options. Exception: "+e.getClass());
        }
        return flag;
    }

    public Boolean clickOnFooterTabs( String TabName, String extra){
        Boolean flag=false;
        try {
            String tab = "Tab " +TabName+ "#xpath=//h3[normalize-space(text())='"+TabName.trim()+"']";
            if (isElementPresent(tab))
            {
                scrollToWebElement(tab);
                clickOn(tab);
                flag=true;
            }else{
                testStepFailed(getRefOfXpath(tab)+" is not displayed");
            }
        }catch (Exception e)
        {
            e.printStackTrace();
            testStepFailed("Failed to click On click On Footer Tabs. Exception: "+e.getClass());
        }
        return flag;
    }

    public Boolean clickOnFooterTabOptions( String TabName, String Option, String extra){
        Boolean flag=false;
        try {
            String tabOption = "Tab Option " +Option+ " under " +TabName+ "#xpath=//h3[normalize-space(text())='"+TabName.trim()+"']/following-sibling::ul[@class='singlelinks singlelinks_ex']/li/a[normalize-space(text())='"+Option.trim()+"']";
            if (!TabName.equals("Reach Us")){
                if (isElementDisplayed(tabOption))
                {
                    clickOn(tabOption);
                    flag=true;
                    waitForPageToLoad();
                }else{
                    testStepFailed(getRefOfXpath(tabOption)+" is not displayed");
                }}else {
                String tabOption1 = "Tab Option " +Option+ " under " +TabName+ "#xpath=//h3[normalize-space(text())='"+TabName.trim()+"']/following-sibling::div/child::div[@class='reachUs60']//ul//li//a[normalize-space(text())='"+Option.trim()+"']";
                if (isElementDisplayed(tabOption1))
                {
                    clickOn(tabOption1);
                    flag=true;
                    waitForPageToLoad();
                }else{
                    testStepFailed(getRefOfXpath(tabOption1)+" is not displayed");

                }}
        }catch (Exception e)
        {
            e.printStackTrace();
            testStepFailed("Failed to click On click On Footer Tab Options. Exception: "+e.getClass());
        }
        return flag;
    }








    public Map <String, String> clickOnAppFormsFooterOptionstogettext(String footerText, String extra){
        Map <String, String> map= new LinkedHashMap<>();
        try {
//            String locator="Footer Icons in Application Forms - "+footerText+"#xpath=//div[@class='loansPart']/child::div/descendant::a[normalize-space(text())='"+footerText.trim()+"']";
            String locator="Footer Icons in Calculator - "+footerText+"#xpath=//h3[normalize-space(text())='Reach Us']/following-sibling::div/child::div[@class='reachUs60']//ul//li//a";
            String tab = "Tab Option#xpath=//h3[normalize-space(text())='Reach Us']";
            scrollToWebElement(tab);
            clickOn(tab);
            for (int i = 1; i <sizeOfLocator(locator) ; i++) {

                String locator1="Footer Icons in Application Forms - "+footerText+"#xpath=(//h3[normalize-space(text())='Reach Us']/following-sibling::div/child::div[@class='reachUs60']//ul//li//a)["+i+"]";

                if (isElementPresent(tab))
                {
                    clickOn(tab);
                    waitTime(2);
                    String Option = getText(locator1);
                    clickOn(locator1);
//                    flag=true;
                    waitForPageToLoad();
                    String Url= driver.getCurrentUrl();
                    map.put(Option, Url);
//                    System.out.println(Option);
//                    System.out.println(Url);
                    navigateToBack();
                    waitTime(2);
                }else{
                    testStepFailed(getRefOfXpath(locator)+" is not displayed");
                }

            }
            System.out.print(map);
        }catch (Exception e)
        {
            e.printStackTrace();
            testStepFailed("Failed to click On App Forms Footer Options. Exception: "+e.getClass());
        }
        return map;
    }

    public Map <String, String> clickOnMiddleSectionFooterOptionstogettext( String footerText, String extra){
        Map <String, String> map= new LinkedHashMap<>();

        try {
//            String locator="Footer Icons in Application Forms - "+footerText+"#xpath=//div[@class='loansPart']/child::div/descendant::a[normalize-space(text())='"+footerText.trim()+"']";
            String tab = "Tab Option#xpath=//h3[normalize-space(text())='Legal']";
            String locator="Footer Icons in Application Forms - "+footerText+"#xpath=//h3[normalize-space(text())='Legal']/following-sibling::ul[@class='singlelinks singlelinks_ex']/li/a";
            scrollToWebElement(tab);
            clickOn(tab);

            for (int i = 1; i <sizeOfLocator(locator) ; i++) {

                String locator1="Footer Icons in Application Forms - "+footerText+"#xpath=(//h3[normalize-space(text())='Legal']/following-sibling::ul[@class='singlelinks singlelinks_ex']/li/a)["+i+"]";
                if (isElementPresent(tab))
                {
                    String Option = getText(locator1);
                    clickOn(locator1);
                    waitForPageToLoad();
                    String Url= driver.getCurrentUrl();
                    map.put(Option, Url);
//                    System.out.println(Option);
//                    System.out.println(Url);
                    navigateToBack();
                }else{
                    testStepFailed(getRefOfXpath(locator)+" is not displayed");
                }

            }
            System.out.print(map);

        }catch (Exception e)
        {
            e.printStackTrace();
            testStepFailed("Failed to click On App Forms Footer Options. Exception: "+e.getClass());
        }
        return map;
    }

    public Boolean clickOnFooterOptions( String footerText){
        Boolean flag=false;
        try {
            String locator="Footer Icons - "+footerText+"#xpath=//div[@class='loansPart']/child::div/descendant::a[normalize-space(text())='"+footerText.trim()+"']";
            if (isElementPresent(locator))
            {
                scrollToWebElement(locator);
                clickOn(locator);
                flag=true;
                waitTime(2);
            }else{
                testStepFailed("Footer Options - "+footerText+" is not displayed");
            }
        }catch (Exception e)
        {
            e.printStackTrace();
            testStepFailed("Failed to click On FooterIcons. Exception: "+e.getClass());
        }
        return flag;
    }


///// Mustaq - End ////////////

    public void clickoneHorizantalMenu(String menu, String subMenu) {
        try {
//            LoginForRerunHorizantalMenu("163961", "Bajaj@123");
//            if (!isElementDisplayed(txt_Home)) {
//                LoginIndividual("9890801661","26051982","123456");
//            }
            Boolean flag = clickOnHorizantalMenu(menu);
            manualScreenshot("");
            if (!flag) {
                return;
            }
            // clickOnHorizantalSubMenu(subMenu);
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Horizantal Menu. Exception: " + e.getClass());
        }
    }

//    public void clickoneHorizantalMenu(String menu, String subMenu) {
//        try {
////            LoginForRerunHorizantalMenu("163961", "Bajaj@123");
////            if (!isElementDisplayed(txt_Home)) {
////                LoginIndividual("9890801661","26051982","123456");
////            }
//            Boolean flag = clickOnHorizantalMenu(menu);
//            manualScreenshot("");
//            if (!flag) {
//                return;
//            }
//            // clickOnHorizantalSubMenu(subMenu);
//        } catch (Exception e) {
//            e.printStackTrace();
//            testStepFailed("Failed in verify Horizantal Menu. Exception: " + e.getClass());
//        }
//    }


    public Boolean clickOnHorizantalMenu(String menuText) {
        Boolean flag = false;
        try {
            //  String locator = "Horizantal Menu - " + menuText + "#xpath=//ul[@class='menuitems']/descendant::a[normalize-space(text())='" + menuText.trim() + "']";
            String locator = "Horizantal Menu - " + menuText + "#xpath=//div[@class='newcust_subheader']/descendant::a[normalize-space(text())='" + menuText.trim() + "']";
            if (isElementDisplayed(locator)) {
                clickOn(locator, "");
                flag = true;
            } else {
                testStepFailed("Horizantal Menu - " + menuText + " is not displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in click On Horizantal Menu " + menuText + ". Exception: " + e.getClass());
        }
        return flag;
    }


    public Boolean clickOnHorizantalLevelTwoSubMenu(String firstLevelMenuText, String menuText) {
        Boolean flag = false;
        try {

            String locator = "Horizantal level 2 sub Menu - " + menuText + "#xpath=//li[@class='dropdown-parent']//following-sibling::li[normalize-space(text())='" + firstLevelMenuText.trim() + "']//ul[@class='list-unstyled']//a[normalize-space(text())='" + menuText.trim() + "']";
            // String locator = "Horizantal level 2 sub Menu - " + menuText + "#xpath=//a[normalize-space(text())='" + firstLevelMenuText.trim() + "']/../div[@class='leveltwo_sub_items']/descendant::a[normalize-space(text())='" + menuText.trim() + "']";
            //scrollToWebElement(locator);
            if (isElementDisplayed(locator)) {
                clickOn(locator, "");
                waitForPageToLoad();
                flag = true;
            } else {
                testStepFailed("Horizantal level 2 sub Menu - " + menuText + " is not displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in click On Horizantal level 2 sub  Menu " + menuText + ". Exception: " + e.getClass());
        }
        return flag;
    }


    public Boolean clickOnHorizantalLevelTwoSubMenuwithoutSubheading(String firstLevelMenuText, String menuText) {
        Boolean flag = false;
        try {

            String locator = "Horizantal level 2 sub Menu - " + menuText + "#xpath=//li[@class='dropdown-parent']//following-sibling::li[normalize-space(text())='" + firstLevelMenuText.trim() + "']//ul//a[normalize-space(text())='" + menuText.trim() + "']";
            // String locator = "Horizantal level 2 sub Menu - " + menuText + "#xpath=//a[normalize-space(text())='" + firstLevelMenuText.trim() + "']/../div[@class='leveltwo_sub_items']/descendant::a[normalize-space(text())='" + menuText.trim() + "']";
            //scrollToWebElement(locator);
            if (isElementDisplayed(locator)) {
                clickOn(locator, "");
                waitForPageToLoad();
                flag = true;
            } else {
                testStepFailed("Horizantal level 2 sub Menu - " + menuText + " is not displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in click On Horizantal level 2 sub  Menu " + menuText + ". Exception: " + e.getClass());
        }
        return flag;
    }



    public Boolean clickOnHorizantalLevelTwoSubheadingSubMenu(String firstLevelMenuText, String subHeading, String menuText) {
        Boolean flag = false;
        try {
            String locator = "Horizantal level 2 sub Menu - " + menuText + "#xpath=//li[@class='dropdown-parent']//following-sibling::li[normalize-space(text())='" + firstLevelMenuText.trim() + "']//h4[text()='" + subHeading + "']/following-sibling::ul//a[normalize-space(text())='" + menuText.trim() + "']";
            scrollToWebElement(locator);
            if (isElementDisplayed(locator)) {
                clickOn(locator);
                waitForPageToLoad();
                flag = true;
            } else {
                testStepFailed("Horizantal level 2 sub Menu - " + menuText + " is not displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in click On Horizantal level 2 sub  Menu " + menuText + ". Exception: " + e.getClass());
        }
        return flag;
    }






    public void clickOncloseButtonxPopup(String buttonLabel) {

        try {
            boolean status = false;
            String button = buttonLabel + "#xpath=//div[@class='block_tags']//img[@src='/MyAccountAsset/images/modal-cross.svg']";

            List<WebElement> listOfButton = findWebElements(button);
            if (!(listOfButton.size() == 0)) {
                for (int i = 1; i <= listOfButton.size(); i++) {
                    String buttonElement = buttonLabel + "#xpath=(//div[@class='block_tags']//img[@src='/MyAccountAsset/images/modal-cross.svg'])["
                            + i + "]";
                    if (isElementDisplayed(buttonElement, 10)) {
                        clickOn(buttonElement);
                        // testStepPassed(buttonLabel + "  Clicked Sucessfully");
                        waitForPageToLoad();
                        status = true;
                        break;
                    }
                }

            }
            if (!status) {
                //testStepInfo(buttonLabel + " button is not present.");
            }
        } catch (Exception e) {
            testStepFailed("Failed in clickOnButtonInProfile. Exception : " + e.getClass());
        }

    }


    public Boolean clickOnHorizantalLevelApplyOnlineMenu(String firstLevelMenuText, String menuText) {
        Boolean flag = false;
        try {

            String locator = "Horizantal level 2 sub Menu - " + menuText + "#xpath=//li[@class='dropdown-parent']//following-sibling::li[normalize-space(text())='" + firstLevelMenuText.trim() + "']//a[normalize-space(text())='" + menuText.trim() + "']";
            if (isElementDisplayed(locator)) {
                clickOn(locator, "");
                waitForPageToLoad();
                flag = true;
            } else {
                testStepFailed("Horizantal level 2 sub Menu - " + menuText + " is not displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in click On Horizantal level 2 sub  Menu " + menuText + ". Exception: " + e.getClass());
        }
        return flag;
    }


    public Boolean clickOnHorizantalLevelSingleSubMenu(String firstLevelMenuText, String menuText) {
        Boolean flag = false;
        try {

            String locator = "Horizantal level 1 sub Menu - " + menuText + "#xpath=//a[normalize-space(text())='" + firstLevelMenuText + "']/following::a[normalize-space(text())='" + menuText + "']";
            // String locator = "Horizantal level 2 sub Menu - " + menuText + "#xpath=//a[normalize-space(text())='" + firstLevelMenuText.trim() + "']/../div[@class='leveltwo_sub_items']/descendant::a[normalize-space(text())='" + menuText.trim() + "']";
            //scrollToWebElement(locator);
            if (isElementDisplayed(locator)) {
                clickOn(locator, "");
                waitForPageToLoad();
                flag = true;
            } else {
                testStepFailed("Horizantal level 2 sub Menu - " + menuText + " is not displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in click On Horizantal level 2 sub  Menu " + menuText + ". Exception: " + e.getClass());
        }
        return flag;
    }


    public void clickOn(String objLocator, String param) {
        try {

            findWebElement(objLocator).click();
            testStepAction("Click On: " + objLocator.split("#")[0]);
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in Click On " + getRefOfXpath(objLocator) + ". Exception: " + e.getClass());
        }
    }


    //////////2106
    public static final String pTB_Popup = "EMI Offer Popup#xpath=//div[@id='ptbOfferPopup']";


    public Boolean clickOnHorizantalLevelTwoSubMenu(String firstLevelMenuText) {
        Boolean flag = false;
        try {

            String locator = "Horizantal level 2 sub Menu - " + firstLevelMenuText + "#xpath=//li[@class='dropdown-parent']//following-sibling::li[normalize-space(text())='" + firstLevelMenuText.trim() + "']";
            // String locator = "Horizantal level 2 sub Menu - " + menuText + "#xpath=//a[normalize-space(text())='" + firstLevelMenuText.trim() + "']/../div[@class='leveltwo_sub_items']/descendant::a[normalize-space(text())='" + menuText.trim() + "']";
            //scrollToWebElement(locator);
            if (isElementPresent(locator)) {
                clickOn(locator, "");
                waitForPageToLoad();
                flag = true;
            } else {
                testStepFailed("Horizantal level 2 sub Menu - " + firstLevelMenuText + " is not displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in click On Horizantal level 2 sub  Menu " + firstLevelMenuText + ". Exception: " + e.getClass());
        }
        return flag;
    }

    public void clickOnHorizantalMenuFinalOption(String firstLevelMenuText, String option) {
//        Boolean flag = false;
        try {

            String locator = "Horizantal level 2 sub Menu - " + option + "#xpath=//li[@class='dropdown-parent']//following-sibling::li[normalize-space(text())='" + firstLevelMenuText.trim() + "']//ul[@class='list-unstyled']//a[normalize-space(text())='" + option.trim() + "']";
            clickOnIfDisplayed(locator);
            //            if (isElementPresent(locator)) {
//                clickOn(locator, "");
////                waitForPageToLoad();
////                flag = true;
//            } else {
//                testStepFailed("Horizantal level 2 sub Menu - " + option + " is not displayed");
//            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in click On Horizantal level 2 sub  Menu " + option + ". Exception: " + e.getClass());
        }
//        return flag;
    }

    public Boolean mouseHoverHorizantalSubMenu(String menuText) {
        Boolean flag = false;
        try {
            String menu = "Horizantal level 2 sub Menu - " + menuText + "#xpath=//li[@class='dropdown-parent']//following-sibling::li[normalize-space(text())='" + menuText.trim() + "']";
            if (isElementPresent(menu)) {
                Actions action = new Actions(driver);
                action.moveToElement(findWebElement(menu)).build().perform();
                waitTime(2);
            } else {
                testStepFailed("Horizantal sub Menu - " + menuText + " is not displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in mouse Hover Horizantal SubMenu " + menuText + ". Exception: " + e.getClass());
        }
        return flag;
    }


    public Boolean clickOnHorizantalMenuMainOption(String menuText) {
        Boolean flag = false;
        try {
            //  String locator = "Horizantal Menu - " + menuText + "#xpath=//ul[@class='menuitems']/descendant::a[normalize-space(text())='" + menuText.trim() + "']";
            String locator = "Horizantal Menu - " + menuText + "#xpath=//div[@class='newcust_subheader']/descendant::a[normalize-space(text())='" + menuText.trim() + "']";
            if (isElementDisplayed(locator)) {
                clickOn(locator, "");
                flag = true;
            } else {
                testStepFailed("Horizantal Menu - " + menuText + " is not displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in clickOn Horizantal Menu Main Option " + menuText + ". Exception: " + e.getClass());
        }
        return flag;
    }





    public static final String emi_Icon = "EMI Card Icon#xpath=//ul[@class='rightSideitems']/descendant::li//a//img[contains (@src,'images/emicard_icon.png')]";
    public static final String bell_Icon = "Bell Icon#xpath=//ul[@class='rightSideitems']/descendant::li//a//img[contains (@src,'images/bell.svg')]";
    public static final String cart_Icon = "Cart Icon#xpath=//ul[@class='rightSideitems']/descendant::li//a//img[contains (@src,'images/cart.svg')]";
    public static final String profile_Icon = "Profile Icon#xpath=//ul[@class='rightSideitems']/descendant::li//a//img[contains (@src,'images/prof.svg')]";


}