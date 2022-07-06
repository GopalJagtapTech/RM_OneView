package PageObjects;

public class GL_Validation_Page {

    private String GoldLoan_menu = "//a[@href='/VAS/GoldLoan']";
    private String Select_State = "ddlState";
    private String Select_City = "ddlCity";
    private String Loan_Amt = "txtLoanAmt";
    private String checkbox_tc = "chkTerms";
    private String Submit_btn = "btnSubmit";
    private String successmsg = "msg";
    private String click_ok = "okbtnFacta";
    private String errormsg = "spnLoanErroMsg";
    private String comp_add = "BranchAddress";
    public String getComp_add()
    {
        return comp_add;
    }

    public String getGoldLoan_menu() {
        return GoldLoan_menu;
    }

    public String getSelect_State() {
        return Select_State;
    }

    public String getSelect_City() {
        return Select_City;
    }

    public String getLoan_Amt() {
        return Loan_Amt;
    }

    public String getCheckbox_tc() {
        return checkbox_tc;
    }

    public String getSubmit_btn() {
        return Submit_btn;
    }

    public String getsuccessmsg() {
        return successmsg;

    }

    public String getClick_ok(){
        return click_ok;
    }

    public String geterrormsg()
    {
        return errormsg;
    }
}
