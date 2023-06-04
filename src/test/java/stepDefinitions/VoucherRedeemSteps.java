package stepDefinitions;

import PageObjects.HomePage;
import PageObjects.LoginPage;
import PageObjects.MandateManagementPage;
import PageObjects.VoucherRedeemPage;
import TestData.TestDataVoucherRedeem;
import base.ApplicationKeywords;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.Select;

import java.util.List;

public class VoucherRedeemSteps extends ApplicationKeywords {

    LoginPage login;
    HomePage home;
    VoucherRedeemPage voucher;

    public VoucherRedeemSteps() {
        login = new LoginPage();
        home = new HomePage();
        voucher = new VoucherRedeemPage();
    }

    @Then("verify User is redirected to Redeem Voucher Page")
    public void verifyUserIsRedirectedToRedeemVoucherPage() {
        voucher.verifyVoucherPageRedirection();

    }


    @And("verify that customer is able to view given content on Voucher Service page")
    public void verifyThatCustomerIsAbleToViewGivenContentOnVoucherServicePage() {
        voucher.verifyVoucherPageContents();
    }

    @And("verify that customer is able to view given subtext under Vouchers section")
    public void verifyThatCustomerIsAbleToViewGivenSubtextUnderVouchersSection() {
        verifyFieldsDisplayedUsingText("Enter your details below to claim your rewards");

    }


    @And("verify that customer is able to view city drop down menu under Enter details section")
    public void verifyThatCustomerIsAbleToViewCityDropDownMenuUnderEnterDetailsSection() {
        verifyElementIsDisplayedOrNot(VoucherRedeemPage.city_Dropdown);
    }


    @And("verify that user is able to click on City drop down menu -{string}")
    public void verifyThatUserIsAbleToClickOnCityDropDownMenu(String string) {
        selectDropDownUsingText(VoucherRedeemPage.city_Dropdown,string);
        getSelectedOptionInDropDown(VoucherRedeemPage.city_Dropdown,string);

    }

    @And("verify that dropdown menus are present as per master record")
    public void verifyThatDropdownMenusArePresentAsPerMasterRecord() {
        verifyGetAllOptionsInDropDownAndCompare(VoucherRedeemPage.city_Dropdown, TestDataVoucherRedeem.city_Names);
    }

    @And("verify that customer is able to enter city name manually in city name drop down- Search Text-{string},Selected Text-{string}")
    public void verifyThatCustomerIsAbleToEnterCityNameManuallyInCityNameDropDownSearchTextSelectedText(String string, String string1) {
                    voucher.dropdownSearchOption(string,string1);
    }

    @And("verify that customer is able to view mobile number in number field with first {int} digits are masked")
    public void verifyThatCustomerIsAbleToViewMobileNumberInNumberFieldWithFirstDigitsAreMasked(int arg0) {
        voucher.verifyMobileMasked();
    }

    @And("verify that mobile number field is non editable")
    public void verifyThatMobileNumberFieldIsNonEditable() {
        verifyTextBoxIsDisabledUsingLocator(VoucherRedeemPage.txtBox_MobNo);
    }

    @And("verify that Email address field is editable")
    public void verifyThatEmailAddressFieldIsEditable() {
        verifyTextBoxIsDisabledUsingLocator(VoucherRedeemPage.txtBox_Email);
    }

    @And("verify that Update CTA is present  under EMAIL ID field when Email ID is not available")
    public void verifyThatUpdateCTAIsPresentUnderEMAILIDFieldWhenEmailIDIsNotAvailable() {
        verifyFieldsDisplayedUsingText("Please register your email id with us to view vouchers");
        verifyElementIsDisplayedOrNot(VoucherRedeemPage.btn_UpdateEmail);
    }

    @And("verify that when customer click on Update CTA then customer is able to redirect to my profile details page")
    public void verifyThatWhenCustomerClickOnUpdateCTAThenCustomerIsAbleToRedirectToMyProfileDetailsPage() {
        voucher.verifyUpdateMailRedirection();
    }

    @And("verify GET OTP CTA is Enabled when customer enters all mandatory parameter")
    public void verifyGETOTPCTAIsEnabledWhenCustomerEntersAllMandatoryParameter() {
        voucher.verifyConfirmButton();
    }


    @And("verify {string} CTA is disabled when customer left all mandatory parameter as blank")
    public void verifyGETOTPCTAIsDisabledWhenCustomerLeftAllMandatoryParameterAsBlank() {
        voucher.verifyConfirmButtonDisabled();
    }

    @And("verify on RHS Did you Know? Header")
    public void verifyOnRHSDidYouKnowHeader() {
            voucher.verifyDidYouKnow();
    }

    @And("verify Quick Benefits section is present with {int} tiles of static content as per AEM")
    public void verifyQuickBenefitsSectionIsPresentWithTilesOfStaticContentAsPerAEM(int arg0) {

            voucher.verifyQuickBenefits();
    }

    @And("verify that Need assistance section is present on RHS of Voucher Service page")
    public void verifyThatNeedAssistanceSectionIsPresentOnRHSOfVoucherServicePage() {
        verifyRhs("Need assistance?","Help & Support#Document Center","");
    }

    @And("verify customer is redirected to Raise A Request Page when click on Help & Support CTA")
    public void verifyCustomerIsRedirectedToRaiseARequestPageWhenClickOnHelpSupportCTA() {
        voucher.verifyHelpandSupport();
    }

    @And("verify that customer is redirected on Doc Centre page when customer click on Doc Centre CTA")
    public void verifyThatCustomerIsRedirectedOnDocCentrePageWhenCustomerClickOnDocCentreCTA() {
        voucher.verifyDocumentCenter();
    }
}

