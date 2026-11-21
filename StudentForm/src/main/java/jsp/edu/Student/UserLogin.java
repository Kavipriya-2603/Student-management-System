package jsp.edu.Student;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class UserLogin extends HttpServlet {
	protected void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException{
	 String username=req.getParameter("username");
	 String password =req.getParameter("password");
	 
	 if (username == null || password == null) {
		    System.out.println("Username or Password is missing.");
		    return;
		}

	if (!username.matches("[A-Za-z]+")) {
		    System.out.println("Invalid Username");
		    return;
		}
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/practice","root","sql123");
		String query=" select * from studentlogin where username=? AND password=?";
		PreparedStatement pstmt=con.prepareStatement(query);
		
		pstmt.setString(1, username);
		pstmt.setString(2, password);
		ResultSet rs=pstmt.executeQuery();;
		if(rs.next()) {
			res.sendRedirect("Success.jsp");
		}
		else {
			res.sendRedirect("error.jsp");
		}
		
		con.close();
		
		
	} catch (ClassNotFoundException | SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	
}


}