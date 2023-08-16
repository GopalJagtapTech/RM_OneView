package stepDefinitions;

import PageObjects.FDServicesPage;
import PageObjects.HomePage;
import PageObjects.LoginPage;
import PageObjects.MyProfilePage;
import TestData.TestDataMyProfile;
import base.ApplicationKeywords;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.assertj.core.api.SoftAssertions;
import org.openqa.selenium.Alert;

public class MyProfileSteps extends ApplicationKeywords {

    LoginPage login;
    HomePage home;
    MyProfilePage MyProfile;
    FDServicesPage fdservices;

    public MyProfileSteps() {
        login = new LoginPage();
        home = new HomePage();
        MyProfile = new MyProfilePage();
        fdservices = new FDServicesPage();
    }

    @Then("Customer should be redirected to Home page where Profile icon should be visible")
    public void customer_should_be_redirected_to_home_page_where_profile_icon_should_be_visible() {
        verifyElementIsDisplayedUsingLocator(HomePage.icon_Profile);
    }

    @Then("Profile icon should be be enable and clickable")
    public void profile_icon_should_be_be_enable_and_clickable() {
        clickOnIfDisplayed(HomePage.icon_Profile);
    }

    @Given("Clicks on profile icon")
    public void clicks_on_profile_icon() {
//        clickOnIfDisplayed(HomePage.icon_Profile);
//        clickOnIfDisplayed(HomePage.link_ViewProfile);
//        waitTime(5);
//        clickOnButtonUsingLocatorUsingForLoop(HomePage.link_ViewProfile);//delete
        clickOn(HomePage.icon_Profile);
        waitTime(3);
        clickOnIfDisplayed(HomePage.link_ViewProfile);
        waitForPageToLoad();
    }

    @Then("Customer should be redirected to My profile page")
    public void customer_should_be_redirected_to_my_profile_page() {
        verifyFieldsDisplayedUsingLocator(MyProfilePage.name_Customer);
    }

    @Given("Customer is on My Profile Page")
    public void customer_is_on_my_profile_page() {
//        verifyFieldsDisplayedUsingLocator(MyProfilePage.txtBox_Upload);//delete
        Boolean flag = verifyFieldsDisplayedUsingLocator(MyProfilePage.name_Customer);
        if (!flag) {
            if (!driver.getCurrentUrl().contains("https://experia-uat.bajajfinserv.in/Myprofile/Service/UpdateDetails/UserProfileDetails")) {
                ApplicationKeywords.quitBrowser = true;
                SoftAssertions sa = new SoftAssertions();
                sa.fail("My Profile Page Redirection is Un Successful");
                sa.assertAll();
            }
        }
    }

    @Then("Customer should be able to view below content on My profile page")
    public void customer_should_be_able_to_view_below_content_on_my_profile_page() {
//        verifyFieldsDisplayedUsingLocator(MyProfilePage.name_Customer);
        //    verifyMultipleElementIsDisplayedUsingTexts("Permanent Account Number,Date of Birth,Customer ID,CKYC Number,Primary Mobile Number,Primary Email Address,Primary Address,Your CIBIL Score");
        MyProfile.verifyLabelInMyProfile("PAN");
        MyProfile.verifyLabelInMyProfile("Date of Birth");
        MyProfile.verifyLabelInMyProfile("Customer ID");
        MyProfile.verifyLabelInMyProfile("KIN/CKYCR Number");
//        verifyFieldDisplayedUsingTagAndText("h1", "Contact Details", "");
        MyProfile.verifyLabelInMyProfile("Mobile Number");
        MyProfile.verifyLabelInMyProfile("Email ID");
//        MyProfile.verifyLabelInMyProfile("GSTIN");
        verifyFieldDisplayedUsingTagAndText("h1", "Saved Address", "");
        MyProfile.verifyLabelInMyProfile("Current Address");
        verifyFieldsDisplayedUsingText("Check your CIBIL Score");
    }


    @Then("Customer name should be non editable")
    public void customer_name_should_be_non_editable() {
        MyProfile.verifyProfileNameIsNonEditable();
    }

    @Then("Customer should be able to view first letter of the name on profile picture place")
    public void customer_should_be_able_to_view_first_letter_of_the_name_on_profile_picture_place() {
//        verifyFieldsDisplayedUsingLocator(MyProfilePage.firstLetter_Customer);
        MyProfile.verifyName();
    }

    @Then("First two and last five positions of PAN should be masked")
    public void first_two_and_last_five_positions_of_pan_should_be_masked() {
        String panValue = MyProfile.verifyValueInMyProfile("PAN");
        testStepPassed(panValue);
        MyProfile.verifyMaskedFormatForInitial(panValue, "PAN", 1, 2);
        MyProfile.verifyMaskedFormatForEnd(panValue, "PAN", 5);
        MyProfile.verifyUnMaskedFormat(panValue, "PAN", 2, 5, 1);
    }

    @Then("Customer should be able to view PAN icon on my profile page for PAN field")
    public void customer_should_be_able_to_view_pan_icon_on_my_profile_page_for_pan_field() {
        MyProfile.verifyIconInMyProfile("PAN");
    }

    @When("Customer does has PAN available")
    public void customer_does_has_pan_available() {

    }

    @Then("Customer should be able to view edit PAN button")
    public void customer_should_be_able_to_view_edit_pan_button() {
        verifyElementIsDisplayedUsingLocator(MyProfilePage.button_EditPan);
//    MyProfile.verifyLocatorIsDisplayedOrNot(MyProfilePage.button_EditPan);
    }

    @Given("Clicks edit,update PAN button")
    public void clicks_edit_update_pan_button() {
        clickOn(MyProfilePage.button_EditPan);
//        MyProfile.clickOnEditButtonInMyProfilePage();
    }

    @Then("Customer should get below popup-")
    public void customer_should_get_below_popup() {
        if (!isElementDisplayed(MyProfilePage.button_PopUpProceed)) {
            skipSteps("All the Further Steps skipped due to Popup- Already request Raised");
        } else {
            verifyFieldsDisplayedUsingTextAndForLoop("Important", "");
            verifyFieldsDisplayedUsingTextAndForLoop("By clicking on ‘PROCEED’, you will be able to update your PAN in our records. This change will not reflect for insurance products, co-branded credit cards and mutual funds.", "");
            verifyElementIsDisplayedUsingLocator(MyProfilePage.button_PopUpCancel);
            verifyElementIsDisplayedUsingLocator(MyProfilePage.button_PopUpProceed);
        }
    }

    @Then("Contents should be properly aligned in the Popup")
    public void contents_should_be_properly_aligned_in_the_popup() {
        MyProfile.verfiyFontInProfilePage("//div[@class='ctas_div']/a", "Proceed,Cancel");
    }

    @When("Customer is on confirmation popup of  My Profile Page")
    public void customer_is_on_confirmation_popup_of_my_profile_page() {
        clickOn(MyProfilePage.button_EditPan);
    }

    @When("Clicks Confirm button")
    public void clicks_confirm_button() {
        clickOn(MyProfilePage.button_PopUpProceed);
    }

    @Then("Customer should be redirected to Verification method page")
    public void customer_should_be_redirected_to_verification_method_page() {
//        verifyRedirectionURLIfContains("https://experia-uat.bajajfinserv.in/Myprofile/Customer/UpdateDetails/UserProfileDetails");
        verifyFieldsDisplayedUsingLocatorWithComment(MyProfilePage.field_VerifyyourDetails, "Redirected to Validation Page");
    }

    @When("Customer is on Verification method page")
    public void customer_is_on_verification_method_page() {
//        verifyFieldsDisplayedUsingLocator(MyProfilePage.field_ValidationMethodPage);
        verifyFieldsDisplayedUsingLocator(MyProfilePage.field_VerifyyourDetails);
    }

    @Then("Customer should be  able to view below content on Verification method page")
    public void customer_should_be_able_to_view_below_content_on_verification_method_page() {

//        MyProfile.verifyFieldsDisplayedUsingText("Date of Birth");
        MyProfile.verifyFieldsDisplayedUsingText("PAN");
        MyProfile.verifyFieldsDisplayedUsingText("Insta EMI Card");
        MyProfile.verifyFieldsDisplayedUsingText("Bank Account");
        verifyFieldsDisplayedUsingLocator(MyProfilePage.inputTextField_ValidationMethodPage);
        verifyFieldsDisplayedUsingLocator(MyProfilePage.confirmButton_ValidationPage);
    }

    @Then("Contents should be properly aligned in Verification method page for PanIndividual")
    public void contents_should_be_properly_aligned_in_verification_method_page_for_pan_individual() {
        MyProfile.verfiyFontInProfilePage("//ul[@class='tab_design_cta Validate_UserProfile']/li/a", "Date of Birth,Insta EMI Card,Bank Account");
    }

    @Then("On the basis of button selection {string}, the button selected should be enabled and clickable & the color of button should be changed to blue color")
    public void on_the_basis_of_button_selection_the_button_selected_should_be_enabled_and_clickable_the_color_of_button_should_be_changed_to_blue_color(String string) {
        MyProfile.verifyProfileValidationOptions(string);
    }

    @Then("Customer enters valid details {string} for {string} Text Box and Clicking {string} button, Customer should be redirected to Update PAN Page for NSDL verification")
    public void customer_enters_valid_details_for_text_box_and_clicking_button_customer_should_be_redirected_to_update_pan_page_for_nsdl_verification(String string, String string2, String string3) {

        MyProfile.verifyTextBoxWithValidData(string2, string, string3);

    }

    @Then("Customer should find the below content on Update PAN Details Page")
    public void customer_should_find_the_below_content_on_update_pan_details_page() {
        verifyFieldsDisplayedUsingText("The PAN details entered should be linked to your UPI");
        verifyFieldsDisplayedUsingText("Please provide your PAN");
        verifyFieldsDisplayedUsingText("Verify");
        MyProfile.verifyButtonIsDisabled("Verify");
    }

    @Then("Verify Invalid Pan is not accepted")
    public void verify_invalid_pan_is_not_accepted() {
//        MyProfile.validateTextBox("Please provide your PAN", TestDataMyProfile.panNegativeValues, TestDataMyProfile.panLessThan, TestDataMyProfile.panMoreThan, 10, TestDataMyProfile.panErrorValue, TestDataMyProfile.panErrorMsg);
        MyProfile.validateTextBox("Enter your updated PAN", TestDataMyProfile.panNegativeValues, TestDataMyProfile.panLessThan, TestDataMyProfile.panMoreThan, 10, TestDataMyProfile.panErrorValue, TestDataMyProfile.panErrorMsgVerifyPage);
    }

    @Then("On entering valid {string} for input {string} and Clicking {string} button, Customer should get a Success message")
    public void on_entering_valid_for_input_and_clicking_button_customer_should_get_a_success_message(String string, String string2, String string3) {
        MyProfile.verifyTextBoxWithValidData(string2, string, string3);
        waitTime(5);
        waitForPageToLoad();
//        MyProfile.waitForThreeDotsDisAppear();
        verifyElementIsDisplayedUsingLocator(MyProfilePage.txt_ThankYou);
//        verifyElementIsDisplayedUsingLocator(MyProfilePage.txt_ReqInProgress);

    }

////NSDL Unsuccessfull

    @Then("On entering valid {string} for input {string} and Clicking {string} button, Select Verification Mode should be displayed")
    public void on_entering_valid_for_input_and_clicking_button_select_verification_mode_should_be_displayed(String string, String string2, String string3) {
        MyProfile.verifyTextBoxWithValidData(string2, string, string3);
//        verifyFieldsDisplayedUsingText("Select Verification Mode");
        verifyFieldsDisplayedUsingText("Update your PAN details");
    }

    @Then("On clicking Visit Branch & show nearby branches, Customer should be redirected to store locator page {string}")
    public void on_clicking_visit_branch_show_nearby_branches_customer_should_be_redirected_to_store_locator_page(String string) {

        MyProfile.verifyUpdatePanOptions("Visit a branch");
//        String button = MyProfile.verifyButtonIsEnabled("SHOW NEARBY BRANCHES");
        String button = MyProfile.verifyButtonIsEnabled("SHOW NEARBY BRANCHES");
        clickOn(button);
        transferControlToWindow(2, false);
        verifyRedirectionURLIfContains(string);
        transferControlToWindow(1, true);
    }

    @Then("On Clicking Self Attested Pan Card Button, User should find fields- Upload Pan Card, Upload arrow & Submit Button")
    public void on_clicking_self_attested_pan_card_button_user_should_find_fields_upload_pan_card_upload_arrow_submit_button() {
        MyProfile.verifyUpdatePanOptions("Self-Attested PAN Card");
        verifyElementIsDisplayedUsingLocator(MyProfilePage.icon_Upload);
//        MyProfile.verifyProfileTextBoxLabel("Upload PAN card");
        MyProfile.verifyProfileTextBoxLabel("Please upload a self-attested photocopy of your PAN");
        String button = MyProfile.verifyButtonIsEnabled("SUBMIT");
        clickOn(button);
        verifyErrorMessageUsingText("Please upload image of PAN");

    }

    @Then("On uploading Invalid files, Customer should get- Invalid file message")
    public void on_uploading_invalid_files_customer_should_get_invalid_file_message() {
        typeInIfPresent(MyProfilePage.txtBox_Upload, "" + getCurrentPath() + "/UploadDocuments/MyProfileInvalid/ReImaginePdfReport.pdf");
        verifyErrorMessageUsingText("Invalid file format or file size is larger than 2mb. Please upload in .png, .pdf or .jpg format");
        typeInIfPresent(MyProfilePage.txtBox_Upload, "" + getCurrentPath() + "/UploadDocuments/MyProfileInvalid/ReImagineSparkReport.html");
        verifyErrorMessageUsingText("Invalid file format or file size is larger than 2mb. Please upload in .png, .pdf or .jpg format");

    }

    @Then("On Uploading valid files, Customer should get a bin , tick mark and a message")
    public void on_uploading_valid_files_customer_should_get_a_bin_tick_mark_and_a_message() {
        typeInIfPresent(MyProfilePage.txtBox_Upload, "" + getCurrentPath() + "/UploadDocuments/MyProfileValid/Capture.JPG");
        verifyFieldsDisplayedUsingLocator(MyProfilePage.icon_Bin);
        verifyFieldsDisplayedUsingLocator(MyProfilePage.icon_SuccessIcon);
        clickOn(MyProfilePage.icon_Bin);
//        MyProfile.verifyProfileTextBoxLabel("Upload PAN card");
        typeInIfPresent(MyProfilePage.txtBox_Upload, "" + getCurrentPath() + "/UploadDocuments/MyProfileValid/embedded28.png");
        clickOn(MyProfilePage.icon_Bin);
//        MyProfile.verifyProfileTextBoxLabel("Upload PAN card");
        typeInIfPresent(MyProfilePage.txtBox_Upload, "" + getCurrentPath() + "/UploadDocuments/MyProfileValid/svgfile.svg");
        clickOn(MyProfilePage.icon_Bin);
//        MyProfile.verifyProfileTextBoxLabel("Upload PAN card");

    }

