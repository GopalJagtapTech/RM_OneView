package PageObjects;

import base.ApplicationKeywords;
import org.openqa.selenium.*;
import org.openqa.selenium.support.Color;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.util.List;
import java.util.Random;


public class LoginFieldPage extends ApplicationKeywords {

    //Reimagine
    public static final String txt_Myaccount = "MyAccountDetails : #xpath=(//div[@class='exp_perform_list'])[1]";
    public static final String txt_Mobileno = "Mobile Number #xpath=(//input[@type='number'])[1]";
    public static final String txt_Dateofbirth = "Date of Birth (DD/MM/YYYY) #xpath=//input[@id='DOBdate_Individual']";
    public static final String btn_getOTP = "GetOTP#xpath=//button[text()='Get OTP']";

    public static final String button_getOTP = "Get OTP#xpath=//button[@id='Individual_GetOTP' and text()='Get OTP']";
    public static final String txt_SignIn = "GetOTP#xpath=//div[@class='customer_login_title']//h5[text()='Sign-in to My Account']";


    public static final String txt_etrvlddate = "EnterValidDate#xpath=(//div[text()='Enter valid date'])[1]";
    public static final String txt_etrvldmobileno = "TypeMobilenumber#xpath=//div[text()='Please enter Mobile Number']";

    public static final String btn_Submit_Otp = "Submit#xpath=//button[@id='submitOTP' and text()='Submit']";

    public static final String icon_MyAccount = "MyAccount Icon#xpath=//p[normalize-space(text())='My Account']/ancestor::a";

    public static final String SignIn_Button = "SignIn Button#xpath=//div[@class='login_tooltip' and @style='display: block;']//button[normalize-space()='Sign in']";

    public static final String loginPopup = "Sign-in to My Account#xpath=//div[@class='customer_login_title']//*[normalize-space(text())='Sign-in to My Account']";

    public static final String btn_IndividualGetOTP = "GetOTP#xpath=//button[@id='Individual_GetOTP' and text()='Get OTP']";

    public static final String btn_NonIndividualGetOTP = "GetOTP#xpath=//button[@id='NonIndividual_GetOtp' and text()='Get OTP']";
    public static final String btn_NRIGetOTP = "GetOTP#xpath=//button[@id='NRI_GetOtp' and text()='Get OTP']";

    public static final String btn_Change = "Change #xpath=//a[@id='Change']";

    public static final String btn_Resend = "Resend  #xpath=//button[@id='resendOtp']";

    public static final String dropdown_Multi = "Select CustomerId to Proceed #xpath=//select[@id='multipleCustomerIdData']";

    public static final String closeDrop = "Select CustomerId to Proceed Close Icon#xpath=//div[@id='SelectMultipleCustomerId']//img[contains(@src,'v2_cross.svg')]";

    public static final String btn_Proceed = "Proceed #xpath=//button[@id='ProceedMultipleID']";

    public static final String btn_Got = "Got it #xpath=//div[@id='TemporaryBlockScreenId']//button[text()='Got it']";
    public static final String btn_NeedHelp = "Need Help #xpath=//div[@id='TemporaryBlockScreenId']//a[text()='Need help?']";


    public static final String cta_Apply = "Apply Now #xpath=//div[@class='block_tags']//a[normalize-space(text())='Apply Now']";
    public static final String cta_close = "close mark  #xpath=//div[@id='SourceNoData']//img[contains(@src,'modal-cross.svg')]";

    public static final String cc_Offers = "Co branded Offers #xpath=//p[contains(text(),'Offers')]/..//img[contains(@src,'cc-offers')]";

    public static final String gusetlabel = "Guest #xpath=//p[text()='Guest']";

    public static final String sbm_locator = "Shop on Bajaj Mall | Cashback up to Rs. 5,000" + "#xpath=//p[normalize-space(text())='Shop on EMIs | Cashback up to Rs. 5,000 on ACs']";

    public static final String signCar_locator = "Sign In" + "#xpath=//a[contains(@onclick,'signin-carousal')]";

    public static final String openFd_locator = "Open FD" + "#xpath=//a[contains(@onclick,'bajaj-finserv-emi-store-icon')]";

    public static final String checkNow_locator = "Check Now" + "#xpath=//a[contains(@onclick,'your-cibil-score-icon')]";

    public static final String locate_locator = "Locate us" + "#xpath=//div[@class='locate_us_text']//h5[normalize-space(text())='Locate us']";

    public static final String Har_locator = "Har time EMI on time" + "#xpath=//div[@class='locate_us_text']//h5[normalize-space(text())='Har time EMI on time']";

    public static final String Ins_locator = "Insurance" + "#xpath=//div[@class='bazaar_BG']//h2[normalize-space(text())='Insurance']";

    public static final String Inv_locator = "Investments" + "#xpath=//div[@class='bazaar_BG']//h2[normalize-space(text())='Investments']";


    public static final String RHS_locator = "Super Stores RHS " + "#xpath=//div[@class='Superstores_BG']//p[normalize-space(text())='Superstores']";
    public static final String app_locator = "Apply for loans" + "#xpath=//div[@class='wallet_card_title']//p[normalize-space(text())='Apply for loans']";
    public static final String Shp_locator = "Shop on EMIs" + "#xpath=//div[@class='wallet_card_title']//p[normalize-space(text())='Shop on EMIs']";
    public static final String cbc_locator = "Co-branded Credit card" + "#xpath=//div[@class='wallet_card_title']//p[normalize-space(text())='Co-branded Credit card']";

    public static final String sbmall_locator = "Shop on Bajaj Mall" + "#xpath=//div[@class='shop_on_the_emi_store']//p[contains(text(),'Shop on EMIs | Cashback up to Rs. 5,000 on ACs')]";

    public static final String obp_locator = "Our bestselling products" + "#xpath=//div[@class='offersfore_you_BG']//p[normalize-space(text())='Our bestselling products']";

    public static final String bs_locator = "Brand Store" + "#xpath=//div[@class='Brand_Store_BG']//p[normalize-space(text())='Brand Store']";

    public static final String lfs_locator = "Lifestyle Store | Cashback up to Rs. 4,000" + "#xpath=//div[@class='life_style_BG']//p[normalize-space(text())='Lifestyle Store | Cashback up to Rs. 4,000']";

    public static final String prod_locator = "Products for you" + "#xpath=//div[@class='Products_for_you_BG']//h2[normalize-space(text())='Products for you']";

    public static final String twl_locator = "Two-wheeler World | Cashback up to Rs. 5,000" + "#xpath=//div[@class='Two_Wheeler_World_BG']//h2[normalize-space(text())='Two-wheeler World | Cashback up to Rs. 5,000']";

    public static final String os_locator = "Online Stores" + "#xpath=//div[@class='super_store_BG']//p[normalize-space(text())='Online Stores']";

    public static final String exp_locator = "Explore" + "#xpath=//div[@class='Explore_title']//a[normalize-space(text())='Explore']";

    public static final String par_locator = "Partner Offers" + "#xpath=//div[@class='Partner_title']//p[normalize-space(text())='Partner Offers']";


    public static final String viewProfile="View Profile#xpath=//a[normalize-space(text())='View Profile']";
    public static final String DateofIncor="Date Of Incorporation#xpath=//div[@id='doIidentification']//i[normalize-space(text())='Date Of Incorporation']";

    public static final String DateofBirth="Date Of Birth#xpath=//div[@id='dobidentification']//i[normalize-space(text())='Date of Birth']";

    public static final String custIdProfile="Customer ID#xpath=//i[normalize-space(text())='Customer ID']/following-sibling::p";

    public static final String mainHamburger="Login Hamburger #xpath=//div[@class='primary_header']//img[@alt='menu']";

    public static final String Skip_Coach="Skip Button in Cochmark#xpath=//div[@class='cochmark_btn']/a[normalize-space(text())='Skip']";

