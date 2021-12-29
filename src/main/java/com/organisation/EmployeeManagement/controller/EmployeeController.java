package com.organisation.EmployeeManagement.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.organisation.EmployeeManagement.entity.Employee;
import com.organisation.EmployeeManagement.service.EmployeeService;

@Controller
@RequestMapping("/employee")
public class EmployeeController {
	
	@Autowired
	EmployeeService employeeService;
	
	
	@GetMapping("/list")
	public String listEmployees(Model model) {
		List<Employee> listEmployees=employeeService.getAllEmployees();
		model.addAttribute("employees", listEmployees);
		System.out.println(listEmployees);
		return "employee-list";
	}
	
	@GetMapping("/showFormForAdd")
	public String showFormForAdd(Model model) {
		Employee emp = new Employee();
		model.addAttribute("employee", emp);
		return "employee-form";
	}
	
	@PostMapping("/saveEmployee")
	public String saveEmployee(@Valid @ModelAttribute("employee") Employee emp,BindingResult bind) {
		if(bind.hasErrors()) {
			System.out.println(bind);
			return "employee-form";
		}
		else {
		employeeService.saveEmployee(emp);
		return "redirect:/employee/list";
	}}
	
	@GetMapping("/showFormForUpdate")
	public String showFormForUpdate(@RequestParam("Id") int theId, Model themodel) {
		Employee employee = employeeService.getEmployee(theId);
		themodel.addAttribute("employee", employee);
		return "employee-form";

	}
	
	@PostMapping("/search")
	public String searchEmployee(@RequestParam("id") int theId,Model theModel) {
		
		Employee emp= employeeService.getEmployee(theId);
		if( emp == null) {
			theModel.addAttribute("id", theId);
			return "search-error";
		}
		else {
			List<Employee> empList= employeeService.findEmployee(theId);
			System.out.println(empList);
			theModel.addAttribute("emplist",empList);
			return "search-display";
		}
	}
	
	//@RequestMapping("/delete")
	@GetMapping("/delete")
	public String deleteEmployee(@RequestParam("Id") int theId)
	{
		employeeService.deleteEmployee(theId);
		return "redirect:/employee/list";
	}
	
	
	@RequestMapping("/logout")
	public String log() {
		return "logout";
	}
	
	
	
}




