package stepDefinitions;

import PageObjects.FDServicesPage;
import PageObjects.*;
import TestData.TestDataFdServices;
import base.ApplicationKeywords;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;

import java.util.*;

public class FDServicesSteps extends ApplicationKeywords {
    LoginPage login;
    HomePage home;
    LoanServicesPage loanservices;
    FDServicesPage fdServices;
    MyProfilePage myProfile;
    SDPServicesPage sdpServices;
//    Map<String, String> map_TopSection=new LinkedHashMap<>();
    Map<String, String> mapRelationshipLabels=new LinkedHashMap<>();
    List<String> list=new ArrayList<>();
    public FDServicesSteps() {
        login = new LoginPage();
        home = new HomePage();
        loanservices = new LoanServicesPage();
        fdServices = new FDServicesPage();
        myProfile=new MyProfilePage();
        sdpServices=new SDPServicesPage();
    }

    @Then("verify after clicking on respective Fixed Deposit card on Home Page customer is redirected to FD service Page")
    public void verify_after_clicking_on_respective_fixed_deposit_card_on_home_page_customer_is_redirected_to_fd_service_page() {
        fdServices.clickOnHomeMyRelationTileUsingText("Fixed Deposit","Fixed Deposit","");
        navigateToBack();
        waitForPageToLoad();
        clickOnIfDisplayed(MyRelationsPage.viewAll_MyRelations);
        waitForPageToLoad();
        fdServices.clickOnMyRelationTabUsingText("Deposits","");
        fdServices.clickOnMyRelationTileViewDetailsIcon("FIXED DEPOSIT","314697","");
        waitForPageToLoad();
        fdServices.verifyMyRelationTileRedirectionUsingAccountNumber("314697","FD","");
        verifyTopSectionInServices(FDServicesPage.logo_Fd,"FD Amount","Maturity Amount#Interest to Earn#Rate of Interest#Maturity Date","","","","","FD Number: ",false,"");
        verifyRelationShipDetails("FD Details","Interest Start Date#Interest Payout Type#Tenor#Renewal Status#TDS Waiver","");
        verifyRelationShipDetails("Bank Details","Registered Bank Name#Registered Bank Account#IFSC#Branch Name","");
        verifyMaskedAndUnmaskedFormatUsingLocator(FDServicesPage.txt_acconutNo_FD,"X",0,4,true,"0");
        verifyMaskedAndUnmaskedFormatUsingLocator(FDServicesPage.txt_acconutNo_FD,"X",4,0,false,"1");
        Map<String, String> map = verifyRelationShipSubTitleDetails(FDServicesPage.fd_JointAccount_Common, "Joint Account Holder Details", "First Joint Account Holder", "/../following-sibling::ul/descendant::p", "/following-sibling::strong", "Name#Mobile Number#PAN Card#Date of Birth", "");
        String name = map.get("Name");
        String mobNumber = map.get("Mobile Number");
        verifyMaskedAndUnmaskedFormatUsingValue(mobNumber,"Mobile Number","X",0,4,true,"0");
        verifyMaskedAndUnmaskedFormatUsingValue(mobNumber,"Mobile Number","X",4,0,false,"1");
        String panCard = map.get("PAN Card");
        String pan1 = panCard.substring(0, 5);
        verifyMaskedAndUnmaskedFormatUsingValue(pan1,"PAN Number","X",0,3,true,"0");
        verifyMaskedAndUnmaskedFormatUsingValue(pan1,"PAN Number","X",3,0,false,"1");
        verifyMaskedAndUnmaskedFormatUsingValue(panCard,"PAN Number","X",5,0,true,"1");
        String dob = map.get("Date of Birth");
        verifyMaskedAndUnmaskedFormatUsingValue(dob,"DOB","X",0,4,true,"0");
        verifyMaskedAndUnmaskedFormatUsingValue(dob,"DOB","X",4,0,false,"1");
        fdServices.verifyCollapseAccordianIconInFD();
        clickIfOnlyDisplayed(FDServicesPage.btn_sliderNext);
        Map<String, String> mapNominee = verifyRelationShipSubTitleDetails(FDServicesPage.fd_SubTitle_Common, "FD", "Nominee Details", "/../following-sibling::div/descendant::p", "/following-sibling::strong", "Name#Relation#Date of Birth#Nominee Address", "");
        if (isElementDisplayed(FDServicesPage.btn_EditNominee)) {
            clickOn(FDServicesPage.btn_EditNominee);
            waitForPageToLoad();
            clickOnIfDisplayed(FDServicesPage.btn_Cancel);
            clickIfOnlyDisplayed(FDServicesPage.btn_sliderNext);
            clickOn(FDServicesPage.btn_EditNominee);
            waitForPageToLoad();
        } else {
            testStepFailed(getRefOfXpath(FDServicesPage.btn_EditNominee)+ "is not Enabled or not Displayed for Active Fd Account");
        }
        verifyTextElementUsingOptionsTextUsingHash("Edit Nominee#Neither the nominee and joint A/C holders can be the same nor they can be the primary A/C holders#Name should be as per their government IDs#In case of minors, mention guardian details#Mention their relation with you#Address Details#Is the address same as Primary Account Holder?#Address#Why add a nominee?#The nomination facility ensures that the funds are easily transferred to your loved ones in your absence#If there is no nominee mentioned, the rightful heir(s) may be asked to produce a court order or a succession certificate to claim the fixed deposit on maturity#Need Assistance?#Help and support#Document centre");
        verifyElementIsDisplayedUsingLocator(FDServicesPage.btn_Cancel);
        verifyElementIsDisplayedUsingLocator(FDServicesPage.btn_GenerateOtp);
        verifyValueUsingLabel("//label", "Nominee Full Name", "/following-sibling::input", "attribute");
        String txtBox_NomineeName = TypeInUsingLabelText("Nominee Full Name", "/following-sibling::input", "Chandan12345!@#$%", "");
        String txtBox_Nominee_Value = getText(txtBox_NomineeName);
        validateTextBoxAcceptOnly(txtBox_Nominee_Value,"Nominee Name Text Box",1,"");
        verifyGetAllOptionsInDropDownAndCompare(FDServicesPage.dropdown_RelationShip_Nominee,"Father#Mother#Son#Daughter#Brother#Sister#Spouse#Grandfather#Grandmother");
        selectDropDownUsingText(FDServicesPage.dropdown_RelationShip_Nominee,"Brother");
        getSelectedOptionInDropDown(FDServicesPage.dropdown_RelationShip_Nominee,"Brother");
        myProfile.verifyCalendarDoi();

        String past18YearsDate = generatePastYears(18, "dd/MMM/yyyy");

//        myProfile.selectCalendarDate(past18YearsDate.split("/")[2],past18YearsDate.split("/")[1],);
//        if (isElementDisplayed(FDServicesPage.txt_GuardianDetailsTitle)) {
//
//        } else {
//
//        }
        verifyValueUsingLabel("//strong", "Address", "/following-sibling::p", "");
        clickOnIfDisplayed(FDServicesPage.toggle_No_Nominee);
        verifyTextElementUsingOptionsTextUsingHash("Provide Nominee Address");
        TypeInUsingLabelText("Address Line 1", "/following-sibling::input", "Ganesh Chamber", "");
        TypeInUsingLabelText("Address Line 2", "/following-sibling::input", "Teynampet", "");
        TypeInUsingLabelText("Pincode", "/following-sibling::input", "600097", "");
        waitTime(10);
        Boolean city = booleanGetTextEqualsIgnoreCase(FDServicesPage.city_Nominee, "CHENGALPATTU","");
        if (city) {
manualScreenshot("City is Automatically generated successfully after entered PINCODE");
        } else {
testStepFailed("City is Automatically is Not generated successfully after entered PINCODE");
        }
        Boolean state = booleanGetTextEqualsIgnoreCase(FDServicesPage.state_Nominee, "TAMILNADU","");
        if (city) {
manualScreenshot("State is Automatically generated successfully after entered PINCODE");
        } else {
testStepFailed("State is Automatically is Not generated successfully after entered PINCODE");
        }
        clickOnIfDisplayed(FDServicesPage.btn_GenerateOtp);
        verifyTextElementUsingOptionsTextUsingHash("OTP Verification#An OTP has been sent on your registered Mobile Number#Enter One Time Password#Resend OTP");
//        verifyTextElementUsingOptionsTextUsingHash("Success#Nominee details added successfully#Got It");

    }


