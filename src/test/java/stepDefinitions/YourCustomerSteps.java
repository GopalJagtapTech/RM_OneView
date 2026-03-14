package stepDefinitions;

import PageObjects.DashboardPage;
import PageObjects.YourCustomerPage;
import TestData.GOR;
import base.ApplicationKeywords;
import io.cucumber.java.PendingException;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import org.openqa.selenium.WebElement;

import java.util.List;

public class YourCustomerSteps extends ApplicationKeywords {

    YourCustomerPage yourcustomer;

    public YourCustomerSteps() { yourcustomer = new YourCustomerPage();    }

    @And("Click on customer name in the table {string} row")
    public void clickOnCustomerNameInTheTableRow(String row) {
        String customerName = "Customer Name #xpath=(//table[contains(@class, 'emi-table')]//tbody//tr//td//a)[" + row + "]";
        clickOn(customerName);
    }

    @Then("{string} Tab should be pre-selected and active by default")
    public void tabShouldBePreSelectedAndActiveByDefault(String tab) {
        verifyLoanDetailsTabSelectedByDefault(tab);
    }


    @Then("{string} Tab option should be enable and clickable")
    public void tabOptionShouldBeEnableAndClickable(String tab) {
        verifyButtonIsEnabledInThePageusingText(tab);
    }

    @Then("Below text and fields should be displayed to the user {string}  {string}")
    public void belowTextAndFieldsShouldBeDisplayedToTheUser(String header, String tableHeaders) {
        verifyTextOptionsIsDisplayedUsingCommonXpath(GOR.LoanDetailsHeader, header);
        verifyDropDownDisplayedOrNot("Customer ID");
        verifyRadiobuttonIsDisplayedUsingText("Customer");
        verifyRadiobuttonIsDisplayedUsingText("Co-applicant");
        verifyTableHeaders(tableHeaders, 1);

        if(header.equalsIgnoreCase("Service Request")){
            verifyElementIsDisplayedOrNot(yourcustomer.raiseSR);
        }
    }

    @And("Select {string} Radio Button")
    public void selectRadioButton(String text) {
       clickOnRadioButtonUsingLabel(text,"");
    }

    @And("Click on SOA pdf option")
    public void clickOnSOAPdfOption() {
        String pdfBtn = "SOA PDF Options#xpath=//table[contains(@class,'emi-table')]//tr[1]//td[1]//a";
        clickIfOnlyDisplayed(pdfBtn);
    }

    @And("Verify the SOA option")
    public void verifyTheSOAOption() {
        String SOA = "SOA Options#xpath=" + GOR.SOAOptions;
        List<WebElement> allOptions = findWebElements(SOA);
        for(int i=0; i<allOptions.size(); i++){
            String optionText = allOptions.get(i).getText().trim();
            testStepInfo(optionText + " Option is Present");
        }
    }

    @And("Below options {string} should be displayed")
    public void belowOptionsShouldBeDisplayed(String Options) {
        verifyTextOptionsIsDisplayedUsingCommonXpath(GOR.SOAOptions, Options);
    }

    @Then("Below options should be enabled and clickable {string}")
    public void belowOptionsShouldBeEnabledAndClickable(String options) {
        String[] expectedHeaders = options.split("#|, ");
        for (String opt : expectedHeaders) {
            verifyButtonIsEnabledUsingText(opt);
        }
    }

    @And("Clicks on {string} CTA of Consent SOA Popup")
    public void clicksOnCTAOfConsentSOAPopup(String cta) {
        clickOnButtonUsingXpathAndText(GOR.SOAOptions, cta);
        waitTime(2);
    }

    @And("Verify the Customer information section")
    public void verifyTheCustomerInformationSection() {
       String cusInfo = "Customer Info on table #xpath=" + GOR.CustomerInfoOnTables;

       if(isElementPresent(cusInfo)){
           verifyElementIsDisplayedOrNot(cusInfo);
       } else {

       }
    }

    @Then("On click of Yes CTA User should receive {string} notification message {string}")
    public void onClickOfYesCTAUserShouldReceiveNotificationMessage(String status, String message) {
        clickOn(DashboardPage.yesSMSPop);
        handleToastByClass("toast-title", status, "");
        handleToastByClass("toast-message", message, "");
    }

    @And("Verify the {string} drop down")
    public void verifyTheDropDown(String dropDownName) {
        String dropdown = dropDownName + " DropDown #xpath=//p[normalize-space()='" + dropDownName + "']//parent::div//select";
        verifyElementIsDisplayedOrNot(dropdown);
    }


    @Then("{string} drop-down should be clickable for multiple customers")
    public void dropDownShouldBeClickableForMultipleCustomers(String dropDownName) {
        String dropdown = dropDownName + " DropDown #xpath=//p[normalize-space()='" + dropDownName + "']//parent::div//select//option";
        clickOn(dropdown);
    }

    @And("Selects {string} Option from {string} Dropdown")
    public void selectsOptionFromDropdown(String option, String dropDownName) {
        String dropdown = dropDownName + " DropDown #xpath=//p[normalize-space()='" + dropDownName + "']//parent::div//select";
        selectDropDownUsingText(dropdown, option);
    }

    @Then("Below options and checkbox should be enabled and clickable {string}")
    public void belowOptionsAndCheckboxShouldBeEnabledAndClickable(String text) {
        String[] options = text.split("#|, ");
        for(String opt : options){
            verifyButtonIsEnabledUsingText(opt);
        }
    }

    @Then("Corresponding details should be without reloading the entire page")
    public void correspondingDetailsShouldBeWithoutReloadingTheEntirePage() {
        yourcustomer.verifyPageReload();
    }


    @Then("List of {string} should be displayed in Customer ID drop down")
    public void listOfShouldBeDisplayedInCustomerIDDropDown(String dropDownName) {
        String dropdown = dropDownName + " DropDown #xpath=//p[normalize-space()='" + dropDownName + "']//parent::div//select";
        verifyDropdownIsDisplayedAndPrintOptions(dropdown, "");
    }
}
