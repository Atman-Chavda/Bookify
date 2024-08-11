/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.Reader;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

@WebServlet(urlPatterns = {"/readBook"})
public class readBook extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();
            Class.forName("com.mysql.cj.jdbc.Driver");

            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/readerszone", "root", "nibha123");
            PreparedStatement st = con.prepareStatement("select * from books where book_id=?");

            String bookid = request.getParameter("bid");
            st.setString(1, bookid);
            ResultSet rs = st.executeQuery();

            while (rs.next()) {

                Reader re = rs.getCharacterStream(7);
                FileWriter fw = new FileWriter("C:/Users/bhara/Desktop/bookfile2.txt");
                int c = -1;
                while ((c = re.read()) != -1) {
                    String str=Character.toString( (char) c);
                    out.println(str);
                    fw.write(c);
                }
                fw.close();
                re.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