    @Then("verify below components of {string} Page: {string}")
    public void verifyBelowComponentsOfPage(String title, String componentNames) {
fdServices.verifyComponentsOfServicesPage(title,componentNames);
    }


    @Then("verify Logo of {string}")
    public void verifyLogoOf(String name) {
        if (name.equalsIgnoreCase("Fixed Deposit")) {
            verifyFieldsDisplayedUsingLocator(FDServicesPage.logo_Fd);
        } else if (name.equalsIgnoreCase("Loan Services") || name.equalsIgnoreCase("B2B Services")) {
            verifyFieldsDisplayedUsingLocator(LoanServicesPage.logo_ActiveTermLoan);
        } else if (name.equalsIgnoreCase("Insurance Services")) {
            verifyFieldsDisplayedUsingLocator(InsuranceServicesPage.logo_Insurance);
        } else if(name.equalsIgnoreCase("SDP")){
            verifyFieldsDisplayedUsingLocator(FDServicesPage.logo_sdp);
        }else {
            testStepFailed("There is no Logo for this Name: "+name);
        }
    }

    @Then("verify {string} of Servies")
    public void verifyOfServies(String numberText) {
fdServices.verifyAccountNumberOfServices(numberText,"");
    }

    @Then("verify {string}")
    public void verify(String amountText) {
fdServices.verifyAmountOfServices(amountText,"");
    }



    @Then("verify Below labels of Top Section: {string}")
    public void verifyBelowLabelsOfTopSection(String labels1) {
        mapRelationshipLabels.clear();
        String labels = changedCommaToHash(labels1, "");
        mapRelationshipLabels = verifyLabelsInTopSectionOfServices(FDServicesPage.fd_topSectionLabel_Common, "/following-sibling::strong", labels, "");
    }
    
    @Then("verify {string} format as <Rs. Digits>")
    public void verifyFormatAsRsDigits(String label) {
        String value = mapRelationshipLabels.get(label);
        fdServices.verifyAmountWithRs(label,value);
    }


    @Then("verify {string} format as <Digits%>")
    public void verifyFormatAsDigits(String label) {
        String value = mapRelationshipLabels.get(label);
fdServices.verifyDigitsWithPercentage(label,value);
    }

    @Then("verify {string} format as {string}")
    public void verifyFormatAs(String label, String dateFormat) {
        String value = mapRelationshipLabels.get(label);
        testStepInfo(value);
        fdServices.verifyValueisDateFormat(label,value,dateFormat,"");
    }



    @Then("verify below Labels of {string} in {string} Relationship Details: {string}")
    public void verifyBelowLabelsOfInRelationshipDetails(String title, String name, String labels) {
        mapRelationshipLabels.clear();
        String newLabels = labels.replaceAll(", ", "#");
        if (title.toLowerCase().contains("nominee")&&isElementPresent(FDServicesPage.btn_NextSlider)) {
            clickOn(FDServicesPage.btn_NextSlider);
        }
        if (title.equalsIgnoreCase("First Joint Account Holder")||title.equalsIgnoreCase("Second Joint Account Holder")) {
            mapRelationshipLabels = verifyRelationShipSubTitleDetails(FDServicesPage.fd_JointAccount_Common, name, title, "/../following-sibling::ul/descendant::p", "/following-sibling::strong", newLabels, "");
        } else if(name.toLowerCase().contains("systematic deposit plan")){
            mapRelationshipLabels = verifyRelationShipSubTitleDetails(SDPServicesPage.sdp_SubTitle_Common, name, title, "/../following-sibling::div/descendant::p", "/following-sibling::strong", newLabels, "");
        } else if (title.toLowerCase().contains("linked")&&title.toLowerCase().contains("bank account")) {
            mapRelationshipLabels = verifyRelationShipSubTitleDetails(SDPServicesPage.sdp_JointAccount_Common, name, title, "/../following-sibling::div//p", "/following-sibling::strong", newLabels, "");
        }else{
            mapRelationshipLabels = verifyRelationShipSubTitleDetails(FDServicesPage.fd_SubTitle_Common, name, title, "/../following-sibling::div/descendant::p", "/following-sibling::strong", newLabels, "");
        }
//        testStepInfo(String.valueOf(mapRelationshipLabels));
    }

    @Then("verify below Labels of {string} in {string} Relationship Details is Not Displayed: {string}")
    public void verifyBelowLabelsOfInRelationshipDetailsIsNotDisplayed(String title, String name, String labels) {
        String newLabels = labels.replaceAll(", ", "#");
        if (title.toLowerCase().contains("nominee")&&isElementPresent(FDServicesPage.btn_NextSlider)) {
            clickOn(FDServicesPage.btn_NextSlider);
        }
        if (title.equalsIgnoreCase("First Joint Account Holder")||title.equalsIgnoreCase("Second Joint Account Holder")) {
            fdServices.verifyRelationShipSubTitleDetailsIsNotDisplayed(FDServicesPage.fd_JointAccount_Common, name, title, "/../following-sibling::ul/descendant::p", "/following-sibling::strong", newLabels, "");
        }else if(name.toLowerCase().contains("systematic deposit plan")){
            fdServices.verifyRelationShipSubTitleDetailsIsNotDisplayed(SDPServicesPage.sdp_SubTitle_Common, name, title, "/../following-sibling::div/descendant::p", "/following-sibling::strong", newLabels, "");
        } else if (title.toLowerCase().contains("linked")&&title.toLowerCase().contains("bank account")) {
            fdServices.verifyRelationShipSubTitleDetailsIsNotDisplayed(SDPServicesPage.sdp_JointAccount_Common, name, title, "/../following-sibling::div//p", "/following-sibling::strong", newLabels, "");
        } else {
            fdServices.verifyRelationShipSubTitleDetailsIsNotDisplayed(FDServicesPage.fd_SubTitle_Common, name, title, "/../following-sibling::div/descendant::p", "/following-sibling::strong", newLabels, "");
        }
    }

    @Then("verify Last {int} Characters Should be {string} \\({string}) in {string}")
    public void verifyLastCharactersShouldBeIn(int noOfMaskedOrUnMaksedInEnd, String maskedOrUnMasked, String maskedSymbol, String label) {
//        testStepFailed(label);
        String value = mapRelationshipLabels.get(label);
//        testStepFailed(String.valueOf(mapRelationshipLabels));

//        for (Map.Entry<String,String> entry : mapRelationshipLabels.entrySet()){
//            System.out.println("Key = " + entry.getKey() +
//                    ", Value = " + entry.getValue());
//    }

        verifyMaskedAndUnmaskedFormatUsingValue(value,label,maskedSymbol,0,noOfMaskedOrUnMaksedInEnd, maskedOrUnMasked.equalsIgnoreCase("masked"),"1");
    }

