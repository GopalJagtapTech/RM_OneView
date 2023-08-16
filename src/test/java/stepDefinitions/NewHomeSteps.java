package stepDefinitions;

import PageObjects.*;
import base.ApplicationKeywords;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Map;

public class NewHomeSteps extends ApplicationKeywords {

    LoginPage login;
    HomePage home;
    RARPage rar;
    MyProfilePage MyProfile;
    FDServicesPage fdServices;
    JsonPageTitleForHome jsonTitle;
    JsonPageTitleForProducts jsonTitle1;
    JsonPageTitleMasterCards jsonTitle2;
    JsonPageLabelForHome jsonLabel;
    JsonPageLabelForProducts jsonLabel1;
    JsonPageLabelForMasterCards jsonLabel2;
    JsonFetchingForParticular jsonParticular;
    NewHomePage newHome;

    public NewHomeSteps() {
        login = new LoginPage();
        home = new HomePage();
        rar = new RARPage();
        MyProfile = new MyProfilePage();
        jsonTitle = new JsonPageTitleForHome();
        jsonTitle1 = new JsonPageTitleForProducts();
        jsonLabel = new JsonPageLabelForHome();
        newHome = new NewHomePage();
        jsonLabel1 = new JsonPageLabelForProducts();
        jsonTitle2 = new JsonPageTitleMasterCards();
        jsonLabel2 = new JsonPageLabelForMasterCards();
        jsonParticular = new JsonFetchingForParticular();
    }

    @Given("Get Data from AEM")
    public void getDataFromAEM() throws IOException {
        driver.get("https://cms-api.bajajfinserv.in/content/bajajfinserv/experia/in/en/homepage");
        String jsonLocator = "AEM Jason Value#xpath=//pre";
        String Content = getTextPresent(jsonLocator);
        File file;
        file = new File(System.getProperty("user.dir") + "\\UploadDocuments\\NewHomeAEM.json");
        if (file.exists()) {
            file.delete();
            file = new File(System.getProperty("user.dir") + "\\UploadDocuments\\NewHomeAEM.json");
        }
        FileWriter fr = new FileWriter(file, true);
        BufferedWriter br = new BufferedWriter(fr);
        br.write(Content);
        br.close();
        fr.close();
    }

    @And("Get Data for {string} in {string}")
    public void getDataForIn(String arg0, String arg1) {
        JsonPageLabels.mapObject.clear();
        String name = arg1 + " " + arg0;
        String valueGroup = getLocator(name);
        jsonTitle.getJson(valueGroup.split("@")[0], valueGroup.split("@")[1]);
        System.out.println(JsonPageTitle.title);

    }

    @And("Get Data for {string} under {string}")
    public void getDataForUnder(String productName, String productTitle) {
        String name = productTitle + " " + productName;
        String values = getLocator(name);
        String[] split = values.split("@");
        jsonLabel.getJson(split[0], split[1], split[2]);
        System.out.println(JsonPageLabels.mapObject);
    }

    @And("verify {string} Logo is Displayed under {string}")
    public void verifyLogoIsDisplayedUnder(String productName, String productTitle) {
        newHome.verifyLogoIsDisplayedInNewHome(productName, productTitle, "");
    }

    @And("verify {string} Redirection for {string}")
    public void verifyRedirectionFor(String productName, String productTitle) {
        String nameProd = (String) JsonPageLabels.mapObject.get("icontitle");
        String url = (String) JsonPageLabels.mapObject.get("iconlink");
        String product = nameProd + " Option#xpath=//p[normalize-space(text())='" + JsonPageTitle.title.trim() + "']/..//following-sibling::div//p[text()='" + nameProd.trim() + "']";
        verifyElementIsDisplayedOrNotusingScroll(product);
        clickOnIfDisplayed(product);
        verifyRedirectionURL(url);
        navigateToBack();
    }

