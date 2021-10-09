<%@page import="java.sql.ResultSet"%>
<%@page import="com.helper.ConnectionProvider"%>
<%@page import="java.sql.Statement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Test Results</title>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="manage.css">
        <style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}

</style>
    </head>
    <body>
       
        <main>
            <div class="boxcenter">
            
                <div class="login">
                  <h2 align="center">Test Results</h2>



<table>
  <tr>
    <th>Candidate Name</th>
    <th>Candidate Email</th>
    <th>Test Score</th>
    <th>Total Marks</th>
    <th>Test Id</th>
    <th> Test Date</th>
  </tr>
    <%
                String query = "SELECT r.*, t.no_of_questions FROM result r inner join test_configuration t on r.test_id=t.test_id ";
               
                Statement st = ConnectionProvider.getConnection().createStatement();
                ResultSet rs = st.executeQuery(query);
                if(rs.next())
                {
                	do{
                		
                	String testid = rs.getString("test_id");
                	String name = rs.getString("name");
                	String email = rs.getString("email");
                	String marks = rs.getString("marks");
                	String datetime = rs.getString("date_time");
                   String totalMarks = rs.getString("no_of_questions");
                %>  
  <tr>
     <td><%= name %></td>
     <td><%= email %></td>
     <td><%= marks %></td>
     <td><%= totalMarks %></td>
     <td><%= testid %></td>
     <td><%= datetime %></td>
  </tr>
  <% }while(rs.next());
                }else{
                	response.sendRedirect("dashboard.jsp?otp="+session.getAttribute("otp_value").toString());
                }
            %>
</table>







                </div>
            </div>
        </main>
    </body>
</html>