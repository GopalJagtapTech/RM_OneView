package TestData;

import base.ApplicationKeywords;

public class TestDataMyProfile extends ApplicationKeywords {
    /**
     * validation Page - EMI Card
     */

//    DOB


    public static final String emiCardNegativeValues = "    ,$%^&*,FDUYFKUF,fh68vh,1 2";
    public static final String emiCardLessThan = "203040010089456";
    public static final String emiCardMoreThan = "20304001008945699";
    public static final String emiCardErrorValue = "0000000000000000";
    public static final String emiCardErrorMsg = "Please enter valid EMI Card Number.";

    public static final String bankAccNegativeValues = "    ,$%^&*,FDUYFKUF,fh68vh,1 2";
    public static final String bankAccLessThan = "1234567";
    public static final String bankAccMoreThan = "12345678901234567";
    public static final String bankAccErrorValue = "0000000000000000";
    public static final String bankAccErrorMsg = "Please enter valid Bank Acc Number.";

    public static final String panNegativeValues = "    ,$%^&*,FD  AP,1 2";
    public static final String panLessThan = "ABCDE";
    public static final String panMoreThan = "ABCDE00911B";
    public static final String panErrorValue = "123450000B,ABCDE00002,AAGAL0081B";
    public static final String panErrorMsgVerifyPage = "Please enter valid PAN.";
    public static final String panErrorMsg = "Details entered are not in the correct format.";

    public static final String dropDownOptions_SelectDocument = "Aadhaar#Voter ID#Passport#Driving license#PAN CARD#Others";


    public static final String mobileNegativeValues = "    ,$%^&*,FD  AP,1 2,9.8.45344";
    public static final String mobileLessThan = "987654";
    public static final String mobileMoreThan = "98765432109";
    public static final String mobileErrorValue = "1234500000,0000212345,1111111111";
//    public static final String mobileErrorMsg = "Invalid / wrong Mobile Number.";
    public static final String mobileErrorMsg = "Invalid Mobile Number.";


    public static final String pincodeNegativeValues = "    ,$%^&*,FD  AP,1 2,9.8.453";
    public static final String pincodeLessThan = "9876";
    public static final String pincodeMoreThan = "98765432109";
    public static final String pincodeErrorValue = "ABCDE00002,AAGALAAGAL";
    public static final String pincodeErrorMsg = "Pincode should be 6 digit";

//    GSTIN

    public static final String GSTINNo = "19aaa2461j1ZD";
    public static final String GSTINNoCaps = "19AAA2461J1ZD";
    public static final String Pincode = "517422";
    public static final String City = "CHITTOOR";
    public static final String State = "ANDHRA PRADESH";

    public static final String addressline1 = "121 Main Road";
    public static final String addressline2 = "Shivaji Nagar";
    public static final String area = "Ganesh Chambers";
    public static final String resAddress = addressline1+" , "+addressline2+" , "+City+" , "+State+" "+Pincode;


}