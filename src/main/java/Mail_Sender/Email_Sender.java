package Mail_Sender;


import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;

public class Email_Sender {
    public String SendResult;

    public String SendMail(String ReciverMail,String UserName,String LoginCode,String LoginPassword)
    {

        // Sender's email ID needs to be mentioned
        String from = "nicuegypt303@gmail.com";
        String pass ="00000000RESO";
        // Recipient's email ID needs to be mentioned.

        //String to = "Mohamedsaad1994@outlook.com";
        String to = ReciverMail;
        String host = "smtp.gmail.com";

        // Get system properties
        Properties properties = System.getProperties();
        // Setup mail server
        properties.put("mail.smtp.starttls.enable", "true");
        properties.put("mail.smtp.host", host);
        properties.put("mail.smtp.user", from);
        properties.put("mail.smtp.password", pass);
        properties.put("mail.smtp.port", "587");
        properties.put("mail.smtp.auth", "true");

        // Get the default Session object.
        Session session = Session.getDefaultInstance(properties);

        try{
            // Create a default MimeMessage object.
            MimeMessage message = new MimeMessage(session);

            // Set From: header field of the header.
            message.setFrom(new InternetAddress(from));

            // Set To: header field of the header.
            message.addRecipient(Message.RecipientType.TO,
                    new InternetAddress(to));

            // Set Subject: header field
            message.setSubject("Verification Code For LogIn Nicu WebSite");
            // Now set the actual message
            message.setText("Dear M "+UserName+" Thank You For Using Our WebSite Here Is Your LogIn Code "+LoginCode +" And  LogIn PassWord Is"+LoginPassword);

            // Send message
            Transport transport = session.getTransport("smtp");
            transport.connect(host, from, pass);
            transport.sendMessage(message, message.getAllRecipients());
            transport.close();
            System.out.println("Sent message successfully....");
            SendResult ="Doen";
        }catch (MessagingException mex) {
            mex.printStackTrace();
            SendResult="NotDoen";
        }
        return SendResult;
    }

    public String USendMail(String ReciverMail,String HospName,String UserName,String UPhone,String Nicuid ,String Uid)
    {

        // Sender's email ID needs to be mentioned
        String from = "nicuegypt303@gmail.com";
        String pass ="00000000RESO";
        // Recipient's email ID needs to be mentioned.

        //String to = "Mohamedsaad1994@outlook.com";
        String to = ReciverMail;
        String host = "smtp.gmail.com";

        // Get system properties
        Properties properties = System.getProperties();
        // Setup mail server
        properties.put("mail.smtp.starttls.enable", "true");
        properties.put("mail.smtp.host", host);
        properties.put("mail.smtp.user", from);
        properties.put("mail.smtp.password", pass);
        properties.put("mail.smtp.port", "587");
        properties.put("mail.smtp.auth", "true");

        // Get the default Session object.
        Session session = Session.getDefaultInstance(properties);

        try{
            // Create a default MimeMessage object.
            MimeMessage message = new MimeMessage(session);

            // Set From: header field of the header.
            message.setFrom(new InternetAddress(from));

            // Set To: header field of the header.
            message.addRecipient(Message.RecipientType.TO,
                    new InternetAddress(to));

            // Set Subject: header field
            message.setSubject("Reservation  Message  For  Nicu ");
            // Now set the actual message
            message.setText("Dear M "+HospName+" SomeOne Just Reserve An Nicu with Id "+Nicuid+ " his name is "+UserName +" And  His National Id Is " +
                    ""+Uid+" and this phone is "+UPhone);

            // Send message
            Transport transport = session.getTransport("smtp");
            transport.connect(host, from, pass);
            transport.sendMessage(message, message.getAllRecipients());
            transport.close();
            System.out.println("Sent message successfully....");
            SendResult ="Doen";
        }catch (MessagingException mex) {
            mex.printStackTrace();
            SendResult="NotDoen";
        }
        return SendResult;
    }

    public static void main(String[] args) {
        Email_Sender c=new Email_Sender();
        // c.SendMail("resoraslan303@gmail.com","kkkkkkkk","0000000");
    }
}