    @Then("verify Other than Last {int} Characters Should be {string} \\({string}) in {string}")
    public void verifyOtherThanLastCharactersShouldBeIn(int noOfMaskedOrUnMaksedInEnd, String maskedOrUnMasked, String maskedSymbol, String label) {
        String value = mapRelationshipLabels.get(label);
        verifyMaskedAndUnmaskedFormatUsingValue(value,label,maskedSymbol,0,noOfMaskedOrUnMaksedInEnd, maskedOrUnMasked.equalsIgnoreCase("masked"),"0");
    }

//    @Then("verify First {int} and Last {int} Characters Should be {string} And Others Should be {string} in {string}")
//    public void verifyFirstAndLastCharactersShouldBeAndOthersShouldBeIn(int noOfFirstCharacters, int noOfLastCharacters, String arg2, String arg3, String arg4) {
//
//    }

    @Then("verify First {int} and Last {int} Characters Should be {string} \\({string}) And Others Should be {string} in {string}")
    public void verifyFirstAndLastCharactersShouldBeAndOthersShouldBeIn(int noOfFirstCharacters, int noOfLastCharacters, String InitialAndEndformat, String maskedSymbol, String middleFormat, String label) {
        String value = mapRelationshipLabels.get(label);
        String subValueFirst = value.substring(0, value.length()-noOfLastCharacters);
        String subValueLast = value.substring(value.length()-noOfLastCharacters);
        if (InitialAndEndformat.equalsIgnoreCase("Masked")) {
            verifyMaskedAndUnmaskedFormatUsingValue(subValueFirst,label,maskedSymbol,0,3,true,"0");
            verifyMaskedAndUnmaskedFormatUsingValue(subValueFirst,label,maskedSymbol,0,3,false,"1");
            verifyMaskedAndUnmaskedFormatUsingValue(subValueLast,label,maskedSymbol,0,5,true,"1");
        } else {
            verifyMaskedAndUnmaskedFormatUsingValue(subValueFirst,label,maskedSymbol,0,3,false,"0");
            verifyMaskedAndUnmaskedFormatUsingValue(subValueFirst,label,maskedSymbol,0,3,true,"1");
            verifyMaskedAndUnmaskedFormatUsingValue(subValueLast,label,maskedSymbol,0,5,false,"1");
        }
    }

    @Then("Click on Accordian Icon {int} in {string}")
    public void clickOnAccordianIconIn(int iconNumber, String subTitleName1) {
        if (iconNumber==1) {
            clickOnIfDisplayed(FDServicesPage.accordianIcon1);
        }else {
            clickOnIfDisplayed(FDServicesPage.accordianIcon2);
        }
    }

    @Then("verify Accordian Icon Operations in Joint Account Holder Details")
    public void verifyAccordianIconOperationsInJointAccountHolderDetails() {
        fdServices.verifyCollapseAccordianIconInFD();
    }

    @Then("verify {string} Should Not be Masked Format")
    public void verifyShouldNotBeMaskedFormat(String label) {
        String value = mapRelationshipLabels.get(label);
fdServices.verifyValueInUnMaskedFormat(value,label,"XX","");
    }

    @Then("verify {string} Masked And UnMasked Format in {string}")
    public void verifyMaskedAndUnMaskedFormatIn(String label, String title) {
        String value = mapRelationshipLabels.get(label);
        fdServices.verifyAddressMasked(value,label,title);
    }

    @Then("verify below fields of {string} in {string} Relationship Details for Add Nominee")
    public void verifyBelowFieldsOfInRelationshipDetailsForAddNominee(String label, String title) {
        if (label.toLowerCase().contains("nominee")&&isElementPresent(FDServicesPage.btn_NextSlider)) {
            clickOn(FDServicesPage.btn_NextSlider);
        }
        verifyTextElementUsingOptionsTextUsingHash("Why should I add a nominee?");
        verifyTextElementUsingOptionsTextUsingHash("By adding a nominee, you can ensure that your FD is easily transferred to your loved ones in the case of your untimely demise. .");
        verifyFieldsDisplayedUsingLocator(FDServicesPage.txt_AddNominee_SecondPara);
        verifyTextElementUsingOptionsTextUsingHash("Add Nominee");
    }

    @Then("verify {string} button is Displayed")
    public void verifyButtonIsDisplayed(String buttonText) {
        verifyFieldsDisplayedUsingText(buttonText);
    }

    @Then("verify {string} button is Not Displayed")
    public void verifyButtonIsNotDisplayed(String buttonText) {
        verifyElementIsNotPresentUsingtext(buttonText);
    }


    @And("verify Blank Error Message {string} for {string}")
    public void verifyBlankErrorMessageFor(String errorMsg, String label) {
fdServices.verifyHintMsgUsingLabel(errorMsg,label,"");
    }

    @And("verify hint Message {string} for {string}")
    public void verifyHintMessageFor(String hintMsg, String label) {
        fdServices.verifyHintMsgUsingLabel(hintMsg,label,"");
    }

    @Then("verify {string} Text Box")
    public void verify_text_box(String label, io.cucumber.datatable.DataTable dataTable) {
        List<String> list = dataTable.asList();
        for (int i = 0; i < list.size(); i++) {
            fdServices.verifyTextBoxAcceptAlphabetsOnlyUsingLabel(label,"/following-sibling::input",list.get(i),4,"");
        }
        // Write code here that turns the phrase above into concrete actions
        // For automatic transformation, change DataTable to one of
        // E, List<E>, List<List<E>>, List<Map<K,V>>, Map<K,V> or
        // Map<K, List<V>>. E,K,V must be a String, Integer, Float,
        // Double, Byte, Short, Long, BigInteger or BigDecimal.
        //
        // For other transformations you can register a DataTableType.

    }
    @Then("verify following labels")
    public void verify_following_labels(io.cucumber.datatable.DataTable dataTable) {
        List<String> list = dataTable.asList();
        for (int i = 0; i < list.size(); i++) {
            verifyMultipleElementIsDisplayedUsingTexts(list.get(i));
        }
    }


    @And("verify {string} Dropdown following values: {string}")
    public void verifyDropdownFollowingValues(String nameLocator, String values) {
        String values1 = values.replaceAll(",", "#");
        verifyGetAllOptionsInDropDownAndCompare(FDServicesPage.dropdown_RelationShip_Nominee,values1);
    }

    @Then("{string} Button is Disabled")
    public void buttonIsDisabled(String buttonText) {
//        String button=buttonText+" Button#xpath=//input[@type='button'][@value='"+buttonText.trim()+"'][@disabled]|//button[normalize-space(text())='"+buttonText.trim()+"'][@disabled]|//a[normalize-space(text())='"+buttonText.trim()+"'][@disabled]";
        String button1=buttonText+" Button#xpath=//input[@type='button'][@value='"+buttonText.trim()+"']|//button[normalize-space(text())='"+buttonText.trim()+"']|//a[normalize-space(text())='"+buttonText.trim()+"']";
        String button=buttonText+" Button#xpath=//input[@type='button'][@value='"+buttonText.trim()+"'][@disabled]|//button[normalize-space(text())='"+buttonText.trim()+"'][@disabled]|//a[normalize-space(text())='"+buttonText.trim()+"'][(@disabled)or(@onclick='return false;')]";
        Boolean flag = scrollToWebElementIfPresent(button1);
        if (flag) {
            if (isElementDisplayed(button)) {
testStepPassed(buttonText+" is Disabled successfully");
            } else {
                stepFailed(buttonText+" is not Disabled");
            }
        }


    }

