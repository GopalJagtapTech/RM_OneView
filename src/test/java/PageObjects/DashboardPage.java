package PageObjects;

import base.ApplicationKeywords;

public class DashboardPage extends ApplicationKeywords {

    /// //Xpaths
    public static final String logoRmOne = "Logo RM One#xpath=//img[contains(@src,'RMonelogo.svg')]";
    public static final String searchDropdown = "Search Dropdown#xpath=//div[@class='mobile-num-dropdown']//select";
    public static final String searchByInput = "Search By Input Box#xpath=//div[@class='mobile-num-input']//input";
    public static final String yesSMSPop = "Yes in SMS Pop#xpath=//p[normalize-space(text())='YES']/parent::a";
    public static final String noSMSPopUp = "No in SMS Pop#xpath=//p[normalize-space(text())='NO']/parent::a";


    /// /Methods

    public void dashboardPageContents() {
        try {
            String topSection = "Top Section in Dashboard Page#xpath=//div[@class='customer-header']";
            String searchSection = "Search Section in Dashboard Page#xpath=//div[contains(@class,'search-div')]";
            String notifSection = "Notification Section in Dashboard Page#xpath=//h4[normalize-space(text())='Notification']/../parent::div[@class='rm-card']";
            String quickLinkSection = "Quick Link Section in Dashboard Page#xpath=//h4[normalize-space(text())='Quick Links']/../parent::div[@class='rm-card']";
            String leadDisposition = "Lead Disposition Section in Dashboard Page#xpath=//h4[normalize-space(text())='Lead Disposition']/../parent::div[@class='rm-card']";

            verifyElementIsDisplayedOrNot(logoRmOne);
            verifyFieldsUsingCommonXpathAndMultipleTextWithHash("//ul[@class='navbar-ul']//li//a", "Dashboard#Your Customer", "");
            verifyElementIsDisplayedOrNot(topSection);
            verifyElementIsDisplayedOrNot(searchSection);
            verifyFieldsDisplayedUsingLocatorWithScroll(notifSection);
            verifyFieldsDisplayedUsingLocatorWithScroll(quickLinkSection);
            verifyFieldsDisplayedUsingLocatorWithScroll(leadDisposition);


            String notifications = "Notification#xpath=//div[@class='d-flex']";
            String userProfile = "User Profile Details#xpath=//div[@class='user-profile-detailsbox']";
            String userName = "User Name#xpath=//div[@class='username-box']//h3";
            String userRole = "User Role#xpath=//div[@class='username-box']//p";
            String userLogo = "User Profile Logo#xpath=//div[@class='user-profile-detailsbox']//img[@class='user-profile-icon']";
            String userLogoArrow = "User Profile Arrow#xpath=//div[@class='user-profile-detailsbox']//img[@class='profile-arrow-icon']";


//        verifyElementIsDisplayedOrNot(notifications);
            verifyElementIsDisplayedOrNot(userProfile);
            verifyElementIsDisplayedAndGetText(userName);
            verifyElementIsDisplayedAndGetText(userRole);
            verifyElementIsDisplayedOrNot(userLogo);
            verifyElementIsDisplayedOrNot(userLogoArrow);


        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed at dashboard Page Contents " + e.getClass());
        }

    }


    public void quickLinkVerifications(String options, String extra) {
        try {
            String[] split = options.split(", ");
//        for (int i = 0; i < split.length; i++) {
//           String text = split[i];
//            String name = "Quick Link Option " +text+" :#xpath=//h4[normalize-space(text())='Quick Links']/following::a//p[normalize-space(text())='"+text.trim()+"']";
//            String img = "Quick Link Option " +text+" : Logo:#xpath=//h4[normalize-space(text())='Quick Links']/following::a//p[normalize-space(text())='"+text.trim()+"']/preceding-sibling::img";
//            verifyElementIsDisplayedOrNot(name);
//            verifyElementIsDisplayedOrNot(img);
//        }

            for (String opt : split) {
                String text = opt;
                String name = "Quick Link Option " + text + " :#xpath=//h4[normalize-space(text())='Quick Links']/following::a//p[normalize-space(text())='" + text.trim() + "']";
                String img = "Quick Link Option " + text + " : Logo:#xpath=//h4[normalize-space(text())='Quick Links']/following::a//p[normalize-space(text())='" + text.trim() + "']/preceding-sibling::img";
                verifyElementIsDisplayedOrNot(name);
                verifyElementIsDisplayedOrNot(img);

            }

        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed at quick Link Verifications " + e.getClass());
        }
    }


}
