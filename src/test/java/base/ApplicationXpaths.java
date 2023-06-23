package base;


import PageObjects.LoanServicesPage;

import java.util.LinkedHashMap;
import java.util.Map;

public class ApplicationXpaths {




/*
Locators_RAR
 */

//    public static final String my_Account2 = "Smartphones#xpath=(//p[text()='Smartphones'])[2]";

    //public static Map<String,String> loc;
    public static Map<String, String> loc;
    public static Map<String, String> putLocator() {
        try {
            loc = new LinkedHashMap<>();
//        Map<String, String> loc = new LinkedHashMap<>();






        /*
        RAR
         */
            loc.put("Raise_a_Request_Page", "Raise a Request Page Header#xpath=//strong[normalize-space(text())='Select your relation to raise a request']");
            loc.put("RAR_Query_Type_Dropdown", "Query Type Dropdown in RAR#xpath=//label[normalize-space(text())='Query Type']/following-sibling::select");
            loc.put("RAR_Sub_Query_Type_Dropdown", "Query Type Dropdown in RAR#xpath=//label[normalize-space(text())='Sub Query Type']/following-sibling::select");
            loc.put("RAR_Query_Type_Dropdown_For_Existing_Product", "Query Type Dropdown for Existing Product in RAR#xpath=(//label[normalize-space(text())='Query Type']/following-sibling::select)[2]");
            loc.put("RAR_Sub_Query_Type_Dropdown_For_Existing_Product", "Query Type Dropdown for Existing Product in RAR#xpath=(//label[normalize-space(text())='Sub Query Type']/following-sibling::select)[2]");
            loc.put("Raise_a_Request", "Raise a Request Link#xpath=//strong[normalize-space(text())='Raise a Request']");
            loc.put("Steps_to_RAR", "How to raise a request in just 3 steps Text in RHS#xpath=//div[normalize-space(@class)='RAR_right_part']//strong[normalize-space(text())='How to raise a request in just 3 steps']");
        /*
        NEW HOME
         */
            loc.put("Loan_Relation_in_RAR", "Loan Relation in RAR#xpath=//a[normalize-space(text())='Loans']/parent::li[contains(@class,'active')]");
            loc.put("RAR_OK_Button_in_PopUp", "RAR OK Button in Popup#xpath=//a[@id='redirectClick'and(normalize-space(text())='OK')]");
            loc.put("Apply_For_Loans_Section", "Apply for loans Section#xpath=//p[normalize-space(text())='Apply for loans']/ancestor::div[normalize-space(@class)='Bajaj_Finserv_BG wall']");
            loc.put("Emi_Network_Card_Section", "Emi Network Card Section#xpath=//p[normalize-space(text())='EMI Network Card']/ancestor::div[normalize-space(@class)='Bajaj_Finserv_BG emi-net']");
            loc.put("Shop_on_EMIs_Section", "Shop on EMIs Section#xpath=//p[normalize-space(text())='Shop on EMIs']/ancestor::div[normalize-space(@class)='Bajaj_Finserv_BG emi-net']");
            loc.put("Get_A_Credit_Card_Section", "Get A Credit Card Section#xpath=//p[normalize-space(text())='Get a credit card']/ancestor::div[normalize-space(@class)='Bajaj_Finserv_BG co-brand']");
            loc.put("Co_branded_Credit_card_Section", "Co-branded Credit Card Section#xpath=//p[normalize-space(text())='Co-branded Credit card']/ancestor::div[normalize-space(@class)='Bajaj_Finserv_BG co-brand']");
            loc.put("My_Relations_Section", "My Relations Section#xpath=//p[normalize-space(text())='My Relations']/ancestor::div[normalize-space(@class)='BG_relation']");
            loc.put("Shop_On_Bajaj_Mall_Section", "Shop On Bajaj Mall Section#xpath=//p[normalize-space(text())='Shop on Bajaj Mall']/ancestor::div[normalize-space(@class)='shop_on_the_emi_store']");
            loc.put("Brand_Store_Section", "Brand Store Section#xpath=//p[normalize-space(text())='Brand Store']/ancestor::div[normalize-space(@class)='new_brand_store']");
            loc.put("Locate_Us_Section", "Locate Us Section#xpath=//h5[normalize-space(text())='Locate us']/ancestor::div[normalize-space(@class)='locateus_card bg_blue']");
            loc.put("Har_Time_EMI_On_Time_Section", "Har Time EMI On Time Section#xpath=//h5[normalize-space(text())='Har time EMI on time']/ancestor::div[normalize-space(@class)='locateus_card bg_skyblue savdhanrahein']");
            loc.put("Insurance_Section", "Insurance Section#xpath=//h2[normalize-space(text())='Insurance']/ancestor::div[normalize-space(@class)='bazaar_BG Investment_padding']");
            loc.put("Investments_Section", "Investments Section#xpath=//h2[normalize-space(text())='Investments']/ancestor::div[normalize-space(@class)='bazaar_BG Investment_padding Investment_padding_skelton']");
            loc.put("Lifestyle_Store_Section", "Lifestyle Store Section#xpath=//p[normalize-space(text())='Lifestyle Store']/ancestor::div[normalize-space(@class)='life_style_BG lifestylestoresso']");
            loc.put("Products_For_You_Section", "Products For You Section#xpath=//h2[normalize-space(text())='Products for you']/ancestor::div[normalize-space(@class)='Products_for_you_BG productforyousso']");
            loc.put("Two_wheeler_World_Section", "Two wheeler World Section#xpath=//h2[normalize-space(text())='Two-wheeler World']/ancestor::div[normalize-space(@class)='Two_Wheeler_World_BG']");
            loc.put("Online_Stores_Section", "Online Stores Section#xpath=//p[normalize-space(text())='Online Stores']/ancestor::div[normalize-space(@class)='super_store_BG onlinestoresso']");
            loc.put("Explore_Section", "Explore Section#xpath=//a[normalize-space(text())='Explore']/ancestor::div[normalize-space(@class)='Explore_section_BG exploresectionsso']");
            loc.put("Partner_Offers_Section", "Partner Offers Section#xpath=//p[normalize-space(text())='Partner Offers']/ancestor::div[normalize-space(@class)='Partner_Offers_BG partneroffersso']");
            loc.put("Offers_For_You_Section", "Offers For You Section#xpath=//h2[normalize-space(text())='Offers for you']/ancestor::div[normalize-space(@class)='a_offerfor_you offerforyousso']");
            loc.put("Hero_Banner_Section", "Hero Banner Section#xpath=//div[normalize-space(@class)='BHFL_Box a_flex_box']");
            loc.put("Carousal_Section", "Carousal Section#xpath=//div[normalize-space(@class)='BHFL_Box_Fullbox']");
            loc.put("Recommended_Offers_Section", "Recommended Offers Section#xpath=//div[normalize-space(@class)='finance_slider']");
            loc.put("EMI Card Fees & Charges Page", "EMI Card Fees & Charges Page Header#xpath=//div[@class='a_fees_pop']//p[normalize-space(text())='Fees and Charges']");

            /*
        NEW HOME - EMI Card
         */

            /*
        Offers For You - Home
         */
            loc.put("Personal Loan", "personal-loan");
            loc.put("Smart Phone", "smartphone");
            loc.put("Doctor Loan", "doctor-loan");
            loc.put("CIBIL Score", "cibil-score");
            loc.put("Credit Card", "credit-card");
            loc.put("Insta EMI Card", "insta-emi-card");
            loc.put("LED Tv", "led-tv");
            loc.put("Home Loan", "home-loan");
            loc.put("Gold Loan", "gold-loan");
            loc.put("Business Loan", "business-loan");
            loc.put("Two Wheeler Loan", "two-wheeler-loan");


        /*
        My Relations
         */
            loc.put("My Relations Loans Active Relations", "Active Relations in Loans Tab#xpath=//div[@id='Loans']//span[@hidden and normalize-space(text())='ACTIVE'or normalize-space(text())='Active' or normalize-space(text())='active']");
            loc.put("My Relations Loans Closed Relations", "Closed Relations in Loans Tab#xpath=//div[@id='Loans']//span[contains(@class,'myrelation-status') and normalize-space(text())='CLOSED']");
            loc.put("My Relations Cards Active Relations", "Active Cards in Cards Tab#xpath=//div[@id='Cards']//span[@hidden and normalize-space(text())='ACTIVE'or normalize-space(text())='Active' or normalize-space(text())='active']");
            loc.put("My Relations Cards Blocked Relations", "Blocked Cards in Cards Tab#xpath=//div[@id='Cards']//span[contains(@class,'myrelation-status') and normalize-space(text())='BLOCKED']");
            loc.put("My Relations Insurances Active Relations", "Active Relations in Insurances Tab#xpath=//div[@id='Insurance']//span[@hidden and normalize-space(text())='ACTIVE'or normalize-space(text())='Active' or normalize-space(text())='active']");
            loc.put("My Relations Insurances Closed Relations", "Closed Relations in Insurances Tab#xpath=//div[@id='Insurance']//span[contains(@class,'myrelation-status') and normalize-space(text())='MATURED']");
            loc.put("My Relations Insurances Cancelled Relations", "Cancelled Relations in Insurances Tab#xpath=//div[@id='Insurance']//span[contains(@class,'myrelation-status') and normalize-space(text())='CANCELLED']");
            loc.put("My Relations Insurances Surrendered Relations", "Surrendered Relations in Insurances Tab#xpath=//div[@id='Insurance']//span[contains(@class,'myrelation-status') and normalize-space(text())='SURRENDERED']");
            loc.put("My Relations Deposits Active Relations", "Active Relations in Deposits Tab#xpath=//div[@id='Deposits']//p[normalize-space(text())='Rate of Interest']");
            loc.put("My Relations Deposits Closed Relations", "Closed Relations in Deposits Tab#xpath=//div[@id='Deposits']//span[contains(@class,'myrelation-status') and normalize-space(text())='MATURED' or normalize-space(text())='PRE-MATURED']");


            /*
        Loan Services
         */
/*
Loans: Top Section
-----
 */
            loc.put("Loan Service Page", "//div[@class='Relationshipbox_title']//strong");
            loc.put("Flexi Loan Top Section Tool Tip Icon", "Flexi Loan Top Section Tool Tip Icon#xpath=//div[contains(@class,'fixed_deposit_points')]//img[contains(@src,'images/icons-info.svg')]");
            loc.put("Flexi Loan Top Section Cross Icon", "Flexi Loan Top Section Cross Icon#xpath=//div[contains(@class,'fixed_deposit_points')]//img[contains(@src,'images/icons-cross.svg')]");

            loc.put("Active Term Loan without EMI Overdue", "Loan Amount@Principal Outstanding Amount#Annualised Rate of Interest#Loan Tenure#Next EMI Due Amount@@@@@Loan Account Number:");

            loc.put("Active Term Loan with Last EMI", "Loan Amount@Principal Outstanding Amount#Annualised Rate of Interest#Loan Tenure#Last EMI Amount@@@@@Loan Account Number:");

            loc.put("Active Term Loan with EMI Overdue", "Loan Amount@Principal Outstanding Amount#Annualised Rate of Interest#Loan Tenure#Next EMI Due Amount@EMI OVERDUE@#b40000@RED@background-color@Loan Account Number:");
            loc.put("Active Term Loan with Last EMI and Overdue", "Loan Amount@Principal Outstanding Amount#Annualised Rate of Interest#Loan Tenure#Last EMI Amount@EMI OVERDUE@#b40000@RED@background-color@Loan Account Number:");

            loc.put("Active Flexi Loan without EMI Overdue", "Loan Amount@Utilised Limit#Available Loan Limit#Total Withdrawable Amount#Annualised Rate of Interest#Repayment Tenure#Next EMI Due Amount@@@@@Loan Account Number:");
            loc.put("Active Flexi Loan with Last EMI", "Loan Amount@Utilised Limit#Available Loan Limit#Total Withdrawable Amount#Annualised Rate of Interest#Repayment Tenure#Last EMI Amount@@@@@Loan Account Number:");

            loc.put("Active Flexi Loan with EMI Overdue", "Loan Amount@Utilised Limit#Available Loan Limit#Total Withdrawable Amount#Annualised Rate of Interest#Repayment Tenure#Next EMI Due Amount@EMI OVERDUE@#b40000@RED@background-color@Loan Account Number:");
            loc.put("Active Flexi Loan with Last EMI and Overdue", "Loan Amount@Utilised Limit#Available Loan Limit#Total Withdrawable Amount#Annualised Rate of Interest#Repayment Tenure#Last EMI Amount@EMI OVERDUE@#b40000@RED@background-color@Loan Account Number:");

            loc.put("Closed Term Loan", "Loan Amount@Annualised Rate of Interest#Closure Date@CLOSED@#002953@BLUE@background-color@Loan Account Number:");
            loc.put("Closed Flexi Loan", "Loan Amount@Annualised Rate of Interest#Closure Date@CLOSED@#002953@BLUE@background-color@Loan Account Number:");
            loc.put("Closed Hybrid Flexi Loan", "Loan Amount@Annualised Rate of Interest#Closure Date@CLOSED@#002953@BLUE@background-color@Loan Account Number:");

            loc.put("Active Hybrid Flexi Loan without EMI Overdue", "Loan Amount@Utilised Limit#Available Loan Limit#Total Withdrawable Amount#Annualised Rate of Interest#Repayment Tenure#Next EMI Due Amount@@@@@Loan Account Number:");
            loc.put("Active Hybrid Flexi Loan with Last EMI", "Loan Amount@Utilised Limit#Available Loan Limit#Total Withdrawable Amount#Annualised Rate of Interest#Repayment Tenure#Last EMI Amount@@@@@Loan Account Number:");

            loc.put("Active Hybrid Flexi Loan with EMI Overdue", "Loan Amount@Utilised Limit#Available Loan Limit#Total Withdrawable Amount#Annualised Rate of Interest#Repayment Tenure#Next EMI Due Amount@EMI OVERDUE@#b40000@RED@background-color@Loan Account Number:");
            loc.put("Active Hybrid Flexi Loan with Last EMI and Overdue", "Loan Amount@Utilised Limit#Available Loan Limit#Total Withdrawable Amount#Annualised Rate of Interest#Repayment Tenure#Last EMI Amount@EMI OVERDUE@#b40000@RED@background-color@Loan Account Number:");

            loc.put("Change Bank Account Button", "Change Bank Account Button#xpath=//a[normalize-space(text())='Change Bank Account']");
            loc.put("Show More Button", "Show More Button in Fees & Charges#xpath=//a[contains(text(),'Show More')]");
            loc.put("Show Less Button", "Show Less Button in Fees & Charges#xpath=//a[contains(text(),'Show Less')]");
            loc.put("More Than Fees & Charges", "More Than 5 Fees & Charges#xpath=//ul[@id='Showmorefc']//p");

            /*
        LAS
         */
            loc.put("Active LAS without EMI Overdue", "Available for disbursement@Available for disbursement#Current loan amount#DP to loan#Drawing power#Sanctioned limit#Loan to value@@@@@FAS Number:");
            loc.put("Show More Button in LAS Loan details Section", "Show More Button in LAS Loan details Section#xpath=//a[@class='expand_fees_charges'and(normalize-space(text())='Show More')]");
            loc.put("Show Less Button in LAS Loan details Section", "Show Less Button in LAS Loan details Section#xpath=//a[@class='expand_fees_charges'and(normalize-space(text())='Show Less')]");
            loc.put("Annualized Rate of Interest Label in Loan Details", "Annualized Rate of Interest Label in Loan Details#xpath=//div[@class='Relationship_points']//*[normalize-space(text())='Annualized Rate of Interest']");
            loc.put("Outstanding Interest Amount Label in Loan Details", "Outstanding Interest Amount Label in Loan Details#xpath=//div[@class='Relationship_points']//*[normalize-space(text())='Outstanding Interest Amount']");
            /*
        FD
         */
            loc.put("Update Bank Details Button", "Update Bank Details Button#xpath=//a[normalize-space(text())='Update Bank Details']");
            loc.put("FD DOB error Message", "Guardian DOB Enter Valid Date Error Message#xpath=//*[normalize-space(text())='Enter valid date'and(contains(@style,'block'))]|//*[normalize-space(text())='Minimum 18 years of age to be eligible'and(contains(@style,'block'))]");
            loc.put("FD Pincode error Message", "Pincode Error Message#xpath=//*[normalize-space(text())='Pincode should be 6 digit'and(contains(@style,'block'))]|//*[normalize-space(text())='Please enter correct pincode'and(contains(@style,'block'))]");
            loc.put("FD Nominee Generate OTP Button", "Generate OTP Button#xpath=//input[@class='probtn GenOTPBtn']");
            loc.put("Frequently Asked Questions", "Frequently Asked Questions#xpath=//strong[normalize-space(text())='Frequently Asked Questions']");
            loc.put("Check Score Button in CIBIL", "Check Score Button in CIBIL#xpath=//strong[normalize-space(text())='Check your CIBIL Score']/../following-sibling::i[normalize-space(text())='Check Score']");

            //Nominee
            loc.put("FD Nominee Name Text Box", "Nominee Name Text Box in Nominee Page#xpath=//label[normalize-space(text())='Nominee Name']/following-sibling::input");
            loc.put("FD Nominee DOB Enter Valid date", "Nominee DOB Enter Valid Date Error Message#xpath=//*[normalize-space(text())='Enter valid date'and(contains(@style,'block'))]");
//            loc.put("FD Nominee Date of Birth", "Nominee DOB Enter Valid Date Error Message#xpath=//*[normalize-space(text())='Enter valid date'and(contains(@style,'block'))]");
            loc.put("FD Nominee Date of Birth Text Box", "FD Nominee DOB Text Box#xpath=//label[normalize-space(text())='Date of Birth']/following-sibling::input[@id='txtdob']");
            loc.put("FD Nominee Date of Birth Label", "FD Nominee DOB Label#xpath=//input[@id='txtdob']/preceding-sibling::label[normalize-space(text())='Date of Birth']");
            loc.put("FD Nominee Relationship Dropdown", "FD Nominee Select Relationship Dropdown#xpath=//label[normalize-space(text())='Select your relationship']/following-sibling::select");
            loc.put("FD Nominee Address Details", "FD Nominee Address details#xpath=//strong[normalize-space(text())='Address Details']/../following-sibling::div//strong[normalize-space(text())='Address']/following-sibling::p");

            loc.put("FD Nominee Address Line 1 Text Box", "FD Nominee Address Line 1 Text Box#xpath=//strong[normalize-space(text())='Provide Nominee Address']/../following-sibling::div//label[normalize-space(text())='Address Line 1']/following-sibling::input");
            loc.put("FD Nominee Address Line 2 Text Box", "FD Nominee Address Line 2 Text Box#xpath=//strong[normalize-space(text())='Provide Nominee Address']/../following-sibling::div//label[normalize-space(text())='Address Line 2']/following-sibling::input");
            loc.put("FD Nominee PIN Code Text Box", "FD Nominee PIN Code Text Box#xpath=//strong[normalize-space(text())='Provide Nominee Address']/../following-sibling::div//label[normalize-space(text())='PIN Code']/following-sibling::input");
            loc.put("FD Nominee City Text Box", "FD Nominee City Text Box#xpath=//strong[normalize-space(text())='Provide Nominee Address']/../following-sibling::div//label[normalize-space(text())='City']/following-sibling::input[@id='NomineeCity']");
            loc.put("FD Nominee State Text Box", "FD Nominee City Text Box#xpath=//strong[normalize-space(text())='Provide Nominee Address']/../following-sibling::div//label[normalize-space(text())='State']/following-sibling::input[@id='NomineeState']");
            //Guardian
            loc.put("FD Guardian Name Text Box", "Guardian Name Text Box in Nominee Page#xpath=//label[normalize-space(text())='Guardian Name']/following-sibling::input");
            loc.put("FD Guardian Details Title in Nominee Page", "Guardian Details Title#xpath=//strong[normalize-space(text())='Guardian Details']");
            loc.put("FD Guardian Date of Birth Text Box", "FD Guardian DOB Text Box#xpath=//label[normalize-space(text())='Date of Birth']/preceding-sibling::input[@id='gurdob']");
            loc.put("FD Guardian Date of Birth Label", "FD Guardian DOB Label#xpath=//input[@id='gurdob']/following-sibling::label[normalize-space(text())='Date of Birth']");
            loc.put("FD Guardian DOB Enter Valid date", "Guardian DOB Enter Valid Date Error Message#xpath=//*[normalize-space(text())='Enter valid date'and(contains(@style,'block'))]");
            loc.put("FD Guardian DOB Minimum 18 Years", "Guardian DOB Minimum 18 Years Error Message#xpath=//*[normalize-space(text())='Minimum 18 years of age to be eligible'and(contains(@style,'block'))]");
            loc.put("Guardian name and Nominee name cannot be same", "Guardian name and Nominee name cannot be same Error Message#xpath=//*[normalize-space(text())='Guardian name and Nominee name cannot be same'and(contains(@style,'block'))]");
            loc.put("The nominee cannot be the same as the FD account holder", "The nominee cannot be the same as the FD account holder. Error Message#xpath=//*[normalize-space(text())='The nominee cannot be the same as the FD account holder.'and(contains(@style,'block'))]");
            loc.put("The Guardian can neither be the primary nor the joint account holder", "The Guardian can neither be the primary nor the joint account holder Error Message#xpath=//*[normalize-space(text())='The Guardian can neither be the primary nor the joint account holder'and(contains(@style,'block'))]");
            loc.put("First Joint Account Holder Name", "First Joint Account Holder Name#xpath=//strong[normalize-space(text())='First Joint Account Holder']/../following-sibling::*//*[normalize-space(text())='Name']/following-sibling::*");
            loc.put("Second Joint Account Holder Name", "Second Joint Account Holder Name#xpath=//strong[normalize-space(text())='Second Joint Account Holder']/../following-sibling::*//*[normalize-space(text())='Name']/following-sibling::*");
            loc.put("Second Joint Account Holder Dropdown Icon", "Second Joint Account Holder Dropdown Icon#xpath=//strong[normalize-space(text())='Second Joint Account Holder']/following-sibling::img[contains(@src,'/images/dropdown.svg')]");

            loc.put("FD Guardian Address Line 1 Text Box", "FD Guardian Address Line 1 Text Box#xpath=//strong[normalize-space(text())='Provide Guardian Address']/../following-sibling::div//label[normalize-space(text())='Address Line 1']/following-sibling::input");
            loc.put("FD Guardian Address Line 2 Text Box", "FD Guardian Address Line 2 Text Box#xpath=//strong[normalize-space(text())='Provide Guardian Address']/../following-sibling::div//label[normalize-space(text())='Address Line 2']/following-sibling::input");
            loc.put("FD Guardian PIN Code Text Box", "FD Guardian PIN Code Text Box#xpath=//strong[normalize-space(text())='Provide Guardian Address']/../following-sibling::div//label[normalize-space(text())='PIN Code']/following-sibling::input");
            loc.put("FD Guardian City Text Box", "FD Guardian City Text Box#xpath=//strong[normalize-space(text())='Provide Guardian Address']/../following-sibling::div//label[normalize-space(text())='City']/following-sibling::input[@id='GuardianCity']");
            loc.put("FD Guardian State Text Box", "FD Guardian State Text Box#xpath=//strong[normalize-space(text())='Provide Guardian Address']/../following-sibling::div//label[normalize-space(text())='State']/following-sibling::input[@id='GuardianState']");

//FD Nominee OTP Screen
//            loc.put("OTP Screen Close Button", "OTP Screen Close Button#xpath=//a[@class='close_otp']//img[@src='https://experia-uat.bajajfinserv.in/UI/images/icons-cross.svg']");
            loc.put("OTP Screen Close Button", "OTP Screen Close Button#xpath=//a[@class='close_otp']");
            loc.put("OTP Sent Your Mob Number Message", "A one-time password has been sent to your registered mobile number Message#xpath=//a[@class='close_otp']//img[@src='https://experia-uat.bajajfinserv.in/UI/images/icons-cross.svg']");
            loc.put("Enable Resend OTP Button", "Resend OTP Button in Enable State#xpath=//a[normalize-space(text())='Resend OTP'][@class='resend-otp']");
            loc.put("Resend OTP Button", "Resend OTP Button#xpath=//a[normalize-space(text())='Resend OTP']");
            loc.put("Disable Resend OTP Button", "Resend OTP Button in Disable State#xpath=//a[normalize-space(text())='Resend OTP'][@class='resend-otp disabled']");
            loc.put("Submit Button in OTP Screen", "Submit Button in OTP Screen#xpath=//input[@type][@value='Submit']");
            loc.put("Submit Button in Renew FD OTP Screen", "Submit Button in Renew FD OTP Screen#xpath=//button[normalize-space(text())='Submit']");
            loc.put("OTP Screen Text box 1", "OTP Screen Text box 1#xpath=//input[@type='number'][contains(@class,'digit')]");
            loc.put("OTP Screen Text box 2", "OTP Screen Text box 2#xpath=(//input[@type='number'][contains(@class,'digit')])[2]");
            loc.put("OTP Screen Text box 3", "OTP Screen Text box 3#xpath=(//input[@type='number'][contains(@class,'digit')])[3]");
            loc.put("OTP Screen Text box 4", "OTP Screen Text box 4#xpath=(//input[@type='number'][contains(@class,'digit')])[4]");
            loc.put("OTP Screen Text box 5", "OTP Screen Text box 5#xpath=(//input[@type='number'][contains(@class,'digit')])[5]");
            loc.put("OTP Screen Text box 6", "OTP Screen Text box 6#xpath=(//input[@type='number'][contains(@class,'digit')])[6]");
            loc.put("Invalid OTP Error Message", "Invalid OTP Error Message#xpath=//span[normalize-space(text())='Invalid OTP !']|//*[contains(text(),'Invalid OTP')][contains(@style,'block')]");
            loc.put("OTP Expired Error Message", "OTP Expired! Error Message#xpath=//span[normalize-space(text())='OTP Expired!']|//*[contains(text(),'OTP Expired')][contains(@style,'block')]");
            loc.put("Exceeded your OTP limit Error Message", "You have exceeded your OTP limit Error Message#xpath=//p[contains(text(),'You have exceeded your OTP limit')]");

//FD - Renew
            loc.put("FD New Broker radio Button", "New Broker radio Button#xpath=//i[normalize-space(text())='New Broker']");
            loc.put("FD Existing Broker radio Button", "Existing Broker radio Button#xpath=//i[normalize-space(text())='Existing Broker']");
            loc.put("FD Broker Code Text Box", "FD Renew Broker Code Text Box#xpath=//label[normalize-space(text())='Broker Code']/following-sibling::input");
            loc.put("FD Broker Name Text Box", "FD Renew Broker Name Text Box#xpath=//label[normalize-space(text())='Broker Name']/following-sibling::input");
            loc.put("FD Proceed Button in Renew", "Proceed Button in FD Renew Plan#xpath=//button[normalize-space(text())='PROCEED']");
            loc.put("FD Cancel Button in Renew", "Cancel Button in FD Renew Plan#xpath=//a[normalize-space(text())='Cancel']");
            loc.put("Edit Button in Renew Amount", "Edit Button in FD Renew Amount#xpath=//*[@class='j_pencil_d']/a/img[contains(@src,'/edit.svg')]");
            loc.put("Renew Amount Edit Text Box", "Renew Amount Text box in Renew Plan#xpath=//*[normalize-space(text())='Renewal Amount']/../following-sibling::div//input");
            loc.put("Principal + Interest Option in Renew Plan", "Principal + Interest Option in Renew Plan#xpath=//*[normalize-space(text())='Principal + Interest']");

            loc.put("Renew Amount Text Box Error Message", "Please enter the value  greater than or equal to 15k and less than maturity amount Error Message#xpath=//div[text()='Please enter the value  greater than or equal to 15k and less than maturity amount']");
            loc.put("Renew Tenure Custom Text Box", "Renew Tenure Custom Text Box#xpath=//input[@id='CustomTenor']");
            loc.put("Enter months between 12 and 60 Error Message", "Enter months between 12 and 60 Error Message#xpath=//*[normalize-space(text())='Enter months between 12 and 60']");
            loc.put("Edit Investment Details Button", "Edit Investment Details Button#xpath=//a[normalize-space(text())='Edit Investment Details']");
            loc.put("Deposit Amount in FD Renew Summary Page", "Deposit Amount in FD Renew Summary Section#xpath=//strong[normalize-space(text())='Deposit Amount']/../following-sibling::p");
            loc.put("Start Date in FD Renew Summary Page", "Start Date in FD Renew Summary Section#xpath=//li[normalize-space(text())='Start Date']/p");
            loc.put("Maturity Date in FD Renew Summary Page", "Maturity Date in FD Renew Summary Section#xpath=//li[normalize-space(text())='Maturity Date']/p");
            loc.put("Tenure in FD Renew Summary Page", "Tenure in FD Renew Summary Section#xpath=//li[normalize-space(text())='Tenure']/p");
            loc.put("Check Box in FD Renew Summary Page", "Check Box in FD Renew Summary Page#xpath=//input[@id='chkRenewSummary']/following-sibling::i");
            loc.put("terms and conditions in FD Renew Summary Page", "terms and conditions in FD Renew Summary Page#xpath=//a[normalize-space(text())='terms and conditions']");

            loc.put("Success Logo for Renewal Process", "Success Tick mark Logo for Renewal Process#xpath=//div[@class='p_Congratulations_box']/img");
            loc.put("Start Date in FD Renew Success Page", "Start Date in FD Renew Success Page#xpath=//p[normalize-space(text())='Start Date']/following-sibling::strong");
            loc.put("Maturity date in FD Renew Success Page", "Maturity date in FD Renew Success Page#xpath=//p[normalize-space(text())='Maturity date']/following-sibling::strong");
            loc.put("Tenure in FD Renew Success Page", "Tenure in FD Renew Success Page#xpath=//p[normalize-space(text())='Tenure']/following-sibling::strong");
            loc.put("Deposit Amount in FD Renew Success Page", "Deposit Amount in FD Renew Success Page#xpath=//p[normalize-space(text())='Deposit Amount']/following-sibling::strong");
            loc.put("This deposit has already been requested for renewal Request ID", "This deposit has already been requested for renewal Request ID#xpath=//strong[contains(text(),'This deposit has already been requested for renewal Request ID')]");

//FD-RHS-LAFD
            loc.put("Submit Button in LAFD OTP Screen", "Submit Button in OTP Screen#xpath=//button[normalize-space(text())='Submit']");


            /*
        FD-Pre Mature Withdrawal
         */
            loc.put("Withdraw Button in Pre Mature Withdraw popup", "WITHDRAW FD Button in Pre mature withdrawal popup#xpath=//button[normalize-space(text())='WITHDRAW FD']");
            loc.put("Proceed Button in Pre Mature Withdraw popup", "Proceed Button in Pre mature withdrawal popup#xpath=//button[normalize-space(text())='PROCEED']");
            loc.put("Got It Button in Pre Mature Withdraw popup", "Got It Button in Pre mature withdrawal popup#xpath=//button[normalize-space(text())='Got It']");
            loc.put("Close Icon in Pre Mature Withdraw In urgent need of money popup", "Close Icon in Pre Mature Withdraw In urgent need of money popup#xpath=//strong[normalize-space(text())='In urgent need of money?']/following-sibling::a/img");
            loc.put("Close Icon in Pre Mature Withdraw In Unable to proceed popup", "Close Icon in Pre Mature Withdraw In Unable to proceed popup#xpath=//p[normalize-space(text())='Unable to proceed']/../following-sibling::a/img");

            /*
        FD-FATCA Form
         */

            loc.put("Cancel Button in FATCA Page", "Cancel Button in FATCA Page#xpath=//button[normalize-space(text())='cancel']");
            loc.put("Generate OTP Button in FATCA Page", "Generate OTP Button in FATCA Page#xpath=//button[normalize-space(text())='Generate OTP']");
            loc.put("T&C CheckBox in FATCA Page", "T&C CheckBox in FATCA Page#xpath=//input[@id='deccheck']");
            loc.put("Upload Icon in FATCA Page", "Upload Icon in FATCA Page#xpath=//input[@id='frontimage']");
            loc.put("Delete Icon in FATCA Page", "Delete Icon in FATCA Page#xpath=//a[@class='delete']/img");
            loc.put("FATCA File Upload Field", "FATCA File Upload Field#xpath=//div[@id='uploadFileSize']");
            loc.put("Please upload your file Error Message in FATCA Upload Field", "Please upload your file Error Message#xpath=//div[normalize-space(text())='Please upload your file']");

            loc.put("Upload error. Please upload your file in .pdf, .png or .jpg format. Maximum file size: 1 MB Error Message in FATCA Upload Field", "Upload error. Please upload your file in .pdf, .png or .jpg format. Maximum file size: 1 MB Error Message#xpath=//div[normalize-space(text())='Please upload file up to 2 MB']");
            loc.put("Upload failed Error Message in FATCA", "Upload failed Error Message in FATCA#xpath=//div[normalize-space(text())='Upload failed']");

            loc.put("Only pdf, jpg and jpeg files are allowed Error Message in FATCA Upload Field", "Only pdf, jpg and jpeg files are allowed Error Message#xpath=//div[normalize-space(text())='Only pdf, jpg and jpeg files are allowed']");
            loc.put("Choose Identification Type Dropdown", "Choose Identification Type Dropdown#xpath=//select[@id='Idntype']");
            loc.put("Submit button in FATCA OTP Popup", "Submit button in FATCA OTP Popup#xpath=//button[normalize-space(text())='Submit']");
            /*
        SDP
         */
            loc.put("SDP Bank Account Change Button", "SDP Bank Account Change Button#xpath=//p[normalize-space(text())='Linked Mandate Bank Account']/following-sibling::a[normalize-space(text())='Change']");
            loc.put("SDP Frequently Asked Questions", "Frequently Asked Questions in SDP#xpath=//strong[normalize-space(text())='Frequently asked questions']");

            //Nominee
            loc.put("SDP Nominee Name Text Box", "Nominee Name Text Box in Nominee Page#xpath=//label[normalize-space(text())='Nominee Name']/following-sibling::input");
            loc.put("SDP Nominee DOB Enter Valid date", "Nominee DOB Enter Valid Date Error Message#xpath=//*[normalize-space(text())='Enter valid date'and(contains(@style,'block'))]");
//            loc.put("SDP Nominee Date of Birth", "Nominee DOB Enter Valid Date Error Message#xpath=//*[normalize-space(text())='Enter valid date'and(contains(@style,'block'))]");
            loc.put("SDP Nominee Date of Birth Text Box", "SDP Nominee DOB Text Box#xpath=//label[normalize-space(text())='Date of Birth']/following-sibling::input[@id='txtdob']");
            loc.put("SDP Nominee Date of Birth Label", "SDP Nominee DOB Label#xpath=//input[@id='txtdob']/preceding-sibling::label[normalize-space(text())='Date of Birth']");
            loc.put("SDP Nominee Relationship Dropdown", "SDP Nominee Select Relationship Dropdown#xpath=//label[normalize-space(text())='Select your relationship']/following-sibling::select");
            loc.put("SDP Nominee Address Details", "SDP Nominee Address details#xpath=//strong[normalize-space(text())='Address Details']/../following-sibling::div//strong[normalize-space(text())='Address']/following-sibling::p");

            loc.put("SDP Nominee Address Line 1 Text Box", "SDP Nominee Address Line 1 Text Box#xpath=//strong[normalize-space(text())='Provide Nominee Address']/../following-sibling::div//label[normalize-space(text())='Address Line 1']/following-sibling::input");
            loc.put("SDP Nominee Address Line 2 Text Box", "SDP Nominee Address Line 2 Text Box#xpath=//strong[normalize-space(text())='Provide Nominee Address']/../following-sibling::div//label[normalize-space(text())='Address Line 2']/following-sibling::input");
            loc.put("SDP Nominee PIN Code Text Box", "SDP Nominee PIN Code Text Box#xpath=//strong[normalize-space(text())='Provide Nominee Address']/../following-sibling::div//label[normalize-space(text())='PIN Code']/following-sibling::input");
            loc.put("SDP Nominee City Text Box", "SDP Nominee City Text Box#xpath=//strong[normalize-space(text())='Provide Nominee Address']/../following-sibling::div//label[normalize-space(text())='City']/following-sibling::input[@id='NomineeCity']");
            loc.put("SDP Nominee State Text Box", "SDP Nominee City Text Box#xpath=//strong[normalize-space(text())='Provide Nominee Address']/../following-sibling::div//label[normalize-space(text())='State']/following-sibling::input[@id='NomineeState']");
            //Guardian
            loc.put("SDP Guardian Name Text Box", "Guardian Name Text Box in Nominee Page#xpath=//label[normalize-space(text())='Guardian Name']/following-sibling::input");
            loc.put("SDP Guardian Details Title in Nominee Page", "Guardian Details Title#xpath=//strong[normalize-space(text())='Guardian Details']");
            loc.put("SDP Guardian Date of Birth Text Box", "SDP Guardian DOB Text Box#xpath=//label[normalize-space(text())='Date of Birth']/preceding-sibling::input[@id='gurdob']");
            loc.put("SDP Guardian Date of Birth Label", "SDP Guardian DOB Label#xpath=//input[@id='gurdob']/following-sibling::label[normalize-space(text())='Date of Birth']");
            loc.put("SDP Guardian DOB Enter Valid date", "Guardian DOB Enter Valid Date Error Message#xpath=//*[normalize-space(text())='Enter valid date'and(contains(@style,'block'))]");
            loc.put("SDP Guardian DOB Minimum 18 Years", "Guardian DOB Minimum 18 Years Error Message#xpath=//*[normalize-space(text())='Minimum 18 years of age to be eligible'and(contains(@style,'block'))]");
            loc.put("SDP Guardian and Nominee Name not same", "Guardian name and Nominee name cannot be same Error Message#xpath=//*[normalize-space(text())='Guardian name and Nominee name cannot be same'and(contains(@style,'block'))]");

            loc.put("SDP Guardian Address Line 1 Text Box", "SDP Guardian Address Line 1 Text Box#xpath=//strong[normalize-space(text())='Provide Guardian Address']/../following-sibling::div//label[normalize-space(text())='Address Line 1']/following-sibling::input");
            loc.put("SDP Guardian Address Line 2 Text Box", "SDP Guardian Address Line 2 Text Box#xpath=//strong[normalize-space(text())='Provide Guardian Address']/../following-sibling::div//label[normalize-space(text())='Address Line 2']/following-sibling::input");
            loc.put("SDP Guardian PIN Code Text Box", "SDP Guardian PIN Code Text Box#xpath=//strong[normalize-space(text())='Provide Guardian Address']/../following-sibling::div//label[normalize-space(text())='PIN Code']/following-sibling::input");
            loc.put("SDP Guardian City Text Box", "SDP Guardian City Text Box#xpath=//strong[normalize-space(text())='Provide Guardian Address']/../following-sibling::div//label[normalize-space(text())='City']/following-sibling::input[@id='GuardianCity']");
            loc.put("SDP Guardian State Text Box", "SDP Guardian State Text Box#xpath=//strong[normalize-space(text())='Provide Guardian Address']/../following-sibling::div//label[normalize-space(text())='State']/following-sibling::input[@id='GuardianState']");

            loc.put("SDP DOB error Message", "Guardian DOB Enter Valid Date Error Message#xpath=//*[normalize-space(text())='Enter valid date'and(contains(@style,'block'))]|//*[normalize-space(text())='Minimum 18 years of age to be eligible'and(contains(@style,'block'))]");
            loc.put("SDP Pincode error Message", "Pincode Error Message#xpath=//*[normalize-space(text())='Pincode should be 6 digit'and(contains(@style,'block'))]|//*[normalize-space(text())='Please enter correct pincode'and(contains(@style,'block'))]");
            loc.put("SDP Nominee Generate OTP Button", "Generate OTP Button#xpath=//input[@class='probtn GenOTPBtn']");

            loc.put("Submit Button in STOP SDP OTP Screen", "Submit Button in STOP SDP OTP Screen#xpath=//button[normalize-space(text())='Submit']");
            loc.put("Disabled STOP SDP in RHS", "Disabled STOP SDP in RHS#xpath=//a[@id='duplicateNOC'][@style='opacity:0.5;pointer-events:none']");


            /*
        Two Wheeler Services Loan
         */
            loc.put("Insurance Details Accordian Icon", "Accordian Icon in Insurance Details#xpath=//div[@id='Insurance_Details']//strong[normalize-space(text())='Policy 1 Details']/following-sibling::img");
            loc.put("RHS Make Payments Popup 1st Option", "RHS Make Payments Popup 1st Option#xpath=//div[@class='payment_options']//label[not(contains(@style,'display: none'))]/strong");
            loc.put("RHS Duplicate NOC Popup Proceed Button", "RHS Duplicate NOC Popup Proceed Button#xpath=//div[@class='gotit_btn twowheelerproceed']/button[normalize-space(text())='PROCEED']");
            loc.put("RHS Duplicate NOC Popup Close Icon", "RHS Duplicate NOC Popup Close Icon#xpath=//div[@class='closeBTn TwocloseBTn']//img[contains(@src,'cross.svg')]");
            loc.put("TWL NOC Thank You Msg With SR Number", "Thank you for submitting the request. Your SR No. is SR_____.  and your Duplicate NOC will be dispatched in 2 business days. Please check the status in Request History. MSG#xpath=//p[text()='Thank you for submitting the request. Your SR No. is 'and(text()=' and your Duplicate NOC will be dispatched in 2 business days. Please check the status in Request History.')]/span[contains(text(),'SR')]");
            loc.put("Disabled Duplicate NOC in TWL RHS", "Disabled Duplicate NOC in TWL RHS#xpath=//a[@id='duplicateNOC'][@style='opacity:0.5;pointer-events:none']");

            loc.put("Two Wheeler Loan Service Page", "//div[@class='Relationshipbox_title']//strong");


            loc.put("Active Two Wheeler Loan without EMI Overdue", "Loan Amount@Principal Outstanding Amount#Annualised Rate of Interest#Repayment Tenure#Next EMI Due Amount@@@@@Loan Account Number:");
            loc.put("Active Two Wheeler Loan with Last EMI", "Loan Amount@Principal Outstanding Amount#Annualised Rate of Interest#Repayment Tenure#Last EMI Amount@@@@@Loan Account Number:");

            loc.put("Active Two Wheeler Loan with EMI Overdue", "Loan Amount@Principal Outstanding Amount#Annualised Rate of Interest#Repayment Tenure#Next EMI Due Amount@EMI OVERDUE@#b40000@RED@background-color@Loan Account Number:");
            loc.put("Active Two Wheeler Loan with Last EMI and Overdue", "Loan Amount@Principal Outstanding Amount#Annualised Rate of Interest#Repayment Tenure#Last EMI Amount@EMI OVERDUE@#b40000@RED@background-color@Loan Account Number:");
            loc.put("Closed Two Wheeler Loan", "Loan Amount@Annualised Rate of Interest#Repayment Tenure#Closure Date@CLOSED@#002953@BLUE@background-color@Loan Account Number:");

           /*
  Footer- 02012023
         */


            loc.put("Facebook Logo", "Facebook Logo#xpath=//a[@href='https://www.facebook.com/bajajfinserv']");
            loc.put("Linkedin Logo", "Linkedin Logo#xpath=//a[@href='https://www.linkedin.com/company/bajaj-finserv-lending']");
            loc.put("Twitter Logo", "Twitter Logo#xpath=//a[@href='https://twitter.com/Bajaj_Finserv']");
            loc.put("Youtube Logo", "Youtube Logo#xpath=//a[@href='https://www.youtube.com/c/bajajfinserv']");
            loc.put("Android Logo", "Android Logo#xpath=//img[@alt='Android']/parent::a");
            loc.put("Apple Logo", "Apple Logo#xpath=//img[@alt='iOS']/parent::a");


            /*
        Gold Loan
         */

            loc.put("Gold Loan Service Page", "//div[@class='Relationshipbox_title']//strong");

            loc.put("No Disbursement details found Msg in GL", "No Disbursement details found Msg in GL#xpath=//strong[normalize-space(text())='Disbursement Details']/../following-sibling::div//p[normalize-space(text())='No Disbursement details found']");

            loc.put("Active Gold Loan without EMI Overdue", "Loan Amount@Interest Due Date#Tenor#Balance Principal@@@@@Loan Account Number:");

//            loc.put("Active Gold Loan with Last EMI", "Loan Amount@Principal Outstanding Amount#Annualised Rate of Interest#Repayment Tenure#Last EMI Amount@@@@@Loan Account Number:");
//            loc.put("Active Gold Loan with EMI Overdue", "Loan Amount@Principal Outstanding Amount#Annualised Rate of Interest#Repayment Tenure#Next EMI Due Amount@EMI OVERDUE@#b40000@RED@background-color@Loan Account Number:");
//            loc.put("Active Gold Loan with Last EMI and Overdue", "Loan Amount@Principal Outstanding Amount#Annualised Rate of Interest#Repayment Tenure#Last EMI Amount@EMI OVERDUE@#b40000@RED@background-color@Loan Account Number:");

            loc.put("Closed Gold Loan", "Loan Amount@Annualised Rate of Interest#Repayment Tenure#Closure Date@CLOSED@#002953@BLUE@background-color@Loan Account Number:");

            loc.put("Gold Loan Top Section Tool Tip Icon", "Gold Loan Top Section Tool Tip Icon#xpath=//div[contains(@class,'fixed_deposit_points')]//img[contains(@src,'images/icons-info.svg')]");
            loc.put("Gold Loan Top Section Cross Icon", "Gold Loan Top Section Cross Icon#xpath=//div[contains(@class,'fixed_deposit_points')]//img[contains(@src,'images/icons-cross.svg')]");

            loc.put("Home Page Shop on Bajaj Mall", "shop-at-emi-store@shop-at-emi-store-title");
            loc.put("Shop on Bajaj Mall Smartphones", "shop-at-emi-store@smartphones-icon@icontitle,iconimage-android,iconlink");
            loc.put("Shop on Bajaj Mall LED TVs", "shop-at-emi-store@led-tvs-icon@icontitle,iconimage-android,iconlink");
            loc.put("Shop on Bajaj Mall Washing machines", "shop-at-emi-store@washing-machines-icon@icontitle,iconimage-android,iconlink");
            loc.put("Shop on Bajaj Mall Refrigerators", "shop-at-emi-store@refrigerators-icon@icontitle,iconimage-android,iconlink");
            loc.put("Shop on Bajaj Mall Smartwatches", "shop-at-emi-store@smartwatches-icon@icontitle,iconimage-android,iconlink");
            loc.put("Shop on Bajaj Mall Laptops", "shop-at-emi-store@laptops-icon@icontitle,iconimage-android,iconlink");
            loc.put("Shop on Bajaj Mall Cycles", "shop-at-emi-store@bicycles-icon@icontitle,iconimage-android,iconlink");
            loc.put("Shop on Bajaj Mall Mattresses", "shop-at-emi-store@mattresses-icon@icontitle,iconimage-android,iconlink");

            loc.put("Home Page Two-wheeler World", "two-wheeler-world@two-wheeler-world-title");
            loc.put("Two-wheeler World Scooters", "two-wheeler-world@scooters@icontitle,iconimage-android,iconlink");
            loc.put("Two-wheeler World Bikes", "two-wheeler-world@bikes@icontitle,iconimage-android,iconlink");
            loc.put("Two-wheeler World Electric Scooters", "two-wheeler-world@electric-scooters@icontitle,iconimage-android,iconlink");
            loc.put("Two-wheeler World Best Mileage Bikes", "two-wheeler-world@best-mileage-bikes@icontitle,iconimage-android,iconlink");
            loc.put("Two-wheeler World Top Sellers", "two-wheeler-world@top-sellers@icontitle,iconimage-android,iconlink");
            loc.put("Two-wheeler World Popular Brands", "two-wheeler-world@popular-brands@icontitle,iconimage-android,iconlink");
            loc.put("Two-wheeler World Sports Bikes", "two-wheeler-world@sports-bikes@icontitle,iconimage-android,iconlink");
            loc.put("Two-wheeler World Adventure Bikes", "two-wheeler-world@adventure-bikes@icontitle,iconimage-android,iconlink");

            loc.put("Home Page Insurance", "insurance-marketplace@insurance-marketplace-title");
            loc.put("Insurance Bike", "insurance-marketplace@bike-insurance@icontitle,iconimage-android,iconlink");
            loc.put("Insurance Car", "insurance-marketplace@car-insurance@icontitle,iconimage-android,iconlink");
            loc.put("Insurance Health", "insurance-marketplace@health-insurance@icontitle,iconimage-android,iconlink");
            loc.put("Insurance Wallet Care", "insurance-marketplace@wallet-care@icontitle,iconimage-android,iconlink");
            loc.put("Insurance Mobile Protection", "insurance-marketplace@mobile-protect@icontitle,iconimage-android,iconlink");

            loc.put("Home Page Investments", "investment-marketplace@investment-marketplace-title");
            loc.put("Investments Fixed Deposit", "investment-marketplace@fixed-deposit@icontitle,iconimage-android,iconlink");
            loc.put("Investments Systematic Deposit Plan", "investment-marketplace@systematic-deposit-plan@icontitle,iconimage-android,iconlink");
            loc.put("Investments Senior Citizen FD", "investment-marketplace@senior-citizen-fd@icontitle,iconimage-android,iconlink");
            loc.put("Investments Mutual Funds", "investment-marketplace@mutual-funds@icontitle,iconimage-android,iconlink");
            loc.put("Investments Online Trading", "investment-marketplace@online-trading@icontitle,iconimage-android,iconlink");

            loc.put("Home Page Bills & Recharges", "bills-and-recharge@bills-and-recharges-title");
            loc.put("Bills & Recharges Electricity", "bills-and-recharge@electricity-icon@icontitle,iconimage-android,iconlink");
            loc.put("Bills & Recharges Mobile", "bills-and-recharge@mobile-icon@icontitle,iconimage-android,iconlink");
            loc.put("Bills & Recharges DTH", "bills-and-recharge@dth-icon@icontitle,iconimage-android,iconlink");
            loc.put("Bills & Recharges EMIs", "bills-and-recharge@emis-icon@icontitle,iconimage-android,iconlink");
            loc.put("Bills & Recharges FASTag", "bills-and-recharge@fastag-icon@icontitle,iconimage-android,iconlink");

            loc.put("Home Page Lifestyle Store", "lifestyle-store@lifestyle-store-title");
            loc.put("Lifestyle Store Mattresses", "lifestyle-store@mattresses@icontitle,iconimage-android,iconlink");
            loc.put("Lifestyle Store Smartwatches", "lifestyle-store@smartwatches@icontitle,iconimage-android,iconlink");
            loc.put("Lifestyle Store Cycles", "lifestyle-store@cycles@icontitle,iconimage-android,iconlink");
            loc.put("Lifestyle Store Cameras", "lifestyle-store@cameras@icontitle,iconimage-android,iconlink");
            loc.put("Lifestyle Store Furnitures", "lifestyle-store@furnishings@icontitle,iconimage-android,iconlink");
            loc.put("Lifestyle Store Fitness Equipments", "lifestyle-store@fitness-equipment@icontitle,iconimage-android,iconlink");
            loc.put("Lifestyle Store Music & Audio Devices", "lifestyle-store@music-and-audio@icontitle,iconimage-android,iconlink");
            loc.put("Lifestyle Store Water Purifiers", "lifestyle-store@water-purifiers@icontitle,iconimage-android,iconlink");
            loc.put("Lifestyle Store Watches", "lifestyle-store@watches@icontitle,iconimage-android,iconlink");
            loc.put("Lifestyle Store Treadmills", "lifestyle-store@treadmills@icontitle,iconimage-android,iconlink");
            loc.put("Lifestyle Store Chimneys", "lifestyle-store@chimneys@icontitle,iconimage-android,iconlink");
            loc.put("Lifestyle Store Gas Stoves", "lifestyle-store@gas-stoves@icontitle,iconimage-android,iconlink");

            loc.put("Home Page Products for you", "products-for-you@products-for-you-title");
            loc.put("Products for you Personal Loan", "products-for-you@personal-loan@icontitle,iconimage-android,iconlink");
            loc.put("Products for you Bajaj Mall", "products-for-you@bajaj-mall@icontitle,iconimage-android,iconlink");
            loc.put("Products for you Co-Branded Credit Card", "products-for-you@credit-card@icontitle,iconimage-android,iconlink");
            loc.put("Products for you Fixed Deposit", "products-for-you@fixed-deposit@icontitle,iconimage-android,iconlink");
            loc.put("Products for you Gold Loan", "products-for-you@gold-loan@icontitle,iconimage-android,iconlink");
            loc.put("Products for you Health Insurance", "products-for-you@health-insurance@icontitle,iconimage-android,iconlink");
            loc.put("Products for you Car Insurance", "products-for-you@car-insurance@icontitle,iconimage-android,iconlink");
            loc.put("Products for you Bike Insurance", "products-for-you@bike-insurance@icontitle,iconimage-android,iconlink");
            loc.put("Products for you Business Loan", "products-for-you@business-loan@icontitle,iconimage-android,iconlink");
            loc.put("Products for you Doctor Loan", "products-for-you@doctor-loan@icontitle,iconimage-android,iconlink");
            loc.put("Products for you Two-wheeler Loan", "products-for-you@two-wheeler-loan@icontitle,iconimage-android,iconlink");
            loc.put("Products for you Loan Against Property", "products-for-you@loan-against-property@icontitle,iconimage-android,iconlink");

            loc.put("Home Page Explore", "explore@explore-title");
            loc.put("Explore Personal Loan calculator", "explore@personal-loan-calculator@icontitle,iconimage-android,iconlink");
            loc.put("Explore Fixed Deposit Calculator", "explore@fixed-deposit-calculator@icontitle,iconimage-android,iconlink");
            loc.put("Explore CIBIL Score", "explore@cibil-score@icontitle,iconimage-android,iconlink");
            loc.put("Explore Health Insurance", "explore@health-insurance@icontitle,iconimage-android,iconlink");
            loc.put("Explore Pocket Insurance", "explore@pocket-insurance@icontitle,iconimage-android,iconlink");
            loc.put("Explore Motor Insurance", "explore@motor-insurance@icontitle,iconimage-android,iconlink");
            loc.put("Explore Home Loan Calculator", "explore@home-loan-calculator@icontitle,iconimage-android,iconlink");
            loc.put("Explore Business Loan Calculator", "explore@business-loan-calculator@icontitle,iconimage-android,iconlink");
            loc.put("Explore Gold Loan Calculator", "explore@gold-loan-calculator@icontitle,iconimage-android,iconlink");
            loc.put("Explore GST Calculator", "explore@gst-calculator@icontitle,iconimage-android,iconlink");
            loc.put("Explore Blogs & Articles", "explore@blogs-and-articles@icontitle,iconimage-android,iconlink");

            loc.put("Home Page Brand Store", "brand-stores@brand-stores-title");
            loc.put("Brand Store Vivo", "brand-stores@vivo-icon@icontitle,iconimage-android,iconlink");
            loc.put("Brand Store OPPO", "brand-stores@oppo-icon@icontitle,iconimage-android,iconlink");
            loc.put("Brand Store OnePlus", "brand-stores@oneplus-icon@icontitle,iconimage-android,iconlink");
            loc.put("Brand Store Sleepy head", "brand-stores@sleepyhead@icontitle,iconimage-android,iconlink");
            loc.put("Brand Store Sony", "brand-stores@sony-icon@icontitle,iconimage-android,iconlink");
            loc.put("Brand Store LG", "brand-stores@lg-icon@icontitle,iconimage-android,iconlink");
            loc.put("Brand Store Croma", "brand-stores@croma-icon@icontitle,iconimage-android,iconlink");
            loc.put("Brand Store Samsung", "brand-stores@samsung-icon@icontitle,iconimage-android,iconlink");
            loc.put("Brand Store Panasonic", "brand-stores@panasonic@icontitle,iconimage-android,iconlink");
            loc.put("Brand Store Havells", "brand-stores@havells@icontitle,iconimage-android,iconlink");

            loc.put("Home Page Apply for loans", "apply-for-loans@apply-for-loans-title");
            loc.put("Apply for loans Personal", "apply-for-loans@personal@icontitle,iconimage-android,iconlink");
            loc.put("Apply for loans Business", "apply-for-loans@business@icontitle,iconimage-android,iconlink");
            loc.put("Apply for loans Doctor", "apply-for-loans@doctor@icontitle,iconimage-android,iconlink");
            loc.put("Apply for loans Gold", "apply-for-loans@offers@icontitle,iconimage-android,iconlink");

            loc.put("Home Page Insta EMI card", "emi-network-card@emi-network-card-title");
            loc.put("Insta EMI card EMI Card", "emi-network-card@bajaj-mall-icon@icontitle,iconimage-android,iconlink");
            loc.put("Insta EMI card Fees & Charges", "emi-network-card@emi-card-icon@icontitle,iconimage-android,iconlink");
            loc.put("Insta EMI card Fees & Charges Disabled", "parent::a[@class='disabled']");//For Disabled...
            loc.put("Insta EMI card Partners", "emi-network-card@partners-icon@icontitle,iconimage-android,iconlink");
            loc.put("Insta EMI card Offers", "emi-network-card@offer-icon@icontitle,iconimage-android,iconlink");

            loc.put("Home Page Co-branded Credit card", "credit-card@co-brand-credit-card-title");
            loc.put("Co-branded Credit card RBL Bank", "credit-card@rbl-bank@icontitle,iconimage-android,iconlink");
            loc.put("Co-branded Credit card DBS Bank", "credit-card@dbs-bank@icontitle,iconimage-android,iconlink");
            loc.put("Co-branded Credit card Eligibility", "credit-card@eligibility@icontitle,iconimage-android,iconlink");
            loc.put("Co-branded Credit card Offers", "credit-card@offers@icontitle,iconimage-android,iconlink");

            loc.put("Home Page Online Stores", "online-stores@online-stores-title");
            loc.put("Online Stores Bajaj Finserv Health", "online-stores@bajaj-finserv-health@icontitle,iconimage-android,iconlink");
            loc.put("Online Stores Paymatrix", "online-stores@paymatrix@icontitle,iconimage-android,iconlink");
            loc.put("Online Stores Vedantu", "online-stores@vedantu@icontitle,iconimage-android,iconlink");
            loc.put("Online Stores EaseMy Trip", "online-stores@ease-my-trip@icontitle,iconimage-android,iconlink");
            loc.put("Online Stores Inshorts", "online-stores@inshorts@icontitle,iconimage-android,iconlink");
            loc.put("Online Stores CarDekho", "online-stores@cardekho@icontitle,iconimage-android,iconlink");
            loc.put("Online Stores The Man Company", "online-stores@the-man-company@icontitle,iconimage-android,iconlink");
            loc.put("Online Stores True Elements", "online-stores@true-elements@icontitle,iconimage-android,iconlink");
            loc.put("Proceed button in Online stores popup", "Proceed button in Online stores  Redirect popup#xpath=//div[@id='onlineStorePopupRedirect']//a[normalize-space(text())='PROCEED']");


            loc.put("Home Page Superstores", "super-store-top-right@super-store-top-right-title");
            loc.put("Superstores Bajaj Mall", "super-store-top-right@emi-store-icon@icontitle,iconimage-android,iconlink");
            loc.put("Superstores Investments", "super-store-top-right@investments-icon@icontitle,iconimage-android,iconlink");
            loc.put("Superstores Insurance", "super-store-top-right@insurance-icon@icontitle,iconimage-android,iconlink");
            loc.put("Superstores Securities", "super-store-top-right@securities-icon@icontitle,iconimage-android,iconlink");

            loc.put("Carousal Check your CIBIL Score", "your-cibil-score@your-cibil-score-icon@icontitle,iconimage-android,ctalink,icondescription,ctalabel");
            loc.put("Carousal Book an FD at up to 8.10% p.a.", "your-cibil-score@bajaj-finserv-emi-store-icon@icontitle,iconimage-android,ctalink,icondescription,ctalabel");
            loc.put("Carousal Help and Support", "your-cibil-score@smartphones-on-no-cost-emi-icon@icontitle,iconimage-android,ctalink,icondescription,ctalabel");

            loc.put("Banner Offers Fixed Deposit", "fixed-deposit");
            loc.put("Banner Offers Car Insurance", "car-insurance");
            loc.put("Banner Offers Personal Loan", "personal-loan");
            loc.put("Banner Offers Bajaj Finserv RBL Bank SuperCard", "rbl");
            loc.put("Banner Offers Insta EMI Card", "insta-emi-card");
            loc.put("Banner Offers Gold Loan", "gold-loan");

            loc.put("Partner Offers Vedantu", "vedantu");
            loc.put("Partner Offers Ease My Trip", "ease-my-trip");
            loc.put("Partner Offers The Man Company", "the-man-company");
            loc.put("Partner Offers True Elements", "true-elements");

            loc.put("Offers For You Smartphone", "smartphone");
            loc.put("Offers For You Personal Loan", "personal-loan");
            loc.put("Offers For You CIBIL Score", "cibil-score");
            loc.put("Offers For You Two-wheeler Loan", "two-wheeler-loan");
            loc.put("Offers For You Credit Card", "credit-card");
            loc.put("Offers For You Gold Loan", "gold-loan");
            loc.put("Offers For You Insta EMI Card", "insta-emi-card");
            loc.put("Offers For You LED Tv", "led-tv");
            loc.put("Offers For You Home Loan", "home-loan");
            loc.put("Offers For You Doctor Loan", "doctor-loan");
            loc.put("Offers For You Business Loan", "business-loan");

            loc.put("Locate us Title", "Locate us");
            loc.put("Locate us Sub Title", "Visit our nearest branch to apply for loans, pay bills, or invest in a fixed deposit");
            loc.put("Locate us Logo", "/image/bajajfinancestage/locate-us-v1-2");
//            loc.put("Locate us", "icontitle@iconsubtitle@iconimage-android@iconlink@ctalabel1@nudgetext");1.title,2.subtitle or description,3.imageUrl,4.redirection Link,5.button text,6.nudgeText


            loc.put("Savdhaan Rahein. Safe Rahein Title", "Savdhaan Rahein. Safe Rahein");
            loc.put("Savdhaan Rahein. Safe Rahein Sub Title", "Beware of fraud calls/ SMSes/ emails/ fake online and print ads. Bajaj Finance never asks for advance payments for providing loans. Know more");
            loc.put("Savdhaan Rahein. Safe Rahein Logo", "/image/bajajfinancestage/sheild-protect-verified-security-outline");


            loc.put("Feedback Option in Home Page", "Feedback Option in Home Page#xpath=//a[normalize-space(text())='Feedback']");
            loc.put("Pre-approved offers for you section", "Pre-approved offers for you section#xpath=//p[normalize-space(text())='Pre-approved offers for you']");
            loc.put("Shop on Bajaj Mall section", "Shop on Bajaj Mall section#xpath=//div[@class='pageall_title']//p[contains(text(),'Shop on Bajaj Mall')]");
            loc.put("Bills & Recharges section", "Bills & Recharges section#xpath=//div[@class='pageall_title']//p[contains(text(),'Bills & Recharges')]");
            loc.put("Pre-approved offers Banners section", "Pre-approved offers Banners section#xpath=//div[@class='finance_slider']");
            loc.put("Mast Head section", "Mast Head section#xpath=//div[@class='wallet_card_row']");
            loc.put("PL Offer in Pre-Approved Offers For You", "Personal Loan Offer in Pre-Approved Offers For You#xpath=//p[normalize-space(text())='Pre-approved offers for you']/../../following-sibling::div//*[normalize-space(text())='Personal Loan']");
            loc.put("Personal Loan Popup Check Box", "Personal Loan Popup Check Box#xpath=//label[@for='chkTerms1_OW']");


            loc.put("Personal Loan Option in Master head Section", "Personal Loan Option in Master head Section#xpath=//div[@class='wallet_card_row']//*[normalize-space(text())='Personal']");
            loc.put("Personal Loan Option in Banner Offers Section", "Personal Loan Option in Banner Offers Section#xpath=//div[@class='finance_text']//*[normalize-space(text())='Personal Loan']");
            loc.put("Personal Loan Option in Pre-Approved Offers For You Section", "Personal Loan Offer in Pre-Approved Offers For You#xpath=//p[normalize-space(text())='Pre-approved offers for you']/../../following-sibling::div//*[normalize-space(text())='Personal Loan']/../following-sibling::div//a[@class='btnOffer']");
            loc.put("Personal Loan Option in Products for you Section", "Personal Loan Option in Products for you Section#xpath=//div[@class='Products_for_you']//*[normalize-space(text())='Personal Loan']");
            loc.put("Personal Loan Option in Offers for You section", "Personal Loan Option in Offers for You section#xpath=//div[@class='a_offerfor_you offerforyousso']//*[@alt='personal-loan']");
            loc.put("Personal Loan Option in Footer Application Forms", "Personal Loan Option in Offers for You section#xpath=//h3[normalize-space(text())='Application Forms']/following-sibling::*//*[normalize-space(text())='Personal Loan']");
            loc.put("Personal Loan Option in Footer Loans", "Personal Loan Option in Offers for You section#xpath=//h3[normalize-space(text())='Loans']/following-sibling::*//*[normalize-space(text())='Personal Loan']");




            /*
        New Home Page
         */

/*
PaymentsbyCash
*/

            loc.put("Online Payments Mode", "Online Payments Mode Radio Button#xpath=//i[normalize-space(text())='Online Payment Modes']/parent::label/input");
            loc.put("Pay By Cash", "Pay By Cash Radio Button#xpath=//i[normalize-space(text())='Pay By Cash']/parent::label/input");

/*
PaymentsbyCash
*/

            loc.put("Close Give Feedback", "Close Feedback Button#xpath=//button[@data-aut='button-x-close']");

/*
LAS- Drawdown
*/


            loc.put("Submit Button in LAS OTP Screen", "Submit Button in LAS Drawdown OTP Screen#xpath=//button[@disabled][normalize-space(text())='SUBMIT']");
            loc.put("A one time password message in LAS OTP Screen", "A one-time password has been sent to your registered mobile number#xpath=//p[normalize-space(text())='A one-time password has been sent to your registered mobile number']");
            loc.put("OTP Close Button in LAS Drawdown OTP Screen", "OTP Close Button in LAS Drawdown OTP Screen#xpath=//a[@class='close_otp close_dialog_modal']//img[contains(@src,'images/icons-cross.svg')]");
            loc.put("OTP Close Button in LAS Share Release OTP Screen", "OTP Close Button in LAS Share Release OTP Screen#xpath=//a[@class='close_otp']//img[contains(@src,'images/icons-cross.svg')]");
/*
        ModuleName

         */
            loc.put("Check Now Button in CIBIL", "Check Now Button in CIBIL#xpath=//strong[normalize-space(text())='Know your CIBIL Score']/../following-sibling::i[normalize-space(text())='Check now']");

/*
        ModuleName
         */


        }catch (Exception e){
            e.printStackTrace();
            System.err.print("Failed in Application Xpaths Map Format. Exception: "+e.getClass());
        }
        return loc;
    }

}