    @Then("{string} Button is Enabled")
    public void buttonIsEnabled(String buttonText) {
//        String button=buttonText+" Button#xpath=//input[@type='button'][@value='"+buttonText.trim()+"'][not(@disabled)]|//button[normalize-space(text())='"+buttonText.trim()+"'][not(@disabled)]|//a[normalize-space(text())='"+buttonText.trim()+"'][not(@disabled)]";
        String button=buttonText+" Button#xpath=//input[@type='button'][@value='"+buttonText.trim()+"'][not(@disabled)]|//button[normalize-space(text())='"+buttonText.trim()+"'][not(@disabled)]|//a[normalize-space(text())='"+buttonText.trim()+"'][not(@disabled)][not(@onclick='return false;')]";
        Boolean flag = scrollToWebElementIfPresent(button);
        if (flag) {
            if (isElementDisplayed(button)) {
                testStepPassed(buttonText+" is Enabled successfully");
            } else {
                stepFailed(buttonText+" is not Enabled");
            }
        }


    }


    @And("select {string} date in Nominee DOB calendar")
    public void selectDateInNomineeDOBCalendar(String day) {
        if (day.equalsIgnoreCase("today")) {
            String today = generateTodayDate("d/MMM/yyyy");
            String[] date = today.split("/");
            fdServices.selectCalendarDateUsingLocator(FDServicesPage.icon_Calendar_Nominee, date[2], date[1], date[0]);
        }else if(day.equalsIgnoreCase("Minor Age")){
            String minor = generatePast18Years1Day(18, "d/MMM/yyyy");String[] date = minor.split("/");
            fdServices.selectCalendarDateUsingLocator(FDServicesPage.icon_Calendar_Nominee, date[2], date[1], date[0]);
        } else {
            String[] date = day.split("/");
            fdServices.selectCalendarDateUsingLocator(FDServicesPage.icon_Calendar_Nominee, date[2], date[1], date[0]);
//            fdServices.selectCalendarDateUsingLocator(FDServicesPage.icon_Calendar_Nominee, date[2], date[1], date[0]);
        }
    }

    @And("verify following labels for {string}")
    public void verifyFollowingLabelsFor(String naming,io.cucumber.datatable.DataTable dataTable) {
        testStepInfo("Guardian Details");
        List<String> list = dataTable.asList();
        for (int i = 0; i < list.size(); i++) {
            verifyMultipleSecondElementIsDisplayedUsingTexts(list.get(i));
        }
    }


    @And("{string} button should be default for {string}")
    public void buttonShouldBeDefaultFor(String toggleButtontext, String label) {
        fdServices.verifyDefaultToggleButton(toggleButtontext,label,"");
    }

    @And("click on {string} Toggle button for {string}")
    public void clickOnToggleButtonFor(String toggleButtonText, String title) {
        fdServices.clickOnToggleButton(toggleButtonText,title,"");
    }

    @And("verify {string} for {string} NO Toggle Button")
    public void verifyForNOToggleButton(String expectedText, String title) {
        fdServices.verifyNoToggleButton(title,expectedText,"");
    }

    @And("verify {string} YES Toggle Button")
    public void verifyYESToggleButton(String title) {
        fdServices.verifyYesToggleButton(title,"");
    }

    @And("verify Date Of Birth for {string}")
    public void verifyDateOfBirthFor(String name) {
        if (name.equalsIgnoreCase("Nominee Details")) {
            fdServices.verifyMinorCalendarUsingLocator(FDServicesPage.icon_Calendar_Nominee, FDServicesPage.txtBox_Calendar_Nominee);
        } else {
            fdServices.verifyMajorCalendarUsingLocator(FDServicesPage.icon_Calendar_Guardian, FDServicesPage.txtBox_Calendar_Guardian);
        }
    }

    @And("select {string} date in Guardian DOB calendar")
    public void selectDateInGuardianDOBCalendar(String day) {
        if (day.equalsIgnoreCase("today")) {
            String today = generateTodayDate("d/MMM/yyyy");
            String[] date = today.split("/");
            fdServices.selectCalendarDateUsingLocator(FDServicesPage.icon_Calendar_Guardian, date[2], date[1], date[0]);
        } else {
            String[] date = day.split("/");
            fdServices.selectCalendarDateUsingLocator(FDServicesPage.icon_Calendar_Guardian, date[2], date[1], date[0]);
        }
    }

    @And("Select Relationship Dropdown as {string}")
    public void selectRelationshipDropdownAs(String relation) {
        selectDropDownUsingText(FDServicesPage.dropdown_RelationShip_Nominee,relation);
    }

    @And("verify Otp Screen")
    public void verifyOtpScreen() {


    }

    @And("verify {int} sec timer OTP Screen")
    public void verifySecTimerOTPScreen(int time) {
        verifyOtpScreenTiming(time);
        verifyResendOtpButton(time);
        verifyTextContentInOtpScreen();
        verifyOtpTextBox();
    }

    @And("click on submit button in OTP Screen")
    public void clickOnSubmitButtonInOTPScreen() {
        typeInOtpInTextBox(6,"123456");
        clickOnIfDisplayed(FDServicesPage.btn_Submit_Otp);
        waitForPageToLoad();
    }

    @And("verify Success Screen")
    public void verifySuccessScreen() {
verifyElementIsDisplayedUsingLocator(FDServicesPage.successMsg_AddNominee);
verifyElementIsDisplayedUsingLocator(FDServicesPage.doYouKnow_AddNominee);
verifyElementIsDisplayedUsingLocator(FDServicesPage.timelineMsg_AddNominee);
verifyElementIsDisplayedUsingLocator(FDServicesPage.txt_DoYouKnowExplaination_AddNominee);
verifyElementIsDisplayedUsingLocator(FDServicesPage.tickMark_AddNominee);
    }


    @And("verify Nominee Details in Success Page {string}")
    public void verifyNomineeDetailsInSuccessPage(String fdNumber) {
        verifyMultipleElementIsDisplayedUsingTexts("Nominee details");
        Map<String, String> map = verifyLabelsInTopSectionOfServices(FDServicesPage.fd_SuccessPageNomineeDetails_Common, "/following-sibling::strong", "Name, FD Number", "");
        if (map.get("FD Number").equals(fdNumber)) {
testStepPassed("FD Number shown successfully in Nominee Details");
        } else {
            stepFailed("FD Number is not shown in Nominee Details");
        }
    }

    @And("enter <{string}> in {string} Text Box for Nominee {string}")
    public void enterInTextBoxForNominee(String value, String label, String title) {
        String txtBox = fdServices.enterAddressTextBoxUsingTitleAndLabel(title, label, value, "");
        if (getText(txtBox).trim().equalsIgnoreCase(value.trim())) {
testStepPassed(value+" is Accepted successfully in "+label+" Text Box");
        } else {
            stepFailed(value+" is not Accepted successfully");
        }
    }


    @And("verify {string} is Auto Populated in {string} Text Box for Nominee {string}")
    public void verifyIsAutoPopulatedInTextBoxForNominee(String value, String label, String title) {
fdServices.valueIsAutoPopulatedUsingTitleAndLabel(title,label,value,"");
    }

    @And("verify validation Message {string} for {string}")
    public void verifyValidationMessageFor(String errMsg, String label) {
        fdServices.verifyHintMsgUsingLabel(errMsg,label,"");
    }

    @Then("verify Accordian Icon should not be displayed")
    public void verifyAccordianIconShouldNotBeDisplayed() {
        if (!isElementDisplayed(FDServicesPage.accordianIcon1)) {
testStepPassed("Accordian Iocn is Not Displayed for Single Joint Account Holder successfully");
        } else {
            stepFailed("Accordian Iocn is Displayed for Single Joint Account Holder");
        }
    }

    @And("click on {string} Tile of Account number {string}")
    public void clickOnTileOfAccountNumber(String title, String accountNumber) {
        fdServices.clickOnMyRelationTileViewDetailsIcon(title,accountNumber,"");
    }

