package com.main.java;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Properties;
import java.io.IOException;

public class EmailServlet extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response)
    throws IOException{
        System.out.println("preparing to send message ...");
        String message = request.getParameter("message");
        String subject = request.getParameter("subject");
        String to = request.getParameter("selectedEmails");
        String from = "greencartgreen@gmail.com";

        try {
            sendEmail(message, subject, to, from);
            response.sendRedirect("Admin-email.jsp");
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp");
        }
    }

    private static void sendEmail(String message, String subject, String to, String from) {
        String host="smtp.gmail.com";

        Properties properties = System.getProperties();
        System.out.println("PROPERTIES"+properties);

        properties.put("mail.smtp.host",host);
        properties.put("mail.smtp.port","465");
        properties.put("mail.smtp.ssl.enable","true");
        properties.put("mail.smtp.auth","true");


        Session session = Session.getInstance(properties, new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication("greencartgreen@gmail.com", "rioy ojny klgs dumo");
            }
        });


        session.setDebug(true);

        MimeMessage m = new MimeMessage(session);

        try {
            m.setFrom(from);

            m.addRecipients(Message.RecipientType.TO, String.valueOf(new InternetAddress(to)));

            m.setSubject(subject);

            m.setText(message);

            Transport.send(m);

            System.out.println("Sent Successfully!");

        } catch(Exception e) {
            e.printStackTrace();
        }

    }


}
