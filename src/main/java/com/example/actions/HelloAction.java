package com.example.actions;

import javax.servlet.http.*;
import org.apache.struts.action.*;

import com.example.forms.HelloForm;

public class HelloAction extends Action {

    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
                                 HttpServletRequest request, HttpServletResponse response)
                                 throws Exception {

        // Cast ActionForm to HelloForm
        HelloForm helloForm = (HelloForm) form;

        // Get the value entered in JSP form
        String user = helloForm.getUsername();

        // Send data to JSP using request scope
        request.setAttribute("msg", "Hello " + user + ", Welcome to Struts 1!");

        // Go to success page (hello.jsp)
        return mapping.findForward("success");
    }
}