    @Then("verify Redirection using Account number {string}")
    public void verifyRedirectionUsingAccountNumber(String accountNumber) {
        fdServices.verifyMyRelationTileRedirectionUsingAccountNumber(accountNumber,"","");
    }


    @And("verify {string} value should be {string} {string}")
    public void verifyValueShouldBe(String label, String valueExpected, String extra) {
        String valueActual = mapRelationshipLabels.get(label);
        String[] split = valueExpected.split(" \\(OR\\) ");
fdServices.verifyValueShouldBeExpected(label,split,valueExpected,valueActual);
    }

    @And("verify {string} value should not be {string} {string}")
    public void verifyValueShouldNotBe(String label, String valueExpected, String extra) {
        String valueActual = mapRelationshipLabels.get(label);
        if (!valueExpected.trim().equalsIgnoreCase(valueActual.trim())) {
            manualScreenshot(label+" : Actual value is not "+valueExpected+" verified successfully");
        } else {
            testStepFailed(label+" : Actual value is same as "+valueExpected);
            stepFailed("Expected: "+valueExpected);
            stepFailed("Actual: "+valueActual);
        }
    }

    @Then("verify {string} format as <MM Months>")
    public void verifyFormatAsMMMonths(String label) {
        String value = mapRelationshipLabels.get(label);
        fdServices.verifyDigitsWithMonths(label,value);
    }

    @Then("verify below Labels of Guardian Details in {string} Relationship Details: {string}")
    public void verifyBelowLabelsOfGuardianDetailsInRelationshipDetails(String fdTitle, String labels) {
        mapRelationshipLabels.clear();
        String newLabels = labels.replaceAll(", ", "#");
        mapRelationshipLabels = fdServices.verifyRelationShipGuardianDetails(newLabels);
    }

    @And("verify Resend OTP button and Timing in Reverse Order")
    public void verifyResendOTPButtonAndTimingInReverseOrder() {
        verifyOtpScreenTiming(59);
    }

    @And("OTP Verification title Displayed")
    public void otpVerificationTitleDisplayed() {
        if (isElementDisplayed(FDServicesPage.errorMsgExceedOtpLimit)) {
            skipSteps("OTP Limit Exceed");
            verifyLogout();
        } else {
            verifyFieldsDisplayedUsingTextUsingForLoop("OTP Verification", "text", "");
        }
    }



    @And("Verify {string} in {string} is Fetched from Nominee Details")
    public void verifyInIsFetchedFromNomineeDetails(String labelInFdPage, String locNominee) {
        String value = mapRelationshipLabels.get(labelInFdPage).toLowerCase().trim();
        String locator = getLocator(locNominee);


        if (labelInFdPage.toLowerCase().contains("name")) {
            String nomineeValue = getAttributeValueIfDisplayed(locator).toLowerCase().trim();
            if (nomineeValue.equalsIgnoreCase(value)) {
                manualScreenshot(getRefOfXpath(locator)+" value is fetched from Nominee Page successfully");
            } else {
                stepFailed("FD Page "+labelInFdPage+" Value: "+value);
                stepFailed("Nominee Page "+getRefOfXpath(locator)+" Value: "+nomineeValue);
                manualScreenshot(getRefOfXpath(locator)+" value is not fetched from Nominee Page");
            }
        } else if (labelInFdPage.toLowerCase().contains("relation")) {
            String nomineeValue = getAttributeValueIfDisplayed(locator).toLowerCase().trim();
                getSelectedOptionInDropDown(locator,value);
        } else if (labelInFdPage.toLowerCase().contains("date of birth")) {
            String nomineeValue = getAttributeValueIfDisplayed(locator).toLowerCase().trim();
            String dob = value.replaceAll("xxxxxx", "").trim();
            if (nomineeValue.contains(dob)) {
                manualScreenshot("Nominee DOB Year value fetched from FD page verified successfully");
            } else {
                stepFailed("FD Page "+labelInFdPage+" Value: "+value);
                stepFailed("Nominee Page "+getRefOfXpath(locator)+" Value: "+nomineeValue);
                testStepFailed("Nominee DOB Year value is not fetched from FD page");
            }
        } else if (labelInFdPage.toLowerCase().contains("address")) {
            String nomineeValue = getTextUsingLocator(locator).toLowerCase().trim();
            if (nomineeValue.contains(value.substring(0,15))) {
                manualScreenshot(getRefOfXpath(locator)+" value is fetched from Nominee Page successfully");
            } else {
                stepFailed("FD Page "+labelInFdPage+" Value: "+value);
                stepFailed("Nominee Page "+getRefOfXpath(locator)+" Value: "+nomineeValue);
                manualScreenshot(getRefOfXpath(locator)+" value is not fetched from Nominee Page");
            }
        } else {
            testStepFailed(labelInFdPage+" Label is not Matched");
        }
    }


    @And("verify RHS for {string} Page")
    public void verifyRHSForPage(String arg0) {
        testStepInfo("********** "+arg0+" **********");
verifyFieldsDisplayedUsingLocatorUsingForLoop(FDServicesPage.nomineeRhsTitle,"");
        verifyGetTextUsingLocatorAndCompareWithText(fdServices.nomineeRhsFirstOption, TestDataFdServices.fdRhsFirstOption,"");
        verifyGetTextUsingLocatorAndCompareWithText(fdServices.nomineeRhsSecondOption, TestDataFdServices.fdRhsSecondOption,"");
    }

    @And("verify {string} error massage for {string} {string} Field")
    public void verifyErrorMassageForField(String errmsgText, String title, String label) {
        fdServices.verifyErrorMessageInFdNomineePageUsingLabel(title,label,errmsgText,"");
    }

    @And("Verify Following Fields in the {string} Section: {string}")
    public void verifyFollowingFieldsInTheSection(String sectionname, String labelsWithComma) {
        String labels = changedCommaToHash(labelsWithComma, "");
        mapRelationshipLabels = fdServices.verifyLabelsAndGetValues(sectionname, labels, "");
    }

    @And("verify {string} value should be Contains {string} {string}")
    public void verifyValueShouldBeContains(String label, String valueExpected, String extra) {
        String valueActual = mapRelationshipLabels.get(label);
        if (valueActual.trim().contains(valueExpected.trim())) {
            testStepPassed(valueActual);
            manualScreenshot(label+" : Expected value verified succssfully.");
        } else {
            testStepFailed(label+" : Expected value is not verified");
            stepFailed("Expected: "+valueExpected);
            stepFailed("Actual: "+valueActual);
        }
    }


    @Then("verify {string} Nudge with {string} Color")
    public void verifyNudgeWithColor(String nudgeText, String colorName) {
        if (colorName.equalsIgnoreCase("blue")) {
            fdServices.verifyNudge(nudgeText,"#002953",colorName,"");
        }
    }

    @And("Verify Redirected to View Documents of {string} {string}")
    public void verifyRedirectedToViewDocumentsOf(String arg0, String arg1) {
        fdServices.redirectionToViewDocumentsPage(arg0,arg1,"");
    }

    @And("verify Documents Names in View Documents Page")
    public void verifyDocumentsNamesInViewDocumentsPage() {
        list = fdServices.verifyDocumentsNames();
    }

    @And("verify Customer able to Download Documents")
    public void verifyCustomerAbleToDownloadDocuments() {
            fdServices.verifyDownloadDocumentsInViewDocuments(list, "");
    }

