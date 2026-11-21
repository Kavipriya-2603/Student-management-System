package jsp.edu.Student;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class UserRegister extends HttpServlet {
	
	protected void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException{
		
		String name=req.getParameter("Name");
		int id=Integer.parseInt(req.getParameter("Id"));
		String Qualify=req.getParameter("Qualification");
		int perc=Integer.parseInt(req.getParameter("percentage"));
		String Addr=req.getParameter("Address");
		String dept=req.getParameter("Dept");
		
		if (name == null ||  Qualify== null ||Addr==null||dept==null) {
		    System.out.println("Username or Password is missing.");
		    return;
		}

		if (!name.matches("[A-Za-z]+")) {
		    System.out.println("Invalid Username");
		    return;
		}
		
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/practice","root","sql123");
			String query="insert into Student(Name,Id,Qualification,percentage,Address,Dept) values(?,?,?,?,?,?)";
			PreparedStatement ps=con.prepareStatement(query);
			
			ps.setString(1, name);
			ps.setInt(2, id);
			ps.setString(3, Qualify);
			ps.setInt(4,perc);
			ps.setString(5,Addr);
			ps.setString(6, dept);
			
			int result=ps.executeUpdate();
			
			if(result>0) {
				
				    res.sendRedirect("sucessReg.jsp?Id=" + id
                        + "&Name=" + java.net.URLEncoder.encode(name, "UTF-8")
                        + "&Dept=" + java.net.URLEncoder.encode(dept, "UTF-8"));
				
			}
			else {
				res.sendRedirect("errorReg.jsp");
			}
			
			con.close();
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
}
}