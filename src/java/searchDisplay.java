import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import javax.servlet.http.HttpSession;


@WebServlet(urlPatterns = {"/searchDisplay"})
public class searchDisplay extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            response.setContentType("text/html");
            PrintWriter out=response.getWriter();
            HttpSession session= request.getSession();
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost/readerszone","root","nibha123");
            PreparedStatement st=con.prepareCall("select * from books where bname=?");
            
            String bname=request.getParameter("search-topic");
            st.setString(1, bname);
            ResultSet rs=st.executeQuery();
          
            if(rs.next()){
                out.print("Name of the book: ");
                String bookname=rs.getString(2);
                out.print(bookname);
                out.print("<br/>Author: ");
                String auth=rs.getString(3);
                out.print(auth);
                out.print("<br/>Publisher: ");
                String pblshr=rs.getString(4);
                out.print(pblshr);
                out.print("<br/>Genre: ");
                String genre=rs.getString(6);
                out.print(genre);
                session.setAttribute("bookId",rs.getString(1));
                 session.setAttribute("bookName",rs.getString(2));
                out.print("<br/><form action=\"rentbook\" ><input type=\"submit\" value=\"Click here to rent\"/></form>");
                 
            }else{
                out.println("Sorry! No such book is available.");
            }
            
        } catch (Exception e) {
            System.out.print("An error occured: " + e.getMessage());
        }

    }

}
