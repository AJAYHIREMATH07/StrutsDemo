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
    private EmployeeDAO dao = new EmployeeDAO();

    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
                                 HttpServletRequest request, HttpServletResponse response) throws Exception {
        List<Employee> employees = dao.findAll();
        request.setAttribute("employees", employees);
        return mapping.findForward("success");
    }
//okay
}