package Test;

import org.springframework.security.authentication.encoding.Md5PasswordEncoder;

/**
 * Created by RESO on 7/19/2017.
 */
public class Test {

    public String PassWordEncoder(String PassWord)
    {
        Md5PasswordEncoder passwordEncoder =new Md5PasswordEncoder();
        String EncodedPassWord = passwordEncoder.encodePassword(PassWord,null);

        System.out.println(EncodedPassWord);
        return EncodedPassWord;
    }

    public static void main(String[] args) {
        Test test=new Test();
       test.PassWordEncoder("Reso");


    }

}
