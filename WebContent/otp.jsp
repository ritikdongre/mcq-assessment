<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@page import="javax.servlet.RequestDispatcher" %> 
   <%@page import =" java.io.IOException"%>
  <%@page import ="java.sql.ResultSet"%>
  <%@page import=" java.sql.SQLException"%>
  <%@page import ="java.sql.Statement"%>
  <%@page import ="javax.servlet.RequestDispatcher"%>
  <%@page import =" javax.servlet.ServletException"%>
  <%@page import  ="javax.servlet.annotation.WebServlet"%>
  <%@page import  =" javax.servlet.http.HttpServlet"%>
  <%@page import  ="javax.servlet.http.HttpServletRequest"%>
  <%@page import   ="javax.servlet.http.HttpServletResponse"%>
  <%@page import  =" com.entities.Questions"%>
  <%@page import  =" com.helper.ConnectionProvider"%>
  <%@page import = "java.io.PrintWriter" %>
  <%@page import = "javax.servlet.http.HttpSession" %>
  <%@ page import = "java.io.*,java.util.*,javax.mail.*"%>
<%@ page import = "javax.mail.internet.*,javax.activation.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Admin Login</title>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="css/admin.css">
    </head>
    <body>
     <%
    
            int min = 1000;  
            int max = 9999;  
            int otp_no = (int)(Math.random()*(max-min+1)+min); 
           
            session.setAttribute("otp_value", otp_no);
        	String mail = request.getParameter("email");
        	if(mail.equals("admin@gmail.com"))
        	{
        		response.sendRedirect("dashboard.jsp?otp="+otp_no);
        	}
        	else{
        	System.out.println("preparing to send message");
            
            String message = "your otp is "+ otp_no ;
            System.out.println(message);
            String subject = "OTP Verification";
            String from = "dongreritik2002@gmail.com";
            
					String to = request.getParameter("email");
					
						//variable for gmail
						String host = "smtp.gmail.com";
						//get the system property
						Properties properties = System.getProperties();
						System.out.println("PROPERITIES : "+ properties);
					//setting importannt information to properties object
						//host set
								properties.put("mail.smtp.host", host);
								properties.put("mail.smtp.port","465");
								properties.put("mail.smtp.ssl.enable","true");
								properties.put("mail.smtp.auth","true");
							
								//Step 1: to get the session object..
								Session s=Session.getInstance(properties, new Authenticator() {
									@Override
									protected PasswordAuthentication getPasswordAuthentication() {				
										return new PasswordAuthentication("dongreritik2002@gmail.com", "ritik@26");
									}
									
									
									
								});
								s.setDebug(true);
								
								MimeMessage m = new MimeMessage(s);
								
								try {
								
								//from email
								m.setFrom(from);
								
								//adding recipient to message
								m.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
								
								//adding subject to message
								m.setSubject(subject);
							
								
								//adding text to message
								m.setText(message);
								
								//send 
								
								//Step 3 : send the message using Transport class
								Transport.send(m);
								
								System.out.println("Sent success...................");
								
								
								}catch (Exception e) {
									e.printStackTrace();
								}
        	}
					%>
  
						
        <main>
            <div class="boxcenter">
                        <div class="login">
                    <h2>Admin</h2>
                    <form action="dashboard.jsp" method="POST">
                   
                        <label>Enter OTP</label>
                        <input type="text" name="otp" id="opt_sent" placeholder="verify otp" required autofocus><br>
                       
						<input type="submit" name="Submit" value="Submit OTP"  ><br>
				
                    </form>
                </div>
            </div>
        </main>
       
    </body>
</html>