    @And("verify {string} Redirection for {string} with New Tab")
    public void verifyRedirectionForWithNewTab(String productName, String productTitle) {
        newHome.verifyNewHomeRedirectionWIthNewTab("");
    }

    @And("verify {string} Redirection for {string} with SSO")
    public void verifyRedirectionForWithSSO(String productName, String productTitle) {
        newHome.verifyNewHomeRedirectionWIthSSO("");
    }


    @And("verify Nudge Text with Labels for {string} - {string}")
    public void verifyNudgeTextWithLabelsFor(String sectionName, String productName) {
        newHome.verifyNudgeTextShowingAsPerAEM(productName, sectionName, "");
    }

    @And("verify {string} Logo is Displayed under {string} with Slider")
    public void verifyLogoIsDisplayedUnderWithSlider(String productName, String productTitle) {
        newHome.verifyLogoIsDisplayedInNewHomeWithSlide(productName, productTitle, "");
    }

    @And("Get Data for {string} under {string} Offers")
    public void getDataForUnderOffers(String productName, String productTitle) {
        String name = productTitle + " " + productName;
        String values = getLocator(name);
        String[] split = values.split("@");
        jsonLabel1.getJson(split[0], split[1], split[2]);
        System.out.println(JsonPageLabels.mapObject);
    }

    @And("Get Data for {string} in {string} Offers")
    public void getDataForInOffers(String arg0, String arg1) {
        String name = arg1 + " " + arg0;
        String valueGroup = getLocator(name);
        jsonTitle1.getJson(valueGroup.split("@")[0], valueGroup.split("@")[1]);
        System.out.println(JsonPageTitle.title);

    }

    @And("Get Data for {string} in {string} - MastHeadSection")
    public void getDataForInMastHeadSection(String arg0, String arg1) {
        String name = arg1 + " " + arg0;
        String valueGroup = getLocator(name);
        jsonTitle2.getJson(valueGroup.split("@")[0], valueGroup.split("@")[1]);
        System.out.println(JsonPageTitle.title);
    }

    @And("Get Data for {string} under {string} for MastHeadSection")
    public void getDataForUnderForMastHeadSection(String productName, String productTitle) {
        String name = productTitle + " " + productName;
        String values = getLocator(name);
        String[] split = values.split("@");
        jsonLabel2.getJson(split[0], split[1], split[2]);
        System.out.println(JsonPageLabels.mapObject);
    }

    @And("verify {string} Option is Disabled under {string}")
    public void verifyOptionIsDisabledUnder(String productName, String productTitle) {
        String name = productTitle + " " + productName + " Disabled";
        String path = getLocator(name);
        newHome.verifyNewHomeOptionIsDisabled(path, productName, productTitle, "");
    }

    @And("Click on {string} Option under {string} Section")
    public void clickOnOptionUnderSection(String arg0, String arg1) {
        newHome.clickOnNewHomeOptionWithAEM("");
    }

    @Given("Get Data for Banner Offers in {string}")
    public void get_data_for_banner_offers_in(String string) {

    }

    @Given("Get Data for {string} under Banner Offers")
    public void get_data_for_under_banner_offers(String productName) {
        String bannerOffers = "Banner Offers " + productName;
        String value = getLocator(bannerOffers);
        JsonFetchingForParticular.getJson("image-android", 1, value, "banners-image-section");
    }

    @Given("verify {string} Logo is Displayed for Banner Offers with Slider")
    public void verify_logo_is_displayed_for_banner_offers_with_slider(String string) {
        newHome.verifyLogoIsDisplayedForBannerOffers(string, "");
    }

    @Given("Click on {string} Option in Banner Offers Section")
    public void click_on_option_in_banner_offers_section(String string) {
        newHome.clickButtonTextIsDisplayedForBannerOffers(string, "");
    }

    @And("verify {string} Name is Displayed for Banner Offers with Slider")
    public void verifyNameIsDisplayedForBannerOffersWithSlider(String arg0) {
        newHome.verifyNameIsDisplayedForBannerOffers(arg0, "");
    }


