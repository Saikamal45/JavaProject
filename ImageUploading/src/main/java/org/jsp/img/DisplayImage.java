package org.jsp.img;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DisplayImage
 */
@WebServlet("/DisplayImage")
public class DisplayImage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DisplayImage() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		String tagName = request.getParameter("tag");
	    System.out.println(tagName + " :tagname");
	    String url = "jdbc:mysql://localhost:3306?user=root&password=12345";
	    String query = "select  tagname,imagename from brochill.uploadimage where tagname like?";
	 
	    String tag =tagName ;
	    String imgName = null;
	    int id = 0;
	    List<String> imgNames = new ArrayList<>();

	    try {
	        Class.forName("com.mysql.jdbc.Driver");
	        Connection connection = DriverManager.getConnection(url);
	        PreparedStatement ps = connection.prepareStatement(query);
	        ps.setString(1,"%"+ tagName+"%"); // Set the tag name parameter
	        ResultSet rs = ps.executeQuery();
	        while (rs.next()) {
	             tag = rs.getString("tagname"); // Fetch values from ResultSet
	            imgName = rs.getString("imagename");
	            
	            if (tag.toLowerCase().contains(tagName.toLowerCase())) { // Check if the tag contains the searched text
	                imgNames.add(imgName); // Add each image name to the list
	            }
	        }
	        String imgNamesString = String.join(",", imgNames);
	        request.setAttribute("tagname", tagName);
			request.setAttribute("imagename", imgNames);
			RequestDispatcher dispatcher=request.getRequestDispatcher("Result.jsp");
			dispatcher.forward(request, response);  
	    
	        	    } catch (Exception e) {
	        // ...
	    }
		  
	}

}
