package stepDefinitions;

import PageObjects.*;
import base.ApplicationKeywords;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;

public class MutualFundsSteps extends ApplicationKeywords {

    LoginPage login;
    HomePage home;
    MutualFundsPage mutualFunds;

    public MutualFundsSteps() {
        login = new LoginPage();
        home = new HomePage();
        mutualFunds = new MutualFundsPage();
    }



    @Then("Customer able to see Mutual Funds Tab under My Relation page")
    public void customerAbleToSeeMutualFundsTabUnderMyRelationPage() {
        verifyFieldsDisplayedUsingLocator(MutualFundsPage.tab_MutualFunds);
    }

    @Then("Customer able to see {string} Tab under My Relation page")
    public void customerAbleToSeeTabUnderMyRelationPage(String string) {
        verifyFieldsUsingCommonXpathAndMultipleTextWithHash("//div[@class='tab_link']/descendant::a",string,"");
    }

    @Then("Customer able to see Static Mutual Fund {string} Details")
    public void customerAbleToSeeStaticMutualFundDetails(String text) {
        verifyFieldDisplayedUsingTagAndText("span",text,"");
    }

    @Then("Customer able to see mutual Fund Tile")
    public void customerAbleToSeeMutualFundTile() {

        verifyFieldDisplayedUsingTagAndText("h2","MUTUAL FUNDS","");
        verifyElementIsDisplayedOrNot(MutualFundsPage.tile_MutualFunds);

    }

    @Then("Customer able to see Details on Mutual Fund Tile")
    public void customerAbleToSeeDetailsOnMutualFundTile() {
        mutualFunds.mutualFundTile();
    }

    @Then("Customer able to see {string} on Mutual Fund Tile")
    public void customerAbleToSeeOnMutualFundTile(String tile) {
        mutualFunds.returnMFTile(tile,"");

    }

    @Then("Customer able to see Down Red Arrow on Mutual Fund Tile")
    public void customerAbleToSeeDownRedArrowOnMutualFundTile() {
        verifyElementIsDisplayedOrNot(MutualFundsPage.tile_DownArrow);
    }

    @And("click on Mutual Fund Tile")
    public void clickOnMutualFundTile() {
        clickOnIfDisplayed(MutualFundsPage.tile_Arrow);
    }
}