    @Then("On Clicking Submit button after uploading a valid file, Customer should get a message")
    public void on_clicking_submit_button_after_uploading_a_valid_file_customer_should_get_a_message() {
        typeInIfPresent(MyProfilePage.txtBox_Upload, "" + getCurrentPath() + "/UploadDocuments/MyProfileValid/Pdfim.pdf");
        String button = MyProfile.verifyButtonIsEnabled("SUBMIT");
        clickOn(button);
        waitTime(20);
        waitForPageToLoad();
//        MyProfile.waitForThreeDotsDisAppear();
        verifyElementIsDisplayedUsingLocator(MyProfilePage.txt_ThankYou);
        getText(MyProfilePage.txt_ThankYou);
//        verifyElementIsDisplayedUsingLocator(MyProfilePage.txt_ReqInProgress);

    }


    @Then("Below buttons should be enable and clickable  and basis of the button selection color of button should be changed to blue color")
    public void below_buttons_should_be_enable_and_clickable_and_basis_of_the_button_selection_color_of_button_should_be_changed_to_blue_color() {

        MyProfile.verifyProfileValidationOptions("Insta EMI Card");


        MyProfile.verifyProfileValidationOptions("Bank Account");


        MyProfile.verifyProfileValidationOptions("Date of Birth");

    }

    @Then("Verify the EMI with different Negative values")
    public void verify_the_emi_with_different_negative_values() {
        MyProfile.validateTextBox("EMI Card Number", TestDataMyProfile.emiCardNegativeValues, TestDataMyProfile.emiCardLessThan, TestDataMyProfile.emiCardMoreThan, 16, TestDataMyProfile.emiCardErrorValue, TestDataMyProfile.emiCardErrorMsg);


    }

    @Then("Verify the Bank Account with different Negative values")
    public void verify_the_bank_account_with_different_negative_values() {

        MyProfile.validateTextBox("Bank Account", TestDataMyProfile.bankAccNegativeValues, TestDataMyProfile.bankAccLessThan, TestDataMyProfile.bankAccMoreThan, 16, TestDataMyProfile.bankAccErrorValue, TestDataMyProfile.bankAccErrorMsg);


    }

    ////DOB
    @Then("Verify the DOB with different Negative values")
    public void verify_the_dob_with_different_negative_values() {
//        MyProfile.verifyCalendar();
        String today = generateTodayDate("ddMMyyyy");
        String dayPast1 = generatePastDate(1, "ddMMyyyy");
        String lessThan18Years = generatePast18Years1Day(18, "ddMMyyyy");
        String dayFuture1 = generateFutureDate(1, "ddMMyyyy");
        String lessThanOneYear = generatePastYears(1, "ddMMyyyy");
        String daysNegative = today + "," + dayPast1 + "," + dayFuture1 + "," + "32122001" + "," + "31112001" + "," + "31132001" + "," + "30112100" + "," + "29022021";
        String daysNegativeMin = lessThan18Years + "," + lessThanOneYear;

        MyProfile.validateTextBox("Date of Birth", TestDataMyProfile.bankAccNegativeValues, "1212200", "121220000", 10, "00000000", "Enter valid date");
        MyProfile.verifyErrorMessageMyProfile("Date of Birth", daysNegative, "Enter valid date");
        MyProfile.verifyErrorMessageMyProfile("Date of Birth", daysNegativeMin, "Minimum 18 years of age to be eligible");

    }

    @Then("Customer selects valid DOB {string} and On Clicking {string} button, Customer should be redirected to Update PAN Page for NSDL verification")
    public void customer_selects_valid_dob_and_on_clicking_button_customer_should_be_redirected_to_update_pan_page_for_nsdl_verification(String string, String string2) {
        String[] s = string.split("/");
        MyProfile.selectCalendarDate(s[2], s[1], s[0]);
//        String button = MyProfile.verifyButtonIsEnabled(string2);
//        clickOn(button);
//        waitForPageToLoad();
//        waitTime(5);
    }

    /////////PAN CORPORATE

    @Then("Customer should be able to view below content on My profile page for Corporate")
    public void customer_should_be_able_to_view_below_content_on_my_profile_page_for_corporate() {
        verifyFieldsDisplayedUsingLocator(MyProfilePage.name_Customer);
        //    verifyMultipleElementIsDisplayedUsingTexts("Permanent Account Number,Date of Birth,Customer ID,CKYC Number,Primary Mobile Number,Primary Email Address,Primary Address,Your CIBIL Score");
        MyProfile.verifyLabelInMyProfile("PAN");
        MyProfile.verifyLabelInMyProfile("Date Of Incorporation");
        MyProfile.verifyLabelInMyProfile("Customer ID");
        MyProfile.verifyLabelInMyProfile("KIN/CKYCR Number");
        MyProfile.verifyLabelInMyProfile("Mobile Number");
        MyProfile.verifyLabelInMyProfile("Email ID");
        MyProfile.verifyLabelInMyProfile("Current Address");
        verifyFieldsDisplayedUsingText("Check your CIBIL Score");
    }


    @Then("Customer should be  able to view below content on Verification method page for PAN Corporate")
    public void customer_should_be_able_to_view_below_content_on_verification_method_page_for_pan_corporate() {
        verifyTextOptionsIsDisplayedUsingCommonXpath("//li[@id='DoItab']/a", "Date Of Incorporation");
        MyProfile.verifyFieldsDisplayedUsingText("Bank Account");
        verifyFieldsDisplayedUsingLocator(MyProfilePage.inputTextField_ValidationMethodPage_Doi);
        verifyFieldsDisplayedUsingLocator(MyProfilePage.confirmButton_ValidationPage);
    }

    ////////////////////DOBINDIVIDUAL
    @Then("DOB should be in DDMMYYYY format")
    public void dob_should_be_in_ddmmyyyy_format() {

        verifyFieldsDisplayedUsingLocator(MyProfilePage.field_IndividualDOB);
//        DateTimeFormatter formatter= DateTimeFormatter.ofPattern();
//        fdservices.verifyValueisDateFormat("DOB","",);


    }

    @Then("Customer should find DOB field in masked format except year")
    public void customer_should_find_dob_field_in_masked_format_except_year() {
        String dobIndividual = MyProfile.verifyValueInMyProfile("Date of Birth");
        testStepPassed(dobIndividual);
        MyProfile.verifyMaskedFormatForInitial(dobIndividual, "Date of Birth", 1, 6);
        MyProfile.verifyUnMaskedFormat(dobIndividual, "Date of Birth", 6, 4, 1);


    }

    @Then("Customer should be able to view edit DOB button if DOB available")
    public void customer_should_be_able_to_view_edit_dob_button_if_dob_available() {

        verifyElementIsDisplayedUsingLocator(MyProfilePage.button_EditDOB);
    }

    @Then("Clicks edit,update DOB button")
    public void clicks_edit_update_dob_button() {


        clickOn(MyProfilePage.button_EditDOB);

    }

    @Then("Customer should get below popup for DOB-")
    public void customer_should_get_below_popup_for_dob() {
        if (!isElementDisplayed(MyProfilePage.button_PopUpProceed)) {
            skipSteps("All the Further Steps skipped due to Popup- Already request Raised");
        } else {

            verifyFieldsDisplayedUsingText("Important");
            verifyFieldsDisplayedUsingText("By clicking on ‘PROCEED’, you will be able to update your Date of Birth in our records. This change will not reflect for insurance products, co-branded credit cards and mutual funds.");
            verifyElementIsDisplayedUsingLocator(MyProfilePage.button_PopUpCancel);
//        verifyFieldsDisplayedUsingText("Proceed");
            verifyElementIsDisplayedUsingLocator(MyProfilePage.button_PopUpProceed);
        }
    }

    @Then("Verify the DOI with different Negative values")
    public void verify_the_doi_with_different_negative_values() {
//        MyProfile.verifyCalendarDoi();
//        String today = generateTodayDate("ddMMyyyy");
//        String dayPast1 = generatePastDate(1, "ddMMyyyy");
//        String lessThan18Years = generatePast18Years1Day(18, "ddMMyyyy");
        String dayFuture1 = generateFutureDate(1, "ddMMyyyy");
//        String lessThanOneYear = generatePastYears(1, "ddMMyyyy");
        String daysNegative = dayFuture1 + "," + "32122001" + "," + "31112001" + "," + "31132001" + "," + "30112100" + "," + "29022021";
//        String daysNegativeMin= lessThanOneYear;

        MyProfile.validateTextBox("Date Of Incorporation", TestDataMyProfile.bankAccNegativeValues, "1212200", "121220000", 10, "00000000", "Enter valid date");
        MyProfile.verifyErrorMessageMyProfile("Date Of Incorporation", daysNegative, "Enter valid date");
//        MyProfile.verifyErrorMessageMyProfile("Date of Birth",daysNegativeMin,"Minimum 18 years of age to be eligible");


    }

//    @Then("Contents should be properly aligned in the Popup")
//    public void contents_should_be_properly_aligned_in_the_popup() {
//
//
//
//    }


    @When("Customer is on confirmation popup of My Profile Page for DOB Individual")
    public void customer_is_on_confirmation_popup_of_my_profile_page_for_dob_individual() {

        clickOn(MyProfilePage.button_EditDOB);

    }


    @Then("Customer should be  able to view below content on Verification method page for DOB Individual")
    public void customer_should_be_able_to_view_below_content_on_verification_method_page_for_dob_individual() {

        MyProfile.verifyFieldsDisplayedUsingText("PAN");
        MyProfile.verifyFieldsDisplayedUsingText("Insta EMI Card");
        MyProfile.verifyFieldsDisplayedUsingText("Bank Account");
        verifyFieldsDisplayedUsingLocator(MyProfilePage.confirmButton_ValidationPage);


    }

    @Then("Verify the PAN with different Negative values")
    public void verify_the_pan_with_different_negative_values() {

        MyProfile.validateTextBox("PAN", TestDataMyProfile.panNegativeValues, TestDataMyProfile.panLessThan, TestDataMyProfile.panMoreThan, 10, TestDataMyProfile.panErrorValue, TestDataMyProfile.panErrorMsg);


    }

    @Then("Customer enters valid details {string} for {string} Text Box and Clicking {string} button, Customer should be redirected to Update DOB Page")
    public void customer_enters_valid_details_for_text_box_and_clicking_button_customer_should_be_redirected_to_update_dob_page(String string, String string2, String string3) {

        MyProfile.verifyTextBoxWithValidData(string2, string, string3);


    }

    @Then("Customer should find the below content on Update DOB Page")
    public void customer_should_find_the_below_content_on_update_dob_page() {
        waitTime(5);
//        verifyFieldsDisplayedUsingText("Update Date of Birth");
        verifyFieldsDisplayedUsingText("Update your Date of Birth");
//        verifyFieldsDisplayedUsingText("Please provide your Date of Birth");
        verifyElementIsDisplayedOrNot(MyProfilePage.enter_DOB_UpdateDOB_Page);
        verifyFieldsDisplayedUsingText("Self-Attested Document");
        verifyFieldsDisplayedUsingText("Visit a branch");
        verifyFieldsDisplayedUsingLocator(MyProfilePage.dropDown_SelectDocuments);
        verifyFieldsDisplayedUsingText("SUBMIT");
    }

    @Then("Verify Invalid DOB is not accepted")
    public void verify_invalid_dob_is_not_accepted() {
//        MyProfile.verifyCalendarUsingLocator(MyProfilePage.icon_Calendar_DOB_Individual, MyProfilePage.txtBox_Calendar_DOB_Individual);
        String today = generateTodayDate("ddMMyyyy");
        String dayPast1 = generatePastDate(1, "ddMMyyyy");
        String lessThan18Years = generatePast18Years1Day(18, "ddMMyyyy");
        String dayFuture1 = generateFutureDate(1, "ddMMyyyy");
        String lessThanOneYear = generatePastYears(1, "ddMMyyyy");
        String daysNegative = today + "," + dayPast1 + "," + dayFuture1 + "," + "32122001" + "," + "31112001" + "," + "31132001" + "," + "30112100" + "," + "29022021";
        String daysNegativeMin = lessThan18Years + "," + lessThanOneYear;

        MyProfile.validateTextBoxSecond("Date of Birth", TestDataMyProfile.bankAccNegativeValues, "1212200", "121220000", 10, "00000000", "Enter valid date", "SUBMIT");
        MyProfile.verifyErrorMessageMyProfile("Date of Birth", daysNegative, "Enter valid date");
        MyProfile.verifyErrorMessageMyProfile("Date of Birth", daysNegativeMin, "Minimum 18 years of age to be eligible");


    }

    @Then("On entering valid {string} for DOB field")
    public void on_entering_valid_for_dob_field(String string) {

//        String[] s = string.split("/");
//        MyProfile.selectCalendarDateDOB_DOI(s[2], s[1], s[0]);
        typeInIfDisplayed(MyProfilePage.enter_DOB_UpdateDOB_Page, string);


    }

    @Then("On Clicking Self Attested Document Button, User should find fields- Select a Document, Upload arrow & Submit Button")
    public void on_clicking_self_attested_document_button_user_should_find_fields_select_a_document_upload_arrow_submit_button() {

        MyProfile.verifyUpdatePanOptions("Self-Attested Document");

    }

    @Then("Customer should be able to find the List of Upload Documents Supported")
    public void customer_should_be_able_to_find_the_list_of_upload_documents_supported() {

        verifyGetAllOptionsInDropDownAndCompare(MyProfilePage.dropDown_SelectDocuments, TestDataMyProfile.dropDownOptions_SelectDocument);


    }

    @Then("On Clicking a Document type & Submitting without attaching a document,error msg should be displayed")
    public void on_clicking_a_document_type_submitting_without_attaching_a_document_error_msg_should_be_displayed() {

        selectDropDownUsingText(MyProfilePage.dropDown_SelectDocuments, "Aadhar");
        verifyElementIsDisplayedUsingLocator(MyProfilePage.icon_Upload);
        String button = MyProfile.verifyButtonIsEnabled("SUBMIT");
        clickOn(button);
        verifyErrorMessageUsingText("Please Upload the document");


    }

    @Then("On uploading Invalid files, Customer should get- Invalid file message for DOB")
    public void on_uploading_invalid_files_customer_should_get_invalid_file_message_for_dob() {
        selectDropDownUsingText(MyProfilePage.dropDown_SelectDocuments, "Aadhar");
        typeInIfPresent(MyProfilePage.txtBox_Upload, "" + getCurrentPath() + "/UploadDocuments/MyProfileInvalid/ReImaginePdfReport.pdf");
//        verifyErrorMessageUsingText("Invalid file format or file size is larger than 2mb. Please upload in .png, .pdf or .jpg format");
        verifyErrorMessageUsingText("Upload error. Please upload your file in .png, .pdf or .jpg format. Maximum file size: 2 MB");
        typeInIfPresent(MyProfilePage.txtBox_Upload, "" + getCurrentPath() + "/UploadDocuments/MyProfileInvalid/ReImagineSparkReport.html");
//        verifyErrorMessageUsingText("Invalid file format or file size is larger than 2mb. Please upload in .png, .pdf or .jpg format");
        verifyErrorMessageUsingText("Upload error. Please upload your file in .png, .pdf or .jpg format. Maximum file size: 2 MB");
    }

