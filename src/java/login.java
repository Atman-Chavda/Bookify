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

@WebServlet(urlPatterns = {"/login"})
public class login extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();
            HttpSession session = request.getSession();

            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/readerszone", "root", "nibha123");
            PreparedStatement st = con.prepareStatement("select userid from users where username=? and password=MD5(?)");

            String username = request.getParameter("username");
            String password = request.getParameter("password");

            st.setString(1, username);
            st.setString(2, password);

            ResultSet rs = st.executeQuery();
            if (rs.next()) {

                session.setAttribute("userid", rs.getString(1));
                session.setAttribute("userName", username);
                response.sendRedirect("mainpage.jsp");
            } else {
                out.print("Wrong username or password!");
            }
        } catch (Exception e) {
            System.out.print("An error occured: " + e);
        }

    }
}
