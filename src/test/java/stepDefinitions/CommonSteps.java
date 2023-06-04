package stepDefinitions;

import PageObjects.*;
import TestData.GOR;
import base.ApplicationKeywords;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

import java.util.List;

public class CommonSteps extends ApplicationKeywords {

    LoginPage login;
    HomePage home;
    RARPage rar;
    MyProfilePage MyProfile;
    FDServicesPage fdServices;

    public CommonSteps() {
        login = new LoginPage();
        home = new HomePage();
        rar = new RARPage();
        MyProfile = new MyProfilePage();
        fdServices = new FDServicesPage();
    }

    @And("clicks on {string}")
    public void clicksOn(String locator) {
        String locator1 = getLocator(locator);
        clickOnIfDisplayed(locator1);
    }


    @Then("verify User is redirected to {string}")
    public void verifyUserIsRedirectedTo(String locatorHeader) {
        String locator = getLocator(locatorHeader);
        verifyPageRedirectionUsingLocator(locator, "");
    }


    @Then("Customer should be able to view below options with Horizantal Scroll: {string}")
    public void customerShouldBeAbleToViewBelowOptionsWithHorizantalScroll(String options) {

    }

    @Then("Customer is able to view {string} in RHS")
    public void customer_is_able_to_view_in_rhs(String locator1, io.cucumber.datatable.DataTable dataTable) {
        String locator = getLocator(locator1);
        verifyElementIsDisplayedUsingLocator(locator);
        List<String> list = dataTable.asList();
        for (int i = 0; i < list.size(); i++) {
            String text = list.get(i);
            String step = text + " Text#xpath=//" + getCommonPathOfLocator(locator).split("//")[1] + "//*[normalize-space(text())='" + text.trim() + "']";
            verifyElementIsDisplayedUsingLocator(step);
        }
    }

    @Then("{string} is By Default Selected")
    public void isByDefaultSelected(String locator1) {
        String locator = getLocator(locator1);
        rar.verifyDefaultSelected(locator, "");
    }


    @When("verify Page Redirection to {string} Url")
    public void verify_page_redirection_to_url(String url) {
        verifyRedirectioninNewTab(url, "");
    }

    @When("verify Page Redirection to {string} Url with SSO")
    public void verify_page_redirection_to_url_with_sso(String url) {
        verifyRedirectionURLIfContains(url);
    }


    @And("{string} is Present on the Right Side of the {string}")
    public void isPresentOnTheRightSideOfThe(String locator1, String anotherLocator1) {
        String locator = getLocator(locator1);
        String anotherLocator = getLocator(anotherLocator1);
        verifyLocatorPresentInRightSideOfAnotherLocator(locator, anotherLocator, 0);
    }

    @And("{string} is Present on the Left Side of the {string}")
    public void isPresentOnTheLeftSideOfThe(String locator1, String anotherLocator1) {
        String locator = getLocator(locator1);
        String anotherLocator = getLocator(anotherLocator1);
        verifyLocatorPresentInLeftSideOfAnotherLocator(locator, anotherLocator, 0);
    }


    @And("{string} is Present Below the {string}")
    public void isPresentBelowThe(String locator1, String anotherLocator1) {
        String locator = getLocator(locator1);
        String anotherLocator = getLocator(anotherLocator1);
        verifyLocatorPresentInBelowOfAnotherLocator(locator, anotherLocator);
    }

    @And("{string} is Present Above the {string}")
    public void isPresentAboveThe(String locator1, String anotherLocator1) {
        String locator = getLocator(locator1);
        String anotherLocator = getLocator(anotherLocator1);
        verifyLocatorPresentInAboveOfAnotherLocator(locator, anotherLocator);
    }


    @And("verify {string} {string} is Displayed")
    public void verifyIsDisplayed(String text, String type) {
        verifyFieldsDisplayedUsingTextUsingForLoop(text, type, "");
    }



    @When("Enter {string} in {string}")
    public void enter_in(String string, String string2) {
        String locator = getLocator(string2);
        if (string.toLowerCase().contains("minor dob")) {
            string = generatePast18Years1Day(18, "ddMMyyyy");
            waitTime(2);
        } else if (string.toLowerCase().contains("major dob")) {
            string = generatePastYears(18, "ddMMyyyy");
            waitTime(2);
        }
        Boolean flag = scrollToWebElementIfPresent(locator);
        if (flag) {
            clearEditBox(locator);
            typeInIfDisplayed(locator, string);
        }

    }

    @When("Clicks on {string}")
    public void clicks_on(String string) {
        String locator = getLocator(string);
        clickOnIfDisplayed(locator);
    }


