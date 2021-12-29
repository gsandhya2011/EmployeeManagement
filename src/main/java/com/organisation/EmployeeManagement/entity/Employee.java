package com.organisation.EmployeeManagement.entity;



import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;
import org.hibernate.validator.constraints.Range;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;

@Entity
@Table(name="employeedetails")
public class Employee {
	
	@Id
	@Column(name="employee_id")
	@NotNull
	@Range(min=100000,max=999999)
	private int employee_id;
	
	
	@Column(name="first_name")
	@NotBlank(message="First Name cannot be null")
	private String first_name;
	
	@Column(name="last_name")
	@NotBlank(message="Last Name cannot be null")
	private String last_name;
	
	@Column(name="gender")
	@NotBlank(message="Gender cannot be null")
	private String gender;
	
	@Column(name="contact_no")
	@NotBlank(message="Contact Number cannot be null")
	private String contact_no;
	
	@Column(name="email")
	@Email(regexp = ".+@.+\\..+", message="Please provide a valid email address")
	private String email;
	
	@Column(name="age")
	@Range(min=20,max=100)
	@NotNull
	private int age;
	
	@Column(name="manager_id")
	@Range(min=100000,max=999999)
	@NotNull
	private int manager_id;
	
	@Column(name="business_unit")
	@NotBlank(message="Business Unit cannot be null")
	private String business_unit;
	
	@Column(name="job_title")
	@NotBlank(message="Job Title cannot be null")
	private String job_title;
	
	@Column(name="salary")
	@NotNull
	private double salary;
	
	@Column(name="date_of_joining")
	@DateTimeFormat(iso=ISO.DATE)
	@NotNull(message="Date Of Joining cannot be null")
	private Date date_of_joining;
	
	

	public Employee() {
		
	}
	
	

	public Employee(int employee_id, String first_name, String last_name, String gender, String contact_no,
			String email, int age, int manager_id, String business_unit, String job_title, double salary,
			Date date_of_joining) {
		this.employee_id = employee_id;
		this.first_name = first_name;
		this.last_name = last_name;
		this.gender = gender;
		this.contact_no = contact_no;
		this.email = email;
		this.age = age;
		this.manager_id = manager_id;
		this.business_unit = business_unit;
		this.job_title = job_title;
		this.salary = salary;
		this.date_of_joining = date_of_joining;
	}



	public int getEmployee_id() {
		return employee_id;
	}

	public void setEmployee_id(int employee_id) {
		this.employee_id = employee_id;
	}

	public String getFirst_name() {
		return first_name;
	}

	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}

	public String getLast_name() {
		return last_name;
	}

	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getContact_no() {
		return contact_no;
	}

	public void setContact_no(String contact_no) {
		this.contact_no = contact_no;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public int getManager_id() {
		return manager_id;
	}

	public void setManager_id(int manager_id) {
		this.manager_id = manager_id;
	}

	public String getBusiness_unit() {
		return business_unit;
	}

	public void setBusiness_unit(String business_unit) {
		this.business_unit = business_unit;
	}

	public String getJob_title() {
		return job_title;
	}

	public void setJob_title(String job_title) {
		this.job_title = job_title;
	}

	public double getSalary() {
		return salary;
	}

	public void setSalary(double salary) {
		this.salary = salary;
	}

	public Date getDate_of_joining() {
		return date_of_joining;
	}

	public void setDate_of_joining(Date date_of_joining) {
		this.date_of_joining = date_of_joining;
	}



	@Override
	public String toString() {
		return "Employee [employee_id=" + employee_id + ", first_name=" + first_name + ", last_name=" + last_name
				+ ", gender=" + gender + ", contact_no=" + contact_no + ", email=" + email + ", age=" + age
				+ ", manager_id=" + manager_id + ", business_unit=" + business_unit + ", job_title=" + job_title
				+ ", salary=" + salary + ", date_of_joining=" + date_of_joining + "]";
	}

	
	
	
	
	

}
