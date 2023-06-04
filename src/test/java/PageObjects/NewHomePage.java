package PageObjects;

//import jdk.incubator.foreign.SymbolLookup;
import base.ApplicationKeywords;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;

import java.util.*;

public class NewHomePage extends ApplicationKeywords {
    /*
    Xpaths
     */



    /*
    <Methods>
     */

    public void verifyNewHomeRedirectionWIthNewTab(String extra) {
        try {
//            String nameProd = (String) JsonPageLabels.mapObject.get("icontitle");
            String url = (String) JsonPageLabels.mapObject.get("iconlink");
//            String product=nameProd+" Option#xpath=//p[normalize-space(text())='"+JsonPageTitle.title.trim()+"']/..//following-sibling::div//p[normalize-space(text())='"+nameProd.trim()+"']|//h2[normalize-space(text())='"+JsonPageTitle.title.trim()+"']/..//following-sibling::div//p[normalize-space(text())='"+nameProd.trim()+"']";
//            System.out.println(product);
//            verifyElementIsDisplayedOrNotusingScroll(product);
//            clickOnIfDisplayed(product);
            verifyRedirectioninNewTab(url,"");
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify New Home Redirection with New Tab: "+e.getClass());
        }
    }

    public void clickOnNewHomeOptionWithAEM(String extra) {
        try {
            String nameProd = (String) JsonPageLabels.mapObject.get("icontitle");
            String product=nameProd+" Option#xpath=//p[normalize-space(text())='"+JsonPageTitle.title.trim()+"']/..//following-sibling::div//p[normalize-space(text())='"+nameProd.trim()+"']|//h2[normalize-space(text())='"+JsonPageTitle.title.trim()+"']/..//following-sibling::div//p[normalize-space(text())='"+nameProd.trim()+"']|//p[normalize-space(text())='"+JsonPageTitle.title.trim()+"']/..//following-sibling::ul//p[normalize-space(text())='"+nameProd.trim()+"']";
            verifyElementIsDisplayedOrNotusingScroll(product);
            clickOnIfDisplayed(product);
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in click on New Home Options with AEM. Exception: "+e.getClass());
        }
    }

    public void verifyNewHomeRedirectionWIthSSO(String extra) {
        try {
//            String nameProd = (String) JsonPageLabels.mapObject.get("icontitle");
            String url = (String) JsonPageLabels.mapObject.get("iconlink");
//            String product=nameProd+" Option#xpath=//p[normalize-space(text())='"+JsonPageTitle.title.trim()+"']/..//following-sibling::div//p[normalize-space(text())='"+nameProd.trim()+"']|//h2[normalize-space(text())='"+JsonPageTitle.title.trim()+"']/..//following-sibling::div//p[normalize-space(text())='"+nameProd.trim()+"']|//p[normalize-space(text())='"+JsonPageTitle.title.trim()+"']/..//following-sibling::ul//p[normalize-space(text())='"+nameProd.trim()+"']";
//            verifyElementIsDisplayedOrNotusingScroll(product);
//            clickOnIfDisplayed(product);
            waitForElementUrlLoaded(url);
            verifyRedirectioninSSO_Tab(url,"");
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify New Home Redirection with SSO: "+e.getClass());
        }
    }

