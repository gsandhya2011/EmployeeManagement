package com.organisation.EmployeeManagement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.organisation.EmployeeManagement.dao.EmployeeDao;
import com.organisation.EmployeeManagement.entity.Employee;

@Service
public class EmployeeServiceImpl implements EmployeeService{

	@Autowired
	EmployeeDao employeeDao;
	@Override
	@Transactional
	public List<Employee> getAllEmployees() {
		return employeeDao.getAllEmployees();
		
	}
	
	@Override
	@Transactional
	public void saveEmployee(Employee emp) {
		employeeDao.saveEmployee(emp);
	}


	@Override
	@Transactional
	public Employee getEmployee(int theId) 
	{
		return employeeDao.getEmployee(theId);
	}
	
	@Transactional
	public List<Employee> findEmployee(int theId) {

		return employeeDao.findEmployee(theId);
	}

	@Override
	@Transactional
	public void deleteEmployee(int theId) 
	{
		employeeDao.deleteEmployee(theId);
	}

}
