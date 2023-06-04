package PageObjects;

import base.ApplicationKeywords;

public class MutualFundsPage extends ApplicationKeywords {

    public static final String tab_MutualFunds = "Mutual Funds tab#xpath=//div[@class='tab_link']/descendant::a[normalize-space(text())='Mutual Funds']";
    public static final String tile_MutualFunds = "Mutual Funds tile#xpath=//div[@class='mutual_row']/div";
    public static final String tile_DownArrow = "Red Down Arrow#xpath=//div[@class='mutual_row']/div/descendant::span//img[contains(@src,'images/Down_Arrow.png')]";
    public static final String tile_Arrow = "Tile Arrow#xpath=//div[@class='mutual_row']/div/descendant::div//img[contains(@src,'images/icons-view-details.svg')]";

    public void mutualFundTile() {
        try {
            if (isElementDisplayed(tile_MutualFunds)) {
                int size = sizeOfLocator(tile_MutualFunds);
                for (int i = 1; i <= size; i++) {
                    manualScreenshot("No of Mutual Fund tiles " + size);
                    String tile_Title = "Tile Header #xpath=(//strong[normalize-space(text())='MUTUAL FUND'])[" + i + "]";
                    String anu_Return = "Annualized Return #xpath=(//div[@class='mutual_row']/div/descendant::p[contains(text(),'Annualized Return:')])[" + i + "]";
                    String arrow = "Annualized Return Arrow #xpath=(//div[@class='mutual_row']/div/descendant::span//img)[" + i + "]";
                    verifyElementIsDisplayedAndGetText(tile_Title);
                    verifyElementIsDisplayedAndGetText(anu_Return);
                    verifyElementIsDisplayedOrNot(arrow);
                    verifyValueUsingLabelUsingIteration("//div[@class='mutual_row']/div/descendant::li/p", "Invested Amount", "/following-sibling::strong", i, "");
                    verifyValueUsingLabelUsingIteration("//div[@class='mutual_row']/div/descendant::li/p", "Current Value", "/following-sibling::strong", i, "");
                }
            } else {
                testStepFailed(getRefOfXpath(tile_MutualFunds) + " is not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in mutual Fund Tile. Exception: " + e.getClass());

        }
    }

    public void returnMFTile(String text, String extra) {
        try {
            if (isElementDisplayed(tile_MutualFunds)) {
                String anu_Return = "" + text + " Return #xpath=(//div[@class='mutual_row']/div/descendant::p[contains(text(),'" + text + "')])";

                verifyElementIsDisplayedAndGetText(anu_Return);
            } else {
                testStepFailed(getRefOfXpath(tile_MutualFunds) + " is not Displayed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            testStepFailed("Failed in return MF Tile. Exception: " + e.getClass());

        }


    }


}