    @Then("On Uploading valid files, Customer should get a bin , tick mark and a message for DOB")
    public void on_uploading_valid_files_customer_should_get_a_bin_tick_mark_and_a_message_for_dob() {
        typeInIfPresent(MyProfilePage.txtBox_Upload, "" + getCurrentPath() + "/UploadDocuments/MyProfileValid/Capture.JPG");
        verifyFieldsDisplayedUsingLocator(MyProfilePage.icon_Bin);
        verifyFieldsDisplayedUsingLocator(MyProfilePage.icon_SuccessIcon);
        clickOn(MyProfilePage.icon_Bin);
        selectDropDownUsingText(MyProfilePage.dropDown_SelectDocuments, "Aadhar");
        typeInIfPresent(MyProfilePage.txtBox_Upload, "" + getCurrentPath() + "/UploadDocuments/MyProfileValid/embedded28.png");
        clickOn(MyProfilePage.icon_Bin);
        selectDropDownUsingText(MyProfilePage.dropDown_SelectDocuments, "Aadhar");
        typeInIfPresent(MyProfilePage.txtBox_Upload, "" + getCurrentPath() + "/UploadDocuments/MyProfileValid/svgfile.svg");
        clickOn(MyProfilePage.icon_Bin);

    }

    @Then("On Clicking Submit button after uploading a valid file, Customer should get a message for DOB")
    public void on_clicking_submit_button_after_uploading_a_valid_file_customer_should_get_a_message_for_dob() {
        selectDropDownUsingText(MyProfilePage.dropDown_SelectDocuments, "Aadhar");
        typeInIfPresent(MyProfilePage.txtBox_Upload, "" + getCurrentPath() + "/UploadDocuments/MyProfileValid/Pdfim.pdf");
        String button = MyProfile.verifyButtonIsEnabled("SUBMIT");
        clickOn(button);
        waitForPageToLoad();
        MyProfile.waitForThreeDotsDisAppear();
        waitTime(10);
        verifyElementIsDisplayedUsingLocator(MyProfilePage.txt_ThankYouDOB);
        System.out.println(getText(MyProfilePage.txt_ThankYouDOB));
//        MyProfile.verifyRequestInProgress();
    }


//////////////DOI CORPORATE

    //    @Then("Customer should be able to view below content on My profile page for DOI Corporate")
//    public void customer_should_be_able_to_view_below_content_on_my_profile_page_for_doi_corporate() {
//
//
//    }
    @Then("DOI should be in DDMMYYYY format")
    public void doi_should_be_in_ddmmyyyy_format() {

        verifyFieldsDisplayedUsingLocator(MyProfilePage.field_CorporateDOI);


    }

    @Then("Customer should find DOI field in masked format except year")
    public void customer_should_find_doi_field_in_masked_format_except_year() {
        String doiCorp = MyProfile.verifyValueInMyProfile("Date Of Incorporation");
        testStepPassed(doiCorp);
        MyProfile.verifyMaskedFormatForInitial(doiCorp, "Date of Birth", 1, 6);
        MyProfile.verifyUnMaskedFormat(doiCorp, "Date of Birth", 6, 4, 1);


    }

    @Then("Customer should be able to view edit DOI button if DOI available")
    public void customer_should_be_able_to_view_edit_doi_button_if_doi_available() {

        verifyElementIsDisplayedUsingLocator(MyProfilePage.button_EditDOI);

    }

    @Then("Clicks edit,update DOI button")
    public void clicks_edit_update_doi_button() {

        clickOn(MyProfilePage.button_EditDOI);

    }

    @Then("Customer should get below popup for DOI-")
    public void customer_should_get_below_popup_for_doi() {
        if (!isElementDisplayed(MyProfilePage.button_PopUpProceed)) {
            skipSteps("All the Further Steps skipped due to Popup- Already request Raised");
        } else {

            verifyFieldsDisplayedUsingTextAndForLoop("Important", "");
//        verifyFieldsDisplayedUsingText("Your DOI will get updated only in Bajaj Finance Ltd.’s records and will not be reflected for insurance products, Co-branded Credit Card & Mutual Fund products.");
            verifyFieldsDisplayedUsingTextAndForLoop("By clicking on ‘PROCEED’, you will be able to update your Date of Incorporation in our records. This change will not reflect for insurance products, co-branded credit cards and mutual funds.", "");
            verifyElementIsDisplayedUsingLocator(MyProfilePage.button_PopUpCancel);
//        verifyFieldsDisplayedUsingText("Proceed");
            verifyElementIsDisplayedUsingLocator(MyProfilePage.button_PopUpProceed);

        }
    }

    @Then("Customer should be  able to view below content on Verification method page for DOI Corporate")
    public void customer_should_be_able_to_view_below_content_on_verification_method_page_for_doi_corporate() {
        MyProfile.verifyFieldsDisplayedUsingText("PAN");
        MyProfile.verifyFieldsDisplayedUsingText("Bank Account");
        verifyFieldsDisplayedUsingLocator(MyProfilePage.confirmButton_ValidationPage);


    }

    @Then("Verify Invalid DOI is not accepted")
    public void verify_invalid_doi_is_not_accepted() {

        MyProfile.verifyCalendarUsingLocator(MyProfilePage.icon_Calendar_DOI_Corporate, MyProfilePage.txtBox_Calendar_DOI_Corporate);


    }


    @Then("Customer enters valid details {string} for {string} Text Box and Clicking {string} button, Customer should be redirected to Update DOI Page")
    public void customer_enters_valid_details_for_text_box_and_clicking_button_customer_should_be_redirected_to_update_doi_page(String string, String string2, String string3) {

        MyProfile.verifyTextBoxWithValidData(string2, string, string3);


    }

    @Then("Customer should find the below content on Update DOI Page")
    public void customer_should_find_the_below_content_on_update_doi_page() {
        waitTime(5);
//        verifyFieldsDisplayedUsingText("Update Date of Incorporation");
        verifyFieldsDisplayedUsingText("Update DOI");
//        verifyFieldsDisplayedUsingText("Please provide your Date of Birth");
        verifyFieldsDisplayedUsingText("Self-Attested Document");
        verifyFieldsDisplayedUsingText("Visit a branch");
        verifyFieldsDisplayedUsingLocator(MyProfilePage.dropDown_SelectDocuments);
        verifyFieldsDisplayedUsingText("SUBMIT");

    }

///////MOBILE

    @Then("Last four digits of mobile number should be in masked format")
    public void last_four_digits_of_mobile_number_should_be_in_masked_format() {
        String mobileValue = MyProfile.verifyValueInMyProfile("Mobile Number");
        testStepPassed(mobileValue);
        MyProfile.verifyMaskedFormatForInitial(mobileValue, "Mobile Number", 1, 6);
        MyProfile.verifyUnMaskedFormat(mobileValue, "Mobile Number", 6, 4, 1);
    }

    @Then("Customer should be able to view mobile icon on my profile page for mobile field")
    public void customer_should_be_able_to_view_mobile_icon_on_my_profile_page_for_mobile_field() {
        MyProfile.verifyIconInMyProfile("Mobile Number");
    }

    @Then("Clicks edit,update Mobile button")
    public void clicks_edit_update_mobile_button() {
        MyProfile.clickOnEditButtonInMyProfilePage("Mobile Number");
    }

    @Then("Customer should get below popup for Mobile-")
    public void customer_should_get_below_popup_for_mobile() {
        if (!isElementDisplayed(MyProfilePage.button_PopUpProceed)) {
            skipSteps("All the Further Steps skipped due to Popup- Already request Raised");
        } else {

            verifyFieldsDisplayedUsingTextAndForLoop("Important", "");
//        verifyFieldsDisplayedUsingText("Your mobile number will get updated only in Bajaj Finance Ltd.’s records and will not be reflected for insurance products, Co-branded Credit Card & Mutual Fund products.");
            verifyFieldsDisplayedUsingTextAndForLoop("By clicking on ‘PROCEED’, you will be able to update your mobile in our records. This change will not reflect for insurance products, co-branded credit cards and mutual funds.", "");
//        verifyFieldsDisplayedUsingText("Do note, updating your mobile number will delete your UPI IDs created with Bajaj Finance Ltd., and delink the earlier number with the Wallet and bank account provided for E-Mandate registration");
            verifyFieldsDisplayedUsingTextAndForLoop("Updating your mobile number will delete your UPI IDs created with Bajaj Finance Limited. It will also delink the earlier number with the wallet and bank account provided for E-mandate registration.", "");
            verifyElementIsDisplayedUsingLocator(MyProfilePage.button_PopUpCancel);
//        verifyFieldsDisplayedUsingText("Proceed");
            verifyElementIsDisplayedUsingLocator(MyProfilePage.button_PopUpProceed);
        }
    }

    @Then("Contents should be properly aligned in Verification method page for Mobile Individual")
    public void contents_should_be_properly_aligned_in_verification_method_page_for_mobile_individual() {
//        MyProfile.verfiyFontInProfilePage("//ul[@class='tab_design_cta Validate_UserProfile']/li/a", "Date of Birth,Insta EMI Card,Bank Account");
        MyProfile.verfiyFontInProfilePage("//ul[@class='tab_design_cta Validate_UserProfile']/li/a", "PAN,Insta EMI Card,Bank Account");

    }

    @Then("Verify the Date of birth with different Negative values")
    public void verify_the_date_of_birth_with_different_negative_values() {
        MyProfile.verifyCalendar();
    }


    @Then("Customer should find the below content on Update Mobile Page for Mobile Individual")
    public void customer_should_find_the_below_content_on_update_mobile_page_for_mobile_individual() {
        waitTime(5);
//        verifyFieldsDisplayedUsingText("Update Mobile Number");
        verifyFieldsDisplayedUsingText("Update your mobile number");
//        verifyFieldsDisplayedUsingText("Enter new Mobile Number");
        verifyFieldsDisplayedUsingText("New Mobile Number");
//        verifyFieldsDisplayedUsingText("Generate OTP");
        verifyFieldsDisplayedUsingText("GET OTP");
//        MyProfile.verifyButtonIsDisabled("Generate OTP");
        MyProfile.verifyButtonIsDisabled("GET OTP");
    }

    @Then("verify that validation message displays when customer enters invalid input in mobile number field")
    public void verify_that_validation_message_displays_when_customer_enters_invalid_input_in_mobile_number_field() {

//        MyProfile.validateTextBox("Enter new Mobile Number", TestDataMyProfile.mobileNegativeValues, TestDataMyProfile.mobileLessThan, TestDataMyProfile.mobileMoreThan, 10, TestDataMyProfile.mobileErrorValue, TestDataMyProfile.mobileErrorMsg);
        MyProfile.validateTextBoxSecond("Enter your 10-digit mobile number", TestDataMyProfile.mobileNegativeValues, TestDataMyProfile.mobileLessThan, TestDataMyProfile.mobileMoreThan, 10, TestDataMyProfile.mobileErrorValue, TestDataMyProfile.mobileErrorMsg, "GET OTP");

    }


    @Then("Customer selects valid DOB {string} and On Clicking {string} button, Customer should be redirected to Update Mobile Page")
    public void customer_selects_valid_dob_and_on_clicking_button_customer_should_be_redirected_to_update_mobile_page(String string, String string2) {
        String[] s = string.split("/");
        MyProfile.selectCalendarDate(s[2], s[1], s[0]);
    }

    @Then("Customer enters valid details {string} for {string} Text Box and Clicking {string} button, Customer should be redirected to Update Mobile Page")
    public void customer_enters_valid_details_for_text_box_and_clicking_button_customer_should_be_redirected_to_update_mobile_page(String string, String string2, String string3) {
        MyProfile.verifyTextBoxWithValidData(string2, string, string3);
    }


//////////EMAIL-INDIVIDUAL

    @Then("Only first two and last two characters to be visible and middle part should be masked for Email")
    public void only_first_two_and_last_two_characters_to_be_visible_and_middle_part_should_be_masked_for_email() {
        String emailValue = MyProfile.verifyValueInMyProfile("Email ID");
        testStepPassed(emailValue);
        MyProfile.verifyMaskedFormatForInitial(emailValue, "Email ID", 0, 6);
        MyProfile.verifyUnMaskedFormat(emailValue, "Email ID", 6, 4, 1);


    }

    @Then("Clicks edit,update Email button")
    public void clicks_edit_update_email_button() {
        MyProfile.clickOnEditButtonInMyProfilePage("Email ID");

    }

    @Then("Customer should get below popup for Email Individual-")
    public void customer_should_get_below_popup_for_email_individual() {
        if (!isElementDisplayed(MyProfilePage.button_PopUpProceed)) {
            skipSteps("All the Further Steps skipped due to Popup- Already request Raised");
        } else {

            verifyFieldsDisplayedUsingTextAndForLoop("Important", "");
//        verifyFieldsDisplayedUsingText("Your email ID will get updated only in Bajaj Finance Ltd.’s records and will not be reflected for Insurance products, co-brand Credit Card and Mutual Fund products");
            verifyFieldsDisplayedUsingTextAndForLoop("By clicking on ‘PROCEED’, you will be able to update your email id in our records. This change will not reflect for insurance products, co-branded credit cards and mutual funds.", "");
            verifyElementIsDisplayedUsingLocator(MyProfilePage.button_PopUpCancel);
//        verifyFieldsDisplayedUsingText("Confirm");
//        verifyFieldsDisplayedUsingText("Proceed");
            verifyElementIsDisplayedOrNot(MyProfilePage.button_PopUpProceed);
        }
    }

    @Then("Contents should be properly aligned in Verification method page for Email Individual")
    public void contents_should_be_properly_aligned_in_verification_method_page_for_email_individual() {
//        MyProfile.verfiyFontInProfilePage("//ul[@class='tab_design_cta Validate_UserProfile']/li/a", "Date of Birth,Insta EMI Card,Bank Account");
        MyProfile.verfiyFontInProfilePage("//ul[@class='tab_design_cta Validate_UserProfile']/li/a", "PAN,Insta EMI Card,Bank Account");
    }

    @Then("Customer selects valid DOB {string} and On Clicking {string} button, Customer should be redirected to Update Email Page")
    public void customer_selects_valid_dob_and_on_clicking_button_customer_should_be_redirected_to_update_email_page(String string, String string2) {
        String[] s = string.split("/");
        MyProfile.selectCalendarDate(s[2], s[1], s[0]);
    }

    @Then("Customer enters valid details {string} for {string} Text Box and Clicking {string} button, Customer should be redirected to Update Email Page")
    public void customer_enters_valid_details_for_text_box_and_clicking_button_customer_should_be_redirected_to_update_email_page(String string, String string2, String string3) {
        MyProfile.verifyTextBoxWithValidData(string2, string, string3);
    }

    @Then("Customer should find the below content on Update Email Page for Email Individual")
    public void customer_should_find_the_below_content_on_update_email_page_for_email_individual() {
        waitTime(5);
//        verifyFieldsDisplayedUsingText("Update Email Address");
        verifyFieldsDisplayedUsingText("Update your email id");
        verifyFieldsDisplayedUsingText("New Email ID");
        verifyFieldsDisplayedUsingText("GET OTP");
        MyProfile.verifyButtonIsDisabled("GET OTP");
    }


////////EMAIL CORPORATE

    @Then("Customer should get below popup for Email Corporate-")
    public void customer_should_get_below_popup_for_email_corporate() {
        if (!isElementDisplayed(MyProfilePage.button_PopUpProceed)) {
            skipSteps("All the Further Steps skipped due to Popup- Already request Raised");
        } else {

            verifyFieldsDisplayedUsingTextAndForLoop("Important", "");
//        verifyFieldsDisplayedUsingText("Your email ID will get updated only in Bajaj Finance Ltd.’s records and will not be reflected for Insurance products, co-brand Credit Card and Mutual Fund products");
            verifyFieldsDisplayedUsingTextAndForLoop("By clicking on ‘PROCEED’, you will be able to update your email id in our records. This change will not reflect for insurance products, co-branded credit cards and mutual funds.", "");
            verifyElementIsDisplayedUsingLocator(MyProfilePage.button_PopUpCancel);
//        verifyFieldsDisplayedUsingText("Proceed");
            verifyElementIsDisplayedUsingLocator(MyProfilePage.button_PopUpProceed);
        }
    }

