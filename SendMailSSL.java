package service;


import javax.mail.PasswordAuthentication;
import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;


public class SendMailSSL {
  public static void sendEmail(String toEmail)
  {
     //Get the session object
         Properties props = new Properties();
         props.put("mail.smtp.host", "smtp.gmail.com");
         props.put("mail.smtp.socketFactory.port", "465");
         props.put("mail.smtp.socketFactory.class",
            "javax.net.ssl.SSLSocketFactory");
         props.put("mail.smtp.auth", "true");
         props.put("mail.smtp.port", "465");
         Session session = Session.getDefaultInstance(props,
   new javax.mail.Authenticator() {
   @Override
   protected PasswordAuthentication getPasswordAuthentication() {
        //char  password[] = "9009557337".toCharArray();
        return new PasswordAuthentication("batchadvance@gmail.com","batch@batch");//change accordingly
   }
  });

  //compose message
        try {
           MimeMessage message = new MimeMessage(session);
           message.setFrom(new InternetAddress("batchadvance@gmail.com"));//change accordingly
           message.addRecipient(Message.RecipientType.TO,new InternetAddress(toEmail));
           message.setSubject("Thank you for register");
           //String data = "<a href='activate.jsp?email="+toEmail+"'>activate account</a>";
           String data = "<b>Dear User</b><br>Thank you For Registration."+
                   "<br>click on below link for account verification<br>"+
                   "<a href='http://localhost:8084/TestAjaxAndEmail/verify_account.jsp?email="+toEmail+"'>Verify Account</a>"
                   + "<br>Thanks<br>Ebook Team.";     
           
           message.setContent(data, "text/html; charset=utf-8");
           
           Transport.send(message);
           System.out.println("message sent successfully");
        } catch (MessagingException e)
        {

        }
    }
}
