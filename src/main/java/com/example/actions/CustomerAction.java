package com.example.actions;

import org.apache.struts.action.*;
import javax.servlet.http.*;
import com.example.forms.CustomerForm;
import com.example.dao.CustomerDAO;
import java.util.List;

public class CustomerAction extends Action {

    @Override
    public ActionForward execute(ActionMapping mapping,
                                 ActionForm form,
                                 HttpServletRequest request,
                                 HttpServletResponse response) {

        CustomerForm customerForm = (CustomerForm) form;

        CustomerDAO dao = new CustomerDAO();
        List accountTypes = dao.getAccountTypes();

        // SET LIST INTO FORM BEAN (IMPORTANT)
        customerForm.setAccountTypeList(accountTypes);

        return mapping.findForward("success");
    }
}