    @Then("Customer should be  able to view below content on Verification method page for Email Corporate")
    public void customer_should_be_able_to_view_below_content_on_verification_method_page_for_email_corporate() {
        verifyTextOptionsIsDisplayedUsingCommonXpath("//li[@id='DoItab']/a", "Date Of Incorporation");
        MyProfile.verifyFieldsDisplayedUsingText("Bank Account");
        verifyFieldsDisplayedUsingLocator(MyProfilePage.inputTextField_ValidationMethodPage_Doi);
        verifyFieldsDisplayedUsingLocator(MyProfilePage.confirmButton_ValidationPage);
    }


    @Then("Contents should be properly aligned in Verification method page for Email Corporate")
    public void contents_should_be_properly_aligned_in_verification_method_page_for_email_corporate() {
        MyProfile.verfiyFontInProfilePage("//ul[@class='tab_design_cta Validate_UserProfile']/li/a", "Date Of Incorporation,Bank Account");
    }

    @Then("Customer should find the below content on Update Email Page for Email Corporate")
    public void customer_should_find_the_below_content_on_update_email_page_for_email_corporate() {
        waitTime(5);
//        verifyFieldsDisplayedUsingText("Update Email Address");
        verifyFieldsDisplayedUsingText("Update your email id");
//        verifyFieldsDisplayedUsingText("This email ID will be used for all future communication");
        verifyFieldsDisplayedUsingText("This email id will be used for all future communication");
//        verifyFieldsDisplayedUsingText("Enter new Email ID");
        verifyFieldsDisplayedUsingText("New Email ID");
//        verifyFieldsDisplayedUsingText("Generate OTP");
        verifyFieldsDisplayedUsingText("GET OTP");
//        MyProfile.verifyButtonIsDisabled("Generate OTP");
        MyProfile.verifyButtonIsDisabled("GET OTP");
    }

    ///GSTIN Individual


    @Then("Customer should find GST IN as not available")
    public void customer_should_find_gst_in_as_not_available() {
        verifyFieldsDisplayedUsingLocator(MyProfilePage.field_GSTINNotAvailable);
    }

    @Then("Clicks Update GST button")
    public void clicks_update_gst_button() {
        MyProfile.clickOnEditButtonInMyProfilePage("GSTIN");
    }

    @Then("Customer should get below popup for GST Individual-")
    public void customer_should_get_below_popup_for_gst_individual() {
        verifyFieldsDisplayedUsingText("Important");
//        verifyFieldsDisplayedUsingText("Your GSTIN will get updated only in Bajaj Finance Ltd.’s records and will not be reflected for Insurance products, co-brand Credit Card and Mutual Fund products.");
        verifyFieldsDisplayedUsingText("By clicking on ‘PROCEED’, you will be able to update your GSTIN in our records. This change will not reflect for insurance products, co-branded credit cards and mutual funds.");
        verifyElementIsDisplayedUsingLocator(MyProfilePage.button_PopUpCancel);
//        verifyFieldsDisplayedUsingText("Confirm");
        verifyElementIsDisplayedOrNot(MyProfilePage.button_PopUpProceed);

    }

    @Then("Customer should be  able to view below content on Verification method page for GST Individual")
    public void customer_should_be_able_to_view_below_content_on_verification_method_page_for_gst_individual() {
//        verifyFieldsDisplayedUsingText("Date of Birth");
//        verifyFieldsDisplayedUsingText("Insta EMI Card");
//        verifyFieldsDisplayedUsingText("Bank Account");
//        verifyFieldsDisplayedUsingLocator(MyProfilePage.confirmButton_ValidationPage);

        MyProfile.verifyFieldsDisplayedUsingText("Date of Birth");
        MyProfile.verifyFieldsDisplayedUsingText("Insta EMI Card");
        MyProfile.verifyFieldsDisplayedUsingText("Bank Account");
        verifyFieldsDisplayedUsingLocator(MyProfilePage.inputTextField_ValidationMethodPage);
        verifyFieldsDisplayedUsingLocator(MyProfilePage.confirmButton_ValidationPage);


    }

    @Then("Contents should be properly aligned in Verification method page for GST Individual")
    public void contents_should_be_properly_aligned_in_verification_method_page_for_gst_individual() {
        MyProfile.verfiyFontInProfilePage("//ul[@class='tab_design_cta Validate_UserProfile']/li/a", "Date of Birth,Insta EMI Card,Bank Account");
    }

    @Then("Customer selects valid DOB {string} and On Clicking {string} button, Customer should be redirected to Update GST Page")
    public void customer_selects_valid_dob_and_on_clicking_button_customer_should_be_redirected_to_update_gst_page(String string, String string2) {
        String[] s = string.split("/");
        MyProfile.selectCalendarDate(s[2], s[1], s[0]);
    }

    @Then("Customer enters valid details {string} for {string} Text Box and Clicking {string} button, Customer should be redirected to Update GST Page")
    public void customer_enters_valid_details_for_text_box_and_clicking_button_customer_should_be_redirected_to_update_gst_page(String string, String string2, String string3) {
        MyProfile.verifyTextBoxWithValidData(string2, string, string3);
    }


    @Then("Customer should find below content on Confirm GSTIN details page")
    public void customer_should_find_below_content_on_confirm_gstin_details_page() {
        waitTime(5);
//        verifyFieldsDisplayedUsingText("Confirm GSTIN Details");
        verifyFieldsDisplayedUsingText("Update your GSTIN");
        verifyFieldsDisplayedUsingText("Verify your details");
        verifyFieldsDisplayedUsingText("Select your Loan Account Number for this GSTIN");
        verifyFieldsDisplayedUsingText("Loan Account Number");
//        verifyElementIsDisplayedUsingLocator("//button[@id='btnLans' and normalize-space(text())='CONFIRM']");
        verifyButtonIsDisplayedInThePage("CONFIRM");
    }

    @Then("Customer should find the below content on Update GST Page")
    public void customer_should_find_the_below_content_on_update_gst_page() {
        waitTime(5);
//        verifyFieldsDisplayedUsingText("GSTIN Details");
        verifyFieldsDisplayedUsingText("Your GSTIN details");
        verifyFieldsDisplayedUsingText("Residential Address");
        verifyFieldsDisplayedUsingText("Please provide the appropriate GSTIN number");
        verifyMultipleElementIsDisplayedUsingTexts("Address Line 1,Address Line 2,Area,Landmark,PIN Code,City,State");
        verifyButtonIsDisplayedInThePage("Proceed");

    }

    String loanNumber = "";

    @Then("Customer should be able to select only one Loan option and able to click Confirm")
    public void customer_should_be_able_to_select_only_one_loan_option_and_able_to_click_confirm() {
        loanNumber = MyProfile.verifyRadioButtonsInGSTIN();
        MyProfile.clickOnButtonUsingTextIfOnlyDisplayed("CONFIRM");
    }

    @Then("Verify Customer entered GSTIN number in GSTIN Details field is visible in upper case")
    public void verify_customer_entered_gstin_number_in_gstin_details_field_is_visible_in_upper_case() {
        typeInIfDisplayed(MyProfilePage.txtBox_GSTINDetails, TestDataMyProfile.GSTINNo);
        MyProfile.verifyTextBoxChangedLowerCaseIntoUpperCase(MyProfilePage.txtBox_GSTINDetails);

    }

    @Then("verify when Customer clicks on Submit Details button without entering data in any of the fields, Error msg is displayed")
    public void verify_when_customer_clicks_on_submit_details_button_without_entering_data_in_any_of_the_fields_error_msg_is_displayed() {
        MyProfile.clickOnButtonUsingTextIfOnlyDisplayed("Proceed");
        verifyErrorMessageUsingText("Enter your 15-digit GSTIN");
        verifyErrorMessageUsingText("Please Enter Address 1");
        verifyErrorMessageUsingText("Please Enter Address 2");
        verifyErrorMessageUsingText("Please Enter Area");
        verifyErrorMessageUsingText("Please Enter Pincode");
        verifyErrorMessageUsingText("Please Select City");
        verifyErrorMessageUsingText("Please Select State");
    }

    @Then("verify Negative validations for PIN code field")
    public void verify_negative_validations_for_pin_code_field() {
        MyProfile.validateTextBox("PIN Code", TestDataMyProfile.pincodeNegativeValues, TestDataMyProfile.pincodeLessThan, TestDataMyProfile.pincodeMoreThan, 6, TestDataMyProfile.pincodeErrorValue, TestDataMyProfile.pincodeErrorMsg);
    }

    @Then("verify Valid pincode with City and State dropdown being functional")
    public void verify_valid_pincode_with_city_and_state_dropdown_being_functional() {
        typeInIfDisplayed(MyProfilePage.txtBox_PincodeDetails, TestDataMyProfile.Pincode);
        getSelectedOptionInDropDown(MyProfilePage.dropdown_City, TestDataMyProfile.City);
        getSelectedOptionInDropDown(MyProfilePage.dropdown_State, TestDataMyProfile.State);
    }

    @Then("On entry of all the details except Landmark and clicking Confirm")
    public void on_entry_of_all_the_details_except_landmark_and_clicking_confirm() {
        MyProfile.enterValueInTextBoxUsingLabel("Address Line 1", TestDataMyProfile.addressline1);
        MyProfile.enterValueInTextBoxUsingLabel("Address Line 2", TestDataMyProfile.addressline2);
        MyProfile.enterValueInTextBoxUsingLabel("Area", TestDataMyProfile.area);
//        MyProfile.clickOnButtonUsingTextIfOnlyDisplayed("CONFIRM");
        MyProfile.clickOnButtonUsingTextIfOnlyDisplayed("Proceed");
    }

    @Then("verify customer is redirected to Summary screen when customer clicks on Submit Details button after entering the details without Landmark")
    public void verify_customer_is_redirected_to_summary_screen_when_customer_clicks_on_submit_details_button_after_entering_the_details_without_landmark() {

        verifyRedirectionHeaderText("GSTIN Details");
        verifyFieldsDisplayedUsingText("Here is the summary of your GSTIN details");
        MyProfile.verifyAndGetSummaryGstinUsingLabel("Loan Account Number", loanNumber);
        MyProfile.verifyAndGetSummaryGstinUsingLabel("Applicant Name", MyProfile.getProfileName());
        MyProfile.verifyAndGetSummaryGstinUsingLabel("GSTIN", TestDataMyProfile.GSTINNoCaps);
        MyProfile.verifyAndGetSummaryGstinUsingLabel("Residential Address", TestDataMyProfile.resAddress);

    }


    @Then("verify Customer gets a success messsage when clicks on Submit Details Button")
    public void verify_customer_gets_a_success_messsage_when_clicks_on_submit_details_button() {

        MyProfile.clickOnButtonUsingTextIfOnlyDisplayed("CONFIRM");
        verifyElementIsDisplayedUsingLocator(MyProfilePage.txt_ThankYouGSTIN);

    }


/////GSTIN CORPORATE

    @Then("Customer should get below popup for GST Corporate-")
    public void customer_should_get_below_popup_for_gst_corporate() {
        waitTime(1);
        if (!isElementDisplayed(MyProfilePage.button_PopUpProceed)) {
            skipSteps("All the Further Steps skipped due to Popup- Already request Raised");
        } else {
            verifyFieldsDisplayedUsingTextAndForLoop("Important", "");
//        verifyFieldsDisplayedUsingText("Your GSTIN will get updated only in Bajaj Finance Ltd.’s records and will not be reflected for Insurance products, co-brand Credit Card and Mutual Fund products.");
            verifyFieldsDisplayedUsingTextAndForLoop("By clicking on ‘PROCEED’, you will be able to update your GSTIN in our records. This change will not reflect for insurance products, co-branded credit cards and mutual funds.", "");
            verifyElementIsDisplayedUsingLocator(MyProfilePage.button_PopUpCancel);
            verifyFieldsDisplayedUsingTextAndForLoop("Proceed", "");
        }
    }

    @Then("Customer should be  able to view below content on Verification method page for GST Corporate")
    public void customer_should_be_able_to_view_below_content_on_verification_method_page_for_gst_corporate() {
//        waitTime(2);
        verifyTextOptionsIsDisplayedUsingCommonXpath("//li[@id='DoItab']/a", "Date Of Incorporation");
        MyProfile.verifyFieldsDisplayedUsingText("Bank Account");
        verifyFieldsDisplayedUsingLocator(MyProfilePage.confirmButton_ValidationPage);
    }

    @Then("Contents should be properly aligned in Verification method page for GST Corporate")
    public void contents_should_be_properly_aligned_in_verification_method_page_for_gst_corporate() {
        MyProfile.verfiyFontInProfilePage("//ul[@class='tab_design_cta Validate_UserProfile']/li/a", "Date Of Incorporation,Bank Account");
    }

    /*
     *ADDRESS INDIVIDUAL
     */

    @Then("verify that customer is able to view first TEN letters of address line ONE, PIN and City in mask format on My Profile")
    public void verify_that_customer_is_able_to_view_first_ten_letters_of_address_line_one_pin_and_city_in_mask_format_on_my_profile() {

//                verifyMaskedAndUnmaskedFormatUsingLocator(MyProfilePage.address_Individual,"X",0,10,true,"0");
        MyProfile.verifyMaskedFormatForInitial(getText(MyProfilePage.address_Individual), "Address", 1, 10);
        MyProfile.verifyMaskedFormatForEnd(getText(MyProfilePage.address_Individual), "Address", 6);

    }

    @Then("verify that Not Available is displayed in address field when address of customer is not available")
    public void verify_that_not_available_is_displayed_in_address_field_when_address_of_customer_is_not_available() {
        // Write code here that turns the phrase above into concrete actions
        throw new io.cucumber.java.PendingException();
    }


    @Then("verify that customer is able to view address icon with primary address on my profile page for address field")
    public void verify_that_customer_is_able_to_view_address_icon_with_primary_address_on_my_profile_page_for_address_field() {
        MyProfile.verifyIconInMyProfile("Current Address");
    }

    @Then("verify that customer is able to view update button when address is not available")
    public void verify_that_customer_is_able_to_view_update_button_when_address_is_not_available() {

    }

    @Then("Clicks edit,update Address button")
    public void clicks_edit_update_address_button() {
        MyProfile.clickOnEditButtonInMyProfilePage("Current Address");

    }

    @Then("Customer should get below popup for Address-")
    public void customer_should_get_below_popup_for_address() {
        if (!isElementDisplayed(MyProfilePage.button_PopUpProceed)) {
            skipSteps("All the Further Steps skipped due to Popup- Already request Raised");
        } else {
            verifyFieldsDisplayedUsingTextAndForLoop("Important", "");
//        verifyFieldsDisplayedUsingText("Your address will get updated only in Bajaj Finance Ltd.’s records and will not be reflected for insurance products, co-brand Credit Card and Mutual Fund products");
            verifyFieldsDisplayedUsingTextAndForLoop("By clicking on ‘PROCEED’, you will be able to update your address in our records. This change will not reflect for insurance products, co-branded credit cards and mutual funds.", "");
            verifyElementIsDisplayedUsingLocator(MyProfilePage.button_PopUpCancel);
//        verifyFieldsDisplayedUsingText("Proceed");
            verifyElementIsDisplayedOrNot(MyProfilePage.button_PopUpProceed);
        }

    }


