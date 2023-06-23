import java.util.Arrays;

public class Run {
    public static void main(String[] args) {
//        String[] a={"R","U","B","AN","KUM", "R"};
//        String[] b=new String[a.length];
//        for (int i = 0; i < a.length; i++) {
//            b[a.length-i-1]=a[i];
//        }
//        System.out.println(Arrays.asList(b));

//        String[] a={"R","U","B","AN","KUM", "R"};
//        int length = a.length;
//        int i1 = length / 2;
//        for (int i = 0; i < length; i=length) {
//
//        }
//        System.out.println(Arrays.asList(a));
String a="Hi Ravi Teja! How are you doing?";
String s3="";
        String[] s = a.split(" ");
        for (int i = 0; i < s.length; i++) {
            String s1 = s[i];
            String s2="";
            for (int j = s1.length()-1; j >= 0; j--) {
                char c = s1.charAt(j);
                s2=s2+c;
            }
s3=s3+" "+s2;
        }
        System.out.println(s3);
        String[] s4 = s3.split(" ");
        String sss="";
        for (int i = 0; i < s4.length; i++) {
            String s1 = s4[i];
            String ss="";
            char c;
            boolean bb=false;
            for (int j = 0; j < s1.length(); j++) {
                c = s1.charAt(j);

                if (j==0&&Character.isAlphabetic(c)) {
                    bb=true;
                    c = Character.toUpperCase(c);
                }
                if (!bb&&j==1&&Character.isAlphabetic(c)) {
                    c = Character.toUpperCase(c);
                }
ss=ss+c;
            }
            sss=sss+" "+ss;
        }
        System.out.println(sss);
    }


}
