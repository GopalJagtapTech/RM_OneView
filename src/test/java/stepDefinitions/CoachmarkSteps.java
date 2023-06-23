package stepDefinitions;


import PageObjects.*;
import TestData.GOR;
import base.ApplicationKeywords;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.assertj.core.api.SoftAssertions;

public class CoachmarkSteps extends ApplicationKeywords {
    LoginPage login;
    HomePage home;

    LoginFieldPage loginfieldsPage;

    public CoachmarkSteps() {
        login = new LoginPage();
        home = new HomePage();
        loginfieldsPage=new LoginFieldPage();
    }

    @When("User closes the browser")
    public void user_closes_the_browser() {
      //  ApplicationKeywords.driver.quit();
        coachMark=true;
    }

    @Given("User enters the URL {string}")
    public void user_enters_the_url(String string) {
    redirectToUrl(string,"");
    waitForPageToLoad();
    }
    @When("User is on login page")
    public void user_is_on_login_page() {
        verifyFieldsDisplayedUsingLocator(loginfieldsPage.mainHamburger);

    }
    @Then("Coach mark with next and skip CTA under hamburger should be displayed")
    public void coach_mark_with_next_and_skip_cta_under_hamburger_should_be_displayed() {
        loginfieldsPage.verifyButtonUsingLocatorUsingForLoopWithoutFail(loginfieldsPage.Skip_Coach);
        loginfieldsPage.verifyButtonUsingLocatorUsingForLoopWithoutFail(loginfieldsPage.Next_Coach);
        verifyFieldsDisplayedUsingText("Check out the menu");
        verifyFieldsDisplayedUsingText("Contact us, pay your dues, check your offers, or download our apps – all in one place");
    }

    @When("User is on the Home Page")
    public void user_is_on_the_home_page() {
        boolean flag =false;
        flag = verifyFieldsDisplayedUsingLocator(HomePage.txt_Home);

        if (!flag) {
            ApplicationKeywords.quitBrowser = true;
            GOR.login=false;
            SoftAssertions sa = new SoftAssertions();
            testStepFailed("Login is Unsuccessfull");
            sa.fail("Login is Unsuccessful");
            sa.assertAll();
        }
    }


    @When("Click on next CTA of hamburger coach mark")
    public void click_on_next_cta_of_hamburger_coach_mark() {
        loginfieldsPage.clickOnButtonUsingLocatorUsingForLoopWithoutFail(loginfieldsPage.Next_Coach);
    }
    @Then("Coach mark of search with next and skip CTA should be displayed")
    public void coach_mark_of_search_with_next_and_skip_cta_should_be_displayed() {

        verifyFieldsDisplayedUsingLocator(loginfieldsPage.searchBox);
        loginfieldsPage.verifyButtonUsingLocatorUsingForLoopWithoutFail(loginfieldsPage.Skip_Coach);
        loginfieldsPage.verifyButtonUsingLocatorUsingForLoopWithoutFail(loginfieldsPage.Next_Coach);
        verifyFieldsDisplayedUsingText("Find all that you’re looking for");
        verifyFieldsDisplayedUsingText("Use our in-site search to discover our products, services, articles, and more");
    }


    @When("Click on next CTA of search coach mark")
    public void click_on_next_cta_of_search_coach_mark() {
        loginfieldsPage.clickOnButtonUsingLocatorUsingForLoopWithoutFail(loginfieldsPage.Next_Coach);
    }
    @Then("Coach mark under my profile icon must be displayed with next and skip CTA")
    public void coach_mark_under_my_profile_icon_must_be_displayed_with_next_and_skip_cta() {
        verifyFieldsDisplayedUsingLocator(loginfieldsPage.prof_myAccount);
        loginfieldsPage.verifyButtonUsingLocatorUsingForLoopWithoutFail(loginfieldsPage.Skip_Coach);
        loginfieldsPage.verifyButtonUsingLocatorUsingForLoopWithoutFail(loginfieldsPage.Next_Coach);
        verifyFieldsDisplayedUsingText("Sign in to My Account");
        verifyFieldsDisplayedUsingText("View all your relations, raise a request, or explore our services");

    }


    @When("Click on next CTA of my profile coach mark")
    public void click_on_next_cta_of_my_profile_coach_mark() {
        loginfieldsPage.clickOnButtonUsingLocatorUsingForLoopWithoutFail(loginfieldsPage.Next_Coach);
    }
    @Then("Coach mark under product tile must be displayed with GOT IT CTA")
    public void coach_mark_under_product_tile_must_be_displayed_with_got_it_cta() {
        verifyFieldsDisplayedUsingLocator(loginfieldsPage.products_tile);
        loginfieldsPage.verifyButtonUsingLocatorUsingForLoopWithoutFail(loginfieldsPage.Got_Coach);
        verifyFieldsDisplayedUsingText("Learn more about our products");
        verifyFieldsDisplayedUsingText("Explore our wide range of products across loans, insurance, investments, cards, and Bajaj Mall");

    }

