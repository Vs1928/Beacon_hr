 package com.test.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.test.dao.EmpDao;
import com.test.entity.Empdetails;
import com.test.excel.ExcelUserListReportView;

@Controller
public class HomeController {
	

	@Autowired
	private EmpDao empDao;

	
	@RequestMapping(path = "/home")
	public String home() 
	{
		return "home";
		
	}
	
	@RequestMapping(path="/Dashboard")
	public String Dashboard(Model em)
	
	{
		List<Empdetails> list =empDao.getAllEmpdetails();
		em.addAttribute("emplist", list);
		return "Dashboard";
	}
	
	@RequestMapping(path="/emp_details")
	public String addemp()
	
	{
		return "emp_details";
	}

	
	@RequestMapping(path="/createEmpdetails", method= RequestMethod.POST)
	public String createEmpdetails(@ModelAttribute Empdetails empdetails , HttpSession session)
	{
		System.out.println(empdetails);
		
		session.setAttribute("msg", "Register Successfully");
		
      int i = empDao.saveEmpdetails(empdetails);
      
		return "redirect:/emp_details";
	}
	
	@RequestMapping(path = "/editempdetails/{id}")
	public String editempdetails(@PathVariable int id , Model em) {
		Empdetails empd =empDao.getEmpdetailsbyID(id);
		em.addAttribute("empd", empd);
		
		return "edit_empdetails";
		
	}
	
	@RequestMapping(path = "/updateEmpdetails")
	public String updateEmpdetails(@ModelAttribute Empdetails Empdetails , HttpSession session)
	{
		empDao.update(Empdetails);
		session.setAttribute("msg" ,"Update Successfully");
		return "redirect:/home";
		
	}
	
	@RequestMapping(path = "/deleteempdetails/{id}")
	public String deleteEmpdetails(@PathVariable int id , HttpSession session)
	{
		empDao.deleteEmpdetails(id);
		session.setAttribute("msg", "Delete SuccessFully");
		return "redirect:/home";
	}
	
	
	
	@RequestMapping(value="/report", method=RequestMethod.GET)
	 public ModelAndView userListReport(HttpServletRequest req, HttpServletResponse res){
	  
	  String typeReport = req.getParameter("type");
	  
	  List<Empdetails> list = new ArrayList<Empdetails>();
	  list.add(new Empdetails());
	  
	  if(typeReport != null && typeReport.equals("xls")){
	   return new ModelAndView(new ExcelUserListReportView(), "emplist", list);
	  } else 
	  
	  
	  return new ModelAndView("userListReport", "emplist", list);
	 }
	
}
