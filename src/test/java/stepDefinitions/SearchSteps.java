package stepDefinitions;

import PageObjects.FDServicesPage;
import PageObjects.*;
import base.ApplicationKeywords;

import cucumber.api.java.en.Given;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import karate.io.micrometer.core.instrument.search.Search;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public class SearchSteps extends ApplicationKeywords {
    LoginPage login;
    HomePage home;
    LoanServicesPage loanservices;
    FDServicesPage fdServices;
    MyProfilePage myProfile;

    SearchPage searchPage;


    public SearchSteps() {
        login = new LoginPage();
        home = new HomePage();
        loanservices = new LoanServicesPage();
        fdServices = new FDServicesPage();
        myProfile=new MyProfilePage();
        searchPage=new SearchPage();
    }



    @Then("User should be able to view search bar on Header section with search icon")
    public void user_should_be_able_to_view_search_bar_on_header_section_with_search_icon() {
        searchPage.clickOnSkipButton("Skip");
        waitTime(2);
        searchPage.verifySearchBox(SearchPage.searchBox);
        searchPage.verifySearchBox(SearchPage.searchIcon);
    }



    @Then("clicks on cross icon")
    public void clicks_on_cross_icon() {
        searchPage.clickonCloseIcon(SearchPage.closeIcon);
    }
    @Then("text should be cleared")
    public void text_should_be_cleared() {
        searchPage.verifyEmptySearchBox(SearchPage.searchBox);
    }

    @Then("enters search keywords {string}")
    public void enters_search_keywords(String string) {
        searchPage.enterSearchValue(SearchPage.searchBox,string);
    }

    @When("enters Special search keywords {string}")
    public void enters_special_search_keywords(String string) {
        searchPage.enterSpecialSearchValue(SearchPage.searchBox,string);
    }


    @Then("User should be able to view animation text {string}")
    public void user_should_be_able_to_view_animation_text(String string) {
        searchPage.clickOnSkipButton("Skip");
        waitTime(2);
        searchPage.verifySearchBox(SearchPage.placeHolder);
    }

    @When("Click on search bar")
    public void click_on_search_bar() {
      //clickOn(SearchPage.searchBox);
        searchPage.clickOnSkipButton("Skip");
        waitTime(2);
        searchPage.clickSearchBox(SearchPage.searchBox);

    }
    @Then("Default text should be cleared")
    public void default_text_should_be_cleared() {
        searchPage.verifyEmptySearchBox(SearchPage.searchBox);
    }


    @Then("six promoted searches Screen overlay should be display with background greyed out {string}")
    public void six_promoted_searches_screen_overlay_should_be_display_with_background_greyed_out(String string) {
        searchPage.verifyLocatorColorUsingCssValue(SearchPage.backGroundGray,"rgba(0, 0, 0, 0.75)","Grayed","background-color");
        searchPage.verifySearchValues(string);
    }


    @And("Click on search bar TextBox")
    public void clickOnSearchBarTextBox() {
        searchPage.clickOnSkipButton("Skip");
        waitTime(2);
        searchPage.clickSearchBox(SearchPage.searchBox);
    }


    @When("Click on Promoted Searches Option {string}")
    public void click_on_promoted_searches_option(String string) {
      searchPage.clickOnSearchValues(string);
    }
    @Then("Customer should be redirected to desired search result page as per the selected keyword")
    public void customer_should_be_redirected_to_desired_search_result_page_as_per_the_selected_keyword() {
        transferControlToWindow(2,false);
       verifyRedirectionURLIfContains("https://www.bajajfinserv.in/search?searchKeyword=+Make Payments");
        transferControlToWindow(1,true);
    }


    @Then("Customer should be redirected to desired search result page as per the selected keyword {string}")
    public void customer_should_be_redirected_to_desired_search_result_page_as_per_the_selected_keyword(String string) {
        transferControlToWindow(2,false);
         searchPage.verifyRedirectedValue(string);
        transferControlToWindow(1,true);
    }


    @Then("five suggested searches should be displayed")
    public void fiveSuggestedSearchesShouldBeDisplayed() {
      searchPage.verifyFiveSearchValues();
    }

    @Then("Suggested searches should be displayed in bold form except the user typed keywords on search bar {string}")
    public void suggested_searches_should_be_displayed_in_bold_form_except_the_user_typed_keywords_on_search_bar(String string) {
        searchPage.verifyBoldFiveSearchValues(string);
    }


    @Then("Suggested searches should not be displayed after entering one letter")
    public void suggestedSearchesShouldNotBeDisplayedAfterEnteringOneLetter() {
        searchPage.verifySearchBoxTextIsNotPresent(SearchPage.suggestedSearches);
    }


    @When("Click on suggested searches results {string}")
    public void click_on_suggested_searches_results(String string) {
       // searchPage.clickOnSearchValues(string);
        searchPage.clickOnSuggestedSearchValues(string);
    }
    @Then("Customer should be redirected to desired search result page as per the selected  suggested search option keyword {string}")
    public void customer_should_be_redirected_to_desired_search_result_page_as_per_the_selected_suggested_search_option_keyword(String string) {
        searchPage.verifyRedirectedValue(string);
        navigateToBack();
    }


    @Then("User should be able to enter only twentysix characters")
    public void userShouldBeAbleToEnterOnlyTwentysixCharacters() {
        searchPage.verifyStringLength("");
    }

    @Then("User should be able to enter only twentysix characters {string}")
    public void user_should_be_able_to_enter_only_twentysix_characters(String string) {
        searchPage.verifyStringLength(string);
    }

    @Then("search bar should not be allowed to enter blank spaces And special characters")
    public void searchBarShouldNotBeAllowedToEnterBlankSpacesAndSpecialCharacters() {

        searchPage.verifySpecialCharacters("");
    }

    @Then("search bar should not be allowed to enter blank spaces And special characters {string}")
    public void search_bar_should_not_be_allowed_to_enter_blank_spaces_and_special_characters(String string) {
        searchPage.verifySpecialCharacters(string);
    }


}