    @And("verify {string} Description Text is Displayed for Banner Offers")
    public void verifyDescriptionTextIsDisplayedForBannerOffers(String arg0) {
        newHome.verifyDescriptionTextIsDisplayedForBannerOffers(arg0, "");
    }

    @And("verify {string} CTA button is Displayed for Banner Offers")
    public void verifyCTAButtonIsDisplayedForBannerOffers(String arg0) {
        newHome.verifyButtonTextIsDisplayedForBannerOffers(arg0, "");
    }

    @And("verify {string} Redirection for Banner Offers with SSO")
    public void verifyRedirectionForBannerOffersWithSSO(String arg0) {
        newHome.verifyRedirectionForBannerOffersWithSSO(arg0);
    }

    @Given("Get Data for {string} under Partner Offers")
    public void get_data_for_under_partner_offers(String productName) {
        String partnerOffers = "Partner Offers " + productName;
        String value = getLocator(partnerOffers);
        JsonFetchingForParticular.getJson("image-android", 1, value, "partner-offers");
    }

    @Given("verify {string} Logo is Displayed for Partner Offers")
    public void verify_logo_is_displayed_for_partner_offers(String string) {
        newHome.verifyLogoIsDisplayedForPartnerOffers(string, "");
    }


    @Given("Click on {string} Option in Partner Offers Section")
    public void click_on_option_in_partner_offers_section(String string) {
        newHome.clickLogoIsDisplayedForPartnerOffers(string, "");
    }

    @Given("verify {string} Redirection for Partner Offers with SSO")
    public void verify_redirection_for_partner_offers_with_sso(String string) {
        newHome.verifyRedirectionForBannerOffersWithSSO(string);
    }


    @And("Get Data for Partner Offers in {string}")
    public void getDataForPartnerOffersIn(String arg0) {
        jsonTitle.getJson("partner-offers", "partner-offers-title");
    }

    @Given("Get Data for Offers For You in {string}")
    public void get_data_for_offers_for_you_in(String string) {
        jsonTitle.getJson("offers-for-you", "offers-for-you-title");
    }

    @Given("Get Data for {string} under Offers For You")
    public void get_data_for_under_offers_for_you(String productName) {
        String offersForYou = "Offers For You " + productName;
        String value = getLocator(offersForYou);
        JsonFetchingForParticular.getJson("image-android", 1, value, "offers-for-you");
    }

    @Given("verify {string} Logo is Displayed for Offers For You")
    public void verify_logo_is_displayed_for_offers_for_you(String string) {
        newHome.verifyLogoIsDisplayedForOffersForYou(string, "");
    }

    @Given("Click on {string} Option in Offers For You Section")
    public void click_on_option_in_offers_for_you_section(String string) {
        newHome.clickLogoIsDisplayedForOffersForYou(string, "");
    }

    @Given("verify {string} Redirection for Offers For You with SSO")
    public void verify_redirection_for_offers_for_you_with_sso(String string) {
        newHome.verifyRedirectionForBannerOffersWithSSO(string);
    }

    @And("verify {string} Redirection for Offers For You with New Tab")
    public void verifyRedirectionForOffersForYouWithNewTab(String arg0) {
        newHome.verifyRedirectionForOffersforyouWithNewTab(arg0);
    }