    @Then("Customer should be  able to view below content on Verification method page for Individual Address")
    public void customer_should_be_able_to_view_below_content_on_verification_method_page_for_individual_address() {
//        MyProfile.verifyFieldsDisplayedUsingText("Date of Birth");
        MyProfile.verifyFieldsDisplayedUsingText("PAN");
        MyProfile.verifyFieldsDisplayedUsingText("Insta EMI Card");
        MyProfile.verifyFieldsDisplayedUsingText("Bank Account");
        verifyFieldsDisplayedUsingLocator(MyProfilePage.inputTextField_ValidationMethodPage);
        verifyFieldsDisplayedUsingLocator(MyProfilePage.confirmButton_ValidationPage);
    }

    @Then("Contents should be properly aligned in Verification method page for Individual Address")
    public void contents_should_be_properly_aligned_in_verification_method_page_for_individual_address() {
//        MyProfile.verfiyFontInProfilePage("//ul[@class='tab_design_cta Validate_UserProfile']/li/a", "Date of Birth,Insta EMI Card,Bank Account");
        MyProfile.verfiyFontInProfilePage("//ul[@class='tab_design_cta Validate_UserProfile']/li/a", "PAN,Insta EMI Card,Bank Account");
    }

    @Then("Customer selects valid DOB {string} and On Clicking {string} button, Customer should be redirected to KYC Verification page")
    public void customer_selects_valid_dob_and_on_clicking_button_customer_should_be_redirected_to_kyc_verification_page(String string, String string2) {
        String[] s = string.split("/");
        MyProfile.selectCalendarDate(s[2], s[1], s[0]);
    }

    @Then("Customer should find the below content on Address Update Page")
    public void customer_should_find_the_below_content_on_address_update_page() {

        verifyElementIsDisplayedOrNot(MyProfilePage.address_Kyc_Page);
        driver.navigate().back();
    }


    @Then("verify Icons of Labels")
    public void verifyIconsOfLabels() {
        MyProfile.verifyLabelIconsInMyProfile("PAN");
        MyProfile.verifyLabelIconsInMyProfile("Date of Birth");
        MyProfile.verifyLabelIconsInMyProfile("Customer ID");
        MyProfile.verifyLabelIconsInMyProfile("KIN/CKYCR Number");
        MyProfile.verifyLabelIconsInMyProfile("Mobile Number");
        MyProfile.verifyLabelIconsInMyProfile("Primary Email ID");
        MyProfile.verifyLabelIconsInMyProfile("GSTIN");
        MyProfile.verifyLabelIconsInMyProfile("Current Address");
    }


    @When("Customer does has value for below fields. {string} and should be able to view Edit button")
    public void customerDoesHasValueForBelowFieldsAndShouldBeAbleToViewEditButton(String labeltextWithComma) {

        MyProfile.verifyCustomerHasValueUsinglabels(labeltextWithComma);

    }

    @And("Click on {string} button in {string}")
    public void clickOnButtonIn(String buttonText, String label) {
        MyProfile.clickOnEditOrUpdateButtonUsingLabel(label, buttonText, "");
    }


    @Then("verify below fields in {string} Popup")
    public void verifyBelowFieldsInPopup(String Label) {
        verifyFieldsDisplayedUsingText("Important");
        if (Label.equalsIgnoreCase("Mobile Number")) {
            verifyFieldsDisplayedUsingText("Your mobile number will get updated only in Bajaj Finance Ltd.’s records and will not be reflected for insurance products, Co-branded Credit Card & Mutual Fund products.");
            verifyFieldsDisplayedUsingText("Please note, updating your mobile number will delete your UPI IDs created with Bajaj Finance Ltd., and delink the earlier number with the Wallet and bank account provided for E-Mandate registration");
        } else {
            verifyFieldsDisplayedUsingText("Your " + Label.trim() + " will get updated only in Bajaj Finance Ltd.’s records and will not be reflected for insurance products, co-brand Credit Card and Mutual Fund products.");
        }
        verifyElementIsDisplayedUsingLocator(MyProfilePage.button_PopUpCancel);
        verifyFieldsDisplayedUsingText("Confirm");
    }

    @And("Click on {string} button in Popup")
    public void clickOnButtonInPopup(String buttonText) {
        MyProfile.clickOnButtonInPopup(buttonText, "");
    }


    @Then("Customer Redirected to {string} Page")
    public void customerRedirectedToPage(String headerText) {
        waitTime(5);
        if (headerText.equalsIgnoreCase("Validate Details")) {
            verifyPageRedirectionUsingTagAndText("h1", headerText, "");
        } else if (headerText.equalsIgnoreCase("Update PAN Details") || headerText.equalsIgnoreCase("Add Nominee")) {
            verifyPageRedirectionUsingTagAndText("strong", headerText, "");
        }


    }

    @Then("Customer should be  able to view below content on Validation Method page {string}")
    public void customerShouldBeAbleToViewBelowContentOnValidationMethodPage(String validationPageTextContents) {
        int size = getSizeOfSplittedText(validationPageTextContents, ",");
        String[] split = getValuesAfterSplitText(validationPageTextContents, ",");
        for (int i = 0; i < size; i++) {
            String value = split[i];
            verifyFieldsDisplayedUsingText(value);
        }
        verifyFieldsDisplayedUsingText("Enter the below mentioned details to proceed");
        verifyFieldsDisplayedUsingText("Choose Validation Method");
        verifyFieldsDisplayedUsingLocator(MyProfilePage.inputTextField_ValidationMethodPage);
        verifyFieldsDisplayedUsingLocator(MyProfilePage.confirmButton_ValidationPage);
    }

    @Then("Below Contents should be properly aligned in Validation method page {string}")
    public void belowContentsShouldBeProperlyAlignedInValidationMethodPage(String contents) {
        MyProfile.verfiyFontInProfilePage("//ul[@class='tab_design_cta Validate_UserProfile']/li/a", contents);
    }

    @Then("Choose on {string} Option in Validation Page")
    public void chooseOnOptionInValidationPage(String buttonText) {
        MyProfile.clickOnValidationButton(buttonText);
    }


    @Then("Enter Below Valid Data in {string} Text Box: {string}")
    public void enterBelowValidDataInTextBox(String OptionText, String validData) {
        MyProfile.enterValidDataInValidationPageTextBox(OptionText, validData);
    }

    @Then("verify {string} button should be enabled and Click on Button")
    public void verifyButtonShouldBeEnabledAndClickOnButton(String buttonText) {
        String button = MyProfile.verifyButtonIsEnabled(buttonText);
        clickOnIfDisplayed(button);
        waitTime(10);
//        waitForThreeDotsDisAppear();
    }

    @Then("Customer should be able to view success message in {string}")
    public void customerShouldBeAbleToViewSuccessMessageIn(String name) {
        MyProfile.verifySuccessMessage(name);
    }

    @Then("Customer should be able to view Request Progress in {string}")
    public void customerShouldBeAbleToViewRequestProgressIn(String name) {
        MyProfile.verifyRequestInProgress(name, "");
    }


//    @Then("Customer should be able to view Request Progress in {string}")
//    public void customerShouldBeAbleToViewRequestProgressIn(String name) {
//
//    }


    @Then("Select Verification Mode should be Displayed")
    public void selectVerificationModeShouldBeDisplayed() {
        verifyFieldsUsingCommonXpathAndMultipleTextWithHash("//h3", "Select Verification Mode", "");
    }

    @Then("Customer able to view {string} Options")
    public void customerAbleToViewOptions(String tabOptions) {
        MyProfile.verifyTabOptionsInVerificationPage(tabOptions);
    }

    @Then("Verify {string} tab should be Default Selected")
    public void verifyTabShouldBeDefaultSelected(String defaultSelectedTabName) {
        MyProfile.verifyTabDefaultSelected(defaultSelectedTabName);
    }

    @Then("Customer able to view {string} TextBox")
    public void customerAbleToViewTextBox(String label) {
        MyProfile.verifyTextBoxDisplayedUsingLabel(label, "");
    }

    @Then("Customer able to view {string} Icon")
    public void customerAbleToViewIcon(String label) {
        MyProfile.verifyIconDisplayedUsingLabel(label, "");
    }

    @Then("Customer able to view {string} text")
    public void customerAbleToViewText(String text) {
        if (text.equalsIgnoreCase("Cancel")) {
            verifyFieldsDisplayedUsingLocator(MyProfilePage.btn_Cancel_Popup);
        } else {
            verifyFieldsDisplayedUsingText(text);
        }


    }

    @Then("Customer able to view {string} Button")
    public void customerAbleToViewButton(String buttontext) {
        MyProfile.verifyButtonIsDisplayedUsingText(buttontext, "");
    }

    @Then("Upload Invalid format File")
    public void uploadInvalidFormatFile() {
        typeInIfPresent(MyProfilePage.txtBox_Upload, "" + getCurrentPath() + "/UploadDocuments/MyProfileInvalid/ReImagineSparkReport.html");
        verifyErrorMessageUsingText("Invalid file format or file size is larger than 2mb. Please upload in .png, .pdf or .jpg format");
    }

    @Then("Upload more than Two MB valid format File")
    public void uploadMoreThanTwoMBValidFormatFile() {
        typeInIfPresent(MyProfilePage.txtBox_Upload, "" + getCurrentPath() + "/UploadDocuments/MyProfileInvalid/ReImaginePdfReport.pdf");
        verifyErrorMessageUsingText("Invalid file format or file size is larger than 2mb. Please upload in .png, .pdf or .jpg format");
    }

    @Then("Customer is able to view success message After Uploading Valid File")
    public void customerIsAbleToViewSuccessMessageAfterUploadingValidFile() {
        typeInIfPresent(MyProfilePage.txtBox_Upload, "" + getCurrentPath() + "/UploadDocuments/MyProfileValid/Capture.JPG");
        verifyFieldsDisplayedUsingText("Document uploaded successfully");
        verifyFieldsDisplayedUsingLocator(MyProfilePage.icon_Bin);
        String imgCss = validateCssValues(MyProfilePage.icon_SuccessIcon, "background");
        if (imgCss != null && imgCss.contains("upload-check.svg")) {
            manualScreenshot("Success Tick Icon Displayed Successfully");
        } else {
            testStepFailed("Success Tick Icon is Not Displayed After Upload File");
        }

    }

    @Then("Customer is able to delete uploaded file")
    public void customerIsAbleToDeleteUploadedFile() {
        clickOnIfDisplayed(MyProfilePage.icon_Bin);
        verifyTextIsNOT_Displayed("Document uploaded successfully", "After Delete Uploaded File Using Bin Icon", "");
        verifyLocatorIsNOT_Displayed(MyProfilePage.icon_Bin, "After Delete Uploaded File Using Bin Icon", "");
        String imgCss = validateCssValues(MyProfilePage.icon_SuccessIcon, "background");
        if (imgCss != null && !imgCss.contains("upload-check.svg")) {
            manualScreenshot("Success Tick Icon is Not Displayed after Delete File Successfully");
        } else {
            testStepFailed("Success Tick Icon is Displayed After delete File wrongly");
        }
        if (imgCss != null && imgCss.contains("navigation-upload.png")) {
            manualScreenshot("Upload Icon is Displayed after Delete File Successfully");
        } else {
            testStepFailed("Upload Icon is Not Displayed After delete File");
        }
    }

    @Then("Choose on {string} Option in Verification Page")
    public void chooseOnOptionInVerificationPage(String buttonText) {
        MyProfile.clickOnValidationButton(buttonText);
    }

    @Then("verify Redirected to {string} Page")
    public void verifyRedirectedToPage(String title) {
        if (title.equalsIgnoreCase("Store Locator")) {
            transferControlToWindow(2, false);
            Alert alert = driver.switchTo().alert();
            if (alert != null) {
                alert.accept();
            }
            verifyPageRedirectionUsingTagAndText("h1", title, "");
        }

    }

    @Then("verify Store Locator access our current location after click on Proceed in pop up")
    public void verifyStoreLocatorAccessOurCurrentLocationAfterClickOnProceedInPopUp() {
        MyProfile.verifyAllowLocation();
        if (driver.getWindowHandles().size() > 1) {
            transferControlToWindow(1, true);
        }


    }

    @Then("verify Store Locator not access our current location after click on Cancel in pop up")
    public void verifyStoreLocatorNotAccessOurCurrentLocationAfterClickOnCancelInPopUp() {
        MyProfile.verifyNotAllowLocation();
        if (driver.getWindowHandles().size() > 1) {
            transferControlToWindow(1, true);
        }
    }

    @Then("Verify the BANK ACCOUNT NUMBER with different Negative values")
    public void verifyTheBANKACCOUNTNUMBERWithDifferentNegativeValues() {

    }

    @Then("Select valid DOB: {string}")
    public void selectValidDOB(String dob) {
        String[] s = dob.split("/");
        MyProfile.selectCalendarDate(s[2], s[1], s[0]);
    }

    @And("Select Mode Of Validation should be Displayed")
    public void selectModeOfValidationShouldBeDisplayed() {
        verifyFieldsUsingCommonXpathAndMultipleTextWithHash("//h3", "Select mode of Validation", "");
    }

    @And("Select Dropdown option as {string}")
    public void selectDropdownOptionAs(String dropdownOption) {
        selectDropDownUsingText(MyProfilePage.dropDown_SelectDocuments, dropdownOption);
    }

    @Then("Customer should find the below content on Update Mobile Number Details Page")
    public void customerShouldFindTheBelowContentOnUpdateMobileNumberDetailsPage() {
        verifyFieldsDisplayedUsingText("Primary Mobile Number");
        verifyFieldsDisplayedUsingText("This number will be used for all future communication");

        verifyFieldsDisplayedUsingText("Please ensure you have entered the correct mobile number");
        verifyFieldsDisplayedUsingText("Enter new Mobile Number");
        MyProfile.verifyButtonIsDisabled("Generate OTP");
    }

    @Then("{string} button should be disabled")
    public void buttonShouldBeDisabled(String butonText) {
        MyProfile.verifyButtonIsDisabled(butonText);
    }

    @Then("{string} button should be Enabled")
    public void buttonShouldBeEnabled(String butonText) {
        MyProfile.verifyButtonIsEnabled(butonText);
    }

    @And("Enter {string} in {string} Text Box")
    public void enterInTextBox(String value, String label) {
        MyProfile.enterValueInTextBoxUsingLabel(label, value);
    }
//    @And("verify {int} sec timer OTP Screen")
//    public void verifySecTimerOTPScreen(int time) {
//        verifyOtpScreenTiming(time);
//        verifyResendOtpButton(time);
//        verifyTextContentInOtpScreen();
//        verifyOtpTextBox();
//    }

    @And("Customer should view Not Available for fields for which his details are Not Available {string}")
    public void customerShouldViewNotAvailableForFieldsForWhichHisDetailsAreNotAvailable(String string) {
        MyProfile.verifyNotAvailableUsinglabels(string);
    }

