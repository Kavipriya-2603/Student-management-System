package Entity;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Scanner;

public class CreateTableRegister {
	
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/practice","root","sql123");
			String query="create table Student(Id int primary key,Name varchar(45),Qualification varchar(45), percentage int,Address varchar(45),Dept varchar(45)) ";
			PreparedStatement ps=con.prepareStatement(query);
			ps.execute();
			System.out.println("Table created successfully");
			con.close();
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
