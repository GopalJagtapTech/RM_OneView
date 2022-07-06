package PageObjects;

public class PL_CTA_Page {

    private String login_button = "//*[@class='login']";
    private String CustomerID = "txtCustomerId";
    private String password_button ="//*[@class='Pass_way']";
    private String password ="txtPassword";
    private String checkbox = "checkBoxPasword";
    private String Login_btn = "btnPassword";
    private String our_profile = "//a[@href='#portfolio']";
    private String loan_menu = "//*[@id='portfolio']/li[2]/a";
    private String PerosonalLoan_menu = "//*[@class='PLClickHeader PersonalLoanClick']";
    private String Eligibility_tab = "EligibilityCriteriadiv";
    private String FeaturesnBenefits = "featureandbenefitsdiv";
    private String DocsReq = "Documentsrequireddiv";
    private String Apply_now = "btnApplyPL";
    private String full_name = "//*[text()='Full Name']";
    private String MonSal = "txtSalary";
    private String Val_msg = "errtxtSalary";


    public String getlogin_buttonxpath() {
        return login_button;
    }
    public String getCustomerID() {
        return CustomerID;
    }
    public String getpassword_button() {
        return password_button;
    }
    public String getpassword() {
        return password;
    }
    public String getcheckbox() {
        return checkbox;
    }
    public String getLogin_btn() {
        return Login_btn;
    }
    public String getour_profile() {
        return our_profile;
    }
    public String getloan_menu() {
        return loan_menu;
    }
    public String getPerosonalLoan_menu() {
        return PerosonalLoan_menu;
    }
    public String getEligibility_tab() {
        return Eligibility_tab;
    }
    public String getFeaturesnBenefits() {
        return FeaturesnBenefits;
    }
    public String getDocsReq() {
        return DocsReq;
    }
    public String getApply_now() {
        return Apply_now;
    }
    public String getfull_name() {
        return full_name;
    }
    public String getMonSal(){return MonSal;}
    public String getVal_msg(){return Val_msg;}



}
