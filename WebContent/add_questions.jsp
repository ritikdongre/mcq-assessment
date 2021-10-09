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
<%--   <%@page import  =" com.entities.Questions"%>
  <%@page import  =" com.helper.ConnectionProvider"%> --%>
  <%@page import = "java.io.PrintWriter" %>
  <%@page import = "javax.servlet.http.HttpSession" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Add Questions</title>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="css/add_questions.css">
    </head>
    <body>
       
      <% 
      	String str = session.getAttribute("otp_value").toString();
      %>
        <main>
            <div class="boxcenter">
            
                <div class="login">
                    <h2>Question Panel</h2>
                    <form action="dashboard.jsp" method="POST">
                        <label>Question</label>
                        <input type="text" name="question" placeholder="Enter the Question" required autofocus><br>
                        <label>Option 1:</label>
                        <input type="text" name="opt1" placeholder="Enter option 1" required><br>
                        <label>Option 2:</label>
                        <input type="text" name="opt2" placeholder="Enter option 2" required><br>
                        <label>Option 3:</label>
                        <input type="text" name="opt3" placeholder="Enter option 3" required><br>
                        <label>Option 4:</label>
                        <input type="text" name="opt4" placeholder="Enter option 4" required><br>
                        <label>Answer</label>
                        <input type="text" name="answer" placeholder="Enter the Answer" required><br>
                        <input type="submit" name="Submit" value="ADD QUESTION"><br>
		<input type="hidden" name="otp" value=<%= str%>>
                    </form>
                </div>
            </div>
        </main>
    </body>
</html>