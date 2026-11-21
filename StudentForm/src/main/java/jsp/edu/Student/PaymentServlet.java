package jsp.edu.Student;

import java.io.IOException;
import java.net.URLEncoder;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/payment")
public class PaymentServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        String name = req.getParameter("name");
        String dept = req.getParameter("dept");

        String semesterStr = req.getParameter("semester");
        String feeStr = req.getParameter("fee");

        // Check empty values before parsing
        if (name == null || name.trim().isEmpty()
                || dept == null || dept.trim().isEmpty()
                || semesterStr == null || semesterStr.trim().isEmpty()
                || feeStr == null || feeStr.trim().isEmpty()) {

            res.getWriter().println("Required payment details are missing.");
            return;
        }

        int semester;
        int amount;

        try {
            semester = Integer.parseInt(semesterStr.trim());
            amount = Integer.parseInt(feeStr.trim());

        } catch (NumberFormatException e) {

            res.getWriter().println(
                    "Semester and Fee must contain valid numbers."
            );
            return;
        }

        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/practice",
                    "root",
                    "sql123"
            );

            String query =
                    "INSERT INTO FeesPayment " +
                    "(StudentName, Dept, Semester, Amount) " +
                    "VALUES (?, ?, ?, ?)";

            PreparedStatement ps = con.prepareStatement(query);

            ps.setString(1, name);
            ps.setString(2, dept);
            ps.setInt(3, semester);
            ps.setInt(4, amount);

            int result = ps.executeUpdate();

            if (result > 0) {

                String encodedName =
                        URLEncoder.encode(name, "UTF-8");

                String encodedDept =
                        URLEncoder.encode(dept, "UTF-8");

                res.sendRedirect(
                        "paymentSuccess.jsp"
                        + "?name=" + encodedName
                        + "&dept=" + encodedDept
                        + "&semester=" + semester
                        + "&amount=" + amount
                );

            } else {

                res.sendRedirect("errorReg.jsp");
            }

            ps.close();
            con.close();

        } catch (Exception e) {

            e.printStackTrace();

            res.getWriter().println(
                    "Payment Error: " + e.getMessage()
            );
        }
    }
}