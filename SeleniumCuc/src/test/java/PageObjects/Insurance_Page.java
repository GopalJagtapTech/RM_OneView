package PageObjects;

public class Insurance_Page {

    private String Coverage = "//tbody/tr/td[2]/b";
    private String M_fees = "//tbody/tr[2]/td[2]/b";
    private String Mobilenumber = "mobileVD";
    private String GenerateOTP = "//*[@class = 'pstpBtn btnstyl Subbutton']";
    private String Timer = "//*[@id='otptimelimit']";
    private String ResendOTP = "//*[@class='resendOtp']";
    private String Enterwrongmobile = "//*[@class='ditForm']";
    private String error1 = "//*[text()='Mobile number should start with 9 or 8 or 7 or 6 or 5']";
    private String error2 = "//*[text()='Please enter your 10 digit mobile number']";
    private String error3 = "lblpopupmsg";
    private String error4 = "//*[text()=' Please enter your Mobile No']";
    private String OTP = "//*[@class='otpVD allownumericwithoutdecimal']";
    private String error5="//*[text()=' Please enter your OTP']";

    public String getCoverage(){return Coverage;}
    public String getM_fees(){return M_fees;}
    public String getMobilenumber(){return Mobilenumber;}
    public String getGenerateOTP(){return GenerateOTP;}
    public String getTimer(){return Timer;}
    public String getResendOTP(){return ResendOTP;}
    public String getEnterwrongmobile(){return Enterwrongmobile;}

    public String getError1() {
        return error1;
    }

    public String getError2() {
        return error2;
    }

    public String getError3() {
        return error3;
    }

    public String getError4() {
        return error4;
    }

    public String getError5() {
        return error5;
    }

    public String getOTP() {
        return OTP;
    }
}
