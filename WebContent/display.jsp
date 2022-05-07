<%@page import="java.sql.PreparedStatement"%>
 <%@page import  =" com.helper.ConnectionProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <title>Display</title>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="css/display.css">
</head>
<body>

<%
try{
String otp = session.getAttribute("otp_value").toString();
}catch(Exception e)
{
	response.sendRedirect("admin.jsp");
}
String str = session.getAttribute("otp_value").toString();

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
            <div class="boxcenter" style="max-width:70%; max-height: 1000px;">
            
                <div class="login">
                    <h2>Question Panel</h2>
                    <form action="dashboard.jsp" method="POST">
                        <h1>QUESTION ADDED SUCCESSFULLY</h1>
               		  
                      
                        <input type="submit" name="Submit" value="Back to Dashboard"><br>
						<input type="hidden" name="otp" value=<%= str%>>
                    </form>
                </div>
            </div>
        </main>
            

</body>
</html>