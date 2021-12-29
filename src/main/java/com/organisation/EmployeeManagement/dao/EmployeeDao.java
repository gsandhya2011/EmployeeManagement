package com.organisation.EmployeeManagement.dao;

import java.util.List;

import com.organisation.EmployeeManagement.entity.Employee;

public interface EmployeeDao{
	public List<Employee> getAllEmployees();
	
	public void saveEmployee(Employee emp);

	public Employee getEmployee(int theId);
	
	public List<Employee> findEmployee(int theId);

	public void deleteEmployee(int theId);
	
	
}
