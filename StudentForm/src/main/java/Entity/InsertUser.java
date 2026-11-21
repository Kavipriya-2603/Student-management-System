package Entity;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Scanner;

public class InsertUser {
public static void main(String[] args) {
	Scanner sc=new Scanner(System.in);
	
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/practice","root","sql123");
		String query="insert into studentlogin(userName,password) values(?,?)";
		System.out.println("enter the username");
		String userName=sc.next();
		System.out.println("enter the password");
		String password=sc.next();
		PreparedStatement pstmt=con.prepareStatement(query);
		pstmt.setString(1,userName);
		pstmt.setString(2, password);
		int result = pstmt.executeUpdate();

        if (result > 0) {
            System.out.println("User inserted successfully.");
        } else {
            System.out.println("Insertion failed.");
        }
		
		pstmt.close();
		con.close();
		
	} catch (ClassNotFoundException | SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}
}
