package com.example.actions;

import com.example.dao.EmployeeDAO;
import com.example.model.Employee;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

public class ListEmployeeAction extends Action {

    @Override
    public ActionForward execute(ActionMapping mapping,
                                 ActionForm form,
                                 HttpServletRequest request,
                                 HttpServletResponse response) throws Exception {

        // 1. Call DAO to get data (Model)
        EmployeeDAO dao = new EmployeeDAO();
        List<Employee> employees = dao.findAll();

        // 2. Put list into request scope so JSP / JSTL can use it
        request.setAttribute("employeeList", employees);

        // 3. Forward to JSP page ll
        return mapping.findForward("success");
    }
}
