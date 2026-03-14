package TestData;

public class GOR {

    public static String scenarioName ="";
    public static int countScenario =0;
    public static Boolean beforeScenario =false;
    public static Boolean login =true;
    public static String BaseUrl="https://uat-oneweb.bajajfinserv.in/";
    public static String staticTemporaryValue="";

    public static Boolean isLoggedIn =false;



    //Common Locators without Reference message
    public static String LoanDetailsHeader="//div[@class='customer-header-leftbox']//h2";
    public static String spinngLoadingWeel="//div[@class='loader']";
    public static String SOAOptions = "//h2[normalize-space(text())='SOA Download via']//parent::div//a//p";
    public static String CustomerInfoOnTables = "//div[@class='emi-status-tablebox']//tbody//tr";
    public static String CustomerIDDropDownField = "//p[normalize-space()='Customer ID']//parent::div//select";

    //Common Locators with Reference message
    public static String NoDataAvailableMessageOnTable = "No Data Available Message #xpath=//div[contains(@class,'table')]//table//td[normalize-space(text())='No Data Available']";





}