    public static final String Next_Coach="Next Button in Cochmark#xpath=//div[@class='cochmark_btn']/a[normalize-space(text())='Next']";


    public static final String Got_Coach="Got it in Cochmark#xpath=//div[@class='cochmark_btn']/a[normalize-space(text())='Got it']";

    public static final String searchBox = "Search Bar in Home page#xpath=//input[@id='txtSearch']";

    public static final String prof_myAccount = "My Account#xpath=//img[@alt='profile']";


    public static final String products_tile = "Products Tile#xpath=//div[@class='newcust_subheader']";

    public static final String coach_Markhead=" Cochmark Content#xpath=//div[@class='cochmark_btn']";

    public static final String Nricoach_Markhead=" NRI Individual Cochmark #xpath=//div[@class='cochmark_popup_text_one NRI_coach']";

    public static final String Indcoach_Markhead=" Individual Cochmark #xpath=//div[@class='cochmark_popup_text_one Individual_coach']";


    public static final String Corcoach_Markhead=" Corporate/Business Cochmark #xpath=//div[@class='cochmark_popup_text_one Non_Individual_coach']";


    public static final String viewAllBBRS=" View All #xpath=//div[@class='BHFL_Box desk_app']//p[normalize-space(text())='Bills & Recharges']//following-sibling::a[text()='View All']";

    public static final String bbrsAllBBRS=" View All #xpath=//div[@class='BHFL_Box desk_app']//p[normalize-space(text())='Bills & Recharges']";

    public static final String prof_Coach="Profile #xpath=//img[@alt='profile']";

    public static final String instaEmi="Insta EMI card #xpath=//div[@class='wallet_card_title']//p[text()='Insta EMI card']";

    //New Xpaths
    public static final String ShopBajalMall_Nudge=" Shop on Bajaj Mall Top Deals Green nudge Air Conditioners #xpath=//div[@class='shop_on_the_emi_store']//p[normalize-space(text())='Air Conditioners']//parent::a//preceding-sibling::i[contains(text(),'TOP DEALS')]";

    public static final String InvFD_Nudge=" Investments  Fixed Deposit Green Nudge Up to 8.20% #xpath=//div[@class='bazaar_BG']//p[normalize-space(text())='Fixed Deposit']//parent::a//preceding-sibling::i[contains(text(),'Upto 8.20%')]";

    public static final String life_Nudge=" LifeStore cashback  Green Nudge Rs. 3,000 Cashback*  #xpath=//div[@class='life_style_BG']//p[normalize-space(text())='Mattresses']//parent::a//preceding-sibling::i[contains(text(),'Rs. 3000 Cashback*')]";

    public static final String twoWheeler_Nudge=" TwoWheeler  cashback  Green Nudge Latest  #xpath=//div[@class='Two_Wheeler_World_BG']//p[normalize-space(text())='Scooters']//parent::a//preceding-sibling::i[contains(text(),'Latest')]";

    public static final String prod_Nudge=" Products for You  Green Nudge Up to 8.20% #xpath=//div[@class='Products_for_you_BG']//p[normalize-space(text())='Fixed Deposit']//parent::a//preceding-sibling::i[contains(text(),'Upto 8.20%')]";

    public static final String SuperStore_Nudge=" Bajaj Mall Purple Nudge Rs. 5,000 Cashback*  #xpath=//div[@class='Superstores_BG']//p[normalize-space(text())='Bajaj Mall']//following-sibling::i[contains(text(),'Rs. 5,000 Cashback*')]";

    public static final String clossmark_Login=" Closs x mark on login popup #xpath=//div[@id='LoginGetOTPID']//a[@onclick='CloseData(RedirectionURL.LANDINGPAGE)']//img[@src='/MyAccountAsset/Login/images/modal-cross.svg']";

    public static final String resend_Login=" Resend Otp Disabled #xpath=//div[@id='ValidatOTPID']//button[@id='resendOtp'][@disabled]";

    public static final String resend_LoginColor=" Resend Otp Disabled #xpath=//div[@id='ValidatOTPID']//button[@id='resendOtp']";

    public static final String termloan_PayNow="  Term Loan 4V0RPLGU937110  Pay Now #xpath=//i[text()='4V0RPLGU937110']//following::a[text()='Pay Now']";

    public static final  String tab_Dob = "DOB Text Box For Individual#xpath=(//input[@id='DOBdate_Individual'])[1]";

    public static final  String ham_Menu = "Menu#xpath=//strong[text()='Menu']";

    public static final  String home_viewAll = "View All#xpath=//div[@class='my_relation']//a[text()='View All']";

    public static final  String rhs_doc = "Document Center #xpath=//div[@class='storepart']//p[text()='Document Center']";

    public static final  String rhs_cliam = "Claim Request #xpath=//div[@class='storepart']//p[text()='Claim Request']";

    public static final  String raise_btn = "Raise a Request #xpath=//button[text()='Raise a Request']";

    public static final String ins_Tab="Insurance Tab #xpath=//li[@id='InsuranceTab']//a[text()='Insurance']";
    public static final String coi_btn="Certificate of Insurance #xpath=//p[text()='Certificate of Insurance']";
    public static final String got_btn="Got It! #xpath=//a[text()='Got It!']";
    public static final String viewall_InsBtn="Insurance/Value-added Services #xpath=//a[@data-tab='Insurance' and text()='Insurance/Value-added Services']";

    public static final String viewdoc_btn="View Documents #xpath=//div[@class='storepart']//p[text()='View Documents']";


    public static final String viewall_Cards="Cards #xpath=//a[@data-tab='Cards' and text()='Cards']";

    public static final String viewall_Insurance="Cards #xpath=//a[@data-tab='Insurance' and text()='Insurance/Value-added Services']";


