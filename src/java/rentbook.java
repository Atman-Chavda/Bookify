/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(urlPatterns = {"/rentbook"})
public class rentbook extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();
            HttpSession session = request.getSession(false);

            String bookId = (String) session.getAttribute("bookId");
            int userId = Integer.parseInt((String) session.getAttribute("userid"));
            String bookName = (String) session.getAttribute("bookName");
            
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/readerszone", "****", "****");
            PreparedStatement st = con.prepareCall("insert into rented values(?,?,?)");
            st.setInt(1, userId);
            st.setString(2, bookId);
            st.setString(3, bookName);
            boolean res = st.execute();
            out.print("You have successfully rented the book!");

        } catch (Exception e) {
            System.out.print("An error occured: " + e.getMessage());
        }
    }
}