    @When("Get Data for {string}")
    public void get_data_for(String string) {
        String name = "Home Page " + string;
        String value = getLocator(name);
//        if (string.equalsIgnoreCase("Locate us")||string.equalsIgnoreCase("savdhan")) {
        JsonFetchingForParticular.getJson("iconimage-android", 1, value.split("@")[1], value.split("@")[0]);
//        JsonFetchingForParticular.getJson("image-android",1,value,"partner-offers");
//        } else {
//            testStepFailed(string+" is not matched");
//        }


    }
//    @When("verify {string} Title is Displayed in Home Page")
//    public void verify_title_is_displayed_in_home_page(String name) {
//        String value = getLocator(name);
//newHome.verifyNewHomePageTitleIsDisplayed(name,value.split("@")[0],"");
//    }
//    @When("verify {string} Sub Title is Displayed in Home Page")
//    public void verify_sub_title_is_displayed_in_home_page(String name) {
//        String value = getLocator(name);
//        newHome.verifyNewHomePageSubTitleIsDisplayed(name,value.split("@")[1],"");
//    }
//    @When("verify {string} Logo is Displayed in Home Page")
//    public void verify_logo_is_displayed_in_home_page(String name) {
//        String value = getLocator(name);
//        newHome.verifyNewHomePageImageIsDisplayed(name,value.split("@")[2],"");
//    }
//    @When("Click on {string} Option in Home Page")
//    public void click_on_option_in_home_page(String name) {
//        String value = getLocator(name);
//        newHome.clickOnNewHomePageImageIsDisplayed(name,value.split("@")[2],"");
//    }
//    @When("verify {string} Redirection in Home Page with SSO")
//    public void verify_redirection_in_home_page_with_sso(String name) {
//        String value = getLocator(name);
//        newHome.verifyRedirectionForBannerOffersWithSSO(value.split("@")[3]);
//    }


    @When("verify {string} Title is Displayed in Home Page")
    public void verify_title_is_displayed_in_home_page(String name) {
        String value = getLocator(name + " Title");
        newHome.verifyNewHomePageTitleIsDisplayed(name, value, "");
    }

    @When("verify {string} Sub Title is Displayed in Home Page")
    public void verify_sub_title_is_displayed_in_home_page(String name) {
        String value = getLocator(name + " Sub Title");
        newHome.verifyNewHomePageSubTitleIsDisplayed(name, value, "");
    }

    @When("verify {string} Logo is Displayed in Home Page")
    public void verify_logo_is_displayed_in_home_page(String name) {
        String value = getLocator(name + " Logo");
        newHome.verifyNewHomePageImageIsDisplayed(name, value, "");
    }

    @When("Click on {string} Option in Home Page")
    public void click_on_option_in_home_page(String name) {
        String value = getLocator(name + " Logo");
        newHome.clickOnNewHomePageImageIsDisplayed(name, value, "");
    }

    @Given("verify {string} Title is Displayed for Carousal")
    public void verify_title_is_displayed_for_carousal(String string) {
        newHome.verifyTitleIsDisplayedInNewHomeCarousal("Carousal", string, "");

    }

    @Given("verify {string} Description Text is Displayed for Carousal")
    public void verify_description_text_is_displayed_for_carousal(String string) {
        newHome.verifyDescriptionIsDisplayedInNewHomeCarousal("Carousal", string, "");
    }

    @Given("verify {string} Logo is Displayed for Carousal")
    public void verify_logo_is_displayed_for_carousal(String string) {
        newHome.verifyLogoIsDisplayedInNewHomeCarousal("Carousal", string, "");
    }

    @Given("verify {string} CTA Button is Displayed for Carousal")
    public void verify_cta_button_is_displayed_for_carousal(String string) {
        newHome.verifyCtaButtonIsDisplayedInNewHomeCarousal("Carousal", string, "");
    }

    @Given("Click on {string} CTA Button in Carousal Section")
    public void click_on_cta_button_in_carousal_section(String string) {
        newHome.clickCtaButtonIsDisplayedInNewHomeCarousal("Carousal", string, "");
    }


    @And("verify {string} Redirection for {string} {string}:{string}")
    public void verifyRedirectionFor(String productname, String secionName, String redirectType, String url) {
        newHome.verifyRedirectionForNewHome(url, redirectType, secionName + " " + productname);
    }

    @When("verify following fields and formats in Pre-Approved Offers section - {string}")
    public void verify_following_fields_and_formats_in_pre_approved_offers_section(String string, io.cucumber.datatable.DataTable dataTable) {
        Map<String, String> map = dataTable.asMap();
        System.out.println(map);
        newHome.verifyPreApprovedOffers(map, string);
    }