    @Then("First two and last two positions of PAN should be masked")
    public void first_two_and_last_two_positions_of_pan_should_be_masked() {

        String panValue = MyProfile.verifyValueInMyProfile("Permanent Account Number");
        testStepPassed(panValue);
        MyProfile.verifyMaskedFormatForInitial(panValue, "Permanent Account Number", 1, 2);
        MyProfile.verifyMaskedFormatForEnd(panValue, "Permanent Account Number", 5);
        MyProfile.verifyUnMaskedFormat(panValue, "Permanent Account Number", 2, 5, 1);
    }

    @Then("Customer should find the below content on Update Pan Page")
    public void customer_should_find_the_below_content_on_update_pan_page() {
        waitTime(5);
//        verifyFieldsDisplayedUsingText("Update PAN Details");
        verifyFieldsDisplayedUsingText("Update your PAN details");
//        verifyFieldsDisplayedUsingText("Please provide your PAN");
        verifyFieldsDisplayedUsingText("Enter your updated PAN");
        verifyFieldsDisplayedUsingText("Verify");
        MyProfile.verifyButtonIsDisabled("Verify");
    }


    @Then("Customer should be  able to view below content on Verification method page for Corporate Address")
    public void customerShouldBeAbleToViewBelowContentOnVerificationMethodPageForCorporateAddress() {
        verifyTextOptionsIsDisplayedUsingCommonXpath("//li[@id='DoItab']/a", "Date Of Incorporation");
        MyProfile.verifyFieldsDisplayedUsingText("Bank Account");
        verifyFieldsDisplayedUsingLocator(MyProfilePage.inputTextField_ValidationMethodPage_Doi);
        verifyFieldsDisplayedUsingLocator(MyProfilePage.confirmButton_ValidationPage);


    }

    @Then("Contents should be properly aligned in Verification method page for Corporate Address")
    public void contentsShouldBeProperlyAlignedInVerificationMethodPageForCorporateAddress() {
        MyProfile.verfiyFontInProfilePage("//ul[@class='tab_design_cta Validate_UserProfile']/li/a", "Date Of Incorporation,Bank Account");

    }

    @And("Customer enters valid details {string} for {string} Text Box and Clicking {string} button, Customer should be redirected to Update Address Page")
    public void customerEntersValidDetailsForTextBoxAndClickingButtonCustomerShouldBeRedirectedToUpdateAddressPage(String string, String string2, String string3) {
        MyProfile.verifyTextBoxWithValidData(string2, string, string3);


    }

    @And("Customer enters valid details {string} for {string} Text Box and Clicking {string} button, Customer should be redirected to Update GSTIN Page")
    public void customerEntersValidDetailsForTextBoxAndClickingButtonCustomerShouldBeRedirectedToUpdateGSTINPage(String string, String string2, String string3) {
        MyProfile.verifyTextBoxWithValidData(string2, string, string3);

    }

    @When("Customer is on confirmation popup of My Profile Page for Pan Corporate")
    public void customerIsOnConfirmationPopupOfMyProfilePageForPanCorporate() {
        clickOn(MyProfilePage.button_EditPan);

    }

    @When("Customer is on confirmation popup of My Profile Page for DOI Corporate")
    public void customerIsOnConfirmationPopupOfMyProfilePageForDOICorporate() {
//        clickOn(MyProfilePage.button_EditDOI);
        MyProfile.clickOnEditButtonInMyProfilePage("Date Of Incorporation");

    }

    @When("Customer is on confirmation popup of My Profile Page for Email Corporate")
    public void customerIsOnConfirmationPopupOfMyProfilePageForEmailCorporate() {
        MyProfile.clickOnEditButtonInMyProfilePage("Email ID");
    }

    @Then("On entering valid {string} for DOI field")
    public void onEnteringValidForDOIField(String string) {
        typeInIfDisplayed(MyProfilePage.enter_DOI_UpdateDOI_Page, string);

    }

    @And("Clicks edit,update {string} button")
    public void clicksEditUpdateButton(String string) {
        MyProfile.clickOnEditButtonInMyProfilePage(string);

    }

    @Then("On Clicking Submit button after uploading a valid file, Customer should get a message for DOI")
    public void onClickingSubmitButtonAfterUploadingAValidFileCustomerShouldGetAMessageForDOI() {
        selectDropDownUsingText(MyProfilePage.dropDown_SelectDocuments, "Aadhar");
        typeInIfPresent(MyProfilePage.txtBox_Upload, "" + getCurrentPath() + "/UploadDocuments/MyProfileValid/Pdfim.pdf");
        String button = MyProfile.verifyButtonIsEnabled("SUBMIT");
        clickOn(button);
        waitForPageToLoad();
        MyProfile.waitForThreeDotsDisAppear();
        waitTime(10);
        verifyElementIsDisplayedUsingLocator(MyProfilePage.txt_ThankYouDOI);
        System.out.println(getText(MyProfilePage.txt_ThankYouDOI));

    }


    ////////24112022

    @And("Customer should get below popup for {string} if request is already raised")
    public void customerShouldGetBelowPopupForIfRequestIsAlreadyRaised(String option) {
        MyProfile.raisedRequestsPopup(option, "");
    }

    /////13022023
    @And("verify that customer is able to view last TWO letters of PAN on My Profile")
    public void verifyThatCustomerIsAbleToViewLastTWOLettersOfPANOnMyProfile() {
        String panValue = MyProfile.verifyValueInMyProfile("PAN");
        testStepPassed(panValue);
        verifyMaskedAndUnmaskedFormatUsingValue(panValue, "PAN", "X", 0, 2, true, "0");
        verifyMaskedAndUnmaskedFormatUsingValue(panValue, "PAN", "X", 0, 2, false, "1");

    }

    @And("verify that customer is able to view DD & MM of DOB on My Profile")
    public void verifyThatCustomerIsAbleToViewDDMMOfDOBOnMyProfile() {
        String dobIndividual = MyProfile.verifyValueInMyProfile("Date of Birth");
        testStepPassed(dobIndividual);
        verifyMaskedAndUnmaskedFormatUsingValue(dobIndividual, "Date of Birth", "X", 0, 4, false, "0");
        verifyMaskedAndUnmaskedFormatUsingValue(dobIndividual, "Date of Birth", "X", 0, 4, true, "1");

    }

    @And("verify Last four digits are visible and rest are masked")
    public void verifyLastFourDigitsAreVisibleAndRestAreMasked() {
        String mobileValue = MyProfile.verifyValueInMyProfile("Mobile Number");
        testStepPassed(mobileValue);
        verifyMaskedAndUnmaskedFormatUsingValue(mobileValue, "Mobile Number", "X", 0, 4, true, "0");
        verifyMaskedAndUnmaskedFormatUsingValue(mobileValue, "Mobile Number", "X", 0, 4, false, "1");

    }

    @And("On clicking a Document type {string} from Select a Document")
    public void onClickingADocumentTypeFromSelectADocument(String doc) {
        selectDropDownUsingText(MyProfilePage.dropDown_SelectDocuments, doc);

    }

    @Then("verify Multiple Document Upload section is displayed")
    public void verifyMultipleDocumentUploadSectionIsDisplayed() {
        verifyElementIsDisplayedOrNot(MyProfilePage.mult_Doc);
    }

    @And("On clicking {string} Button without Document selection, verify Error message is displayed")
    public void onClickingButtonWithoutDocumentSelectionVerifyErrorMessageIsDisplayed(String button) {
        verifyButtonIsDisplayedInThePage(button);
        clickOnButtonUsingTextUsingForLoop(button);
        verifyErrorMessageUsingText("Please Upload the document");
    }

    @And("On uploading Invalid flies for Front page, verify Error message is displayed")
    public void onUploadingInvalidFliesForFrontPageVerifyErrorMessageIsDisplayed() {
        typeInIfPresent(MyProfilePage.front_Upload, "" + getCurrentPath() + "/UploadDocuments/MyProfileInvalid/ReImaginePdfReport.pdf");
        verifyErrorMessageUsingText("Upload error. Please upload your file in .pdf, .png or .jpg format. Maximum file size: 2 MB");
        typeInIfPresent(MyProfilePage.front_Upload, "" + getCurrentPath() + "/UploadDocuments/MyProfileInvalid/ReImagineSparkReport.html");
//        verifyErrorMessageUsingText("Upload failed");
        verifyErrorMessageUsingText("Upload error. Please upload your file in .pdf, .png or .jpg format. Maximum file size: 2 MB");
    }

    @And("On uploading Invalid flies for Back page, verify Error message is displayed")
    public void onUploadingInvalidFliesForBackPageVerifyErrorMessageIsDisplayed() {
        typeInIfPresent(MyProfilePage.back_Upload, "" + getCurrentPath() + "/UploadDocuments/MyProfileInvalid/ReImaginePdfReport.pdf");
        verifyErrorMessageUsingText("Upload error. Please upload your file in .pdf, .png or .jpg format. Maximum file size: 2 MB");
        typeInIfPresent(MyProfilePage.back_Upload, "" + getCurrentPath() + "/UploadDocuments/MyProfileInvalid/ReImagineSparkReport.html");
//        verifyErrorMessageUsingText("Upload failed");
        verifyErrorMessageUsingText("Upload error. Please upload your file in .pdf, .png or .jpg format. Maximum file size: 2 MB");

    }

    @Then("On uploading valid files for Front page Customer should get a Bin and file should be accepted")
    public void onUploadingValidFilesForFrontPageCustomerShouldGetABinAndFileShouldBeAccepted() {
        typeInIfPresent(MyProfilePage.front_Upload, "" + getCurrentPath() + "/UploadDocuments/MyProfileValid/Capture.JPG");
        verifyFieldsDisplayedUsingLocator(MyProfilePage.front_Delete);
        clickOn(MyProfilePage.front_Delete);
        typeInIfPresent(MyProfilePage.front_Upload, "" + getCurrentPath() + "/UploadDocuments/MyProfileValid/embedded28.png");
        verifyFieldsDisplayedUsingLocator(MyProfilePage.front_Delete);
        clickOn(MyProfilePage.front_Delete);
        typeInIfPresent(MyProfilePage.front_Upload, "" + getCurrentPath() + "/UploadDocuments/MyProfileValid/svgfile.svg");
        clickOn(MyProfilePage.front_Delete);


    }

    @And("On uploading valid files for Back page Customer should get a Bin and file should be accepted")
    public void onUploadingValidFilesForBackPageCustomerShouldGetABinAndFileShouldBeAccepted() {
        typeInIfPresent(MyProfilePage.back_Upload, "" + getCurrentPath() + "/UploadDocuments/MyProfileValid/Capture.JPG");
        verifyFieldsDisplayedUsingLocator(MyProfilePage.back_Delete);
        clickOn(MyProfilePage.back_Delete);
        typeInIfPresent(MyProfilePage.back_Upload, "" + getCurrentPath() + "/UploadDocuments/MyProfileValid/embedded28.png");
        verifyFieldsDisplayedUsingLocator(MyProfilePage.back_Delete);
        clickOn(MyProfilePage.back_Delete);
        typeInIfPresent(MyProfilePage.back_Upload, "" + getCurrentPath() + "/UploadDocuments/MyProfileValid/svgfile.svg");
        clickOn(MyProfilePage.back_Delete);

    }

    @Then("On Clicking Submit button after uploading a valid file for both Front and Back Page")
    public void onClickingSubmitButtonAfterUploadingAValidFileForBothFrontAndBackPage() {

        typeInIfPresent(MyProfilePage.front_Upload, "" + getCurrentPath() + "/UploadDocuments/MyProfileValid/Pdfim.pdf");
        typeInIfPresent(MyProfilePage.back_Upload, "" + getCurrentPath() + "/UploadDocuments/MyProfileValid/Pdfim.pdf");
        clickOnButtonUsingTextUsingForLoop("SUBMIT");
        waitForPageToLoad();
        MyProfile.waitForThreeDotsDisAppear();
        waitTime(10);
    }

    @Then("Customer should get a message for DOI")
    public void customerShouldGetAMessageForDOI() {
        verifyElementIsDisplayedUsingLocator(MyProfilePage.txt_ThankYouDOI);
        System.out.println(getText(MyProfilePage.txt_ThankYouDOI));

    }

    @And("verify that customer is able to view DD & MM of DOI on My Profile")
    public void verifyThatCustomerIsAbleToViewDDMMOfDOIOnMyProfile() {
        String doiIndividual = MyProfile.verifyValueInMyProfile("Date Of Incorporation");
        testStepPassed(doiIndividual);
        verifyMaskedAndUnmaskedFormatUsingValue(doiIndividual, "Date Of Incorporation", "X", 0, 4, false, "0");
        verifyMaskedAndUnmaskedFormatUsingValue(doiIndividual, "Date Of Incorporation", "X", 0, 4, true, "1");

    }

    @And("Contents should be properly aligned in Verification method page for Mobile Corporate")
    public void contentsShouldBeProperlyAlignedInVerificationMethodPageForMobileCorporate() {
        MyProfile.verfiyFontInProfilePage("//ul[@class='tab_design_cta Validate_UserProfile']/li/a", "PAN,Bank Account");

    }

    @Then("Customer should be  able to view below content on Verification method page for Corporate")
    public void customerShouldBeAbleToViewBelowContentOnVerificationMethodPageForCorporate() {
        MyProfile.verifyFieldsDisplayedUsingText("PAN");
        MyProfile.verifyFieldsDisplayedUsingText("Bank Account");
        verifyFieldsDisplayedUsingLocator(MyProfilePage.inputTextField_ValidationMethodPage);
        verifyFieldsDisplayedUsingLocator(MyProfilePage.confirmButton_ValidationPage);

    }

    @And("Contents should be properly aligned in Verification method page for Corporate")
    public void contentsShouldBeProperlyAlignedInVerificationMethodPageForCorporate() {
        MyProfile.verfiyFontInProfilePage("//ul[@class='tab_design_cta Validate_UserProfile']/li/a", "PAN,Bank Account");

    }

    @And("verify the masking format for Address")
    public void verifyTheMaskingFormatForAddress() {
        String address = MyProfile.verifyValueInMyProfile("Current Address");
        testStepPassed(address);
        MyProfile.addressMasked(address, "");

    }

    @And("Customer should find Email Centre part in the Masked format except First and Last two letters")
    public void customerShouldFindEmailCentrePartInTheMaskedFormatExceptFirstAndLastTwoLetters() {
        String email = MyProfile.verifyValueInMyProfile("Email ID");
        testStepPassed(email);
        MyProfile.emailMasked(email, "");
    }

    @Then("Customer should get a message for DOB")
    public void customerShouldGetAMessageForDOB() {
        verifyElementIsDisplayedUsingLocator(MyProfilePage.txt_ThankYouDOB);
        System.out.println(getText(MyProfilePage.txt_ThankYouDOB));

    }

    @And("verify that customer is able to view First Two and Last Two letters of PAN on My Profile")
    public void verifyThatCustomerIsAbleToViewFirstTwoAndLastTwoLettersOfPANOnMyProfile() {
        String panValue = MyProfile.verifyValueInMyProfile("PAN");
        testStepPassed(panValue);
        MyProfile.panMasked(panValue, "");
    }

    @And("On clicking info icon, message for Doc Upload should be displayed")
    public void onClickingInfoIconMessageForDocUploadShouldBeDisplayed() {
        clickOnIfDisplayed(MyProfilePage.infoIcon_DocUploadPage);
        verifyFieldsDisplayedUsingText("Upload both the sides of your selected ID proof to make the verification process easy and fast.");
        clickOnIfDisplayed(MyProfilePage.infoIcon_DocUploadPageCloseButton);
    }

