package jsp.edu.Student;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import Entity.Register;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/department")
public class DepartmentServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        String dept = req.getParameter("dept");

        List<Register> students = new ArrayList<>();

        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/practice",
                    "root",
                    "sql123"
            );

            String query =
                    "SELECT Id, Name, Qualification, percentage, Address, Dept " +
                    "FROM student WHERE Dept = ?";

            PreparedStatement ps = con.prepareStatement(query);

            ps.setString(1, dept);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

           Register student = new Register();

                student.setId(rs.getInt("Id"));
                student.setName(rs.getString("Name"));
                student.setQualification(
                        rs.getString("Qualification")
                );
                student.setPercentage(
                        rs.getInt("percentage")
                );
                student.setAddress(
                        rs.getString("Address")
                );
                student.setDept(
                        rs.getString("Dept")
                );

                students.add(student);
            }

            req.setAttribute("dept", dept);
            req.setAttribute("students", students);

            ps.close();
            rs.close();
            con.close();

            req.getRequestDispatcher("/department.jsp")
               .forward(req, res);

        } catch (Exception e) {

            e.printStackTrace();

            res.getWriter().println(
                    "Error: " + e.getMessage()
            );
        }
    }
}
