package PageObjects;

public class Hamburger_Page {
    private String HamburgerMenu = "//*[@class='menu']";
    private String Crossicon = "//*[@id='desk_close']";

    public String getHamburgerMenu() {return HamburgerMenu;}
    public String getCrossicon() {return Crossicon;}

    private String Cust_id = "uname";
    private String Password_button_id = "psw";
    private String Login_button_xpath = "//*[text()='Login']";
    private String Menu1 = "//*[text()='Loan Payment']";
    private String Menu2 = "//*[text()='Documentation']";
    private String Menu3 = "//*[text()='Request for a Loan']";
    private String Menu4 = "//*[text()='Passbooks']";
    private String Menu5 = "//*[text()='My Orders']";
    private String Menu6 = "//*[text()='Calculators']";
    private String Menu7 = "//*[text()='Help & Support']";
    private String Menu8 = "//*[text()='Locate Us']";
    private String Menu10 = "//*[text()='Check My Offers']";
    private String Menu11 = "//*[text()='Communication History']";
    private String Menu12 = "//*[text()='Settings']";
    private String Click_outside = "//*[@class='darkfade']";
    private String Loan_payment = "//*[text()='Loan Payment']";
    private String Overdue_submenu = "//*[text()='Overdue']";
    private String Overdue_page = "//*[text()='Select loan for payment']";
    private String Other_Payments = "//*[text()='Other Payments']";
    private String Documentation = "//*[text()='Documentation']";
    private String Submenu1 = "//*[text()='KYC Details']";
    private String Submenu2 = "//*[text()='Mandate Management']";
    private String Submenu3 = "//*[text()='Document Centre']";
    //private String Submenu4 = "//*[text()='Overdue']";
    private String Update_KYC ="//*[text()='KYC Details']";
    private String Mandate_management ="//*[text()='Mandate Management']";
    private String Overdue_Validation ="//*[text()='You do not have an overdue amount for any active Loan']";


    public String  getEmail_button_id(){ return Cust_id; }
    public String getPassword_button_id() {
        return Password_button_id;
    }
    public String getLogin_button_xpath() {
        return Login_button_xpath;
    }
    public String getMenu1(){return Menu1; }
    public String getMenu2() {return Menu2;}
    public String getMenu3() {return Menu3;}
    public String getMenu4() {return Menu4;}
    public String getMenu5() {return Menu5;}
    public String getMenu6() {return Menu6;}
    public String getMenu7() {return Menu7;}
    public String getMenu8() {return Menu8;}
    public String getMenu10() {return Menu10;}
    public String getMenu11() {return Menu11;}
    public String getMenu12() {return Menu12;}
    public String getClick_outside() {return Click_outside;}
    public String getLoan_payment() {return Loan_payment;}
    public String getOverdue_submenu() {return Overdue_submenu;}
    public String getOverdue_page() {return Overdue_page;}
    public String getOther_Payments() {return Other_Payments;}
    public String getDocumentation() {return Documentation;}
    public String getSubmenu1() {return Submenu1;}
    public String getSubmenu2() {return Submenu2;}
    public String getSubmenu3() {return Submenu3;}
    public String getUpdate_KYC() {return Update_KYC;}
    public String getMandate_management() {return Mandate_management;}
    public String getOverdue_Validation() {return Overdue_Validation;}



}