    @Then("Validation Pop-up with below list of details should be displayed")
    public void validationPopUpWithBelowListOfDetailsShouldBeDisplayed() {
//        verifyFieldDisplayedUsingTagAndText("strong", "Important", "");
        verifyFieldsUsingCommonXpathAndMultipleTextWithHash("//span[normalize-space(text())='Entered DOB is already updated in our records']/parent::p/preceding-sibling::strong", "Important", "");
        verifyFieldDisplayedUsingTagAndText("span", "Entered DOB is already updated in our records", "");
        verifyButtonIsDisplayedInThePage("OK");
        verifyElementIsDisplayedOrNot(MyProfilePage.close_DOBAlreadyEntered);
    }

    @And("User clicks on {string} button in Popup for Same DOB")
    public void userClicksOnButtonInPopupForSameDOB(String button) {
        clickOnButtonUsingTextUsingForLoop("OK");

    }

    @Then("pop-up should be closed and customer should  remain on existing screen")
    public void popUpShouldBeClosedAndCustomerShouldRemainOnExistingScreen() {
        MyProfile.dOBPopupClose();
    }

    @Then("On entering valid {string} for input {string} and Clicking {string} button")
    public void onEnteringValidForInputAndClickingButton(String string, String string2, String string3) {
        MyProfile.verifyTextBoxWithValidData(string2, string, string3);

    }

    @Then("Popup with Below Contents should be displayed for Existing PAN entry")
    public void popupWithBelowContentsShouldBeDisplayedForExistingPANEntry() {
//        verifyFieldDisplayedUsingTagAndText("strong", "Important", "");
        verifyFieldsUsingCommonXpathAndMultipleTextWithHash("//span[normalize-space(text())='Entered PAN is already updated in our records']/parent::p/preceding-sibling::strong", "Important", "");
        verifyFieldDisplayedUsingTagAndText("span", "Entered PAN is already updated in our records", "");
        verifyButtonIsDisplayedInThePage("OK");
        verifyElementIsDisplayedOrNot(MyProfilePage.close_PanAlreadyEntered);
    }

    @And("User clicks on {string} button in Popup for Same PAN")
    public void userClicksOnButtonInPopupForSamePAN(String btn) {
        clickOnButtonUsingTextUsingForLoop(btn);
    }

    @Then("pop-up should be closed and customer should remain on existing screen of PAN page")
    public void popUpShouldBeClosedAndCustomerShouldRemainOnExistingScreenOfPANPage() {
        MyProfile.panPopupClose();
    }

    @And("User clicks on Close\\(X) button in Popup for Same PAN")
    public void userClicksOnCloseXButtonInPopupForSamePAN() {
        clickOn(MyProfilePage.close_PanAlreadyEntered);
    }

    @And("User clicks on Cross button in Popup for Same DOB")
    public void userClicksOnCrossButtonInPopupForSameDOB() {
        clickOn(MyProfilePage.close_DOBAlreadyEntered);

    }

    ///////2507

    @Then("Customer should be able to view Add Name on profile PTB page")
    public void customerShouldBeAbleToViewAddNameOnProfilePTBPage() {
        verifyElementIsDisplayedOrNot(MyProfilePage.addNamePtb);
    }

    @And("Clicks Add Name button")
    public void clicksAddNameButton() {
        clickOn(MyProfilePage.addNamePtb);
    }

    @Then("Customer should get below popup for adding Name")
    public void customerShouldGetBelowPopupForAddingName() {
        MyProfile.addNamePtbPopup();
    }

    @Then("On entering valid {string} for Name field")
    public void onEnteringValidForNameField(String name) {
        typeIn(MyProfilePage.addNameInput, name);
    }

    @And("Clicks Submit button for adding Name")
    public void clicksSubmitButtonForAddingName() {
        clickOn(MyProfilePage.addNamePopupSubmit);
    }

    @And("Clicks Cancel button on add Name Popup")
    public void clicksCancelButtonOnAddNamePopup() {
        clickOn(MyProfilePage.addNamePopupCancel);

    }

    @Then("Customer should be redirected to Profile PTB page")
    public void customerShouldBeRedirectedToProfilePTBPage() {
        MyProfile.profilePtbRedirection();
    }

    @Then("Customer should be able to view Add DOB on profile PTB page")
    public void customerShouldBeAbleToViewAddDOBOnProfilePTBPage() {
        verifyElementIsDisplayedOrNotusingScroll(MyProfilePage.addDOBProfilePtb);
    }

    @And("Clicks Add Date of Birth button on profile PTB page")
    public void clicksAddDateOfBirthButtonOnProfilePTBPage() {
        clickOn(MyProfilePage.addDOBProfilePtb);
    }

    @Then("Customer should get below popup for DOB")
    public void customerShouldGetBelowPopupForDOB() {
        verifyPopupDisplayedUsingTagAndText("strong", "Add Date of Birth", "");
    }

    @And("On entering valid {string} for Add DOB Popup")
    public void onEnteringValidForAddDOBPopup(String dob) {
        typeInIfDisplayed(MyProfilePage.addDOBInputProfilePtb, dob);
    }

    @And("Clicks on check box button in Add DOB Popup")
    public void clicksOnCheckBoxButtonInAddDOBPopup() {
        clickOnIfDisplayed(MyProfilePage.addDOBCheckBoxProfilePtb);
    }

    @And("Clicks Proceed button in Add DOB Popup")
    public void clicksProceedButtonInAddDOBPopup() {
        clickOn(MyProfilePage.addDOBProceedProfilePtb);
    }

    @And("Clicks Cancel button in Add DOB Popup")
    public void clicksCancelButtonInAddDOBPopup() {
        clickOn(MyProfilePage.addDOBCancelProfilePtb);
    }

    @Then("Customer should be redirected to Profile PTB page from Add DOB Popup")
    public void customerShouldBeRedirectedToProfilePTBPageFromAddDOBPopup() {
        MyProfile.profilePtbRedirectionDOBPopup();
    }

    @Then("Customer should be able to view Disabled Proceed CTA when check box is unchecked")
    public void customerShouldBeAbleToViewDisabledProceedCTAWhenCheckBoxIsUnchecked() {
        verifyButtonIsDisabledUsingLocator(MyProfilePage.addDOBProceedProfilePtb);
    }

    @And("Customer should be able to view Name, Logo, {string} , {string} {string}")
    public void customerShouldBeAbleToViewNameLogo(String label1, String label2, String options) {
        MyProfile.profilePTBContents(label1, label2, options, "");
    }

    @Then("On entering invalid for DOB field validation message should be displayed")
    public void onEnteringInvalidForDOBFieldValidationMessageShouldBeDisplayed() {
        String today = generateTodayDate("ddMMyyyy");
        String dayPast1 = generatePastDate(1, "ddMMyyyy");
        String lessThan18Years = generatePast18Years1Day(18, "ddMMyyyy");
        String dayFuture1 = generateFutureDate(1, "ddMMyyyy");
        String lessThanOneYear = generatePastYears(1, "ddMMyyyy");
        String daysNegative = today + "," + dayPast1 + "," + dayFuture1 + "," + "32122001" + "," + "31112001" + "," + "31132001" + "," + "30112100" + "," + "29022021";
        String daysNegativeMin = lessThan18Years + "," + lessThanOneYear;

//        MyProfile.validateTextBox("Date of Birth", TestDataMyProfile.bankAccNegativeValues, "1212200", "121220000", 10, "00000000", "Enter valid date");
        MyProfile.verifyErrorMessageMyProfile("", daysNegative, "Enter valid date");
//        MyProfile.verifyErrorMessageMyProfile("", daysNegativeMin, "Minimum 18 years of age to be eligible");

    }

    @Then("Customer should be able to view {string} TAB on profile PTB page")
    public void customerShouldBeAbleToViewTABOnProfilePTBPage(String tab) {
        verifyFieldsUsingCommonXpathAndMultipleTextWithHash("//ul[@id='details_ul']/li/a", tab, "");

    }

    @And("Clicks {string} Tab on profile PTB page")
    public void clicksTabOnProfilePTBPage(String tab) {
        clickOnButtonUsingXpathAndText("//ul[@id='details_ul']/li/a", tab);
    }

    @Then("Customer should be able to view Labels {string} and Upload Documents, Checkbox {string} CTA under Salaried Tab")
    public void customerShouldBeAbleToViewLabelsAndUploadDocumentsCheckboxCTAUnderSalariedTab(String string1, String string2) {
        MyProfile.verifySalariedLabels(string1, string2, "");
    }

    @Then("Customer should get asterisks on below Content for Salaried {string}")
    public void customerShouldGetAsterisksOnBelowContentForSalaried(String string) {
        MyProfile.verifySalariedLabelsAsterics(string, "");
    }

    @Then("Customer should be able to view {string} , Document Uploads, Checkbox, {string} CTA under Self Employed Tab")
    public void customerShouldBeAbleToViewDocumentUploadsCheckboxCTAUnderSelfEmployedTab(String string1, String string2) {
        MyProfile.verifySelfEmployedContents(string1, string2, "");
    }

    @Then("Customer should get asterisks on below Content for Self Employed {string}")
    public void customerShouldGetAsterisksOnBelowContentForSelfEmployed(String Options) {
        MyProfile.verifySalariedLabelsAsterics(Options, "");
    }

    @Then("Customer should be able to view {string} ,Upload Document, Checkbox {string} CTA under Professional Tab")
    public void customerShouldBeAbleToViewUploadDocumentCheckboxCTAUnderProfessionalTab(String string1, String string2) {
        MyProfile.verifyProfessionalContents(string1, string2, "");
    }

    @Then("Customer should get asterisks on below Content for Professional {string} and {string}")
    public void customerShouldGetAsterisksOnBelowContentForProfessionalAnd(String options1, String options2) {
        MyProfile.verifySalariedLabelsAsterics(options1, "");
        MyProfile.verifyAstericsForHeaderOptions(options2, "");
    }

    @And("Customer should get asteriks for Header Options {string}")
    public void customerShouldGetAsteriksForHeaderOptions(String option) {
        MyProfile.verifyAstericsForHeaderOptions(option, "");

    }

    @Then("Customer should be able to view {string} ,Checkbox, {string} CTA under Others Tab")
    public void customerShouldBeAbleToViewCheckboxCTAUnderOthersTab(String option, String cta) {
        MyProfile.verifyOthersContents(option, cta, "");
    }

    @And("verify {string} CTA is disabled in Profile PTB page")
    public void verifyCTAIsDisabledInProfilePTBPage(String str) {
        verifyButtonIsDisabledInThePageusingText(str);
    }

    @And("verify {string} CTA is enabled in Profile PTB page")
    public void verifyCTAIsEnabledInProfilePTBPage(String str) {
        verifyButtonIsEnabledInThePageusingText(str);

    }

    @Then("Customer enters valid details {string} in Desciption field")
    public void customerEntersValidDetailsInDesciptionField(String str) {
        typeIn(MyProfilePage.input_DescriptionDetails, str);
    }

    @And("Clicks on check box button for Others Tab")
    public void clicksOnCheckBoxButtonForOthersTab() {
        clickOn(MyProfilePage.chkBox_Others);
    }

    @And("On Clicking {string} button in Profile PTB page")
    public void onClickingButtonInProfilePTBPage(String str) {
        clickOnButtonUsingTextUsingForLoop(str);
    }

    @Then("Customer should get asterisks on below Content for Description Box - {string}")
    public void customerShouldGetAsterisksOnBelowContentForDescriptionBox(String str) {
        MyProfile.verifySalariedLabelsAsterics(str, "");
    }

    @Then("Customer enters more than {int} characters for Description Box")
    public void customerEntersMoreThanCharactersForDescriptionBox(int num) {
        String word = generateRandomAlphanumericString(num+2, "");
        typeIn(MyProfilePage.input_DescriptionDetails, word);

    }

    @Then("Customer should get Validation message - {string}")
    public void customerShouldGetValidationMessage(String str) {
        verifyErrorMessageUsingText(str);
    }

    @And("Enters the Membership Number {string} under Professional Tab")
    public void entersTheMembershipNumberUnderProfessionalTab(String str) {
        typeIn(MyProfilePage.mmbrshipNumberProfessional,str);
    }

    @And("Select for {string} option under {string} Drop down of {string} Tab")
    public void selectForOptionUnderDropDownOfTab(String option, String dd, String tab) {
        MyProfile.selectDropdownOptionsProfilePtb(option,dd,tab,"");
    }

    @And("Clicks on check box button under Professional Tab")
    public void clicksOnCheckBoxButtonUnderProfessionalTab() {
        clickOn(MyProfilePage.chkBox_Professional);
    }

    @And("On uploading Invalid flies for Front page for Professional, verify Error message is displayed")
    public void onUploadingInvalidFliesForFrontPageForProfessionalVerifyErrorMessageIsDisplayed() {
        typeInIfPresent(MyProfilePage.docFront_Professional, "" + getCurrentPath() + "/UploadDocuments/MyProfileInvalid/ReImaginePdfReport.pdf");
        verifyErrorMessageUsingText("Upload error. Please upload your file in .pdf, .png or .jpg format. Maximum file size: 1 MB");
        typeInIfPresent(MyProfilePage.docFront_Professional, "" + getCurrentPath() + "/UploadDocuments/MyProfileInvalid/ReImagineSparkReport.html");
        verifyErrorMessageUsingText("Upload error. Please upload your file in .pdf, .png or .jpg format. Maximum file size: 1 MB");

    }

    @And("On uploading Invalid flies for Back page for Professional, verify Error message is displayed")
    public void onUploadingInvalidFliesForBackPageForProfessionalVerifyErrorMessageIsDisplayed() {
        typeInIfPresent(MyProfilePage.docBack_Professional, "" + getCurrentPath() + "/UploadDocuments/MyProfileInvalid/ReImaginePdfReport.pdf");
        verifyErrorMessageUsingText("Upload error. Please upload your file in .pdf, .png or .jpg format. Maximum file size: 1 MB");
        typeInIfPresent(MyProfilePage.docBack_Professional, "" + getCurrentPath() + "/UploadDocuments/MyProfileInvalid/ReImagineSparkReport.html");
        verifyErrorMessageUsingText("Upload error. Please upload your file in .pdf, .png or .jpg format. Maximum file size: 1 MB");

    }

    @Then("On uploading valid files for Front page for Professional, Customer should get a Bin and file should be accepted")
    public void onUploadingValidFilesForFrontPageForProfessionalCustomerShouldGetABinAndFileShouldBeAccepted() {
        typeInIfPresent(MyProfilePage.docFront_Professional, "" + getCurrentPath() + "/UploadDocuments/MyProfileValid/Capture.JPG");
        verifyFieldsDisplayedUsingLocator(MyProfilePage.docFront_Professional_Delete);
        clickOn(MyProfilePage.docFront_Professional_Delete);
        typeInIfPresent(MyProfilePage.docFront_Professional, "" + getCurrentPath() + "/UploadDocuments/MyProfileValid/embedded28.png");
        clickOn(MyProfilePage.docFront_Professional_Delete);
        typeInIfPresent(MyProfilePage.docFront_Professional, "" + getCurrentPath() + "/UploadDocuments/MyProfileValid/svgfile.svg");
        clickOn(MyProfilePage.docFront_Professional_Delete);


    }