    @When("Click on got it CTA of product tile coach mark")
    public void click_on_got_it_cta_of_product_tile_coach_mark() {
        loginfieldsPage.clickOnButtonUsingLocatorUsingForLoopWithoutFail(loginfieldsPage.Got_Coach);

    }
    @Then("coach mark should be closed and login screen is visible after clicking got it CTA of coach mark under product tile.")
    public void coach_mark_should_be_closed_and_login_screen_is_visible_after_clicking_got_it_cta_of_coach_mark_under_product_tile() {
      loginfieldsPage.verifyFieldsNotDisplayedUsingLocator(loginfieldsPage.Got_Coach);
    }

    @When("Click on skip CTA")
    public void click_on_skip_cta() {
        loginfieldsPage.clickOnButtonUsingLocatorUsingForLoopWithoutFail(loginfieldsPage.Skip_Coach);
    }
    @Then("Coach Mark should be closed")
    public void coach_mark_should_be_closed() {
        loginfieldsPage.verifyFieldsNotDisplayedUsingLocator(loginfieldsPage.coach_Markhead);
    }


    @When("Click on skip CTA of search coach mark")
    public void click_on_skip_cta_of_search_coach_mark() {
        loginfieldsPage.clickOnButtonUsingLocatorUsingForLoopWithoutFail(loginfieldsPage.Skip_Coach);

    }

    @When("Click on skip CTA of my profile coach mark")
    public void click_on_skip_cta_of_my_profile_coach_mark() {
        loginfieldsPage.clickOnButtonUsingLocatorUsingForLoopWithoutFail(loginfieldsPage.Skip_Coach);

    }

    @When("Click on my profile icon")
    public void click_on_my_profile_icon() {
        clickOnIfDisplayed(loginfieldsPage.icon_MyAccount);
    }
    @When("Click on sign in CTA")
    public void click_on_sign_in_cta() {
        clickOnIfDisplayed(loginfieldsPage.SignIn_Button);

    }
    @Then("Coach Mark with next and skip CTA under individual type on login page must be displayed")
    public void coach_mark_with_next_and_skip_cta_under_individual_type_on_login_page_must_be_displayed() {
       verifyFieldsDisplayedUsingLocator(loginfieldsPage.Indcoach_Markhead);
        loginfieldsPage.verifyButtonUsingLocatorUsingForLoopWithoutFail(loginfieldsPage.Skip_Coach);
        loginfieldsPage.verifyButtonUsingLocatorUsingForLoopWithoutFail(loginfieldsPage.Next_Coach);
        verifyFieldsDisplayedUsingText("Sign-in with your mobile number and date of birth");
    }



    @Given("Click on next CTA of individual coach mark")
    public void click_on_next_cta_of_individual_coach_mark() {
        loginfieldsPage.clickOnButtonUsingLocatorUsingForLoopWithoutFail(loginfieldsPage.Next_Coach);

    }
    @Then("Coach Mark with skip and next CTA under corporate and business on login page should be displayed")
    public void coach_mark_with_skip_and_next_cta_under_corporate_and_business_on_login_page_should_be_displayed() {

        verifyFieldsDisplayedUsingLocator(loginfieldsPage.Corcoach_Markhead);
        loginfieldsPage.verifyButtonUsingLocatorUsingForLoopWithoutFail(loginfieldsPage.Skip_Coach);
        loginfieldsPage.verifyButtonUsingLocatorUsingForLoopWithoutFail(loginfieldsPage.Next_Coach);
        loginfieldsPage.verifyTextContent("Corporate/ Business");
        verifyFieldsDisplayedUsingText("Sign-in with your mobile number/email id and date of incorporation of your business.");
    }




    @When("Click on next CTA of corporate and business coach mark")
    public void click_on_next_cta_of_corporate_and_business_coach_mark() {
        loginfieldsPage.clickOnButtonUsingLocatorUsingForLoopWithoutFail(loginfieldsPage.Next_Coach);

    }
    @Then("Coach Mark with got it CTA must be displayed under NRI on login page")
    public void coach_mark_with_got_it_cta_must_be_displayed_under_nri_on_login_page() {
        verifyFieldsDisplayedUsingLocator(loginfieldsPage.Nricoach_Markhead);
        loginfieldsPage.verifyButtonUsingLocatorUsingForLoopWithoutFail(loginfieldsPage.Got_Coach);
        verifyFieldsDisplayedUsingText("Non-resident Indians");
        verifyFieldsDisplayedUsingText("Sign-in with your mobile number/email id and date of birth.");

    }