    @Then("verify Renewal plan calculation for Maturity Amount")
    public void verify_renewal_plan_calculation_for_maturity_amount(io.cucumber.datatable.DataTable dataTable) {
        List<String> values = dataTable.asList();
        for (int i = 0; i < values.size(); i++) {
            String value = values.get(i);
            String[] s = value.split(",");
            fdServices.verifyInterestRateCalculationInRenewalPlan(s[0].trim(),s[1].trim(),s[2].trim(),s[3].trim());
        }

    }

    @And("verify {string} is Default Option in {string}")
    public void verifyIsDefaultOptionIn(String option, String name) {
            fdServices.verifyDefaultSelectBoxInRenew(option,name);
    }

    @And("verify Badge displayed with {string} for {string}")
    public void verifyBadgeDisplayedWithFor(String arg0, String arg1) {
        fdServices.verifyBadgeInBox(arg1,arg0,"");
    }


    @And("Click on {string} in Renewal Plan Page")
    public void clickOnInRenewalPlanPage(String arg0) {
        fdServices.clickOnRenewSelectBox(arg0,"");
    }



    @And("Verify {string} for following values: {string} in Renew Amount Edit Box")
    public void verifyForFollowingValuesInRenewAmountEditBox(String errMsgLoc, String values) {
        String errLocator = getLocator(errMsgLoc);
        fdServices.verifyRenewTextBox(errLocator,"");
    }

    @And("Verify Not Showing {string} for following values: {string} in Renew Amount Edit Box")
    public void verifyNotShowingForFollowingValuesInRenewAmountEditBox(String errMsgLoc, String values) {
        String errLocator = getLocator(errMsgLoc);
        fdServices.verifyRenewTextBoxValidValidation(errLocator,"");
    }


    @And("verify {string} {string} Value is Displayed")
    public void verifyValueIsDisplayed(String value1, String value2) {
        String locator = getLocator(value1+" "+value2);
        String value = getTextUsingLocator(locator).trim();
        mapRelationshipLabels.put(value1,value);
    }

    @And("verify {string} Value is Displayed")
    public void verifyValueIsDisplayed(String locValue) {
        String locator = getLocator(locValue);
        String value = getAttributeValueIfDisplayed(locator).trim();
        mapRelationshipLabels.put(locValue,value);
    }

    @And("verify {string} and {string} are Same")
    public void verifyAndAreSame(String loc1, String loc2) {
        String value1 = mapRelationshipLabels.get(loc1).trim().split(" ")[1].replaceAll(",", "");
        int amt1 = Integer.parseInt(value1);
        String value2 = mapRelationshipLabels.get(loc2).trim();
        int amt2 = Integer.parseInt(value2);
        if (amt1==amt2||((amt1-2)<=amt2&&(amt1+2)>=amt2)) {
testStepPassed("Renew Amount in Plan Page and Deposit amount in Success page are same verified successfully");
        } else {
            testStepFailed("Renew Amount in Plan Page and Deposit amount in Success page are not same");
        }
    }

    @Then("verify Following Plans working in Renew Plan Page")
    public void verify_following_plans_working_in_renew_plan_page(io.cucumber.datatable.DataTable dataTable) {

        List<List<String>> list1 = dataTable.asLists();
//        System.out.println(strings);
        for (int i = 0; i < list1.size(); i++) {
            List<String> list2 = list1.get(i);
                fdServices.verifyAllCombinationOfRenewalPlans(list2.get(0),list2.get(1),list2.get(2));
        }
    }

    @And("Verify {string} for following values: {string} in Renew Amount Edit Box for Non Cumulative")
    public void verifyForFollowingValuesInRenewAmountEditBoxForNonCumulative(String errMsgLoc, String arg1) {
        String errLocator = getLocator(errMsgLoc);
        fdServices.verifyRenewTextBoxNonCumulative(errLocator,"");
    }

    @And("Verify Not Showing {string} for following values: {string} in Renew Amount Edit Box for Non Cumulative")
    public void verifyNotShowingForFollowingValuesInRenewAmountEditBoxForNonCumulative(String errMsgLoc, String arg1) {
        String errLocator = getLocator(errMsgLoc);
        fdServices.verifyRenewTextBoxValidValidationNonCumulative(errLocator,"");
    }

    @And("verify {string} format as <Rs. Digits> with *")
    public void verifyFormatAsRsDigitsWith(String label) {
        String value = mapRelationshipLabels.get(label);
        sdpServices.verifyAmountWithRsAndAsterick(label,value);
    }

    @And("verify {string} format as <Digits%> with *")
    public void verifyFormatAsDigitsWith(String label) {
        String value = mapRelationshipLabels.get(label);
        sdpServices.verifyDigitsWithPercentageWithAsterick(label,value);
    }

    @And("verify {string} format as {string} with *")
    public void verifyFormatAsWith(String label, String dateFormat) {
        String value = mapRelationshipLabels.get(label);
        testStepInfo(value);
        sdpServices.verifyValueisDateFormatWithAsterick(label,value,dateFormat,"");
    }


    //    12122022-Mustaq
    ////////22112022- Mustaq start //////////////////

    @Then("User should be redirected to specific LAFD page {string}")
    public void userShouldBeRedirectedToSpecificLAFDPage(String string) {
        fdServices.redirectionToLAFDpage(string);
    }

    @And("verify given details are shown to Customer when clicks on Get A Loan Against FD")
    public void verifyGivenDetailsAreShownToCustomerWhenClicksOnGetALoanAgainstFD() {
        fdServices.verifyFDLafdDetails();
    }

    @And("verify Min and Max amount to be shown as per eligibility Under FD eligibility Amount")
    public void verifyMinAndMaxAmountToBeShownAsPerEligibilityUnderFDEligibilityAmount() {
        fdServices.verifyFDLafdMinandMaxAmount();
    }

    @And("verify tool tip to be shown on RHS amount text box")
    public void verifyToolTipToBeShownOnRHSAmountTextBox() {
        fdServices.verifyLAFDToolTipPosition();
    }

    @And("verify Validation message is displayed when customer enters invalid inputs in Loan against FD field")
    public void verifyValidationMessageIsDisplayedWhenCustomerEntersInvalidInputsInLoanAgainstFDField() {
        String invalid = "@#$$$#,abcdef,      ,000000000";
        int maxvalue = fdServices.getMaxValueOfLAFD(FDServicesPage.minmax);
        int minvalue = fdServices.getMinValueOfLAFD(FDServicesPage.minmax);
//        String morethan = Double.toString(maxvalue) + 100;
        String morethan = String.valueOf((maxvalue)+10);
        String lessthan = String.valueOf((minvalue)-10);
        fdServices.verifyLafdEnterAmtInvalid(invalid);
        fdServices.verifyLafdEnterAmtInvalid(morethan);
        fdServices.verifyLafdEnterAmtInvalid(lessthan);

    }

    @And("verify Customer is able view given bank details on RHS")
    public void verifyCustomerIsAbleViewGivenBankDetailsOnRHS() {
        fdServices.verifyLafdBankDetails();
    }

    @And("verify Customer will  be able to view only last {int} digit ,rest will be masked")
    public void verifyCustomerWillBeAbleToViewOnlyLastDigitRestWillBeMasked(int arg0) {
        fdServices.verifyBankAccountMaskedFormatInFdRhsLafd();
    }

    @And("verify when Customer enters valid amount then, Generate OTP CTA is highlighted")
    public void verifyWhenCustomerEntersValidAmountThenGenerateOTPCTAIsHighlighted() {
        fdServices.verifyLafdGenerateOtpCta();
    }


    @Then("verify congratulation screen to be shown")
    public void verifyCongratulationScreenToBeShown() {
        verifyElementIsDisplayedOrNot(FDServicesPage.req_Raised);
        verifyFieldsDisplayedUsingText("Congratulations!");
        verifyFieldsDisplayedUsingText("Your loan amount will be credited to your bank account within 1 business day");
    }

