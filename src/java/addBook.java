import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import javax.servlet.annotation.WebServlet;


@WebServlet(urlPatterns = {"/addBook"})
public class addBook extends HttpServlet 
{
    public void doGet(HttpServletRequest request, HttpServletResponse response)
    {
        try
        {
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();
            Class.forName("com.mysql.cj.jdbc.Driver");  
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost/readerszone","***","****");
            
            
            FileReader fr = new FileReader("C:/Users/bhara/Desktop/bookfile.txt");
            PreparedStatement st = con.prepareStatement("update books set bookfile=? where book_id=?"); 
         
            st.setCharacterStream(1,fr);
            st.setString(2, "B020");
            st.executeUpdate();
            out.println("book uploded");
            
            
            
        }
        catch(Exception e){System.out.println(e);}
    }
}