    @When("Click on skip CTA of individual coach mark on login page")
    public void click_on_skip_cta_of_individual_coach_mark_on_login_page() {
        loginfieldsPage.clickOnButtonUsingLocatorUsingForLoopWithoutFail(loginfieldsPage.Skip_Coach);

    }



    @When("Click on next CTA of individual coach mark on login page")
    public void click_on_next_cta_of_individual_coach_mark_on_login_page() {
        loginfieldsPage.clickOnButtonUsingLocatorUsingForLoopWithoutFail(loginfieldsPage.Next_Coach);

    }

    @When("Click on skip CTA of corporate and business coach mark on login page")
    public void click_on_skip_cta_of_corporate_and_business_coach_mark_on_login_page() {
        loginfieldsPage.clickOnButtonUsingLocatorUsingForLoopWithoutFail(loginfieldsPage.Skip_Coach);
    }



    @When("Click on next CTA of corporate and business coach mark on login page")
    public void click_on_next_cta_of_corporate_and_business_coach_mark_on_login_page() {
        loginfieldsPage.clickOnButtonUsingLocatorUsingForLoopWithoutFail(loginfieldsPage.Next_Coach);

    }
    @When("Click on skip CTA of NRI coach mark")
    public void click_on_skip_cta_of_nri_coach_mark() {
        loginfieldsPage.clickOnButtonUsingLocatorUsingForLoopWithoutFail(loginfieldsPage.Skip_Coach);
    }


    @Then("Coach Mark should be displayed with next and skip CTA for hamburger")
    public void coach_mark_should_be_displayed_with_next_and_skip_cta_for_hamburger() {

        loginfieldsPage.verifyButtonUsingLocatorUsingForLoopWithoutFail(loginfieldsPage.Skip_Coach);
        loginfieldsPage.verifyButtonUsingLocatorUsingForLoopWithoutFail(loginfieldsPage.Next_Coach);
        verifyFieldsDisplayedUsingText("Check out the menu");
        verifyFieldsDisplayedUsingText("Manage your mandate, download your documents, check your rewards and find answers to all your queries");
    }



    @Then("My profile coach mark with next and skip CTA should be displayed")
    public void my_profile_coach_mark_with_next_and_skip_cta_should_be_displayed() {
     verifyFieldsDisplayedUsingLocator(loginfieldsPage.prof_Coach);
        loginfieldsPage.verifyButtonUsingLocatorUsingForLoopWithoutFail(loginfieldsPage.Skip_Coach);
        loginfieldsPage.verifyButtonUsingLocatorUsingForLoopWithoutFail(loginfieldsPage.Next_Coach);
        verifyFieldsDisplayedUsingText("Manage your profile");
        verifyFieldsDisplayedUsingText("View your details and update your profile in just a few clicks");

    }


    @When("Click on next CTA of profile coach mark")
    public void click_on_next_cta_of_profile_coach_mark() {
        loginfieldsPage.clickOnButtonUsingLocatorUsingForLoopWithoutFail(loginfieldsPage.Next_Coach);

    }
    @Then("Coach Mark with next and skip CTA should be displayed for explore your products")
    public void coach_mark_with_next_and_skip_cta_should_be_displayed_for_explore_your_products() {
        loginfieldsPage.verifyButtonUsingLocatorUsingForLoopWithoutFail(loginfieldsPage.Skip_Coach);
        loginfieldsPage.verifyButtonUsingLocatorUsingForLoopWithoutFail(loginfieldsPage.Next_Coach);
        verifyFieldsDisplayedUsingText("Explore your products");
        verifyFieldsDisplayedUsingText("View all your relations, manage your ongoing loans and investments, and make payments.");
    }


    @When("Click on next CTA of explore your products coach mark")
    public void click_on_next_cta_of_explore_your_products_coach_mark() {
        loginfieldsPage.clickOnButtonUsingLocatorUsingForLoopWithoutFail(loginfieldsPage.Next_Coach);

    }
    @Then("Coach Mark with next and skip CTA under insta Emi card should be displayed")
    public void coach_mark_with_next_and_skip_cta_under_insta_emi_card_should_be_displayed() {
   verifyFieldsDisplayedUsingLocator(loginfieldsPage.instaEmi);
        loginfieldsPage.verifyButtonUsingLocatorUsingForLoopWithoutFail(loginfieldsPage.Skip_Coach);
        loginfieldsPage.verifyButtonUsingLocatorUsingForLoopWithoutFail(loginfieldsPage.Next_Coach);
        verifyFieldsDisplayedUsingText("Shop on EMIs");
        verifyFieldsDisplayedUsingText("Check your Insta EMI Card details, find our partner stores, and explore the latest offers");
    }



