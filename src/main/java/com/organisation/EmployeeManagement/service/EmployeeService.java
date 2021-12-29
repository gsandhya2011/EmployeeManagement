package com.organisation.EmployeeManagement.service;

import java.util.List;

import com.organisation.EmployeeManagement.entity.Employee;

public interface EmployeeService {
	public List<Employee> getAllEmployees();
	
	public void saveEmployee(Employee emp);

	public Employee getEmployee(int theId);
	
	public List<Employee> findEmployee(int theId);

	public void deleteEmployee(int theId);

}