    @And("verify given details to be shown under Congratulation screen")
    public void verifyGivenDetailsToBeShownUnderCongratulationScreen() {
        verifyValueUsingLabel("//div[@class='p_FD_Loan_Details']/descendant::ul/li/p","Reference Number","/following-sibling::strong","");
        verifyValueUsingLabel("//div[@class='p_FD_Loan_Details']/descendant::ul/li/p","Fixed Deposit Number","/following-sibling::strong","");
        verifyValueUsingLabel("//div[@class='p_FD_Loan_Details']/descendant::ul/li/p","Loan Amount","/following-sibling::strong","");
        verifyValueUsingLabel("//div[@class='p_FD_Loan_Details']/descendant::ul/li/p","Rate of Interest","/following-sibling::strong","");
        verifyValueUsingLabel("//div[@class='p_FD_Loan_Details']/descendant::ul/li/p","Tenure","/following-sibling::strong","");
    }

    @Then("verify Error message when LAFD is not applicable for Joint Holders")
    public void verifyErrorMessageWhenLAFDIsNotApplicableForJointHolders() {
//        verifyFieldsDisplayedUsingText("Unable to proceed");
        verifyFieldsDisplayedUsingText("Your request cannot be processed online as there is a co-applicant involved. Please visit our nearest branch");
//        clickOnButtonUsingTextUsingForLoop("Got It");
    }

    @And("verify at the bottom of the screen will have Pre-approved offers cards")
    public void verifyAtTheBottomOfTheScreenWillHavePreApprovedOffersCards() {
        scrollToWebElement(B2BServicesPage.pao_B2BServices);
        verifyElementIsDisplayedUsingLocator(B2BServicesPage.pao_B2BServices);

    }

    @Then("verify Error message when Primary account holder is a Minor")
    public void verifyErrorMessageWhenPrimaryAccountHolderIsAMinor() {
//        verifyFieldsDisplayedUsingText("Unable to proceed");
        verifyFieldsDisplayedUsingText("Primary Account Holder is a Minor");
//        clickOnButtonUsingTextUsingForLoop("Got It");


    }

    @Then("verify Error message when FD Is maturing in less than {int} month")
    public void verifyErrorMessageWhenFDIsMaturingInLessThanMonth(int arg0) {
//        verifyFieldsDisplayedUsingText("Unable to proceed");
        verifyFieldsDisplayedUsingText("We are unable to process your request as your Deposit is maturing in less than 30 days");
//        clickOnButtonUsingTextUsingForLoop("Got It");

    }

    @Then("verify LAFD will not be allowed to joint account holders {string}")
    public void verifyLAFDWillNotBeAllowedToJointAccountHolders(String string) {
        verifyPageRedirectionUsingTagAndText("strong",string,"");
    }

    @Then("verify customer is redirected to TDS Waiver Page with {string}")
    public void verifyCustomerIsRedirectedToTDSWaiverPageWith(String string) {
        verifyPageRedirectionUsingTagAndText("strong",string,"");

    }

    @And("verify Form {int} G to be displayed when age is less than {int} {string}")
    public void verifyFormGToBeDisplayedWhenAgeIsLessThan(int arg0, int arg1, String string) {
        verifyFieldsDisplayedUsingText(string);
    }

    @And("erify Form {int} H to be displayed when age is more than or equals to {int} {string}")
    public void erifyFormHToBeDisplayedWhenAgeIsMoreThanOrEqualsTo(int arg0, int arg1, String string) {
        verifyFieldsDisplayedUsingText(string);

    }

    @And("verify customer is able to view details when clicks on Submit TDS waiver")
    public void verifyCustomerIsAbleToViewDetailsWhenClicksOnSubmitTDSWaiver() {
        fdServices.verifySTWPageContents();
    }

    @And("Customer clicks on {string} Button in TDS Waiver Page")
    public void customerClicksOnButtonInTDSWaiverPage(String string) {
        verifyButtonIsDisplayedInThePage(string);
        clickOnButtonUsingTextUsingForLoop(string);


    }

    @Then("verify Customer redirected to {string} page")
    public void verifyCustomerRedirectedToPage(String string) {
        verifyPageRedirectionUsingTagAndText("strong",string,"");
    }

    @Then("verify page to be displayed under Additional information required")
    public void verifyPageToBeDisplayedUnderAdditionalInformationRequired() {
        fdServices.verifySTWOtherFDIncome();
    }

    @And("verify when customer selects Tax assessment Toggle")
    public void verifyWhenCustomerSelectsTaxAssessmentToggle() {
        fdServices.verifySTWTADtoggle();
    }

    @And("verify customer is able to view and download the file from {string} CTA - {string}")
    public void verifyCustomerIsAbleToViewAndDownloadTheFileFromCTA(String button, String file) {
        verifyButtonIsDisplayedInThePage(button);
//        clickOn(button);
        clickOnButtonUsingTextUsingForLoop(button);
        verifyDownLoadAndDeleteLatestFileNameFromLocalMachine(file);
    }

    @Then("verify customer will have to enter other fixed deposit income")
    public void verifyCustomerWillHaveToEnterOtherFixedDepositIncome() {
        fdServices.verifySTWinputbox1();
    }


    @And("verify when Customer enters valid amount")
    public void verifyWhenCustomerEntersValidAmount() {
        fdServices.verifyLafdGenerateOtpCta();

    }

    @And("Customer enters {string} for Income from other FDs")
    public void customerEntersForIncomeFromOtherFDs(String string) {
        typeIn(FDServicesPage.inputbox1,string);
    }

    @And("Customer enters {string} for Total number of FDs")
    public void customerEntersForTotalNumberOfFDs(String string) {
        clearEditBox(FDServicesPage.inputbox3);
        typeIn(FDServicesPage.inputbox3,string);
    }

    @And("Clicks on {string} Button")
    public void clicksOnButton(String string) {
        verifyButtonIsDisplayedInThePage(string);
        clickOnButtonUsingTextUsingForLoop(string);
    }

    @Then("verify Customer redirected to check & submit Page - {string}")
    public void verifyCustomerRedirectedToCheckSubmitPage(String string) {
        verifyPageRedirectionUsingTagAndText("p",string,"");
    }

    @And("verify Customer Details are displayed in submit Page")
    public void verifyCustomerDetailsAreDisplayedInSubmitPage() {
        fdServices.verifySTWPageContents2();
    }

    @And("verify the buttons displayed in the check & submit Page-{string}")
    public void verifyTheButtonsDisplayedInTheCheckSubmitPage(String buttonswithcomma) {
        String[] split = buttonswithcomma.split(",");
        for (int i = 0; i < split.length; i++) {
            String button = split[i].trim();
            verifyButtonIsDisplayedInThePage(button);
        }
        verifyFieldsDisplayedUsingText("By proceeding, you agree to the");
    }


    @And("verify Terms and Conditions popup is displayed")
    public void verifyTermsAndConditionsPopupIsDisplayed() {
        verifyFieldsDisplayedUsingText("TDS terms and conditions");
        verifyFieldsDisplayedUsingLocatorUsingForLoop(FDServicesPage.close_Icon,"");
        verifyButtonIsDisplayedInThePage("Got It");
        clickOnButtonUsingTextUsingForLoop("Got It");
    }

    @And("Customer clicks on {string} Button")
    public void customerClicksOnButton(String string) {
        verifyButtonIsDisplayedInThePage(string);
        clickOnButtonUsingTextUsingForLoop(string);
    }

