package TestData;

import base.ApplicationKeywords;

public class TestDataPayments extends ApplicationKeywords {
    /**
     * validation Page - EMI Card
     */

//    DOB

    public static final String alphaNumeric101 = generateRandomAlphanumericString(101, "");
    public static final String alphaNumeric100 = generateRandomAlphanumericString(100, "");
    public static final String alphaNumericmorethan1 = generateRandomAlphanumericString(2, "");

    public static final String addressLineInvalid = "    ,$%^&*$$";
//    public static final String addressGreaterThan = "+alphaNumeric101+";
    public static final String pinInvalid = "    ,$%^&*,FDUYFKUF,1 2 3,1234567,000000";

//    public static final String addressMoreThan1 = "++";
//    public static final String address100 = "+alphaNumeric100+";

    public static final String Pincode = "517422";
    public static final String City = "CHITTOOR";

}