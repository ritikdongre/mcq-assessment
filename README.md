# mcq_app
This is an online assessment platform web application made using ```JSP-Servlet``` microframework along with ```MySQL```(MySQL Workbench) database in backend and in frontend used ```Html,Css``` and a bit of ```javascript``` is used.







# Required functionality is statisfied

1.Assessment shall be MCQ pattern.:heavy_check_mark:

2.There must be a question pool for the assessment:heavy_check_mark:```we have made a question pool in database.```

3.The questions displayed in the assessment shall be only from that pool:heavy_check_mark:```Fetching question only from that question pool(database).```

4.Number of questions in the pool shall be more than questions displayed:heavy_check_mark:

5.A time limit for the assessment ():heavy_check_mark:```Timer is alloted for all questions at once.```

6.Question order shall be shuffled for each candidate appearing:heavy_check_mark:```Questions appering on the test are different for each user```


# Admin Panel 
```http://localhost:8081/McqApp/admin.jsp```. The port number can most preferably be 8080 in your system .

1. ```Login Page``` and ```OTP-Verification``` - An otp will be sent to mail-id which admin had used upon login.:heavy_check_mark:

2. ```Dashboard``` - A dashboard is provided to admin only:heavy_check_mark: ``` functionalities such as create test, add questions , options and their respective answers. Also can view the result of all candidate ```.

3. Option to add question in test pool, set no. of question appear in test, set time:heavy_check_mark: ``` We have created the add question panel to store questions with thier respective answers. ``` 

4. Page to view all submitted test results:heavy_check_mark: '''A table of all candidates will be displayed with their respective scores```.

# Getting Started

Clone the source code in your local machine and install the requirements by 

importing```the .war file in eclipse ide ``` by ```file>import``` in eclipse ide. ```Then click on the web folder and select WAR file```.

Load ```mcq-app.sql``` on your data base by running

```sql
source mcq-app.sql

```
on your command line client or simply import ```mcq-app.sql``` in your MySQL Workbench

Then edit ```ConnectionProvider.java``` file
```
//create a connection

			String url = "jdbc:mysql://localhost:port/mcq_app";
			String username = "username";
			String pwd = "password";


```
replace ```username``` and ```password```  with username,password and name of your localhost and database name, 
replace ```port``` with port of your MySQL server.

Connect server (```apache-tomcat-v9```) from ```Windows>Show View >Servers```
or select your predefined server in ```Target Runtime ``` option at the time of creation.  

Finally, save and run the application on the configured server.

If everything is in order, a tomcat server  should be running in your local machine and you should be able to point your browser to ```https://localhost:8080/Mcq-App```.
