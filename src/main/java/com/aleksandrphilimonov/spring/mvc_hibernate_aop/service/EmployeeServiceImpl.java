package com.aleksandrphilimonov.spring.mvc_hibernate_aop.service;

import com.aleksandrphilimonov.spring.mvc_hibernate_aop.dao.EmployeeDao;
import com.aleksandrphilimonov.spring.mvc_hibernate_aop.entity.Employee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class EmployeeServiceImpl implements EmployeeService {
    @Autowired
    private EmployeeDao employeeDao;

    @Override
    @Transactional
    public List<Employee> getAllEmployees() {
        return employeeDao.getAllEmployees();
    }
}
