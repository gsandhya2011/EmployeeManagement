package com.organisation.EmployeeManagement.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.organisation.EmployeeManagement.entity.Employee;

@Repository
public class EmployeeDaoImpl implements EmployeeDao {
	
	@Autowired
	private SessionFactory factory;
	@Override
	@Transactional
	public List<Employee> getAllEmployees() 
	{
		Session session=factory.getCurrentSession();
		Query<Employee> query=session.createQuery("from Employee order by employee_id",Employee.class);
		List<Employee> listOfEmp= query.getResultList();
		System.out.println("****");
		listOfEmp.forEach(s -> System.out.println(s));
		System.out.println("****");
		return listOfEmp;
	}
	@Override
	@Transactional
	public void saveEmployee(Employee emp) 
	{
		Session session=factory.getCurrentSession();
		session.saveOrUpdate(emp);
	}


	@Override
	@Transactional
	public Employee getEmployee(int theId) 
	{
		Session session=factory.getCurrentSession();
		Employee emp=session.get(Employee.class, theId);
		return emp;
	}

	public List<Employee> findEmployee(int theId) {

		Session session= factory.getCurrentSession();
		Query<Employee> query= session.createQuery("from Employee where employee_id=:theEmployeeId",Employee.class);
		query.setParameter("theEmployeeId", theId);
		List<Employee> list= query.getResultList();
		return list;
	}

	@Override
	@Transactional
	public void deleteEmployee(int theId) {
		Session session=factory.getCurrentSession();
		Employee e=session.get(Employee.class, theId);
		session.delete(e);
		System.out.println(theId+":Employee deleted");
	}

	
}