    @Given("verify following fields and formats in Home My Relations section - {string} {string}")
    public void verify_following_fields_and_formats_in_home_my_relations_section(String string, String string2, io.cucumber.datatable.DataTable dataTable) {
        Map<String, String> map = dataTable.asMap();


    }

    @Then("verify {string} is Present Below the {string}")
    public void verifyIsPresentBelowThe(String arg0, String arg1) {
        String MainSection = getLocator(arg0);
        String CompareSection = getLocator(arg1);
        newHome.verifySectionsIsAfterLocator(CompareSection, MainSection, "");
    }

    @Then("verify {string} is Present Above the {string}")
    public void verifyIsPresentAboveThe(String arg0, String arg1) {
        String MainSection = getLocator(arg0);
        String CompareSection = getLocator(arg1);
        newHome.verifySectionsIsBeforeLocator(CompareSection, MainSection, "");
    }

    @And("Customer Clicks on {string} button in Horizontal Menu {string} Option")
    public void customerClicksOnButtonInHorizontalMenuOption(String button, String option) {
        newHome.clickOnButtonsInHorizontalMenuOptions(option, button, "");
    }

    @And("verify {string} is present in {string}")
    public void verifyIsPresentIn(String locatorText, String extra) {
        String locator = getLocator(locatorText);
        boolean flag = isElementPresent(locator);
        if (!flag) {
            testStepFailed(getRefOfXpath(locator) + " is Not Present in " + extra);
        }
    }

    @And("click on {string} option in Horizontal Menu")
    public void clickOnOptionInHorizontalMenu(String arg0) {
        newHome.clickOnHorizontalMenuOption(arg0, "");
    }

    @And("Mouse Over to {string} Sub Option in {string} Horizontal Menu")
    public void mouseOverToSubOptionInHorizontalMenu(String arg0, String arg1) {
        newHome.mouseOverToHorizontalMenuSubOption(arg1, arg0, "");
    }

    @Then("Customer should be able to view EMI CARD icon under Header section on Home page")
    public void customerShouldBeAbleToViewEMICARDIconUnderHeaderSectionOnHomePage() {
        verifyElementIsDisplayedOrNot(HomePage.emi_Icon);
    }

    @And("{string} Name should be displayed under the Icon")
    public void nameShouldBeDisplayedUnderTheIcon(String str) {
        verifyFieldsUsingCommonXpathAndMultipleTextWithHash("//ul[@class='rightSideitems']/descendant::li//a//p", str, "");
    }

    @Then("Customer should be able to view Bell icon on under Header section on Home page")
    public void customerShouldBeAbleToViewBellIconOnUnderHeaderSectionOnHomePage() {
        verifyElementIsDisplayedOrNot(HomePage.bell_Icon);

    }

    @Then("Customer should be able to view Cart icon on under Header section on Home page")
    public void customerShouldBeAbleToViewCartIconOnUnderHeaderSectionOnHomePage() {
        verifyElementIsDisplayedOrNot(HomePage.cart_Icon);

    }

    @Then("Customer should be able to view Profile icon on under Header section on Home page")
    public void customerShouldBeAbleToViewProfileIconOnUnderHeaderSectionOnHomePage() {
        verifyElementIsDisplayedOrNot(HomePage.profile_Icon);

    }

    @Then("ETB customer should be able to view Reminder Section")
    public void ETBCustomerShouldBeAbleToViewReminderSection() {
        verifyElementIsDisplayedOrNotusingScroll(NewHomePage.reminder_Section);
    }

    @Then("{string} customer should not be able to view Reminder Section")
    public void customerShouldNotBeAbleToViewReminderSection(String arg0) {
        verifyElementIsNotDisplayedUsingLocator(NewHomePage.reminder_Section);
    }