    @And("Select {string} Option in {string}")
    public void selectOptionIn(String optionText, String dropdownLocator) {
        String locator = getLocator(dropdownLocator);
        selectDropDownUsingText(locator, optionText);
    }

    @When("Verify {string} for following values: {string} in {string}")
    public void verify_for_following_values_in(String errMsgLoc, String values, String string3) {
        String locator = getLocator(string3);
        String errLocator = getLocator(errMsgLoc);
        String values1 = changedCommaToHash(values, "");
        verifyErrorMessageForMultipleValuesUsingLocator(locator, values1, errLocator);
    }

    @And("Verify Not Showing {string} for following values: {string} in {string}")
    public void verifyNotShowingForFollowingValuesIn(String errMsg, String values, String string3) {
        String locator = getLocator(string3);
        String locatorErrMsg = getLocator(errMsg);
        String values1 = "";
        if (values.equalsIgnoreCase("Valid Dates for Minor")) {
            String today = generateTodayDate("ddMMyyyy");
            String past18Years = generatePastYears(18, "ddMMyyyy");
            values1 = today + "#" + past18Years + "#" + generatePast18Years1Day(18, "ddMMyyyy") + "#"+generatePastDate(1,"ddMMyyyy");
        } else if (values.equalsIgnoreCase("Valid Dates for Major")) {
            values1 = generatePastYears(18, "ddMMyyyy");
        } else {
            values1 = changedCommaToHash(values, "");
        }
        verifyErrorMessageNotDisplayedForMultipleValuesUsingLocator(locator, values1, locatorErrMsg);
    }


    @When("Verify {string} is Not Enabled for following values: {string} in {string}")
    public void verify_is_not_enabled_for_following_values_in(String string, String string2, String string3) {
        String locator = getLocator(string3);
        String values = changedCommaToHash(string2, "");
        verifyButtonIsNotEnabledForMultipleValuesInTextBoxUsingLocator(locator, values, string);
    }

    @When("verify {string} is Not Accepted for following values: {string}")
    public void verify_is_not_accepted_for_following_values(String string, String string2) {
        String locator = getLocator(string);
        String values = changedCommaToHash(string2, "");
        verifyTextBoxIsNotAcceptedUsingMultipleValuesUsingLocator(locator, values);
    }


    @And("Verify following options in {string}: {string}")
    public void verifyFollowingOptionsIn(String arg0, String options) {
        String locator = getLocator(arg0);
        String options1 = changedCommaToHash(options, "");
        verifyGetAllOptionsInDropDownAndCompare(locator, options1);
    }

    @And("verify {string} is Not Displayed")
    public void verifyIsNotDisplayed(String string) {
        String locator = getLocator(string);
        if (isElementPresent(locator)) {
            if (isElementPresent(locator)) {
                scrollToWebElement(locator);
            }
            if (!isElementDisplayed(locator)) {
                manualScreenshot(getRefOfXpath(locator) + " is Not Displayed successfully");
            } else {
                testStepFailed(getRefOfXpath(locator) + " is Displayed wrongly");
            }
        } else {
            manualScreenshot(getRefOfXpath(locator) + " is not present successfully");
        }
    }

    @And("verify {string} is Accepted following values: {string}")
    public void verifyIsAcceptedFollowingValues(String loc, String val) {
        String locator = getLocator(loc);
        String values = changedCommaToHash(val, "");
        verifyTextBoxIsAcceptedUsingMultipleValuesUsingLocator(locator, values);
    }