    @Then("verify popup is displayed for amount more than {int} for {int}H")
    public void verifyPopupIsDisplayedForAmountMoreThanForH(int arg0, int arg1) {

        verifyFieldsDisplayedUsingText("Unable to Proceed");
        verifyFieldsDisplayedUsingLocatorUsingForLoop(FDServicesPage.close_Icon,"");
        verifyFieldsDisplayedUsingText("TDS waiver is not applicable if your FDs total interest amount is more than Rs 3lacs");
        clickOnButtonUsingTextUsingForLoop("Got It");
    }

    @Then("verify popup is displayed for amount more than {double}lac for {int}G")
    public void verifyPopupIsDisplayedForAmountMoreThanLacForG(int arg0, int arg1, int arg2) {
        verifyFieldsDisplayedUsingText("Unable to proceed");
        verifyFieldsDisplayedUsingLocatorUsingForLoop(FDServicesPage.close_Icon,"");
        verifyFieldsDisplayedUsingText("You are not eligible for TDS waiver as your total interest on deposit is greater than Rs. 2.5 lakh.");
        clickOnButtonUsingTextUsingForLoop("Got It");

    }

    @And("verify customer is redirected to Services screen with subtitle{string} Account No{string}")
    public void verifyCustomerIsRedirectedToServicesScreenWithSubtitleAccountNo(String string, String string2) {
        fdServices.verifyMyRelationTileRedirectionUsingAccountNumber(string2, string, "");

    }

    @And("verify option should not be shown to the customer TDS Waiver is Already Submitted")
    public void verifyOptionShouldNotBeShownToTheCustomerTDSWaiverIsAlreadySubmitted() {
        verifyElementIsNotPresentUsingtext("Submit Form 15G/H");
    }

    @And("verify Total No. Other income + Total amount logic of {int}G filled will be auto calculated")
    public void verifyTotalNoOtherIncomeTotalAmountLogicOfGFilledWillBeAutoCalculated(int arg0) {
        fdServices.verifySTWAmountAddition();
    }

    @Then("verify below Popup {string} is displayed")
    public void verifyBelowPopupIsDisplayed(String string) {
        verifyFieldsDisplayedUsingText(string);
    }

    @And("On click of {string}")
    public void onClickOf(String string) {
        clickOnButtonUsingTextUsingForLoop(string);
    }

    @And("verify customer is able to view Part {int} details when clicks on Submit TDS waiver")
    public void verifyCustomerIsAbleToViewPartDetailsWhenClicksOnSubmitTDSWaiver(int arg0) {
        fdServices.verifySTWPart2();
    }

    @And("verify the buttons displayed in the Page-{string}")
    public void verifyTheButtonsDisplayedInThePage(String buttonswithcomma) {
        String[] split = buttonswithcomma.split(",");
        for (int i = 0; i < split.length; i++) {
            String button = split[i].trim();
            verifyButtonIsDisplayedInThePage(button);
        }

    }

    @And("Customer clicks on {string} Button in Get a loan against FD")
    public void customerClicksOnButtonInGetALoanAgainstFD(String string) {
        verifyButtonIsDisplayedInThePage(string);
        verifyFieldsDisplayedUsingText("By proceeding, you agree to the");
        clickOnButtonUsingTextUsingForLoop(string);
    }

    @Then("Terms and Conditions Popup is displayed for Customer")
    public void termsAndConditionsPopupIsDisplayedForCustomer() {
        verifyFieldsDisplayedUsingText("LOAN AGAINST FIXED DEPOSIT TERMS AND CONDITIONS");
        verifyFieldsDisplayedUsingLocatorUsingForLoop(FDServicesPage.close_Icon,"");
        verifyButtonIsDisplayedInThePage("Got It");
        clickOnButtonUsingTextUsingForLoop("Got It");
    }

    @Then("verify popup is displayed for amount more than {int} for {int}G")
    public void verifyPopupIsDisplayedForAmountMoreThanForG(int arg0, int arg1) {
        verifyFieldsDisplayedUsingText("Unable to proceed");
        verifyFieldsDisplayedUsingLocatorUsingForLoop(FDServicesPage.close_Icon,"");
        verifyFieldsDisplayedUsingText("You are not eligible for TDS waiver as your total interest on deposit is greater than Rs. 2.5 lakh.");
        clickOnButtonUsingTextUsingForLoop("Got It");

    }

    @And("clicks on {string} button in Submit TDS flow")
    public void clicksOnButtonInSubmitTDSFlow(String string) {
        verifyButtonIsDisplayedInThePage(string);
        clickOnButtonUsingTextUsingForLoop(string);
    }

    @And("verify customer not able to modify Total amount for which you have filed Form {int} G")
    public void verifyCustomerNotAbleToModifyTotalAmountForWhichYouHaveFiledFormG(int arg0) {
        fdServices.verifyuneditabletextbox2inSTW("");
    }

    @And("verify Total number of fixed deposits Text Box is editable")
    public void verifyTotalNumberOfFixedDepositsTextBoxIsEditable() {
        fdServices.verifySTWinputbox3();
    }

///////////////////////// Mustaq end /////

///////////////////////// Neelakandan Start /////
    @And("verify {string} format as <DD>")
    public void verifyFormatAsDD(String label) {
        String value = mapRelationshipLabels.get(label);
        fdServices.verifyDigitsOnly(label,value);
    }

    @Then("verify below Labels of {string} in Two Wheeler Loan Relationship Details: {string}")
    public void verifyBelowLabelsOfInTwoWheelerLoanRelationshipDetails(String title, String labels) {
        mapRelationshipLabels.clear();
        String newLabels = labels.replaceAll(", ", "#");
        String subTitle=title+" subtitle in Relationship Details#xpath=//div[@class='Relationshipbox_title']//strong[normalize-space(text())='"+title.trim()+"']";
        if (!isElementDisplayed(subTitle)&&isElementPresent(FDServicesPage.btn_NextSlider)) {
            clickOn(FDServicesPage.btn_NextSlider);
        }
        if (title.equalsIgnoreCase("First Joint Account Holder")||title.equalsIgnoreCase("Second Joint Account Holder")) {
            mapRelationshipLabels = verifyRelationShipSubTitleDetails(LoanServicesPage.twl_JointAccount_Common, "Two Wheeler Loan", title, "/../following-sibling::ul/descendant::p", "/following-sibling::strong", newLabels, "");
        }else{
            mapRelationshipLabels = verifyRelationShipSubTitleDetails(LoanServicesPage.twl_SubTitle_Common, "Two Wheeler Loan", title, "/../following-sibling::div/descendant::p", "/following-sibling::strong", newLabels, "");
        }

    }


    @And("Click on FACTA Form {string} Toggle Button: {string}")
    public void clickOnFACTAFormToggleButton(String arg0, String arg1) {
        fdServices.clickOnToggleInFactaFormUsingLabelAndOption(arg0,arg1,"");
    }

    @Then("{string} Error Message is Displayed for {string} Text Box")
    public void errorMessageIsDisplayedForTextBox(String arg0, String arg1) {
        verifyerrorMessageForTextBoxUsingLabel(arg1,arg0,"");
    }


    @Then("verify File Name {string} Displayed in {string}")
    public void verifyFileNameDisplayedIn(String arg0, String arg1) {
        String locator = getLocator(arg1);
        verifyGetText(locator,arg0);
    }

    @And("Verify Tenure is More than {int} Months")
    public void verifyTenureIsMoreThanMonths(int arg0) {
        fdServices.verifyTenureIsMoreThan30Months();
    }

    @And("Verify Renewal status should be Renewed")
    public void verifyRenewalStatusShouldBeRenewed() {
        fdServices.verifyRenewalStatus();
    }
}
