package com.example.forms;

import org.apache.struts.action.ActionForm;

public class HelloForm extends ActionForm {

    private String username;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }
}
