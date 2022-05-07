<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@page import="java.sql.PreparedStatement"%> 
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
<!DOCTYPE html>
<html>
    <head>
        <title>Admin Login</title>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="css/dashboard.css">
    </head>
    <body>

        <%
                         
                    String check = request.getParameter("otp");
       				 
                    String otp = session.getAttribute("otp_value").toString();
                    
					if(!otp.equals(check))
					{
						response.sendRedirect("admin.jsp");
					}
                    
%>
        <main>
            <div class="boxcenter">
            
                <div class="login">
                    <h2>Admin Dashboard</h2>


                   
                	 <a href="manage.jsp">Create Test</a><br>
                    <a href="add_questions.jsp">Add Questions</a><br>
                    <a href="view_result.jsp">View Results</a><br>

                </div>
            </div>
        </main>
    </body>
</html>