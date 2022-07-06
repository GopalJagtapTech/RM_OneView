package PageObjects;

public class CallMe_Page {

    private String Insurnace_menu = "//*[@id='portfolio']/li[5]/a";
    private String Insurance_submenu = "//a[@href='/VAS/Insurance/InsurancePlans']";

    public String getInsurnace_menu() {
        return Insurnace_menu;
    }
    public String getInsurance_submenu()
    {
        return Insurance_submenu;
    }

    private String Call_me_tab ="//*[text()='CALL ME']";
    public String getCall_me_tab(){return Call_me_tab;}

    private String Remarks="//*[@id='txtRemarks']";
    public String getRemarks(){return Remarks;}


    private String Submitmsg="//*[@id='btnRequest']";
    public String getSubmitmsg(){return Submitmsg;}

}
