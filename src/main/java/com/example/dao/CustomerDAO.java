package com.example.dao;

import java.util.*;

public class CustomerDAO {

    public List<String> getAccountTypes() {
        List<String> list = new ArrayList<>();
        list.add("SAVINGS");
        list.add("CURRENT");
        list.add("LOAN");
        return list;
    }
}