    public boolean verifyFieldsNotDisplayedUsingLocator(String locator) {
        boolean flag = false;
        try {
            if (!isElementDisplayed(locator)) {
                flag = true;
                manualScreenshot(locator.split("#")[0] + " is Not Displaying ");
            } else {
                testStepFailed(locator.split("#")[0] + " is still displaying ");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Fields Displayed Using Locator "+getRefOfXpath(locator)+". Exception: " + e.getClass());
        }
        return flag;
    }



    public void clickOnButtonUsingLocatorUsingForLoopWithoutFail(String locator) {
        try {
            int size = findWebElements(locator).size();
            for (int i = 1; i <= size; i++) {
                String button = "" + locator.split("#")[0] + "#xpath=(" + locator.split("#xpath=")[1] + ")[" + i + "]";
                if (isElementDisplayed(button)) {
                    manualScreenshot(locator.split("#")[0] + " button is Displayed successfully");
                    clickOn(button);
                    waitForPageToLoad();
                    break;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in click on  "+getRefOfXpath(locator)+" button using locator using for loop without Fail. Exception: " + e.getClass());
        }

    }


    public void verifyButtonUsingLocatorUsingForLoopWithoutFail(String locator) {
        try {
            int size = findWebElements(locator).size();
            for (int i = 1; i <= size; i++) {
                String button = "" + locator.split("#")[0] + "#xpath=(" + locator.split("#xpath=")[1] + ")[" + i + "]";
                if (isElementDisplayed(button)) {
                    manualScreenshot(locator.split("#")[0] + " button is Displayed successfully");
                    waitForPageToLoad();
                    break;
                }
                else{

                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in click on  "+getRefOfXpath(locator)+" button using locator using for loop without Fail. Exception: " + e.getClass());
        }

    }


    public void  verifyCustId( String locator,String custId){
        try{
            if(isElementDisplayed(locator)){
                String text=findWebElement(locator).getText();
                if(text.equals(custId)){
                    manualScreenshot(text+ "logged insucesfully withnthat customer id");
                }else{
                    testStepFailed(custId+ " Not logged insucesfully withnthat customer id");
                }
            }
        }catch(Exception e){

        }

    }

    public void verifySignIn(String locator) {
        try {
            if (isElementDisplayed(locator)) {
                long start = System.currentTimeMillis();
                redirectToUrl("https://uat-oneweb.bajajfinserv.in/MyAccountLogin", "");
                waitTime(2);
                long finish = System.currentTimeMillis();
                long totalTime = (finish - start) / 1000;
                ;
                testStepInfo("Total Time for page load seconds - " + totalTime);
                if (totalTime < 10) {
                    manualScreenshot("  Sign In button is displaying for 10 seconds  ");
                }
            } else {
                testStepInfo("Sign In button is Not  displaying crossed more than 10 seconds  ");
            }
        } catch (Exception e) {
            testStepFailed("Failed in Click On Profile Icon. Exception : " + e.getClass());
        }
    }


    public void clickOnSkipButton(String buttonLabel) {

        try {
            boolean status = false;
            String button = buttonLabel + "#xpath=//*[contains(text(),'" + buttonLabel + "')]";
            List<WebElement> listOfButton = findWebElements(button);
            if (!(listOfButton.size() == 0)) {
                for (int i = 1; i <= listOfButton.size(); i++) {
                    String buttonElement = buttonLabel + "#xpath=(//*[contains(text(),'" + buttonLabel + "')])["
                            + i + "]";
                    scrollToWebElement(buttonElement);
                    if (isElementDisplayed(buttonElement, 10)) {
                        //  driver.findElement(By.xpath(buttonElement)).click();
                        clickOn(buttonElement);
                        //  manualScreenshot(buttonLabel + "  displayed Sucessfully");
                        status = true;
                        break;
                    }
                }

            }
            if (!status) {
                //  testStepInfo(buttonLabel + "  is not present.");
            }
        } catch (Exception e) {
            testStepFailed("Failed in verifying labelName. Exception : " + e.getClass());
        }

    }



    public boolean verifyFieldsDisplayedUsingLocator(String locator) {
        boolean flag = false;
        try {
            if (isElementDisplayed(locator)) {
                scrollToWebElement(locator);
                flag = true;
                manualScreenshot(locator.split("#")[0] + " is Verified Successfully");
            } else {
                testStepFailed(locator.split("#")[0] + " is Not Verified");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Fields Displayed Using Locator "+getRefOfXpath(locator)+". Exception: " + e.getClass());
        }
        return flag;
    }



    public void waitForThreeDotsDisapper(int Time) {
        try {

            new WebDriverWait(driver, 20).until(ExpectedConditions.invisibilityOf(driver.findElement(By.xpath("//div[@class='loader']"))));
        } catch (Exception e) {
            testStepFailed("Failed in waitForPageLoading. Exception : " + e.toString());
        }

    }

    public void verifyTextContent(String buttonLabel) {

        try {
            boolean status = false;
            String button = buttonLabel + "#xpath=//*[contains(text(),\"" + buttonLabel+ "\")]";
            List<WebElement> listOfButton = findWebElements(button);
            if (!(listOfButton.size() == 0)) {
                for (int i = 1; i <= listOfButton.size(); i++) {
                    String buttonElement = buttonLabel + "#xpath=(//*[contains(text(),\"" + buttonLabel+ "\")])["
                            + i + "]";
                    scrollToWebElement(buttonElement);
                    if (isElementDisplayed(buttonElement, 10)) {
                        testStepPassed(buttonLabel + "  displayed Sucessfully");
                        status = true;
                        break;
                    }
                }

            }
            if (!status) {
                //  testStepInfo(buttonLabel + "  is not present.");
            }
        } catch (Exception e) {
            testStepFailed("Failed in verifying labelName. Exception : " + e.getClass());
        }

    }


    public void verifySignInAfter10Seconds(String locator) {
        try {
            waitTime(10);
            if (!isElementDisplayed(locator)) {
                manualScreenshot("Sign In Button it is Not displaying after 10 seconds ");
            } else {
                testStepFailed("Sign In button is still  displaying after 10 seconds  ");
            }
        } catch (Exception e) {
            testStepFailed("Failed in Click On Profile Icon. Exception : " + e.getClass());
        }
    }


    public void myAccountDetails(String expectedText) {

        expectedText = "PRE-APPROVED OFFERS\n" +
                "Get personalised offers on loans, cards, etc.\n" +
                "SHOP ON BAJAJ MALL\n" +
                "Buy TVs, refrigerators and much more on No Cost EMIs\n" +
                "CALCULATORS\n" +
                "Calculate loan EMIs or investment amount instantly\n" +
                "DOWNLOADS\n" +
                "Download statements, NOCs and other related documents\n" +
                "PAYMENTS\n" +
                "Pay bills or part-prepay your loan without hassles";
        expectedText = expectedText.trim();
        try {
            if (isElementDisplayed(txt_Myaccount)) {
                String Value = getText(txt_Myaccount).trim();
                if (Value.equals(expectedText)) {
                    testStepPassed("Here The List oF Details : " + Value);
                } else {
                    testStepFailed("Content is not displayed ");
                }
            } else {
                testStepFailed("The List Of Details is not found ");
            }
        } catch (Exception e) {
            testStepFailed("The Result Is Not Found : " + e.getMessage());
        }
    }

    public void enterMobileNo(String mobileValue, String expectedText) {

        //expectedText="Please enter Mobile Number"; expectedText="Please enter valid Mobile Number";
        try {
            if (isElementDisplayed(txt_Mobileno)) {
                typeIn(txt_Mobileno, mobileValue);
                clickOn(btn_getOTP);
                String Value = getText(txt_etrvlddate);
                if (Value.equals(expectedText)) {
                    manualScreenshot(" Expected : " + Value);
                } else {
                    testStepFailed("The details are not entered ");
                }
            } else {
                testStepFailed("Error meesage not displayed ");
            }
            // refreshPage();
        } catch (Exception e) {
            testStepFailed("The Result Is Not Found : " + e.getMessage());
        }
    }


    public void verifyDifferentDataInMobileField(String mobileValue) {

        try {
            if (isElementDisplayed(txt_Mobileno)) {
                typeIn(txt_Mobileno, mobileValue);
                String Value = getText(txt_Mobileno);
                if (Value.equals("")) {
                    testStepPassed(Value + " Not Entered : ");
                } else {
                    testStepFailed("The details are not entered ");
                }
            } else {
                testStepFailed("Error meesage not displayed ");
            }
        } catch (Exception e) {
            testStepFailed("The Result Is Not Found : " + e.getMessage());
        }
    }


    public void verifyDifferentDataDateOfBirth(String dobValue) {
        try {
            if (isElementDisplayed(txt_Dateofbirth)) {
                typeIn(txt_Dateofbirth, dobValue);
                clickOn(btn_getOTP);
                String Value = getText(txt_etrvldmobileno);
                if (Value.equals("")) {
                    testStepPassed(Value + " Not Entered : ");
                } else {
                    testStepFailed("The details are not entered ");
                }
            } else {
                testStepFailed("Error meesage not displayed ");
            }
        } catch (Exception e) {
            testStepFailed("The Result Is Not Found : " + e.getMessage());
        }
    }


    public void enterDateOfBirth(String dobValue, String expectedText) {
        try {
            if (isElementDisplayed(txt_Dateofbirth)) {
                typeIn(txt_Dateofbirth, dobValue);
                clickOn(btn_getOTP);
                String Value = getText(txt_etrvldmobileno);
                if (Value.equals(expectedText)) {
                    manualScreenshot(" Expected : " + Value);
                } else {
                    testStepFailed("The details are not entered ");
                }
            } else {
                testStepFailed("Error meesage not displayed ");
            }
        } catch (Exception e) {
            testStepFailed("The Result Is Not Found : " + e.getMessage());
        }
    }


    public void verifyOtp(String expectedText) {
        String defPath = "OTP" + "#xpath=//input[@id='o1']";

        try {
            if (isElementDisplayed(defPath)) {
                String Value = getText(defPath);
                if (Value.equals(expectedText)) {
                    manualScreenshot(" Expected : " + Value);
                } else {
                    testStepFailed("The details are not entered ");
                }
            } else {
                testStepFailed("Error meesage not displayed ");
            }
        } catch (Exception e) {
            testStepFailed("The Result Is Not Found : " + e.getMessage());
        }
    }


    public void verifyIndividualSelected(String labelName) {
        String defPath = labelName + "#xpath=//div[@id='LoginGetOTPID']/../..//a[@data-tab='Individual']/../..//li[contains(@class,'active')]";
        try {
            if (isElementDisplayed(defPath)) {
                manualScreenshot(labelName + " Is selected defaulty ");
            } else {
                testStepFailed(labelName + "is not defaulty selected");
            }
        } catch (Exception e) {
            testStepFailed("The Result Is Not Found : " + e.getMessage());
        }
    }


    public void verifyDOB(String labelName) {
        String defPath = labelName + "#xpath=//div[@id='IDEnterDOBTxtBox_Individual']/../..//*[text()='" + labelName + "]";
        try {
            if (isElementDisplayed(defPath)) {
                testStepPassed(labelName + " Is dislayed succesfully ");
            } else {
                testStepFailed(labelName + "is not defaulty selected");
            }
        } catch (Exception e) {
            testStepFailed("The Result Is Not Found : " + e.getMessage());
        }
    }


    public void verifyToolTip(String labelName) {
        String defPath = labelName + "#xpath=//div[@id='IDEnterDOBTxtBox_Individual']/..//a[@class='DOB_tolltip']";
        try {
            if (isElementDisplayed(defPath)) {
                testStepPassed(labelName + " Is displayed succesfully ");
            } else {
                testStepFailed(labelName + "is not defaulty selected");
            }
        } catch (Exception e) {
            testStepFailed("The Result Is Not Found : " + e.getMessage());
        }
    }

    public void verifySubTabs(String labelName, String tabName) {
        String defPath = labelName + "#xpath=//div[@id='LoginGetOTPID']/../..//a[@data-tab='" + labelName + "' and text()='" + tabName + "']";
        try {
            if (isElementDisplayed(defPath)) {
                testStepPassed(labelName + " Is displayed  succesfully ");
            } else {
                testStepFailed(labelName + "is not defaulty selected");
            }
        } catch (Exception e) {
            testStepFailed("The Result Is Not Found : " + e.getMessage());
        }
    }


    public void verifyFieldLabels(String id, String labelName) {
        //IDMobileEmailxtBox_Individual
        String defPath = labelName + "#xpath=//div[@id='" + id + "']//label[contains(text(),'" + labelName + "')]";
        try {
            if (isElementDisplayed(defPath)) {
                testStepPassed(labelName + " Is displayed sucessfully  ");
            } else {
                testStepFailed(labelName + "is not displayed ");
            }
        } catch (Exception e) {
            testStepFailed("The Result Is Not Found : " + e.getMessage());
        }
    }


    public void verifyFieldTextLabels(String locator) {
        try {
            if (isElementDisplayed(locator)) {
                manualScreenshot(locator.split("#")[0] + "-" + getTextPresent(locator));
            } else {
                // testStepFailed(labelName+ "is not defaulty selected");
            }
        } catch (Exception e) {
            testStepFailed("The Result Is Not Found : " + e.getMessage());
        }
    }


    public void enterMobileNumber(String Value) {
        try {
            String txtBox_MobileNumber = "Mobile Number Text Box For Individual#xpath=(//input[@id='txtEmailMobile_Individual'])[1]";
            if (isElementDisplayed(txtBox_MobileNumber)) {
                typeInIfPresent(txtBox_MobileNumber, Value);
                findWebElement(txtBox_MobileNumber).sendKeys(Keys.TAB);
                manualScreenshot(txtBox_MobileNumber.split("#")[0] + "-" + getTextPresent(txtBox_MobileNumber));
            } else {
                testStepFailed(Value + "is not enetered ");
            }
        } catch (Exception e) {
            testStepFailed("The Result Is Not Found : " + e.getMessage());
        }
    }


    public void enterDOIMobileNumber(String Value) {
        try {
            String txtBox_MobileNumber = "Mobile Number Text Box For Individual#xpath=(//input[@id='txtEmailMobile_NonIndividual'])[1]";
            if (isElementDisplayed(txtBox_MobileNumber)) {
                typeInIfPresent(txtBox_MobileNumber, Value);
                findWebElement(txtBox_MobileNumber).sendKeys(Keys.TAB);
                manualScreenshot(txtBox_MobileNumber.split("#")[0] + "-" + getTextPresent(txtBox_MobileNumber));
            } else {
                testStepFailed(Value + "is not enetered ");
            }
        } catch (Exception e) {
            testStepFailed("The Result Is Not Found : " + e.getMessage());
        }
    }


    public void enterNRIMobileNumber(String Value) {
        try {
            String txtBox_MobileNumber = "Mobile Number Text Box For Individual#xpath=(//input[@id='txtEmailMobile_NRI'])[1]";
            if (isElementDisplayed(txtBox_MobileNumber)) {
                typeInIfPresent(txtBox_MobileNumber, Value);
                findWebElement(txtBox_MobileNumber).sendKeys(Keys.TAB);
                manualScreenshot(txtBox_MobileNumber.split("#")[0] + "-" + getTextPresent(txtBox_MobileNumber));
            } else {
                testStepFailed(Value + "is not enetered ");
            }
        } catch (Exception e) {
            testStepFailed("The Result Is Not Found : " + e.getMessage());
        }
    }

    public void enterDOB(String Value) {
        try {
            String txtBox_Dob = "DOB Text Box For Individual#xpath=(//input[@id='EnterDOBdate_Individual'])[1]";
            if (isElementDisplayed(txtBox_Dob)) {
                typeInIfPresent(txtBox_Dob, Value);
                findWebElement(txtBox_Dob).sendKeys(Keys.TAB);
                manualScreenshot(txtBox_Dob.split("#")[0] + "-" + getTextPresent(txtBox_Dob));
            } else {
                testStepFailed(Value + "is not enetered ");
            }
        } catch (Exception e) {
            testStepFailed("The Result Is Not Found : " + e.getMessage());
        }
    }


    public void enterDOIDOB(String Value) {
        try {
            String txtBox_Dob = "DOB Text Box For Individual#xpath=(//input[@id='DOIDate_NonIndividual'])[1]";
            if (isElementDisplayed(txtBox_Dob)) {
                typeInIfPresent(txtBox_Dob, Value);
                findWebElement(txtBox_Dob).sendKeys(Keys.TAB);
                manualScreenshot(txtBox_Dob.split("#")[0] + "-" + getTextPresent(txtBox_Dob));
            } else {
                testStepFailed(Value + "is not enetered ");
            }
        } catch (Exception e) {
            testStepFailed("The Result Is Not Found : " + e.getMessage());
        }
    }


    public void enterNRIDOB(String Value) {
        try {
            String txtBox_Dob = "DOB Text Box For Individual#xpath=(//input[@id='DOBDate_NRI'])[1]";
            if (isElementDisplayed(txtBox_Dob)) {
                typeInIfPresent(txtBox_Dob, Value);
                findWebElement(txtBox_Dob).sendKeys(Keys.TAB);
                manualScreenshot(txtBox_Dob.split("#")[0] + "-" + getTextPresent(txtBox_Dob));
            } else {
                testStepFailed(Value + "is not enetered ");
            }
        } catch (Exception e) {
            testStepFailed("The Result Is Not Found : " + e.getMessage());
        }
    }


    public void verifyFieldsDisplayedUsingText(String id, String fieldText) {
        try {
            String field = "";
            if (fieldText.equalsIgnoreCase("Date Of Birth")) {
                field = "" + fieldText + "#xpath=//a[normalize-space(text())='" + fieldText.trim()
                        + "']|//*[@placeholder='" + fieldText.trim() + "']";
            } else {
                field = "" + fieldText + "#xpath=//p[@id='" + id + "']//*[normalize-space(text())='" + fieldText.trim()
                        + "']|//*[@placeholder='" + fieldText.trim() + "']";
            }

            Boolean flag = scrollToWebElementIfPresent(field);
            if (flag) {
                if (isElementDisplayed(field)) {
                    testStepPassed(fieldText + " is Verified Successfully");
                } else {
                    testStepFailed(fieldText + " is Not Verified");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Fields Displayed Using Text " + fieldText + ". Exception: " + e.getClass());
        }
    }

    public void verifyIndividualOTPContent(String mobileNumber) {
        try {
            mobileNumber = mobileNumber.substring(6);
            String msg1 = "Enter the OTP sent to XXXXXX" + mobileNumber + " (Change Number)";
            String msg2 = "By proceeding, you agree to our terms & conditions and privacy policy. Basic details of your relationship(s) including our group companies are displayed on this page. For additional information, if any, you will be redirected to the respective companies’ websites.";
            String locator = "Mobile Number of Customer#xpath=//p[@id='OTPSentMSG']";
            String changeButton = "Change Button#xpath=//a[@id='Change']";
            String resendButton = "Resend Button#xpath=//div[@id='ValidatOTPID']//button[@id='resendOtp']";
            String byPreceed = "Terms Text Content#xpath=//div[@id='ValidatOTPID']//label[@class='checkupgrade']";
            String content = "Bottom Content#xpath=(//div[@class='j_confirm_box'])[1]";

            verifyTextContent("Enter One-time Password (OTP)");
            verifyTextContent("Enter OTP");
            verifyFieldTextLabels(changeButton);
            verifyFieldTextLabels(resendButton);
            String text = findWebElement(locator).getText().trim();
            String textVal = findWebElement(byPreceed).getText().trim();
//            if (text.contains(msg1) && textVal.contains(msg2)) {
//                testStepPassed("Mobile number is masked correctly displayed correctly" + text);
//                testStepPassed(" displayed correctly" + textVal);
//            } else {
//                testStepFailed("Mobile number is  Not masked correctly" + text);
//            }
            verifyElementIsDisplayedAndGetText(content);
            verifyTextContent("Submit");
//            manualScreenshot("OTP  POP Text Content displayed  Successfully");

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Update Pin OTP . Exception: " + e.getClass());
        }

    }


    public void waitUntilElementVisible(String locator, int timeout) {
        try {

            WebElement element = findWebElement(locator);
            WebDriverWait wait = new WebDriverWait(driver, timeout);
            wait.until(ExpectedConditions.visibilityOf(element));
        } catch (NoSuchElementException e) {
            testStepInfo(locator + "Not displayed.Exception: " + e.getClass());
        } catch (WebDriverException e) {
            testStepInfo(locator + "Not displayed.Exception: " + e.getClass());
        }
    }


    public void clickSkipButton() {
        try {
            String Locator = "Skip#xpath=//div[@class='cochmark_popup_text_one Individual_coach']//a[text()='Skip']";
            if (isElementDisplayed(Locator)) {
                // waitUntilElementVisible(Locator, 10);
                clickOn(Locator);
            } else {

            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }


    public void clickOnLogincloseButtonxPopup(String buttonLabel) {
        try {
            boolean status = false;
            String button = buttonLabel + "#xpath=//div[@class='customer_login']//img[@src='/MyAccountAsset/Login/images/modal-cross.svg']";

            List<WebElement> listOfButton = findWebElements(button);
            if (!(listOfButton.size() == 0)) {
                for (int i = 1; i <= listOfButton.size(); i++) {
                    String buttonElement = buttonLabel + "#xpath=(//div[@class='customer_login']//img[@src='/MyAccountAsset/Login/images/modal-cross.svg'])["
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


    public void clickfirstSkipButton() {
        try {
            String Locator = "Skip#xpath=//div[@class='cochmark_popup_text menu_coach']//a[text()='Skip']";
            if (isElementDisplayed(Locator)) {
                clickOn(Locator);
            } else {

            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public String generateMobileNumber() {

        String mobileNumber = null;
        try {
            int num2, num3;
            int set1, set2, set3;
            Random generator = new Random();
            set1 = 8;
            num2 = generator.nextInt(8);
            num3 = generator.nextInt(8);
            set2 = generator.nextInt(643) + 100;
            set3 = generator.nextInt(8999) + 1000;
            mobileNumber = set1 + "" + num2 + num3 + set2 + set3;

        } catch (Exception e) {
            testStepFailed("Generate Mobile Number Exception: " + e.getClass());
        }
        return mobileNumber;
    }


    public void verifyTimer() {
        try {
            String locator = "Timer #xpath=//div[@id='ValidatOTPID']//div[@class='attemp_timer']";
            if (isElementDisplayed(locator)) {
                String val = findWebElement(locator).getText();
                //String val=findWebElement(locator).getAttribute("value");
                String arr[] = val.split(":");
                String timerVal = arr[1];
                Integer valTime = Integer.parseInt(timerVal);
                if (valTime <= 60) {
                    manualScreenshot("Timer Value is decrementing from 60 secs ");
                } else {
                    testStepFailed("Timer Value not displayed");
                }
            } else {
                testStepFailed("Timer Value not displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }


    public void verifyResendTimer() {
        try {
            String locator = "Timer #xpath=//div[@id='ValidatOTPID']//div[@class='attemp_timer']";
            if (isElementDisplayed(locator)) {
                String val = findWebElement(locator).getText();
                //  String val=findWebElement(locator).getAttribute("disabled");
                String arr[] = val.split(":");
                String timerVal = arr[1];
                Integer valTime = Integer.parseInt(timerVal);
                if (valTime <= 60) {
                    String disabled = findWebElement(btn_Resend).getAttribute("disabled");
                    if (disabled.equals("true")) {
                        manualScreenshot("Resend button is disabled for 60 seconds");
                    } else {
                        testStepFailed("Resend button is enabled");
                    }

                } else {
                    testStepFailed("Timer Value not displayed");
                }
            } else {
                testStepFailed("Timer Value not displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }


    public void verifyMastHeadLogos(String labelHeadingName, String labelNames) {
        try {
            String[] val = labelNames.split("#");
            for (int i = 0; i < val.length; i++) {
                // String locator=val[i]+"#xpath=//div[contains(@class,'wallet_card_row')]//img[contains(@src,'"+val[i]+"') and @alt='icon']";
                String locator = labelHeadingName + val[i] + "#xpath=//div[contains(@class,'wallet_card_row')]//img[contains(@src,'" + val[i] + "') and @alt='icon']";
                if (isElementDisplayed(locator)) {
                    testStepPassed(labelHeadingName + val[i] + " displayed  sucessfully");
                } else {
                    testStepFailed(val[i] + "Not displayed ");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

    }



    public void verifyBBRSLogos(String labelHeadingName, String labelNames) {
        try {
            String[] val = labelNames.split("#");
            for (int i = 0; i < val.length; i++) {
                // String locator=val[i]+"#xpath=//div[contains(@class,'wallet_card_row')]//img[contains(@src,'"+val[i]+"') and @alt='icon']";
                String locator = labelHeadingName + val[i] + "#xpath=//div[@class='BHFL_Box desk_app']//p[text()='"+val[i]+"']/preceding-sibling::img";
                if (isElementDisplayed(locator)) {
                    testStepPassed(labelHeadingName + val[i] + " displayed  sucessfully");
                } else {
                    testStepFailed(val[i] + "Not displayed ");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    public void verifyHamburgerMenus(String labelHeadingName, String labelNames) {
        try {
            String[] val = labelNames.split("#");
            for (int i = 0; i < val.length; i++) {
                // String locator=val[i]+"#xpath=//div[contains(@class,'wallet_card_row')]//img[contains(@src,'"+val[i]+"') and @alt='icon']";
                String locator = labelHeadingName + val[i] + "#xpath=//div[@class='BFLmenu_listbox']//strong[normalize-space(text())='" + val[i] + "']";
                if (isElementDisplayed(locator)) {
                    testStepPassed(labelHeadingName + val[i] + " displayed  sucessfully");
                } else {
                    testStepFailed(val[i] + "Not displayed ");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

    }


    public void verifyHamburgerSubMenus(String labelHeadingName, String labelNames) {
        try {
            String[] val = labelNames.split("#");
            for (int i = 0; i < val.length; i++) {
                // String locator=val[i]+"#xpath=//div[contains(@class,'wallet_card_row')]//img[contains(@src,'"+val[i]+"') and @alt='icon']";
                String locator = labelHeadingName + val[i] + "#xpath=//div[@class='BFLmenu_listbox']//a[normalize-space(text())=\"" + val[i] + "\"]";
                if (isElementDisplayed(locator)) {
                    testStepPassed(labelHeadingName + val[i] + " displayed  sucessfully");
                } else {
                    testStepFailed(val[i] + "Not displayed ");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

    }


    public void clickOnHamburgerSubMenus(String labelHeadingName, String labelNames) {
        try {

            String locator = labelHeadingName + "#xpath=//div[@class='BFLmenu_listbox']//a[normalize-space(text())=\"" + labelNames + "\"]";
            if (isElementDisplayed(locator)) {
                testStepPassed(labelHeadingName + " displayed  sucessfully");
                clickOn(locator);
            } else {
                testStepFailed(labelNames + "Not displayed ");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

    }


    public void clickOnHeadingLabelName(String labelName) {
        try {
            String Locator = labelName + "#xpath=//div[contains(@class,'wallet_card_row')]//p[contains(text(),'" + labelName + "')]";
            if (isElementDisplayed(Locator)) {
                waitUntilElementVisible(Locator, 5);
                clickOn(Locator);
                testStepPassed(labelName + " clicked sucessfully");
            } else {
                testStepFailed(labelName + " Not displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }


    public void verifyHeadingLabelName(String labelName) {
        try {
            String Locator = labelName + "#xpath=//div[contains(@class,'wallet_card_row')]//p[contains(text(),'" + labelName + "')]";
            if (isElementDisplayed(Locator)) {
                waitUntilElementVisible(Locator, 5);
                manualScreenshot(labelName + "displayed sucessfully");
            } else {
                testStepFailed(labelName + " Not displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }


    public Boolean verifyEmiCard(String iconText) {
        Boolean flag = false;
        try {
            String locator = "Card Icons - " + iconText + "#xpath=//p[normalize-space(text())='" + iconText.trim() + "']";
            if (isElementDisplayed(locator)) {
                flag = true;
            } else {
                testStepFailed("Emi Cards - " + iconText + " is not displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed to click On Cards " + iconText + ". Exception: " + e.getClass());
        }
        return flag;
    }


    public void clickOnProduct(String sectionName, String optionName, String extra) {
        try {
            String locatorSection = sectionName + " Section#xpath=(//*[normalize-space(text())='" + sectionName.trim() + "'])[1]";
            String locator = sectionName + " section : " + optionName + " Name#xpath=//div[@class='shop_on_the_emi_BG']//p[normalize-space(text())='" + optionName.trim() + "']";
            //  String locatorNext = sectionName + " Next Button#xpath=(//*[text()='" + sectionName.trim() + "'])[1]/../following-sibling::div//p[text()='" + optionName.trim() + "']/ancestor::div/following-sibling::button[@aria-label='Next']";
            String locatorPrevious = sectionName + " Previous Button#xpath=(//*[text()='" + sectionName.trim() + "'])[1]/../following-sibling::div//p[text()='" + optionName.trim() + "']/ancestor::div/preceding-sibling::button[@aria-label='Previous']";
            // String locatorLabelName = optionName + " Button#xpath=//strong[contains(text(),'"+optionName+"')]";
            String locatorNext = sectionName + " Next Button#xpath=//button[@aria-label='Next']";

            if (isElementDisplayed(locator)) {
                clickOn(locator);
                // waitTime(3);
                waitForPageToLoad();
            } else {
                testStepFailed(getRefOfXpath(locator) + " is Not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in click on " + sectionName + " " + optionName + " Product. Exception: " + e.getClass());
        }
    }


    public void verifyShopOnBajajMall(String labelHeadingName, String labelNames, String imageXpaths) {
        try {
            String[] val = labelNames.split("#");
            String[] imgVal = imageXpaths.split("#");
            for (int i = 0; i < val.length; i++) {
                // for (int j = 0; j < imgVal.length; j++){
                //  String locator=labelHeadingName+val[i]+"#xpath=//div[contains(@class,'shop_on_the_emi_BG')]//img[contains(@src,'"+val[i]+"')]";
                String locator = labelHeadingName + val[i] + "#xpath=//div[@class='shop_on_the_emi_BG']//p[normalize-space(text())='" + val[i] + "']/..//img";
                if (isElementDisplayed(locator)) {
                    manualScreenshot(labelHeadingName + val[i] + " displayed  sucessfully");
                } else {
                    testStepFailed(val[i] + "Not displayed ");
                }
            }
            //}
        } catch (Exception e) {

        }

    }


    public void clickOnDotButton(int index) {
        try {
            String Locator = "Three Dots#xpath=(//button[@tabindex='0'])[" + index + "]";
            if (isElementDisplayed(Locator)) {
                clickOn(Locator);
            } else {

            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }


    public void verifyFieldisDisplayedUsingForLoop(String locator) {
        try {
            Boolean flag = false;
            for (int i = 1; i <= findWebElements(locator).size(); i++) {
                String button = "" + locator.split("#")[0] + "#xpath=(" + locator.split("#xpath=")[1] + ")[" + i + "]";
                //  waitForElementUntilVisibleFluent(button);
                if (isElementDisplayed(button)) {
                    manualScreenshot(locator.split("#")[0] + " button is Displayed successfully");
                    //  clickOn(button);
                    // waitForPageToLoad();
                    flag = true;
                    break;
                }
            }
            if (!flag) {
                testStepFailed(locator.split("#")[0] + "  is not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in click on  " + getRefOfXpath(locator) + " button using locator using for loop. Exception: " + e.getClass());
        }

    }


    public void clickOnBestSellingProduct(String optionName) {
        try {
            boolean flag = false;
            String locator = " Apply Now : " + optionName + " Name#xpath=//div[@class='offersfore_youbox']//p[normalize-space(text())='" + optionName + "']/following::div[@class='getitnow'][1]//a";
            String locatorNext = optionName + " Next Button#xpath=//div[@class='offersfore_youbox']//button[@aria-label='Next']";
            String content = optionName + "#xpath=//div[@class='offersfore_youbox']//p[normalize-space(text())='" + optionName + "']/following::div[@class='upto_Ru'][1]";

            do {
                if (isElementDisplayed(locator)) {
                    scrollToWebElement(locator);
                    flag = true;
                } else if (!isElementDisplayed(locator)) {
                    clickOn(locatorNext);

                }
            } while (flag == false);

            if (isElementDisplayed(locator)) {
                String text = findWebElement(content).getText();
                manualScreenshot(text + " Sucessfully displayed content");
                scrollToWebElement(locator);
                clickOn(locator);
                waitTime(3);
                waitForPageToLoad();
            } else {
                testStepFailed(getRefOfXpath(locator) + " is Not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in click on  " + optionName + " Product. Exception: " + e.getClass());
        }
    }

//img[@alt='vivo-icon']


    public void clickOnBrandLogoButton(String imageAlt) {
        try {
            String Locator = imageAlt + "#xpath=//img[@alt='" + imageAlt + "']";
            scrollToWebElement(Locator);
            if (isElementDisplayed(Locator)) {
                manualScreenshot(imageAlt + " Logo displayed sucessfully");
                clickOn(Locator);

            } else {
                testStepFailed(imageAlt + "Not displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }


    public void clickOnInsuranceLogoButton(String labelName) {
        try {
            String Locator = labelName + "#xpath=//div[@class='bazaar_BG']//p[normalize-space(text())='" + labelName + "']/..//img";
            scrollToWebElement(Locator);
            if (isElementDisplayed(Locator)) {
                manualScreenshot(labelName + " Logo displayed sucessfully");
                clickOn(Locator);
            } else {
                testStepFailed(labelName + "Not displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }


    public void clickOnLifeStyleProduct(String optionName) {
        try {
            boolean flag = false;
            String locator = optionName + " Name#xpath=//div[@class='life_style_BG']//p[normalize-space(text())='" + optionName + "']/preceding-sibling::img";
            String locatorNext = optionName + " Next Button#xpath=//div[@class='life_style_BG']//button[@aria-label='Next']";

            for (int i = 0; i < 4; i++) {
                if (!isElementDisplayed(locator)) {
                    clickOn(locatorNext);
                    waitTime(2);
                    break;

                } else {
                    scrollToWebElement(locator);
                }
            }

            if (isElementDisplayed(locator)) {
                manualScreenshot(optionName + "Logo displayed sucesfully");
                clickOn(locator);
                waitTime(3);
                waitForPageToLoad();
            } else {
                testStepFailed(getRefOfXpath(locator) + " is Not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in click on  " + optionName + " Product. Exception: " + e.getClass());
        }
    }


    public void clickOnTwoWheelerProduct(String optionName) {
        try {
            boolean flag = false;
            String locator = optionName + " Name#xpath=//div[@class='Two_Wheeler_World_BG']//p[normalize-space(text())='" + optionName + "']";
            String locatorNext = optionName + " Next Button#xpath=//div[@class='Two_Wheeler_World_BG']//button[@aria-label='Next']";

//            for (int i = 0; i < 3; i++) {
//                if (!isElementDisplayed(locator)) {
//                    clickOn(locatorNext);
//                    waitTime(2);
//                    break;
//
//                } else {
//                    scrollToWebElement(locator);
//                }
//            }
            if (isElementDisplayed(locator)) {
                manualScreenshot(optionName + "Logo displayed sucesfully");
                clickOn(locator,"");
                waitTime(3);
                waitForPageToLoad();
            } else {
                testStepFailed(getRefOfXpath(locator) + " is Not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in click on  " + optionName + " Product. Exception: " + e.getClass());
        }
    }


    public void clickOnProductsForYou(String optionName) {
        try {
            boolean flag = false;
            String locator = optionName + " Name#xpath=//div[@class='Products_for_you_list']//p[normalize-space(text())='" + optionName + "']/..//img";
            String locatorNext = optionName + " Next Button#xpath=//div[@class='Products_for_you_list']//button[@aria-label='Next']";

            for (int i = 0; i < 4; i++) {
                if (!isElementDisplayed(locator)) {
                    clickOn(locatorNext);
                    break;

                } else {
                    scrollToWebElement(locator);
                }
            }

            if (isElementDisplayed(locator)) {
                manualScreenshot(optionName + "Logo displayed sucesfully");
                clickOn(locator);
                waitTime(3);
                waitForPageToLoad();
            } else {
                testStepFailed(getRefOfXpath(locator) + " is Not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in click on  " + optionName + " Product. Exception: " + e.getClass());
        }
    }


    public void clickOnRHSOffer(String optionName) {
        try {
            String locator = optionName + " Name#xpath=//div[@class='Superstores_BG']//p[normalize-space(text())='" + optionName + "']/../..//img";

            if (isElementDisplayed(locator)) {
                testStepPassed(optionName + "Logo displayed sucesfully");
                clickOn(locator);
                waitTime(3);
                waitForPageToLoad();
            } else {
                testStepFailed(getRefOfXpath(locator) + " is Not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in click on  " + optionName + " Product. Exception: " + e.getClass());
        }
    }


    public void clickOnExploreProduct(String optionName) {
        try {
            boolean flag = false;
            String locator = optionName + " Name#xpath=//div[@class='Explore_section']/..//p[normalize-space(text())='" + optionName + "']/..//img";
            String locatorNext = optionName + " Next Button#xpath=//div[@class='Explore_section']//button[@aria-label='Next']";

            for (int i = 0; i < 3; i++) {
                if (!isElementDisplayed(locator)) {
                    clickOn(locatorNext);
                    waitTime(2);
                    break;

                } else {
                    scrollToWebElement(locator);
                }
            }

            if (isElementDisplayed(locator)) {
                manualScreenshot(optionName + "Logo displayed sucesfully");
                clickOn(locator);
                waitTime(3);
                waitForPageToLoad();
            } else {
                testStepFailed(getRefOfXpath(locator) + " is Not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in click on  " + optionName + " Product. Exception: " + e.getClass());
        }
    }


    public void clickOnOnlineStoreProduct(String optionName) {
        try {

            String locator = optionName + " Name#xpath=//div[@class='super_store_BG']/..//p[normalize-space(text())='" + optionName + "']/..//img";
            scrollToWebElement(locator);
            if (isElementDisplayed(locator)) {
                manualScreenshot(optionName + "Logo displayed sucesfully");
                clickOn(locator);
                waitTime(3);
                waitForPageToLoad();
            } else {
                testStepFailed(getRefOfXpath(locator) + " is Not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in click on  " + optionName + " Product. Exception: " + e.getClass());
        }
    }


    public void clickOnPartnerImageProduct(String optionName) {
        try {

            String locator = optionName + " Name#xpath=//img[@alt='"+optionName+"']";
            scrollToWebElement(locator);
            if (isElementDisplayed(locator)) {
                manualScreenshot(optionName + "Logo displayed sucesfully");
                clickOn(locator);
                waitTime(3);
                waitForPageToLoad();
            } else {
                testStepFailed(getRefOfXpath(locator) + " is Not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in click on  " + optionName + " Product. Exception: " + e.getClass());
        }
    }


    public void clickOnBBRSOffer(String optionName) {
        try {
            String locator = optionName + " Name#xpath=//div[@class='BHFL_Box desk_app']//p[text()='"+optionName+"']/preceding-sibling::img";
            if (isElementDisplayed(locator)) {
                testStepPassed(optionName + "Logo displayed sucesfully");
                clickOn(locator);
                waitTime(3);
                waitForPageToLoad();
            } else {
                testStepFailed(getRefOfXpath(locator) + " is Not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in click on  " + optionName + " Product. Exception: " + e.getClass());
        }
    }



    //new CR

    public Boolean verifyLocatorColorUsingCssValue(String objectLocator, String expectedColorHexValue, String expectedColor, String cssValue) {
        Boolean flag=false;
        try {
            scrollToWebElementIfPresent(objectLocator);
            if (isElementDisplayed(objectLocator)) {
                manualScreenshot(objectLocator.split("#")[0] + " is Displayed Successfully");
                String color = findWebElement(objectLocator).getCssValue(cssValue);

                String[] rgba = color.replace("rgba(", "").replace(")", "").split(", ");
                int r = Integer.parseInt(rgba[0]);
                int g = Integer.parseInt(rgba[1]);
                int b = Integer.parseInt(rgba[2]);
                int a = Integer.parseInt(rgba[3]);
                Color color2 = new Color(r, g, b, a);
                String hex=color2.asHex().toUpperCase();
                //   hex=hex.toUpperCase();
                //String hex = Color.fromString(color2).asHex();
                testStepInfo(hex);
                if (hex.equals(expectedColorHexValue)) {
                    flag=true;
                    manualScreenshot(objectLocator.split("#")[0] + " - " + expectedColor + " Color Verified Successfully");
                } else {
                    testStepFailed(objectLocator.split("#")[0] + " - " + expectedColor + " Color is Not Verified");
                }
            } else {
                testStepFailed(objectLocator.split("#")[0] + " is Not Displayed Successfully");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Element Color Using Css Value :  " + getRefOfXpath(objectLocator) + ". Exception: " + e.getClass());
        }
        return flag;
    }



    //Emi Debit Consent
    public static final String radioTickButton=" Active Tick Box #xpath=//input[@type='checkbox' and @value='418DPFFM862608']//following::span[@class='checkmark']";
    public static final String quickActionsFaq=" Quick Actions Faqs #xpath=//div[@class='BHFL_rightpart mobilenone']//p[text()='FAQs']";
    public static final String payOnline=" Pay Onlines #xpath=//a[text()='Pay Online']";
    public static final String checkMandate=" Check Mandate #xpath=//a[text()='Check Mandate']";

    public static final String acceptButton=" ACCEPT #xpath=//button[text()='ACCEPT']";
    public static final String rejectButton=" REJECT #xpath=//button[text()='REJECT']";
    public static final String disabledAccept=" ACCEPT #xpath=//button[text()='ACCEPT'][@disabled]";
    public static final String disabledReject=" REJECT #xpath=//button[text()='REJECT'][@disabled]";
    public static final String disabledProceed=" PROCEED #xpath=//button[text()='PROCEED'][@disabled]";
    public static final String enabledProceed=" PROCEED #xpath=//button[text()='PROCEED']";

    public static final String crossButton = "Select a reason for your rejection cross  #xpath=//strong[text()='Select a reason for your rejection']//following::a//img[@src='/MyAccountAsset/images/modal-cross.svg' and @onclick='clearOptionPopup()']";

    public static final String doneButton=" DONE #xpath=//a[text()='done']";


    public void clickOnLanTick(String optionName) {
        try {
            String locator = optionName + " Name#xpath=//input[@type='checkbox' and @value='"+optionName+"']//following::span[@class='checkmark']";
            if (isElementDisplayed(locator)) {
                testStepPassed(optionName + "Tick Box  displayed sucesfully");
                clickOn(locator,"");
                waitForPageToLoad();
            } else {
                testStepFailed(getRefOfXpath(locator) + " is Not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in click on  " + optionName + " Product. Exception: " + e.getClass());
        }
    }




    public void clickOnRejectionLabel(String optionName) {
        try {
            String locator = optionName + " Name#xpath=//i[text()='"+optionName+"']//parent::label";
            if (isElementDisplayed(locator)) {
                testStepPassed(optionName + "Tick Box  displayed sucesfully");
                clickOn(locator);
                waitForPageToLoad();
            } else {
                testStepFailed(getRefOfXpath(locator) + " is Not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in click on  " + optionName + " Product. Exception: " + e.getClass());
        }
    }

    //p[contains(text(),'Policy Number')]//following::strong[text()='7130109']
    public void clickOnPolicyLabel(String policyNumber) {
        try {
            String locator = policyNumber + " Name#xpath=//p[text()='Policy Number: ']//following::span[text()='"+policyNumber+"']";
            if (isElementDisplayed(locator)) {
                testStepPassed(policyNumber + "is  displayed sucesfully");
                clickOn(locator);
                waitForPageToLoad();
            } else {
                testStepFailed(getRefOfXpath(locator) + " is Not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in click on  " + policyNumber + " Product. Exception: " + e.getClass());
        }
    }


    public void clickOnPolicyLabelinViewAll(String policyNumber) {
        try {
            String locator = policyNumber + " Name#xpath=//p[contains(text(),'Policy Number')]//following::strong[text()='"+policyNumber+"']";
            if (isElementDisplayed(locator)) {
                testStepPassed(policyNumber + "is  displayed sucesfully");
                clickOn(locator);
                waitForPageToLoad();
            } else {
                testStepFailed(getRefOfXpath(locator) + " is Not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in click on  " + policyNumber + " Product. Exception: " + e.getClass());
        }
    }



    public void clickOnEmiCardLabelInViewAll(String policyNumber) {
        try {
            String locator = policyNumber + " Name#xpath=//strong[contains(text(),'EMI CARD')]//following::p[normalize-space(text())='"+policyNumber+"']";
            if (isElementDisplayed(locator)) {
                testStepPassed(policyNumber + "is  displayed sucesfully");
                clickOn(locator);
                waitForPageToLoad();
            } else {
                testStepFailed(getRefOfXpath(locator) + " is Not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in click on  " + policyNumber + " Product. Exception: " + e.getClass());
        }
    }


    /////////19062023-Mustaq

    public void verifyFieldLabelsNotDisplayed(String id, String labelName) {
        //IDMobileEmailxtBox_Individual
        String defPath = labelName + "#xpath=//div[@id='" + id + "']//label[contains(text(),'" + labelName + "')]";
        try {
            if (!isElementDisplayed(defPath)) {
                testStepPassed(labelName + " Is not displayed sucessfully ");
            } else {
                testStepFailed(labelName + "is displayed ");
            }
        } catch (Exception e) {
            testStepFailed("The Result Is Not Found : " + e.getMessage());
        }
    }

    public void clickOnCustomerTab(String tab, String extra) {
        String typeLocator = ""+tab+" Customer tab#xpath=(//div[@class='formtab']/descendant::a[normalize-space(text())='"+tab.trim()+"'])[1]";
        try {
            clickOnIfDisplayed(typeLocator);
        } catch (Exception e) {
            testStepFailed("The Result Is Not Found : " + e.getMessage());
        }
    }


    String typeLocator = "Non-Individual Customer tab#xpath=//div[@class='formtab']/descendant::a[normalize-space(text())='Corporate/ Business']";


    public void enterMobileNumberCorporate(String Value) {
        try {
            String txtBox_MobileNumber = "Mobile Number Text Box For Individual#xpath=(//input[@id='txtEmailMobile_NonIndividual'])[1]";
            if (isElementDisplayed(txtBox_MobileNumber)) {
                typeInIfPresent(txtBox_MobileNumber, Value);
                findWebElement(txtBox_MobileNumber).sendKeys(Keys.TAB);
                manualScreenshot(txtBox_MobileNumber.split("#")[0] + "-" + getTextPresent(txtBox_MobileNumber));
            } else {
                testStepFailed(Value + "is not enetered ");
            }
        } catch (Exception e) {
            testStepFailed("The Result Is Not Found : " + e.getMessage());
        }
    }

    public void enterMobileNumberNRI(String Value) {
        try {
            String txtBox_MobileNumber = "Mobile Number Text Box For Individual#xpath=(//input[@id='txtEmailMobile_NRI'])[1]";
            if (isElementDisplayed(txtBox_MobileNumber)) {
                typeInIfPresent(txtBox_MobileNumber, Value);
                findWebElement(txtBox_MobileNumber).sendKeys(Keys.TAB);
                manualScreenshot(txtBox_MobileNumber.split("#")[0] + "-" + getTextPresent(txtBox_MobileNumber));
            } else {
                testStepFailed(Value + "is not enetered ");
            }
        } catch (Exception e) {
            testStepFailed("The Result Is Not Found : " + e.getMessage());
        }
    }





}
