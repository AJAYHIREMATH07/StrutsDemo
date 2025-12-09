package com.example.dao;

import com.example.model.Employee;
import java.util.ArrayList;
import java.util.List;

public class EmployeeDAO {

    private static final List<Employee> employees = new ArrayList<>();

    static {
        employees.add(new Employee(1, "Ajay", "IT", 50000));
        employees.add(new Employee(2, "Ravi", "HR", 45000));
    }

    public List<Employee> findAll() {
        return employees;
    }

    public void add(Employee e) {
        employees.add(e);
    }
}
