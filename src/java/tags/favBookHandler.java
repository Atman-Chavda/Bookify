package tags;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/TagHandler.java to edit this template
 */

import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.SimpleTagSupport;

/**
 *
 * @author bhara
 */
public class favBookHandler extends SimpleTagSupport {

    private String favBook;

    public void setFavBook(String favBook){
        this.favBook=favBook;
    }
    @Override
    public void doTag() throws JspException {
        JspWriter out = getJspContext().getOut();
        
        try {
             out.print("Your favourite book is "+favBook);
        } catch (java.io.IOException ex) {
            throw new JspException("Error in favBookHandler tag", ex);
        }
    }

  
}
