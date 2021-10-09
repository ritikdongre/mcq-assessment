<%@page import="java.util.ArrayList"%>
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
  
 
  
<!DOCTYPE html>
<html>
    <head>
        <title>Assessment</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="css/question.css">
        
       
    </head>
<body>
<%
try{
    String name = request.getParameter("name");
    String test_id = request.getParameter("test_id");
    String email = request.getParameter("email");
	    int marks = 0;
		
	
		String query = "select * from test_configuration where test_id = "+test_id;
		Statement stmt = ConnectionProvider.getConnection().createStatement();
		
		
		ResultSet res_test_id = stmt.executeQuery(query);
		
		//String temp_test_id = res_test_id.getString("test_id");
		
		if(res_test_id.next())
		{
			String no_of_questions = res_test_id.getString("no_of_questions");
			String countdown = res_test_id.getString("countdown");
			String q = "SELECT distinct(id), question , option1, option2, option3, option4, answer from questions order by rand() LIMIT "+no_of_questions;
			ResultSet rs = stmt.executeQuery(q); 

%>
      
        <form action="score.jsp" method="POST">
        <nav>
            <h2>Time Remaining:</h2>
            <p id ="countdown"><%= countdown %></p>
            <script type="text/javascript" src="js/script.js"></script>
            <input class="submit" type="submit" id ="submit" name="submit" value="Submit">
        </nav><br>
            
      <%
      if(rs.next())
      {
    	   int i =1;
    	   ArrayList<String> answer_list = new ArrayList<String>();
    	do{ 
  
     String ques = rs.getString("question");
     String opt1 = rs.getString("option1");
     String opt2 = rs.getString("option2");
     String opt3 = rs.getString("option3");
     String opt4 = rs.getString("option4");   
     String ans = rs.getString("answer");
     
   
     answer_list.add(ans);
     
    
     
        %>
   
        
          <div class="main">
            <div class="tp">
            <div class="mcq">
                <div class="question"><b>Q<%= i %>.<%= ques %></b></div>
                <div class="" id="options"> 
                    <label class="options">
                        <input type="radio" id="<%= opt1 %>" name="<%= i %>" value="<%= opt1%>">
                        <p><%= opt1 %></p>
                    </label> 
                    <label class="options">
                        <input type="radio" id="<%= opt2 %>" name="<%= i %>" value="<%= opt2%>">
                        <p><%= opt2 %></p>
                    </label>
                    <label class="options"> 
                        <input type="radio" id="<%= opt3 %>" name="<%= i %>" value="<%= opt3%>"> 
                        <p><%= opt3 %></p> 
                    </label>
                    <label class="options">
                        <input type="radio" id="<%= opt4 %>" name="<%= i %>" value="<%= opt4%>"> 
                        <p><%= opt4 %></p> 
                    </label> 
                </div>
            </div>
         </div>
        </div>
        
        
        
        
              
        <%
        
        
           i++;
          }while(rs.next());
    	
    	session.setAttribute("list",answer_list); 	
      }
        
  

        %>
               <input type="hidden" name="name" value="<%= name%>">
                <input type="hidden" name="test_id" value="<%= test_id%>">
                 <input type="hidden" name="email" value="<%= email%>">
                
                <%
		}else{
			response.sendRedirect("index.html");
		}
             } catch (SQLException e) {
		
	    	e.printStackTrace();
	         }
                %>
     
    </form>        
        
        
    </body>
</html>



 