    @And("verify {string} error message for {string} Negative Values")
    public void verifyErrorMessageForNegativeValues(String errMsgLoc, String textBoxLoc) {

        String locatorTextBox = getLocator(textBoxLoc);
        String errLocator = getLocator(errMsgLoc);

        String today = generateTodayDate("ddMMyyyy");
        String lessThan1Year = generatePastYears(1, "ddMMyyyy");
        String dayFuture1 = generateFutureDate(1, "ddMMyyyy");
        String lessThan1Year1Day = generatePast18Years1Day(1, "ddMMyyyy");
//        String pastOneYear = generatePastYears(1, "ddMMyyyy");
        String lessThan18Years = generatePast18Years1Day(18, "ddMMyyyy");
        String daysNegative = "";

        if (textBoxLoc.equalsIgnoreCase("FD Nominee Date of Birth Text Box")) {
            daysNegative = dayFuture1 + "," + "32122001" + "," + "31112001" + "," + "31132001" + "," + "30112100" + "," + "29022021" + "," + "00000000";
//            daysNegative = dayFuture1 + "," + "32122001" + "," + "31112001" + "," + "31132001" + "," + "30112100" + "," + "29022021" + "," + today + "," + lessThan1Year1Day + "," + "00000000";
            verifyErrorMessageUsingLocatorAndClick(locatorTextBox, getLocator("FD Nominee Date of Birth Label"), daysNegative, errLocator, "");
        } else if (textBoxLoc.equalsIgnoreCase("FD Guardian Date of Birth Text Box")) {
            if (errMsgLoc.toLowerCase().contains("minimum 18 years")) {
                daysNegative = lessThan1Year + "," + lessThan18Years + "";
                verifyErrorMessageUsingLocatorAndClick(locatorTextBox, getLocator("FD Guardian Date of Birth Label"), daysNegative, errLocator, "");
            } else if (errMsgLoc.toLowerCase().contains("enter valid date")) {
                daysNegative = dayFuture1 + "," + "32122001" + "," + "31112001" + "," + "31132001" + "," + "30112100" + "," + "29022021" + "," + today + "," + lessThan1Year1Day + "," + "00000000";
                verifyErrorMessageUsingLocatorAndClick(locatorTextBox, getLocator("FD Guardian Date of Birth Label"), daysNegative, errLocator, "");
            } else {
                verifyErrorMessageUsingLocator(errLocator);
            }
        } else if (textBoxLoc.equalsIgnoreCase("SDP Nominee Date of Birth Text Box")) {
            daysNegative = dayFuture1 + "," + "32122001" + "," + "31112001" + "," + "31132001" + "," + "30112100" + "," + "29022021" + "," + "00000000";
            verifyErrorMessageUsingLocatorAndClick(locatorTextBox, getLocator("SDP Nominee Date of Birth Label"), daysNegative, errLocator, "");
        } else if (textBoxLoc.equalsIgnoreCase("SDP Guardian Date of Birth Text Box")) {
            if (errMsgLoc.toLowerCase().contains("minimum 18 years")) {
                daysNegative = lessThan1Year + "," + lessThan18Years + "";
                verifyErrorMessageUsingLocatorAndClick(locatorTextBox, getLocator("SDP Guardian Date of Birth Label"), daysNegative, errLocator, "");
            } else if (errMsgLoc.toLowerCase().contains("enter valid date")) {
                daysNegative = dayFuture1 + "," + "32122001" + "," + "31112001" + "," + "31132001" + "," + "30112100" + "," + "29022021" + "," + today + "," + lessThan1Year1Day + "," + "00000000";
                verifyErrorMessageUsingLocatorAndClick(locatorTextBox, getLocator("SDP Guardian Date of Birth Label"), daysNegative, errLocator, "");
            } else {
                verifyErrorMessageUsingLocator(errLocator);
            }
        } else {
            verifyErrorMessageUsingLocatorAndClick(locatorTextBox, "", "00000000", errLocator, "");
        }
    }


    @And("Verify {string} is Non Editable")
    public void verifyIsNonEditable(String arg0) {
        String locator = getLocator(arg0);
        verifyTextBoxIsDisabledUsingLocator(locator);
    }

    @And("Verify {string} is Displayed")
    public void verifyIsDisplayed(String arg0) {
        String locator = getLocator(arg0);
        verifyFieldsDisplayedUsingLocatorWithScroll(locator);
    }

    @And("Click on inside the page")
    public void clickOnInsideThePage() {
        clickOnTab();
    }

    @Then("{string} is Disabled")
    public void isDisabled(String loc) {
        String locator = getLocator(loc);
        verifyButtonIsDisabledUsingLocator(locator);

    }

    @And("{string} is Enabled")
    public void isEnabled(String loc) {
        String locator = getLocator(loc);
        verifyButtonIsEnabledUsingLocator(locator);
    }

    @And("{string} Bottom Line Color Changed into {string} After Enter {string} Value")
    public void bottomLineColorChangedIntoAfterEnterValue(String loc, String color, String msg) {
        String locator = getLocator(loc);
        if (msg.equalsIgnoreCase("valid")) {
            verifyLocatorColorUsingCssValue(locator, "#00b500", color, "border-bottom-color");
        } else {
            verifyLocatorColorUsingCssValue(locator,"#b40000",color,"border-bottom-color");
        }
    }

    @And("Wait {int} seconds for {string}")
    public void waitSecondsFor(int sec, String loc) {
        String locator = getLocator(loc);
        waitForElementUntilVisible(locator,sec);
    }

    @And("Wait {int} seconds")
    public void waitSeconds(int sec) {
        waitTime(sec);
    }

    @And("Verify Customer Redirected to {string} Url")
    public void verifyCustomerRedirectedToUrl(String url) {
        verifyRedirectionWithCommonUrlContains(url);
    }

    @And("{string} is Non Editable")
    public void isNonEditable(String loc) {
        String locator = getLocator(loc);
        verifyTextBoxIsDisabledUsingLocator(locator);
    }

