<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.PreparedStatement"%>
    <%@page import  =" com.helper.ConnectionProvider"%>
     <%@page import = "javax.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Score</title>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="css/score.css">
    </head>
    <body>
    
    <%
  
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String test_id = request.getParameter("test_id");
    ArrayList<String> answer_list = new ArrayList<String>();
    answer_list= (ArrayList<String>)session.getAttribute("list");
    int score = 0;
    int i = 1;
   for(String str:answer_list)
    {
    	
    		String sel_option = request.getParameter(Integer.toString(i));
    		
    		if(str.equals(sel_option))
    		{
    			score++;
    		}
    		i++;
    	
    }
    %>
        <main>
            <div class="boxcenter">
                <div class="result">
                    <h2>Thanks <%= name %> for using our platform</h2>
                    <h3>You have scored <%= score %> out of <%= answer_list.size() %> </h3>
                </div>
            </div>
        </main>
    </body>
</html>

<% 
	
	String q = "insert into result(test_id, name, email, marks) values(?,?,?,?)";

	//preparedStatement
	PreparedStatement pstmt = ConnectionProvider.getConnection().prepareStatement(q);

	//set value of parameter
	
	pstmt.setString(1,test_id);
	pstmt.setString(2, name);
	pstmt.setString(3, email);
	pstmt.setString(4, Integer.toString(score));

	//execute
	pstmt.executeUpdate();
	
	pstmt.close();
%>