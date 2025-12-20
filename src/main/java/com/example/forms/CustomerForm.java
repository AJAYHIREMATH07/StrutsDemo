package com.example.forms;

import org.apache.struts.action.*;
import javax.servlet.http.HttpServletRequest;

import java.util.ArrayList;
import java.util.List;

public class CustomerForm extends ActionForm {

    private String accountType;            // selected value
    private List accountTypeList =new ArrayList();           // dropdown values

    // getter & setter
    public String getAccountType() {
        return accountType;
    }

    public void setAccountType(String accountType) {
        this.accountType = accountType;
    }

    public List getAccountTypeList() {
        return accountTypeList;
    }

    public void setAccountTypeList(List accountTypeList) {
        this.accountTypeList = accountTypeList;
    }

    // validation
    @Override
    public ActionErrors validate(ActionMapping mapping,
                                 HttpServletRequest request) {

        ActionErrors errors = new ActionErrors();

        if (accountType == null || accountType.trim().equals("")) {
            errors.add("accountType",
                new ActionMessage("error.accountType.required"));
        }

        return errors;
    }
}
