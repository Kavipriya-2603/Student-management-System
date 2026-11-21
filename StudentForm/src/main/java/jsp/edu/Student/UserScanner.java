package jsp.edu.Student;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/scanner")
public class UserScanner extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        scanStudent(req, res);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res)throws ServletException, IOException {
        scanStudent(req, res);
    }

    private void scanStudent(HttpServletRequest req,HttpServletResponse res)throws ServletException, IOException {
        String idValue = req.getParameter("Id");
        if (idValue == null || idValue.trim().isEmpty()) {
            res.getWriter().println("Student ID is required");
            return;
        }
        try {
            int id = Integer.parseInt(idValue);
            
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/practice","root","sql123");
            String query ="SELECT * FROM Student WHERE Id = ?";
            PreparedStatement ps =con.prepareStatement(query);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                req.setAttribute("Id", rs.getInt("Id"));
                req.setAttribute("Name",rs.getString("Name") );

                req.setAttribute("Qualification",rs.getString("Qualification"));
                req.setAttribute("Percentage",rs.getString("Percentage"));
                req.setAttribute("Address",rs.getString("Address"));
                req.setAttribute("Dept",rs.getString("Dept"));
                
                req.getRequestDispatcher("/StudentDetails.jsp").forward(req, res);

            } else {
            			res.getWriter().println( "Student not found for ID: " + id);
                }
            con.close();

        } catch (NumberFormatException e) {
        			res.getWriter().println();
                 
        } catch (Exception e) {
        			e.printStackTrace();

            res.getWriter().println("Database Error: " + e.getMessage()
            );
        }
    }
}