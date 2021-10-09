package com.servlets;

import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.entities.Questions;
import com.helper.ConnectionProvider;

@MultipartConfig
@WebServlet("/QuestionServlet")
public class QuestionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public QuestionServlet() {
        super();
        
        
    }

	
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
	    	   
	    	   int no = Integer.parseInt(request.getParameter("no_of_questions"));
	    	   int countdown = Integer.parseInt(request.getParameter("test_duration"));
	    	   
	    	   int min = 100000;  
	           int max = 999999;  
	           int ran = (int)(Math.random()*(max-min+1)+min); 
	          
	    	   
			String q = "insert into test_configuration(test_id,no_of_questions,countdown) values(?,?,?)";
				
				//preparedStataement
				PreparedStatement pstmt = ConnectionProvider.getConnection().prepareStatement(q);
				
				//set value of parameter
				pstmt.setInt(1,ran);
				pstmt.setInt(2,no);
				pstmt.setInt(3, countdown );
				
				//execute
				pstmt.executeUpdate();
				response.sendRedirect("dashboard.jsp");
			} catch (Exception e) {
				
				e.printStackTrace();
			}
	       
		
		
	}

}
