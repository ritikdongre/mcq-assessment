<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <title>Test Id</title>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="css/show_test_id.css">
</head>
<body>
<%
try{
String otp = session.getAttribute("otp_value").toString();
}catch(Exception e)
{
	response.sendRedirect("admin.jsp");
}
String ques = session.getAttribute("number").toString();
String count = session.getAttribute("count").toString();
String test_id = session.getAttribute("test_id").toString();

%>
 <main>
            <div class="boxcenter">
            <div class = "login">
         
<h2>Questions Added Successfully!</h2>
<h3>The test-id is : <%= test_id %> </h3>
<br>
<h3>No. of Questions : <%= ques %> </h3>
<br>
<h3>Time Limit : <%= count %> </h3>
<br><br>
<h4><strong>*** Kindly please note this test-id ***</strong></h4>

<form action="dashboard.jsp">
<input type="hidden" name = "otp" value= <%= session.getAttribute("otp_value").toString()%> >
<input type="submit" value = "Back to Dashboard">
</form>
</div>
</div>
</main>
</body>
</html>