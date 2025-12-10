package com.example.dao;

import com.example.model.Employee;
import java.util.ArrayList;
import java.util.List;

public class EmployeeDAO {
    // For practice we return a hard-coded list. Later replace with DB code.
    public List<Employee> findAll() {
        List<Employee> list = new ArrayList<>();
        list.add(new Employee(1, "Alice", "HR", 60000.0));
        list.add(new Employee(2, "Bob", "Engineering", 80000.0));
        list.add(new Employee(3, "Charlie", "Sales", 55000.0));
        return list;
    }
}