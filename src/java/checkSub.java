/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Filter.java to edit this template
 */

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebFilter;

/**
 *
 * @author 5415
 */
@WebFilter("/login")
public class checkSub implements Filter {
    
    
    public void doFilter(ServletRequest request, ServletResponse response,
            FilterChain chain)
            throws IOException, ServletException {
            
            PrintWriter out = response.getWriter();
            HttpServletRequest req = (HttpServletRequest) request;
            
            String b = request.getParameter("b_param");
            String a;
            if(b.equals("250"))
            {
                a = request.getParameter("a_param");
            }
            else{
            a = "no";}
            
                
            if (a.equals("yes")){
                chain.doFilter(request, response);}
            else
            {
                out.println("<html>");
                out.println("<head></head>");
                out.println("<body>");
                out.println("<h1>your subscription has expired! </h1>");
                out.println("<h3>Add amount to subscribe</h3>");
                out.println("<form action='loginform.jsp'>");
                out.println("<input type='submit' value='buy'>");
                out.println("</form>");
                out.println("</body>");
                out.println("</html>");
                
            }
       
        }
        
        
    public void destroy() {        
    }

   
    public void init(FilterConfig filterConfig) {        
           }

   
    
}