    @And("On uploading valid files for Back page for Professional, Customer should get a Bin and file should be accepted")
    public void onUploadingValidFilesForBackPageForProfessionalCustomerShouldGetABinAndFileShouldBeAccepted() {
        typeInIfPresent(MyProfilePage.docBack_Professional, "" + getCurrentPath() + "/UploadDocuments/MyProfileValid/Capture.JPG");
        verifyFieldsDisplayedUsingLocator(MyProfilePage.docBack_Professional_Delete);
        clickOn(MyProfilePage.docBack_Professional_Delete);
        typeInIfPresent(MyProfilePage.docBack_Professional, "" + getCurrentPath() + "/UploadDocuments/MyProfileValid/embedded28.png");
        clickOn(MyProfilePage.docBack_Professional_Delete);
        typeInIfPresent(MyProfilePage.docBack_Professional, "" + getCurrentPath() + "/UploadDocuments/MyProfileValid/svgfile.svg");
        clickOn(MyProfilePage.docBack_Professional_Delete);


    }

    @And("On uploading valid file for both Front and Back Page for Professional")
    public void onUploadingValidFileForBothFrontAndBackPageForProfessional() {
        typeInIfPresent(MyProfilePage.docFront_Professional, "" + getCurrentPath() + "/UploadDocuments/MyProfileValid/Pdfim.pdf");
        typeInIfPresent(MyProfilePage.docBack_Professional, "" + getCurrentPath() + "/UploadDocuments/MyProfileValid/Pdfim.pdf");

    }

    @And("Enters Entity Name {string} for Self Employed")
    public void entersEntityNameForSelfEmployed(String ent) {
        typeIn(MyProfilePage.entityNameSelf,ent);
    }

    @And("Enters GST Number {string} in Self Employed")
    public void entersGSTNumberInSelfEmployed(String num) {
        typeIn(MyProfile.gstNumberSelf,num);
    }

    @And("On uploading Invalid flies for Front page for Self Employed, verify Error message is displayed")
    public void onUploadingInvalidFliesForFrontPageForSelfEmployedVerifyErrorMessageIsDisplayed() {
        typeInIfPresent(MyProfilePage.docFront_Self, "" + getCurrentPath() + "/UploadDocuments/MyProfileInvalid/ReImaginePdfReport.pdf");
        verifyErrorMessageUsingText("Upload error. Please upload your file in .pdf, .png or .jpg format. Maximum file size: 1 MB");
        typeInIfPresent(MyProfilePage.docFront_Self, "" + getCurrentPath() + "/UploadDocuments/MyProfileInvalid/ReImagineSparkReport.html");
        verifyErrorMessageUsingText("Upload error. Please upload your file in .pdf, .png or .jpg format. Maximum file size: 1 MB");

    }

    @And("On uploading Invalid flies for Back page for Self Employed, verify Error message is displayed")
    public void onUploadingInvalidFliesForBackPageForSelfEmployedVerifyErrorMessageIsDisplayed() {
        typeInIfPresent(MyProfilePage.docBack_Self, "" + getCurrentPath() + "/UploadDocuments/MyProfileInvalid/ReImaginePdfReport.pdf");
        verifyErrorMessageUsingText("Upload error. Please upload your file in .pdf, .png or .jpg format. Maximum file size: 1 MB");
        typeInIfPresent(MyProfilePage.docBack_Self, "" + getCurrentPath() + "/UploadDocuments/MyProfileInvalid/ReImagineSparkReport.html");
        verifyErrorMessageUsingText("Upload error. Please upload your file in .pdf, .png or .jpg format. Maximum file size: 1 MB");

    }

    @And("Clicks on check box button under Self-employed Tab")
    public void clicksOnCheckBoxButtonUnderSelfEmployedTab() {
        clickOn(MyProfilePage.chkBox_Self);
    }

    @Then("On uploading valid files for Front page for Self Employed, Customer should get a Bin and file should be accepted")
    public void onUploadingValidFilesForFrontPageForSelfEmployedCustomerShouldGetABinAndFileShouldBeAccepted() {
        typeInIfPresent(MyProfilePage.docFront_Self, "" + getCurrentPath() + "/UploadDocuments/MyProfileValid/Capture.JPG");
        verifyFieldsDisplayedUsingLocator(MyProfilePage.docFrontDelete_Self);
        clickOn(MyProfilePage.docFrontDelete_Self);
        typeInIfPresent(MyProfilePage.docFront_Self, "" + getCurrentPath() + "/UploadDocuments/MyProfileValid/embedded28.png");
        clickOn(MyProfilePage.docFrontDelete_Self);
        typeInIfPresent(MyProfilePage.docFront_Self, "" + getCurrentPath() + "/UploadDocuments/MyProfileValid/svgfile.svg");
        clickOn(MyProfilePage.docFrontDelete_Self);


    }

    @And("On uploading valid files for Back page for Self Employed, Customer should get a Bin and file should be accepted")
    public void onUploadingValidFilesForBackPageForSelfEmployedCustomerShouldGetABinAndFileShouldBeAccepted() {
        typeInIfPresent(MyProfilePage.docBack_Self, "" + getCurrentPath() + "/UploadDocuments/MyProfileValid/Capture.JPG");
        verifyFieldsDisplayedUsingLocator(MyProfilePage.docBackDelete_Self);
        clickOn(MyProfilePage.docBackDelete_Self);
        typeInIfPresent(MyProfilePage.docBack_Self, "" + getCurrentPath() + "/UploadDocuments/MyProfileValid/embedded28.png");
        clickOn(MyProfilePage.docBackDelete_Self);
        typeInIfPresent(MyProfilePage.docBack_Self, "" + getCurrentPath() + "/UploadDocuments/MyProfileValid/svgfile.svg");
        clickOn(MyProfilePage.docBackDelete_Self);

    }

    @And("On uploading valid file for both Front and Back Page for Self Employed")
    public void onUploadingValidFileForBothFrontAndBackPageForSelfEmployed() {
        typeInIfPresent(MyProfilePage.docFront_Self, "" + getCurrentPath() + "/UploadDocuments/MyProfileValid/Pdfim.pdf");
        typeInIfPresent(MyProfilePage.docBack_Self, "" + getCurrentPath() + "/UploadDocuments/MyProfileValid/Pdfim.pdf");

    }

    @Then("Customer enters valid details for Company Name {string}")
    public void customerEntersValidDetailsForCompanyName(String str) {
        typeIn(MyProfilePage.compName_Salary,str);
    }

    @And("Customer enters valid details for Designation {string}")
    public void customerEntersValidDetailsForDesignation(String str) {
        typeIn(MyProfilePage.designation_Salary,str);

    }

    @And("Customer enters valid details for Official Mail {string}")
    public void customerEntersValidDetailsForOfficialMail(String str) {
        typeIn(MyProfilePage.email_Salary,str);


    }

    @And("On uploading Invalid flies for Front page for Salaried, verify Error message is displayed")
    public void onUploadingInvalidFliesForFrontPageForSalariedVerifyErrorMessageIsDisplayed() {
        typeInIfPresent(MyProfilePage.docFront_Salary, "" + getCurrentPath() + "/UploadDocuments/MyProfileInvalid/ReImaginePdfReport.pdf");
        verifyErrorMessageUsingText("Upload error. Please upload your file in .pdf, .png or .jpg format. Maximum file size: 1 MB");
        typeInIfPresent(MyProfilePage.docFront_Salary, "" + getCurrentPath() + "/UploadDocuments/MyProfileInvalid/ReImagineSparkReport.html");
        verifyErrorMessageUsingText("Upload error. Please upload your file in .pdf, .png or .jpg format. Maximum file size: 1 MB");

    }


    @And("On uploading Invalid flies for Back page for Salaried, verify Error message is displayed")
    public void onUploadingInvalidFliesForBackPageForSalariedVerifyErrorMessageIsDisplayed() {
        typeInIfPresent(MyProfilePage.docBack_Salary, "" + getCurrentPath() + "/UploadDocuments/MyProfileInvalid/ReImaginePdfReport.pdf");
        verifyErrorMessageUsingText("Upload error. Please upload your file in .pdf, .png or .jpg format. Maximum file size: 1 MB");
        typeInIfPresent(MyProfilePage.docBack_Salary, "" + getCurrentPath() + "/UploadDocuments/MyProfileInvalid/ReImagineSparkReport.html");
        verifyErrorMessageUsingText("Upload error. Please upload your file in .pdf, .png or .jpg format. Maximum file size: 1 MB");

    }

    @And("Clicks on check box button under Salaried Tab")
    public void clicksOnCheckBoxButtonUnderSalariedTab() {
        clickOn(MyProfilePage.chkBox_Salary);

    }

    @Then("On uploading valid files for Front page for Salaried, Customer should get a Bin and file should be accepted")
    public void onUploadingValidFilesForFrontPageForSalariedCustomerShouldGetABinAndFileShouldBeAccepted() {
        typeInIfPresent(MyProfilePage.docFront_Salary, "" + getCurrentPath() + "/UploadDocuments/MyProfileValid/Capture.JPG");
        verifyFieldsDisplayedUsingLocator(MyProfilePage.docFrontDelete_Salary);
        clickOn(MyProfilePage.docFrontDelete_Salary);
        typeInIfPresent(MyProfilePage.docFront_Salary, "" + getCurrentPath() + "/UploadDocuments/MyProfileValid/embedded28.png");
        clickOn(MyProfilePage.docFrontDelete_Self);
        typeInIfPresent(MyProfilePage.docFront_Salary, "" + getCurrentPath() + "/UploadDocuments/MyProfileValid/svgfile.svg");
        clickOn(MyProfilePage.docFrontDelete_Salary);


    }

    @And("On uploading valid files for Back page for Salaried, Customer should get a Bin and file should be accepted")
    public void onUploadingValidFilesForBackPageForSalariedCustomerShouldGetABinAndFileShouldBeAccepted() {
        typeInIfPresent(MyProfilePage.docBack_Salary, "" + getCurrentPath() + "/UploadDocuments/MyProfileValid/Capture.JPG");
        verifyFieldsDisplayedUsingLocator(MyProfilePage.docBackDelete_Salary);
        clickOn(MyProfilePage.docBackDelete_Salary);
        typeInIfPresent(MyProfilePage.docBack_Salary, "" + getCurrentPath() + "/UploadDocuments/MyProfileValid/embedded28.png");
        clickOn(MyProfilePage.docBackDelete_Salary);
        typeInIfPresent(MyProfilePage.docBack_Salary, "" + getCurrentPath() + "/UploadDocuments/MyProfileValid/svgfile.svg");
        clickOn(MyProfilePage.docBackDelete_Salary);
    }

    @And("On uploading valid file for both Front and Back Page for Salaried")
    public void onUploadingValidFileForBothFrontAndBackPageForSalaried() {
        typeInIfPresent(MyProfilePage.docFront_Salary, "" + getCurrentPath() + "/UploadDocuments/MyProfileValid/Pdfim.pdf");
        typeInIfPresent(MyProfilePage.docBack_Salary, "" + getCurrentPath() + "/UploadDocuments/MyProfileValid/Pdfim.pdf");

    }

    @And("Entered name {string} should be displayed in the Name Field")
    public void enteredNameShouldBeDisplayedInTheNameField(String name) {
        MyProfile.profilePtbNameChange(name,"");
    }

    @Then("Customer should be redirected to ckyc Page - {string}")
    public void customerShouldBeRedirectedToCkycPage(String url) {
        verifyRedirectionInCommon(url,"");
    }

    @And("Click on Profile Icon")
    public void clickOnProfileIcon() {
        clickOn(HomePage.icon_Profile);
        waitTime(3);

    }

    @Then("{string} should be displayed under Profile")
    public void shouldBeDisplayedUnderProfile(String str) {
        verifyButtonIsDisplayedInThePage(str);
    }

    @And("Click on {string} under Profile")
    public void clickOnUnderProfile(String str) {
        clickOnButtonUsingTextUsingForLoop(str);
    }

    @And("Click on Edit Profile CTA in Profile Page")
    public void clickOnEditProfileCTAInProfilePage() {
        clickOnAnyThingUsingTextAndTagWithForLoop("h5","Edit profile","");
    }

    @And("Below Components & Section should be displayed:")
    public void belowComponentsSectionShouldBeDisplayed() {
        MyProfile.profileIntermediatePage();
    }

    @And("Account holder name should be displayed under Name Component section")
    public void accountHolderNameShouldBeDisplayedUnderNameComponentSection() {
        verifyElementIsDisplayedAndGetText(MyProfilePage.name_Intermediate);
    }

    @And("Click on {string} option under Shortcut component")
    public void clickOnOptionUnderShortcutComponent(String string) {
        clickOnAnyThingUsingTextAndTagWithForLoop("h4",string,"");

    }

    @Then("Customer should be redirected to {string}")
    public void customerShouldBeRedirectedTo(String url) {
        verifyRedirectionInCommon(url,"");
    }

    @Then("{string} Popup should be displayed")
    public void popupShouldBeDisplayed(String str) {
        verifyFieldsDisplayedUsingTextAndForLoop(str,"");
    }

    @And("Customer is able to view My Relations Section")
    public void customerIsAbleToViewMyRelationsSection() {
        verifyElementIsDisplayedOrNot(MyProfilePage.my_Relations);
    }

    @And("Click on {string} under My Relation section on My Account Intermediate page")
    public void clickOnUnderMyRelationSectionOnMyAccountIntermediatePage(String str) {
        clickOnButtonUsingTextUsingForLoop(str);
    }

    @And("verify Pre Approved Offers in Intermediate Page")
    public void verifyPreApprovedOffersInIntermediatePage() {
        verifyElementIsDisplayedOrNot(MyProfilePage.pao_Intermediate);
    }

    @Then("Pre Approved banner should move left or right as per the click")
    public void preApprovedBannerShouldMoveLeftOrRightAsPerTheClick() {
        MyProfile.profileIntermediatePagePAO();
    }

    @Then("Below options {string} should be displayed under Profile")
    public void belowOptionsShouldBeDisplayedUnderProfile(String options) {
        verifyFieldsUsingCommonXpathAndMultipleTextWithHash("//ul[@class='userdrop']//li//a",options,"");
    }

    @And("Below text {string} should be displayed in Document Center Page")
    public void belowTextShouldBeDisplayedInDocumentCenterPage(String txt) {
        verifyFieldsDisplayedUsingTextAndForLoop(txt,"");
    }
}

//    @Then("On Clicking a Document type & Submitting without attaching a document,error msg should be displayed")
//    public void on_clicking_a_document_type_submitting_without_attaching_a_document_error_msg_should_be_displayed() {
//
//        selectDropDownUsingText(MyProfilePage.dropDown_SelectDocuments, "Aadhaar");
//        verifyElementIsDisplayedUsingLocator(MyProfilePage.icon_Upload);
//        String button = MyProfile.verifyButtonIsEnabled("SUBMIT");
//        clickOn(button);
//        verifyErrorMessageUsingText("Please Upload the document");
//
//
//    }
//@Then("Customer should find the below content on Update PAN Details Page")
//public void customer_should_find_the_below_content_on_update_pan_details_page() {
//    verifyFieldsDisplayedUsingText("The PAN details entered should be linked to your UPI");
//    verifyFieldsDisplayedUsingText("Please provide your PAN");
//    verifyFieldsDisplayedUsingText("Verify");
//    MyProfile.verifyButtonIsDisabled("Verify");
//}
//}