    public void verifyLogoIsDisplayedInNewHome(String productName,String productTitle,String extra) {
        try {

            String imageUrl = (String) JsonPageLabels.mapObject.get("iconimage-android");
            String nameProd = (String) JsonPageLabels.mapObject.get("icontitle");
            String img=productTitle+" "+productName+" Logo#xpath=//p[normalize-space(text())='"+JsonPageTitle.title.trim()+"']/..//following-sibling::div//p[normalize-space(text())='"+nameProd.trim()+"']/..//img[normalize-space(@src)='"+imageUrl.trim()+"']|//h2[normalize-space(text())='"+JsonPageTitle.title.trim()+"']/..//following-sibling::div//p[normalize-space(text())='"+nameProd.trim()+"']/..//img[normalize-space(@src)='"+imageUrl.trim()+"']|//p[normalize-space(text())='"+JsonPageTitle.title.trim()+"']/..//following-sibling::ul//p[normalize-space(text())='"+nameProd.trim()+"']/..//img[normalize-space(@src)='"+imageUrl.trim()+"']|//p[normalize-space(text())='"+JsonPageTitle.title.trim()+"']/..//following-sibling::div//p[normalize-space(text())='"+nameProd.trim()+"']/../..//img[normalize-space(@src)='"+imageUrl.trim()+"']";
            System.out.println(img);
            Boolean flag = scrollToWebElementIfPresent(img);
            if (flag) {
                waitForElementUntilVisibleFluent(img);
                verifyElementIsDisplayedOrNot(img);
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in Verify Logo is Displayed in New Home. Exception: "+e.getClass());
        }
    }

    public void verifyNewHomeOptionIsDisabled(String pathOfFollowing,String productName,String productTitle,String extra) {
        try {
            String nameProd = (String) JsonPageLabels.mapObject.get("icontitle");
            String img=productTitle+" "+productName+" Option#xpath=//p[normalize-space(text())='"+JsonPageTitle.title.trim()+"']/..//following-sibling::div//p[normalize-space(text())='"+nameProd.trim()+"']/"+pathOfFollowing.trim()+"|//h2[normalize-space(text())='"+JsonPageTitle.title.trim()+"']/..//following-sibling::div//p[normalize-space(text())='"+nameProd.trim()+"']/"+pathOfFollowing.trim()+"|//p[normalize-space(text())='"+JsonPageTitle.title.trim()+"']/..//following-sibling::ul//p[normalize-space(text())='"+nameProd.trim()+"']/"+pathOfFollowing.trim()+"";
            System.out.println(img);
            Boolean flag = scrollToWebElementIfPresent(img);
            if (flag) {
                waitForElementUntilVisibleFluent(img);
                if (isElementDisplayed(img)) {
                    manualScreenshot(getRefOfXpath(img)+" is Disabled successfully");
                } else {
                    testStepFailed(getRefOfXpath(img)+" is not Disabled");
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in Verify Logo is Displayed in New Home. Exception: "+e.getClass());
        }
    }


    public void verifyLogoIsDisplayedInNewHomeWithSlide(String productName,String productTitle,String extra) {
        try {
            String imageUrl = (String) JsonPageLabels.mapObject.get("iconimage-android");
            String nameProd = (String) JsonPageLabels.mapObject.get("icontitle");
            String img=productTitle+" "+productName+" Logo#xpath=//p[normalize-space(text())='"+JsonPageTitle.title.trim()+"']/..//following-sibling::div//p[normalize-space(text())='"+nameProd.trim()+"']/..//img[normalize-space(@src)='"+imageUrl.trim()+"']|//h2[normalize-space(text())='"+JsonPageTitle.title.trim()+"']/..//following-sibling::div//p[normalize-space(text())='"+nameProd.trim()+"']/..//img[normalize-space(@src)='"+imageUrl.trim()+"']";

            String title=productTitle+" "+productName+" Logo#xpath=//p[normalize-space(text())='"+JsonPageTitle.title.trim()+"']|//h2[normalize-space(text())='"+JsonPageTitle.title.trim()+"']";

            String next=productTitle+" Next Button#xpath=//p[normalize-space(text())='"+JsonPageTitle.title.trim()+"']/..//following-sibling::div//button[@aria-label='Next'][@aria-disabled='false']|//h2[normalize-space(text())='"+JsonPageTitle.title.trim()+"']/..//following-sibling::div//button[@aria-label='Next'][@aria-disabled='false']";

            String prevoius=productTitle+" Next Button#xpath=//p[normalize-space(text())='"+JsonPageTitle.title.trim()+"']/..//following-sibling::div//button[@aria-label='Previous'][@aria-disabled='false']|//h2[normalize-space(text())='"+JsonPageTitle.title.trim()+"']/..//following-sibling::div//button[@aria-label='Previous'][@aria-disabled='false']";

            Boolean flag = scrollToWebElementIfPresent(title);
            if (flag) {
                for (int i = 0; i < 10; i++) {
//                    if (!isElementDisplayed(img)) {
                    if (!isElementDisplayed(img) && isElementDisplayed(next)) {
                        clickOn(next);
                        if (isElementDisplayed(img)) {
                            break;
                        }
                    } else {
                        System.out.println("failed");
                        break;
                    }
                }
                System.out.println(img);
                verifyElementIsDisplayedOrNot(img);
            } else {
                testStepFailed(getRefOfXpath(img)+" is not present");
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in Verify Logo is Displayed in New Home. Exception: "+e.getClass());
        }
    }



    public void verifyNudgeTextShowingAsPerAEM(String productName,String sectionName,String extra) {
        try {
            String nameProd = (String) JsonPageLabels.mapObject.get("icontitle");
            System.out.println(nameProd);
            if (JsonPageLabels.mapObject.containsKey("nudgetext")) {
                String nudgetext = (String)JsonPageLabels.mapObject.get("nudgetext");
                String nudge=productName+" Option "+nudgetext+" Nudge text#xpath=//p[normalize-space(text())='"+JsonPageTitle.title.trim()+"']/..//following-sibling::div//p[normalize-space(text())='"+nameProd.trim()+"']/../preceding-sibling::i[normalize-space(text())='"+nudgetext.trim()+"']|//h2[normalize-space(text())='"+JsonPageTitle.title.trim()+"']/..//following-sibling::div//p[normalize-space(text())='"+nameProd.trim()+"']/../preceding-sibling::i[normalize-space(text())='"+nudgetext.trim()+"']|//p[normalize-space(text())='"+JsonPageTitle.title.trim()+"']/..//following-sibling::div//p[normalize-space(text())='"+nameProd.trim()+"']/..//i[normalize-space(text())='"+nudgetext.trim()+"']|//h2[normalize-space(text())='"+JsonPageTitle.title.trim()+"']/..//following-sibling::div//p[normalize-space(text())='"+nameProd.trim()+"']/..//i[normalize-space(text())='"+nudgetext.trim()+"']|//p[normalize-space(text())='"+JsonPageTitle.title.trim()+"']/..//following-sibling::ul//p[normalize-space(text())='"+nameProd.trim()+"']/..//i[normalize-space(text())='"+nudgetext.trim()+"']";
                verifyElementIsDisplayedOrNotusingScroll(nudge);
                if (sectionName.toLowerCase().contains("superstores")) {
                    verifyLocatorColorUsingCssValue(nudge,"#8961e1","violet","background-color");
                } else if (sectionName.toLowerCase().contains("insta emi card")) {
                    verifyLocatorColorUsingCssValue(nudge, "#FF6700", "Orange", "background-color");
                } else {
                    verifyLocatorColorUsingCssValueUsingRGB(nudge, "#00B500", "Green", "background-color");
                }


            } else {
                testStepPassed("As Per AEM, there is no Nudge Text for "+sectionName+" "+productName);
                String nudge=productName+" Option Nudge Text#xpath=//p[normalize-space(text())='"+JsonPageTitle.title.trim()+"']/..//following-sibling::div//p[normalize-space(text())='"+nameProd.trim()+"']/../preceding-sibling::i|//h2[normalize-space(text())='"+JsonPageTitle.title.trim()+"']/..//following-sibling::div//p[normalize-space(text())='"+nameProd.trim()+"']/../preceding-sibling::i|//p[normalize-space(text())='"+JsonPageTitle.title.trim()+"']/..//following-sibling::ul//p[normalize-space(text())='"+nameProd.trim()+"']/..//i";
                verifyElementIsNotPresentUsingLocator(nudge);
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Nudge Text As Per AEM. Exception: "+e.getClass());
        }
    }


public void getAllTheNamesFromApp(String commonLocator) {
    try {
        if (isElementPresent(commonLocator)) {
            int size = sizeOfLocator(commonLocator);
            for (int i = 1; i <= size; i++) {
                String name=getRefOfXpath(commonLocator)+"#xpath=("+getCommonPathOfLocator(commonLocator)+")["+i+"]";
                String textPresent = getTextPresent(name);



            }

        } else {
            testStepFailed(getRefOfXpath(commonLocator)+" is not present");
        }
    } catch (Exception e) {
        e.printStackTrace();
        testStepFailed("Failed in get All the names form App. Exception: "+e.getClass());
    }
}

/*
Banner Offers
 */

    public void verifyNameIsDisplayedForBannerOffers(String productName,String extra) {
        try {
            String name = (String) JsonPageLabels.mapObject.get("title");
            String img="Banner Offers "+productName+" Title#xpath=//div[@class='finance_text']/p[normalize-space(text())='"+name.trim()+"']";
            System.out.println(img);
            Boolean flag = scrollToWebElementIfPresent(img);
            if (flag) {
                waitForElementUntilVisibleFluent(img);
                verifyElementIsDisplayedOrNot(img);
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in Verify Name is Displayed in Banner Offers. Exception: "+e.getClass());
        }
    }

    public void verifyLogoIsDisplayedForBannerOffers(String productName,String extra) {
        try {
            String name = (String) JsonPageLabels.mapObject.get("title");
            String imageUrl = (String) JsonPageLabels.mapObject.get("image-android");
            String img="Banner Offers "+productName+" Image#xpath=//div[@class='finance_text']/p[normalize-space(text())='"+name.trim()+"']//../preceding-sibling::img[@src='"+imageUrl+"']";
            System.out.println(img);
            Boolean flag = scrollToWebElementIfPresent(img);
            if (flag) {
                waitForElementUntilVisibleFluent(img);
                verifyElementIsDisplayedOrNot(img);
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in Verify Logo is Displayed in Banner Offers. Exception: "+e.getClass());
        }
    }

    public void verifyButtonTextIsDisplayedForBannerOffers(String productName,String extra) {
        try {
            String name = (String) JsonPageLabels.mapObject.get("title");
            String buttonText = (String) JsonPageLabels.mapObject.get("ctalabel1");
            String img="Banner Offers "+productName+" "+buttonText+" Button#xpath=//div[@class='finance_text']/p[normalize-space(text())='"+name.trim()+"']//../following-sibling::span[normalize-space(text())='"+buttonText.trim()+"']";
            System.out.println(img);
            Boolean flag = scrollToWebElementIfPresent(img);
            if (flag) {
                waitForElementUntilVisibleFluent(img);
                verifyElementIsDisplayedOrNot(img);
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in Verify Button Text is Displayed in Banner Offers. Exception: "+e.getClass());
        }
    }

    public void clickButtonTextIsDisplayedForBannerOffers(String productName,String extra) {
        try {
            String name = (String) JsonPageLabels.mapObject.get("title");
            String buttonText = (String) JsonPageLabels.mapObject.get("ctalabel1");
            String img="Banner Offers "+productName+" "+buttonText+" Button#xpath=//div[@class='finance_text']/p[normalize-space(text())='"+name.trim()+"']//../following-sibling::span[normalize-space(text())='"+buttonText.trim()+"']";
            System.out.println(img);
            Boolean flag = scrollToWebElementIfPresent(img);
            if (flag) {
                waitForElementUntilVisibleFluent(img);
                clickOnIfDisplayed(img);
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in click Button Text is Displayed in Banner Offers. Exception: "+e.getClass());
        }
    }

    public void verifyDescriptionTextIsDisplayedForBannerOffers(String productName,String extra) {
        try {
            String name = (String) JsonPageLabels.mapObject.get("title");
            String descriptiontext = (String) JsonPageLabels.mapObject.get("description");
            String img="Banner Offers "+productName+" Description Text#xpath=//div[@class='finance_text']/p[normalize-space(text())='"+name.trim()+"']//../following-sibling::i[normalize-space(text())='"+descriptiontext.trim()+"']";
            System.out.println(img);
            Boolean flag = scrollToWebElementIfPresent(img);
            if (flag) {
                waitForElementUntilVisibleFluent(img);
                verifyElementIsDisplayedOrNot(img);
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in Verify Description Text is Displayed in Banner Offers. Exception: "+e.getClass());
        }
    }

    public void verifyRedirectionForBannerOffersWithSSO(String extra) {
        try {
            testStepPassed("******* "+extra+" *******");
            String url = (String) JsonPageLabels.mapObject.get("ctalink1");
            waitForElementUrlLoaded(url);
            verifyRedirectioninSSO_Tab(url,"");
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify New Home Redirection with SSO: "+e.getClass());
        }
    }

/*
Partner Offers
 */
public void verifyLogoIsDisplayedForPartnerOffers(String productName,String extra) {
    try {
        String title = JsonPageTitle.title.trim();
        String imageUrl = (String) JsonPageLabels.mapObject.get("image-android");
        String img=title+" "+productName+" Image#xpath=//p[normalize-space(text())='"+title+"']/..//following-sibling::*//img[@src='"+imageUrl+"']";
        System.out.println(img);
        Boolean flag = scrollToWebElementIfPresent(img);
        if (flag) {
            waitForElementUntilVisibleFluent(img);
            verifyElementIsDisplayedOrNot(img);
        }

    } catch (Exception e) {
        e.printStackTrace();
        testStepFailed("Failed in Verify Logo is Displayed in Partner Offers. Exception: "+e.getClass());
    }
}

    public void clickLogoIsDisplayedForPartnerOffers(String productName,String extra) {
        try {
            String title = JsonPageTitle.title.trim();
            String imageUrl = (String) JsonPageLabels.mapObject.get("image-android");
            String img=title+" "+productName+" Image#xpath=//p[normalize-space(text())='"+title+"']/..//following-sibling::*//img[@src='"+imageUrl+"']";
            System.out.println(img);
            Boolean flag = scrollToWebElementIfPresent(img);
            if (flag) {
                waitForElementUntilVisibleFluent(img);
                clickOnIfDisplayed(img);
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in click Logo is Displayed in Partner Offers. Exception: "+e.getClass());
        }
    }

    /*
    Offers for you
     */
    public void verifyLogoIsDisplayedForOffersForYou(String productName,String extra) {
        try {
            String title = JsonPageTitle.title.trim();
            String imageUrl = (String) JsonPageLabels.mapObject.get("image-android");
            String img=title+" "+productName+" Title#xpath=//h2[normalize-space(text())='"+title+"']";
            String imgLogo=title+" "+productName+" Image#xpath=//h2[normalize-space(text())='"+title+"']/..//following-sibling::*//img[@src='"+imageUrl+"']";
            String imgSlider=title+" Slider Button#xpath=//h2[normalize-space(text())='"+title+"']/..//following-sibling::*//button[@aria-disabled='false']";
            System.out.println(img);
            Boolean flag = scrollToWebElementIfPresent(img);
            if (flag) {
clickSliderUntilShowLocator(imgSlider,imgLogo,5,"");
                verifyElementIsDisplayedOrNot(img);
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in Verify Logo is Displayed in OffersForYou. Exception: "+e.getClass());
        }
    }

    public void clickSliderUntilShowLocator(String sliderLocator,String expectedLocator,int noOfTimes,String extra) {
        try {
            String loc2=getRefOfXpath(sliderLocator)+"#xpath=("+getCommonPathOfLocator(sliderLocator)+")[2]";
            int count=0;
            
            for (int i = 0; i < noOfTimes; i++) {
                if (isElementDisplayed(expectedLocator)) {
                    break;
                } else {
                    int size = sizeOfLocator(sliderLocator);
                    if (isElementDisplayed(sliderLocator)) {
                        if (size == 1&&count==0) {
                            clickOn(sliderLocator);
                        } else if (size==2) {
                            count=1;
                            clickOn(loc2);
                        } else {
                            clickOn(sliderLocator);
                        }


                    }

                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in click slider until show locator "+getRefOfXpath(sliderLocator)+". Exception: "+e.getClass());
        }
    }

    public void clickLogoIsDisplayedForOffersForYou(String productName,String extra) {
        try {
            String title = JsonPageTitle.title.trim();
            String imageUrl = (String) JsonPageLabels.mapObject.get("image-android");
            String img=title+" "+productName+" Title#xpath=//h2[normalize-space(text())='"+title+"']";
            String imgLogo=title+" "+productName+" Image#xpath=//h2[normalize-space(text())='"+title+"']/..//following-sibling::*//img[@src='"+imageUrl+"']";
            String imgSlider=title+" Slider Button#xpath=//h2[normalize-space(text())='"+title+"']/..//following-sibling::*//button[@aria-disabled='false']";
            System.out.println(img);
            Boolean flag = scrollToWebElementIfPresent(img);
            if (flag) {
                clickSliderUntilShowLocator(imgSlider,imgLogo,5,"");
                clickOnIfDisplayed(imgLogo);
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in click Logo is Displayed in OffersForYou. Exception: "+e.getClass());
        }
    }

    public void verifyRedirectionForOffersforyouWithNewTab(String extra) {
        try {
            testStepPassed("******* "+extra+" *******");
            String url = (String) JsonPageLabels.mapObject.get("ctalink1");
            verifyRedirectioninNewTab(url,"");
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify New Home Redirection with New tab: "+e.getClass());
        }
    }

    public void verifyNewHomePageTitleIsDisplayed(String name,String key,String extra) {
        try {


            String img=" "+name+" Title#xpath=//h5[normalize-space(text())='"+name.trim()+"']";
//            String imgLogo=value+" "+name+" Image#xpath=//h5[normalize-space(text())='"+value.trim()+"']/..//following-sibling::*//img[@src='"+imageUrl+"']";
//            String imgSlider=title+" Slider Button#xpath=//h2[normalize-space(text())='"+title+"']/..//following-sibling::*//button[@aria-disabled='false']";
            System.out.println(img);
            Boolean flag = scrollToWebElementIfPresent(img);
            if (flag) {
                verifyFieldsDisplayedUsingLocator(img);
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify New Home Page Title is displayed. Exception: "+e.getClass());
        }
    }

    public void verifyNewHomePageSubTitleIsDisplayed(String name,String key,String extra) {
        try {

            String img=" "+name+" Title#xpath=//h5[normalize-space(text())='"+name.trim()+"']";
            String imgLogo=" "+name+" Subtitle#xpath=//h5[normalize-space(text())='"+name.trim()+"']/following-sibling::p[normalize-space(text())='"+key.trim()+"']";
//            String imgSlider=title+" Slider Button#xpath=//h2[normalize-space(text())='"+title+"']/..//following-sibling::*//button[@aria-disabled='false']";
            System.out.println(imgLogo);
            Boolean flag = scrollToWebElementIfPresent(img);
            if (flag) {
                verifyFieldsDisplayedUsingLocator(imgLogo);
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify New Home Page sub title is displayed. Exception: "+e.getClass());
        }
    }


    public void verifyNewHomePageImageIsDisplayed(String name,String key,String extra) {
        try {

            String img=" "+name+" Title#xpath=//h5[normalize-space(text())='"+name.trim()+"']";
            String imgLogo=name+" Logo#xpath=//h5[normalize-space(text())='"+name.trim()+"']/../preceding-sibling::div/img[contains(@src,'"+key.trim()+"')]";

//            String imgSlider=title+" Slider Button#xpath=//h2[normalize-space(text())='"+title+"']/..//following-sibling::*//button[@aria-disabled='false']";
            System.out.println(imgLogo);
            Boolean flag = scrollToWebElementIfPresent(img);
            if (flag) {
                verifyFieldsDisplayedUsingLocator(imgLogo);
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify New Home Page Image is displayed. Exception: "+e.getClass());
        }
    }

    public void clickOnNewHomePageImageIsDisplayed(String name,String key,String extra) {
        try {

                        String img=name+" Title#xpath=//h5[normalize-space(text())='"+name.trim()+"']";
            String imgLogo=name+" Logo#xpath=//h5[normalize-space(text())='"+name.trim()+"']/../preceding-sibling::div/img[contains(@src,'"+key.trim()+"')]";

//            String imgSlider=title+" Slider Button#xpath=//h2[normalize-space(text())='"+title+"']/..//following-sibling::*//button[@aria-disabled='false']";
            System.out.println(imgLogo);
            Boolean flag = scrollToWebElementIfPresent(img);
            if (flag) {
                clickOnIfDisplayed(imgLogo);
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in click on New Home Page Image is displayed. Exception: "+e.getClass());
        }
    }
/*
Carousal
 */
public void verifyLogoIsDisplayedInNewHomeCarousal(String productName,String productTitle,String extra) {
    try {
        String imageUrl = (String) JsonPageLabels.mapObject.get("iconimage-android");
        String nameProd = (String) JsonPageLabels.mapObject.get("icontitle");
        String img=productTitle+" "+productName+" Logo#xpath=//div[@aria-hidden='false']/div[@class='pageall_title']/p[normalize-space(text())='"+nameProd.trim()+"']/..//following-sibling::*//img[normalize-space(@src)='"+imageUrl.trim()+"']";
        System.out.println(img);
//        Boolean flag = scrollToWebElementIfPresent(img);
//        if (flag) {
        String dot="Dot 1#xpath=//ul[@class='slick-dots']//button";
        String dot2="Dot 2#xpath=(//ul[@class='slick-dots']//button)[2]";
        String dot3="Dot 3#xpath=(//ul[@class='slick-dots']//button)[3]";
        if (productTitle.toLowerCase().contains("cibil")) {
            clickOn(dot);
        } else if (productTitle.toLowerCase().contains("fd")) {
            clickOn(dot2);
        } else {
            clickOn(dot3);
        }
            waitForElementUntilVisibleFluent(img);
            verifyElementIsDisplayedOrNot(img);
//        }

    } catch (Exception e) {
        e.printStackTrace();
        testStepFailed("Failed in Verify Logo is Displayed in New Home Carousal. Exception: "+e.getClass());
    }
}

    public void verifyTitleIsDisplayedInNewHomeCarousal(String productName,String productTitle,String extra) {
        try {
            String imageUrl = (String) JsonPageLabels.mapObject.get("iconimage-android");
            String nameProd = (String) JsonPageLabels.mapObject.get("icontitle");
            String img=productTitle+" "+productName+" Title#xpath=//div[@aria-hidden='false']/div[@class='pageall_title']/p[normalize-space(text())='"+nameProd.trim()+"']";
            System.out.println(img);
            Boolean flag = scrollToWebElementIfPresent(img);
            if (flag) {
                String dot="Dot 1#xpath=//ul[@class='slick-dots']//button";
                String dot2="Dot 2#xpath=(//ul[@class='slick-dots']//button)[2]";
                String dot3="Dot 3#xpath=(//ul[@class='slick-dots']//button)[3]";
                if (productTitle.toLowerCase().contains("cibil")) {
                    clickOn(dot);
                    verifyElementIsDisplayedOrNot(img);
                } else if (productTitle.toLowerCase().contains("fd")) {
                    clickOn(dot2);
                    verifyElementIsDisplayedOrNot(img);
                } else {
                    clickOn(dot3);
                    verifyElementIsDisplayedOrNot(img);
                }

//                waitForElementUntilVisibleFluent(img);

            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in Verify Title is Displayed in New Home Carousal. Exception: "+e.getClass());
        }
    }

    public void verifyDescriptionIsDisplayedInNewHomeCarousal(String productName,String productTitle,String extra) {
        try {
            String imageUrl = (String) JsonPageLabels.mapObject.get("icondescription");
            String nameProd = (String) JsonPageLabels.mapObject.get("icontitle");
            String img=productTitle+" "+productName+" Description text#xpath=//div[@aria-hidden='false']/div[@class='pageall_title']/p[normalize-space(text())='"+nameProd.trim()+"']/..//following-sibling::*//p[normalize-space(text())='"+imageUrl.trim()+"']";
            System.out.println(img);
//        Boolean flag = scrollToWebElementIfPresent(img);
//        if (flag) {
            String dot="Dot 1#xpath=//ul[@class='slick-dots']//button";
            String dot2="Dot 2#xpath=(//ul[@class='slick-dots']//button)[2]";
            String dot3="Dot 3#xpath=(//ul[@class='slick-dots']//button)[3]";
            if (productTitle.toLowerCase().contains("cibil")) {
                clickOn(dot);
            } else if (productTitle.toLowerCase().contains("fd")) {
                clickOn(dot2);
            } else {
                clickOn(dot3);
            }
//            waitForElementUntilVisibleFluent(img);
            verifyElementIsDisplayedOrNot(img);
//        }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in Verify description is Displayed in New Home Carousal. Exception: "+e.getClass());
        }
    }

    public void verifyCtaButtonIsDisplayedInNewHomeCarousal(String productName,String productTitle,String extra) {
        try {
            String imageUrl = (String) JsonPageLabels.mapObject.get("ctalabel");
            String nameProd = (String) JsonPageLabels.mapObject.get("icontitle");
            String img=productTitle+" "+productName+" "+imageUrl+" button#xpath=//div[@aria-hidden='false']/div[@class='pageall_title']/p[normalize-space(text())='"+nameProd.trim()+"']/..//following-sibling::a[normalize-space(text())='"+imageUrl.trim()+"']";
            System.out.println(img);
//        Boolean flag = scrollToWebElementIfPresent(img);
//        if (flag) {
            String dot="Dot 1#xpath=//ul[@class='slick-dots']//button";
            String dot2="Dot 2#xpath=(//ul[@class='slick-dots']//button)[2]";
            String dot3="Dot 3#xpath=(//ul[@class='slick-dots']//button)[3]";
            if (productTitle.toLowerCase().contains("cibil")) {
                clickOn(dot);
            } else if (productTitle.toLowerCase().contains("fd")) {
                clickOn(dot2);
            } else {
                clickOn(dot3);
            }
//            waitForElementUntilVisibleFluent(img);
            verifyElementIsDisplayedOrNot(img);
//        }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in Verify CTA Button is Displayed in New Home Carousal. Exception: "+e.getClass());
        }
    }

    public void clickCtaButtonIsDisplayedInNewHomeCarousal(String productName,String productTitle,String extra) {
        try {
            String imageUrl = (String) JsonPageLabels.mapObject.get("ctalabel");
            String nameProd = (String) JsonPageLabels.mapObject.get("icontitle");
            String img=productTitle+" "+productName+" "+imageUrl+" button#xpath=//div[@aria-hidden='false']/div[@class='pageall_title']/p[normalize-space(text())='"+nameProd.trim()+"']/..//following-sibling::a[normalize-space(text())='"+imageUrl.trim()+"']";
            System.out.println(img);
//        Boolean flag = scrollToWebElementIfPresent(img);
//        if (flag) {
            String dot="Dot 1#xpath=//ul[@class='slick-dots']//button";
            String dot2="Dot 2#xpath=(//ul[@class='slick-dots']//button)[2]";
            String dot3="Dot 3#xpath=(//ul[@class='slick-dots']//button)[3]";
            if (productTitle.toLowerCase().contains("cibil")) {
                clickOn(dot);
            } else if (productTitle.toLowerCase().contains("fd")) {
                clickOn(dot2);
            } else {
                clickOn(dot3);
            }
//            waitForElementUntilVisibleFluent(img);
            clickOnIfDisplayed(img);
//        }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in click CTA Button is Displayed in New Home Carousal. Exception: "+e.getClass());
        }
    }

    public void verifyRedirectionForNewHome(String expectUrl,String withSSO,String extra) {
        try {
            testStepPassed("******* "+extra+" *******");
            String url ="";
            if (withSSO.toLowerCase().contains("sso")) {
                if (expectUrl.equals("")) {
                    if (JsonPageLabels.mapObject.containsKey("ctalink")) {
                        url = (String) JsonPageLabels.mapObject.get("ctalink");
                    } else if (JsonPageLabels.mapObject.containsKey("ctalink1")) {
                        url = (String) JsonPageLabels.mapObject.get("ctalink1");
                    } else {
                        url = (String) JsonPageLabels.mapObject.get("iconlink");
                    }
                    waitForElementUrlLoaded(url);
                    verifyRedirectioninSSO_Tab(url,"");
                } else {
                    waitForElementUrlLoaded(expectUrl);
                    verifyRedirectioninSSO_Tab(expectUrl,"");
                }
            } else {
                if (expectUrl.equals("")) {
                    if (JsonPageLabels.mapObject.containsKey("ctalink")) {
                        url = (String) JsonPageLabels.mapObject.get("ctalink");
                    } else if (JsonPageLabels.mapObject.containsKey("ctalink1")) {
                        url = (String) JsonPageLabels.mapObject.get("ctalink1");
                    } else {
                        url = (String) JsonPageLabels.mapObject.get("iconlink");
                    }
                    verifyRedirectioninNewTab(url,"");
                } else {
                    verifyRedirectioninNewTab(expectUrl,"");
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify New Home Redirection common. Exception: "+e.getClass());
        }
    }
/*
Pre approved offers for you
 */
    public void verifyPreApprovedOffers(Map<String,String> map,String extra) {
        try {
            testStepInfo("******************** "+extra+" ********************");
            int size = map.size();
            for (Map.Entry<String,String> entry : map.entrySet()){
                System.out.println("Key = " + entry.getKey() +
                        ", Value = " + entry.getValue());
                String s = entry.getKey();
                int count=0;
                String imgSlider="Pre-approved offers for you Slider Button#xpath=//p[normalize-space(text())='Pre-approved offers for you']/../..//following-sibling::*//button[@aria-disabled='false']";
                if (s.equals("Title")) {
                    count++;
                    Object value = map.get("Title");
                    String loc=value+" Title#xpath=//p[normalize-space(text())='Pre-approved offers for you']";
                    String loc1=value+" Title#xpath=//p[normalize-space(text())='Pre-approved offers for you']/ancestor::div[@class='pageall_title']/following-sibling::div//p[normalize-space(text())='"+value.toString().trim()+"']";
                    Boolean flag = scrollToWebElementIfPresent(loc);
                    if (flag) {
                        clickSliderUntilShowLocator(imgSlider,loc1,5,"");
                        verifyElementIsDisplayedUsingLocator(loc1);
                    }

                }
                if (s.equals("Description")) {
                    count++;
                    Object value = map.get("Title");
                    Object value1 = map.get("Description");
                    String loc=value+" Title#xpath=//p[normalize-space(text())='Pre-approved offers for you']";
                    String loc1=value+" "+value1+" description text#xpath=//p[normalize-space(text())='Pre-approved offers for you']/ancestor::div[@class='pageall_title']/following-sibling::div//p[normalize-space(text())='"+value.toString().trim()+"']/../following-sibling::div/i[normalize-space(text())='"+value1.toString().trim()+"']";
                    String locValue=value+" "+value1+" description text#xpath=//p[normalize-space(text())='Pre-approved offers for you']/ancestor::div[@class='pageall_title']/following-sibling::div//p[normalize-space(text())='"+value.toString().trim()+"']/../following-sibling::div/i[normalize-space(text())='"+value1.toString().trim()+"']/following-sibling::p";
                    Boolean flag = scrollToWebElementIfPresent(loc);
                    if (flag) {
                        clickSliderUntilShowLocator(imgSlider,loc1,5,"");
                        verifyElementIsDisplayedUsingLocator(loc1);
                        getTextUsingLocator(loc1);
                    }

                }
                if (s.equals("Button")) {
                    count++;
                    Object value = map.get("Title");
                    Object value1 = map.get("Button");
                    String loc=value+" Title#xpath=//p[normalize-space(text())='Pre-approved offers for you']";
                    String loc1=value+" "+value1+" button#xpath=//p[normalize-space(text())='Pre-approved offers for you']/ancestor::div[@class='pageall_title']/following-sibling::div//p[normalize-space(text())='"+value.toString().trim()+"']/../following-sibling::div/a[normalize-space(text())='"+value1.toString().trim()+"']";
                    Boolean flag = scrollToWebElementIfPresent(loc);
                    if (flag) {
                        clickSliderUntilShowLocator(imgSlider,loc1,5,"");
                        Boolean flag1 = verifyElementIsDisplayedUsingLocator(loc1);
                        if (flag1) {
                            clickOn(loc1);
                        }
                    }

                }
                if (count==0) {
                    testStepFailed(s+" key is not present in map");
                }

            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify pre approved offers. Exception: "+e.getClass());
        }
    }


    public void verifyHomeMyRelationsTileName(Map<String,String> map,String extra) {
        try {
            for (Map.Entry<String,String> entry : map.entrySet()){
                System.out.println("Key = " + entry.getKey() +
                        ", Value = " + entry.getValue());
                String s = entry.getKey();
                int count=0;


            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify Home My Relations Tile Name. Exception: "+e.getClass());
        }
    }

    public void verifySectionsIsAfterLocator(String topLocator,String sectionLoc,String extra) {
        try {
            verifyLocatorPresentInBelowOfAnotherLocatorWithoutXpos(sectionLoc,topLocator);
        } catch (Exception e) {
            e.printStackTrace();
testStepFailed("Failed in verify "+getRefOfXpath(sectionLoc)+" Is After "+getRefOfXpath(topLocator)+" Using Locators. Exception: "+e.getClass());

        }

    }


    public void verifySectionsIsBeforeLocator(String BelowLocator,String sectionLoc,String extra) {
        try {

            verifyLocatorPresentInAboveOfAnotherLocatorWithoutXposition(sectionLoc,BelowLocator);
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in verify "+getRefOfXpath(sectionLoc)+" Before "+getRefOfXpath(BelowLocator)+" Using Locators. Exception: "+e.getClass());

        }

    }


    ///Peronal Loan CRs////

    public void clickOnButtonsInHorizontalMenuOptions(String optionname,String buttonName,String extra) {
        try {
String button=buttonName+" Option in "+optionname+"#xpath=//li[normalize-space(text())='"+optionname.trim()+"']/div[@class='cta-text-btn']/a[normalize-space(text())='"+buttonName.trim()+"']";
clickOnIfDisplayed(button);
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failoed in click On Buttons In Horizontal Menu Options. Exception: "+e.getClass());
        }
    }


    public void clickOnHorizontalMenuOption(String optionText,String extra) {
        try {
String option=optionText+" - 1st Level menu Option#xpath=//li[@class='dropdown-parent']/a[normalize-space(text())='"+optionText.trim()+"']";
            Actions ac=new Actions(driver);
            ac.moveToElement(findWebElement(option)).perform();
            testStepPassed(getRefOfXpath(option)+" is Clicked successfully");
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in click on horizontal Menu Option. Exception: "+e.getClass());
        }
    }

    public void mouseOverToHorizontalMenuSubOption(String level_1,String level_2,String extra) {
        try {

//            String option=level_1+" - "+level_2+" - 2nd level Menu Option#xpath=//li[@class='dropdown-parent']/a[normalize-space(text())='"+level_1.trim()+"']/following-sibling::*//a[normalize-space(text())='"+level_2.trim()+"']";
            String option=level_1+" - "+level_2+" - 2nd level Menu Option#xpath=//li[@class='dropdown-parent']/a[normalize-space(text())='"+level_1.trim()+"']/following-sibling::*//*[normalize-space(text())='"+level_2.trim()+"']";
            Actions ac=new Actions(driver);
            ac.moveToElement(findWebElement(option)).perform();
            testStepPassed(getRefOfXpath(option)+" is Clicked successfully");
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in click on horizontal Menu Option. Exception: "+e.getClass());
        }
    }
}