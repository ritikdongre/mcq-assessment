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
                    
  
				
					
					
				try{
		
		   String ques = request.getParameter("question");
	   	   String opt1 = request.getParameter("opt1");
	       String opt2 = request.getParameter("opt2");
	   	   String opt3= request.getParameter("opt3");
	    	String opt4 = request.getParameter("opt4");
 	   		String ans = request.getParameter("answer");
 	   
		String q = "insert into questions(question, option1, option2, option3, option4, answer) values(?,?,?,?,?,?)";
			
			//preparedStatement
			PreparedStatement pstmt = ConnectionProvider.getConnection().prepareStatement(q);
			
			//set value of parameter
			
			pstmt.setString(1,ques);
			pstmt.setString(2, opt1 );
			pstmt.setString(3, opt2 );
			pstmt.setString(4, opt3 );
			pstmt.setString(5, opt4 );
			pstmt.setString(6, ans );
			
			//execute
			pstmt.executeUpdate();
	}catch (Exception e){
		e.printStackTrace();
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