    @And("Verify {string} is Editable")
    public void verifyIsEditable(String loc) {
        String locator = getLocator(loc);
        verifyTextBoxIsEditabledUsingLocator(locator);
    }

    @And("Click on {string} Option Under {string} Section")
    public void clickOnOptionUnderSection(String optionName, String scetionName) {
        fdServices.clickOnRhsOptions(scetionName,optionName,"");
    }


    @And("wait {int} for {string}")
    public void waitFor(int sec, String loc) {
        String locator = getLocator(loc);
        waitForElementUntilVisible(locator,sec);
    }

    @And("Go Back to Previous Page")
    public void goBackToPreviousPage() {
        navigateToBack();
    }




    @And("Click on {string} Radio Button")
    public void clickOnRadioButton(String labelName) {
        clickOnRadioButtonUsingLabel(labelName,"");
    }

    @Then("verify {string} Error Message")
    public void verifyErrorMessage(String arg0) {
        String locatorErrMsg = getLocator(arg0);
        verifyErrorMessageUsingLocator(locatorErrMsg);
    }

    @And("Get the value of {string}")
    public void getTheValueOf(String arg0) {
        String locator = getLocator(arg0);
        GOR.staticTemporaryValue = getTextPresent(locator).trim();
    }


    @And("Enter the {string} Value in {string}")
    public void enterTheValueIn(String valueNameForReference, String loc) {
        String locator = getLocator(loc);
        Boolean flag = scrollToWebElementIfPresent(locator);
        if (flag) {
            clearEditBox(locator);
            typeInIfDisplayed(locator, GOR.staticTemporaryValue);
        }
    }

    @And("verify {string} {string} is Not Displayed")
    public void verifyIsNotDisplayed(String text, String type) {
        verifyFieldsNotDisplayedUsingTextUsingForLoopWithoutScroll(text, type, "");
    }

    @And("Refresh the Page")
    public void refreshThePage() {
        driver.navigate().refresh();
        waitForPageToLoad();
    }

    @And("Click the {string}")
    public void clickThe(String arg0) {
        String locator1 = getLocator(arg0);
        clickOnIfPresent(locator1);
    }

    @And("verify {string} is Displayed or Not")
    public void verifyIsDisplayedOrNot(String xpathText) {
        String locator1 = getLocator(xpathText);
        Boolean flag = verifyFieldsDisplayedUsingLocatorWithScroll(locator1);
        if (!flag) {
            skipSteps(xpathText+" is Not Showing");
        }

    }

    @And("verify Redirection for {string}: {string}")
    public void verifyRedirectionFor(String redirectType, String url) {
        verifyRedirectionForCommon(url,redirectType,"");
    }

    @And("verify {string} is Not Present")
    public void verifyIsNotPresent(String locatorText) {
        String locator = getLocator(locatorText);
        verifyElementIsNotPresentUsingLocator(locator);

    }

    @And("Clear the value in {string}")
    public void clearTheValueIn(String arg0) {
        String locator = getLocator(arg0);
        clearEditBox(locator);
    }

    @And("Upload {string} File in {string}")
    public void uploadFileIn(String fileName, String arg1) {
        String locator = getLocator(arg1);
        type(locator,System.getProperty("user.dir")+"\\"+fileName);
    }

    @And("Type {string} in {string} Text Box")
    public void typeInTextBox(String value, String loc) {
        enterValueUsingLabel(loc,value,"");

    }

    @And("Clear the value in {string} Text Box")
    public void clearTheValueInTextBox(String arg0) {
        clearValueUsingLabel(arg0,"");
    }

@And("verify the RadioButton {string} is by Default Selected")
    public void verifyTheRadioButtonIsByDefaultSelected(String loc) {
        String locator = getLocator(loc);
        Boolean flag = scrollToWebElementIfPresent(locator);
        if (flag) {
            verifyRadioButtonIsSelectedUsingLocator(locator,"");
        }

    }

    @Then("verify the Radio Button {string} is Unselected")
    public void verifyTheRadioButtonIsUnselected(String loc) {
        String locator = getLocator(loc);
        Boolean flag = scrollToWebElementIfPresent(locator);
        if (flag) {
            verifyRadioButtonIsUnSelectedUsingLocator(locator,"");
        }

    }

    @And("verify the Radio Button {string} is Selected")
    public void verifyTheRadioButtonIsSelected(String loc) {
        String locator = getLocator(loc);
        Boolean flag = scrollToWebElementIfPresent(locator);
        if (flag) {
            verifyRadioButtonIsSelectedUsingLocator(locator,"");
        }

    }


    @And("Clicks on If Displayed {string}")
    public void clicksOnIfDisplayed(String arg0) {
        String locator = getLocator(arg0);
        clickIfOnlyDisplayed(locator);
    }
}