    @And("Check {string} tiles with {string} CTA")
    public void checkTilesWithCTA(String tile, String cta) {
        newHome.renewNowFdTilesReminder(tile, cta, "");
    }

    @Then("Customer should be able to view details on FD Tile under Reminder section with {string}, Maturity Date, FD Icon, Amount and {string} CTA")
    public void customerShouldBeAbleToViewDetailsOnFDTileUnderReminderSectionWithMaturityDateFDIconAmountAndCTA(String tile, String cta) {
        newHome.fdTileContentsReminderSection(tile, cta, "");
    }

    @Then("Reminder should not be displayed for FD with Renew Now CTA under Reminder section when current date is more than  {int} days or less than {int} days before FD maturity days")
    public void reminderShouldNotBeDisplayedForFDWithRenewNowCTAUnderReminderSectionWhenCurrentDateIsMoreThanDaysOrLessThanDaysBeforeFDMaturityDays(int arg0, int arg1) {
        verifyElementIsNotDisplayedUsingLocator(NewHomePage.reminder_Section);

    }

    @Then("Under Reminder section Loans tile with {string} CTA should be displayed  when total OverDue > {int} and amc Charges > {int}")
    public void underReminderSectionLoansTileWithCTAShouldBeDisplayedWhenTotalOverDueAndAmcCharges(String cta, int arg1, int arg2) {
        newHome.reminderLoanTilesPayNow(cta, "");
    }

    @Then("Under Reminder section Loans tile with {string} CTA should be displayed only when total OverDue > {int} and amc Charges > {int}")
    public void underReminderSectionLoansTileWithCTAShouldBeDisplayedOnlyWhenTotalOverDueAndAmcCharges(String cta, int arg1, int arg2) {
        newHome.reminderLoanTilesPayNow(cta, "");
    }

    @Then("Customer should be able to view details on Loan Tile under Reminder section with Product Description, OverDue Icon, Total Overdue Amount and {string} CTA")
    public void customerShouldBeAbleToViewDetailsOnLoanTileUnderReminderSectionWithProductDescriptionOverDueIconTotalOverdueAmountAndCTA(String cta) {
        newHome.reminderLoanTilesDetails(cta, "");
    }

    @And("Click on {string} CTA of Tile Number {int}")
    public void clickOnCTAOfTileNumber(String cta, int tile) {
        newHome.clickPayNowTileNumber(cta, tile, "");
    }

    @Then("Under Reminder section KYC tile should be displayed with title {string} and {string} CTA when rekycflag is Y")
    public void underReminderSectionKYCTileShouldBeDisplayedWithTitleAndCTAWhenRekycflagIsY(String tile, String cta) {
        newHome.kycTile(tile, cta, "");
    }

    @And("Click on {string} CTA of {string} tile")
    public void clickOnCTAOfTile(String cta, String tile) {
        newHome.clickProceedForKyc(tile, cta, "");
    }

    @And("Click on Home loan banner")
    public void clickOnHomeLoanBanner() {
        scrollToWebElementIfPresent(NewHomePage.homeLoan_OffersForYou);
        clickOn(NewHomePage.homeLoan_OffersForYou);

    }

    @And("Click on Home Loan -Apply Now CTA")
    public void clickOnHomeLoanApplyNowCTA() {
        scrollToWebElementIfPresent(NewHomePage.homeLoan_OfferBanner);
        clickOn(NewHomePage.homeLoan_OfferBanner);


    }

    @And("Click on Home Loan option in Cards")
    public void clickOnHomeLoanOptionInCards() {

        clickOn(NewHomePage.homeLoan_Cards);

    }

    @Then("Customer should be able to redirected to the Below {string} in New page")
    public void customerShouldBeAbleToRedirectedToTheBelowInNewPage(String url) {
        verifyRedirectioninNewTab("url","");
    }

//    @And("Click on Give Feed back in Homepage")
//    public void clickOnGiveFeedBackInHomepage() {
//        clickOnIfDisplayed()
//    }
}