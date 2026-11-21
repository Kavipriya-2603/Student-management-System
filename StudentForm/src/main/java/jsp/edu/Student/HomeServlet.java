package jsp.edu.Student;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.HashMap;
import java.util.Map;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/home")
public class HomeServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
    	 
         
         PreparedStatement deptPs = null;
         
         ResultSet deptRs = null;

        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            Connection   con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/practice",
                    "root",
                    "sql123"
            );

            String totalQuery = "SELECT COUNT(*) FROM student";

            PreparedStatement Ps = con.prepareStatement(totalQuery);

            ResultSet Rs = Ps.executeQuery();

            int totalStudents = 0;

            if (Rs.next()) {
                totalStudents = Rs.getInt(1);
            }

            String deptQuery =
                    "SELECT Dept, COUNT(*) AS studentCount " +
                    "FROM student " +
                    "GROUP BY Dept";

            PreparedStatement dPs = con.prepareStatement(deptQuery);

            deptRs = dPs.executeQuery();

            Map<String, Integer> deptCount =
                    new HashMap<String, Integer>();

            while (deptRs.next()) {

                String dept = deptRs.getString("Dept");

                int count = deptRs.getInt("studentCount");

                deptCount.put(dept, count);
            }


            // -------------------------------
            // 3. SEND DATA TO JSP
            // -------------------------------

            req.setAttribute("totalStudents", totalStudents);

            req.setAttribute("deptCount", deptCount);


            // Console checking
            System.out.println("Total Students: " + totalStudents);
            System.out.println("Department Count: " + deptCount);


            // -------------------------------
            // 4. OPEN HOME JSP
            // -------------------------------

            req.getRequestDispatcher("/home.jsp")
               .forward(req, res);

        }

        catch (Exception e) {

            e.printStackTrace();

            res.getWriter().println(
                    "Error: " + e.getMessage()
            );
        
        }
    }
}