    @When("Click on next CTA of insta Emi card coach bar")
    public void click_on_next_cta_of_insta_emi_card_coach_bar() {
        loginfieldsPage.clickOnButtonUsingLocatorUsingForLoopWithoutFail(loginfieldsPage.Next_Coach);

    }
    @Then("Coach Mark under get Pre approved offers should be displayed with got it CTA")
    public void coach_mark_under_get_pre_approved_offers_should_be_displayed_with_got_it_cta() {
        loginfieldsPage.verifyButtonUsingLocatorUsingForLoopWithoutFail(loginfieldsPage.Got_Coach);
        verifyFieldsDisplayedUsingText("Get pre-approved offers");
        verifyFieldsDisplayedUsingText("Explore the latest personalised offers, created just for you");

    }

    @When("Click on skip CTA of hamburger coach mark")
    public void click_on_skip_cta_of_hamburger_coach_mark() {
        loginfieldsPage.clickOnButtonUsingLocatorUsingForLoopWithoutFail(loginfieldsPage.Skip_Coach);

    }


    @When("Click on skip CTA of explore you products coach mark")
    public void click_on_skip_cta_of_explore_you_products_coach_mark() {
        loginfieldsPage.clickOnButtonUsingLocatorUsingForLoopWithoutFail(loginfieldsPage.Skip_Coach);

    }


    @When("Click on skip CTA of insta Emi card coach mark")
    public void click_on_skip_cta_of_insta_emi_card_coach_mark() {
        loginfieldsPage.clickOnButtonUsingLocatorUsingForLoopWithoutFail(loginfieldsPage.Skip_Coach);

    }


    @When("Click on next CTA of explore you products coach mark")
    public void click_on_next_cta_of_explore_you_products_coach_mark() {
        loginfieldsPage.clickOnButtonUsingLocatorUsingForLoopWithoutFail(loginfieldsPage.Next_Coach);

    }
    @When("Click on next CTA of insta Emi card coach mark")
    public void click_on_next_cta_of_insta_emi_card_coach_mark() {
        loginfieldsPage.clickOnButtonUsingLocatorUsingForLoopWithoutFail(loginfieldsPage.Next_Coach);

    }
    @When("Click on got it CTA of get approved offers CTA")
    public void click_on_got_it_cta_of_get_approved_offers_cta() {
        loginfieldsPage.clickOnButtonUsingLocatorUsingForLoopWithoutFail(loginfieldsPage.Got_Coach);

    }

    @When("click on skip CTA login page hamburger coach mark")
    public void click_on_skip_cta_login_page_hamburger_coach_mark() {
        loginfieldsPage.clickOnButtonUsingLocatorUsingForLoopWithoutFail(loginfieldsPage.Skip_Coach);

    }
    @When("click on got it CTA of NRI coach mark")
    public void click_on_got_it_cta_of_nri_coach_mark() {
        loginfieldsPage.clickOnButtonUsingLocatorUsingForLoopWithoutFail(loginfieldsPage.Got_Coach);

    }
    @Then("coach mark should be displayed for homepage hamburger menu with next and skip CTA")
    public void coach_mark_should_be_displayed_for_homepage_hamburger_menu_with_next_and_skip_cta() {

        loginfieldsPage.verifyButtonUsingLocatorUsingForLoopWithoutFail(loginfieldsPage.Skip_Coach);
        loginfieldsPage.verifyButtonUsingLocatorUsingForLoopWithoutFail(loginfieldsPage.Next_Coach);
        verifyFieldsDisplayedUsingText("Check out the menu");
        verifyFieldsDisplayedUsingText("Manage your mandate, download your documents, check your rewards and find answers to all your queries");

    }

    @When("click on skip CTA of coach mark for hamburger")
    public void click_on_skip_cta_of_coach_mark_for_hamburger() {
        loginfieldsPage.clickOnButtonUsingLocatorUsingForLoopWithoutFail(loginfieldsPage.Skip_Coach);

    }

    @Then("coach mark should not be displayed")
    public void coach_mark_should_not_be_displayed() {
        loginfieldsPage.verifyFieldsNotDisplayedUsingLocator(loginfieldsPage.coach_Markhead);

    }


}
