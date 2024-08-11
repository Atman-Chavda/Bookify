/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import javax.servlet.http.HttpSession;

@WebServlet(urlPatterns = {"/yourBooks"})
public class yourBooks extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();

            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/readerszone", "root", "nibha123");
            PreparedStatement st = con.prepareCall("select * from rented where userid=?");

            HttpSession session = request.getSession(false);
            int uid = Integer.parseInt((String) session.getAttribute("userid"));
            st.setInt(1, uid);

            ResultSet rs = st.executeQuery();
            out.print("Book Id  " + "     Book name<br/>");
            while (rs.next()) {
                out.print(rs.getString(2) + " " + rs.getString(3) + "<br/>");
            }
            out.print("Enter the Id of book you want to read:");
            out.print("<form action=\"readBook\"><input type=\"text\" name=\"bid\"><br/><input type=\"submit\" value=\"Go\"></form>");
        } catch (Exception e) {
            System.out.print(e);
        }

    }

}
