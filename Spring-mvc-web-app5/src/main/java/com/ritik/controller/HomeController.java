package com.ritik.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.w3c.dom.Node;

import com.ritik.dao.StudentDao;
import com.ritik.dao.UserInfoDao;
import com.ritik.daoimpl.StudentDaoImpl;
import com.ritik.pojo.Student;
import com.ritik.pojo.UserInfo;

@Controller
public class HomeController {
	
    private UserInfoDao daoimpl;
    private StudentDao studDaoimpl;
    
    
    @Autowired
	public void setStudDaoimpl(StudentDao studDaoimpl) {
		this.studDaoimpl = studDaoimpl;
	}

	@Autowired
	public void setDaoimpl(UserInfoDao daoimpl) {
		this.daoimpl = daoimpl;
	}

    @RequestMapping("/")
	public String indePage(Model m)
	{
		UserInfo u = new UserInfo();
		m.addAttribute("userobj",u);
		return "login";
	}
    
    @RequestMapping(value = "/amdstudent")
	public String amdstudent(Model m)
	{
		Student s = new Student();
		m.addAttribute("studentobj",s);
		return "amd";
	}
    
    @RequestMapping(value = "/register")
   	public String regPage(Model m)
   	{
    	UserInfo u = new UserInfo();
    	m.addAttribute("userobj",u);
   		return "reg";
   	}

    
    @RequestMapping(value = "/checkuser")
	public String checkUser(@ModelAttribute("userobj") UserInfo u,ModelMap m)
	{
		if(daoimpl.checkUserValidation(u))
		{
			m.addAttribute("username", u.getUsername());
			return "home";
		}
		else
		{
			m.addAttribute("msg","Invalid Username/Password");
			return "login";
		}	
	}
    
    @RequestMapping(value = "/adduser")
    public String adduser(@ModelAttribute("userobj")  UserInfo u,Model m,ModelMap md) {
    	if(daoimpl.addUser(u)) {
    		m.addAttribute("msg","user Register Successfully login here");
    		UserInfo user = new UserInfo();
    		md.addAttribute("userobj",user);
    		return "login";
    	}
    	else
    	{
    		m.addAttribute("msg","User Could Not Be Register");
    		return "reg";
    	}
    }
     
    @RequestMapping(value = "/savestudent")
    public String addNewStudent(@ModelAttribute("studentobj") Student s,@RequestParam("b1") String op,Model md) {
    	if(op.equals("Add")) 
    	{
    		 if(studDaoimpl.addStudent(s))
    	      md.addAttribute("msg","Student Added Successfully");
    		 else
        	  md.addAttribute("msg","Student Could Not Be Added");
    	}
    	
    	if(op.equals("Update"))
    	{
    	   if(studDaoimpl.updateStudent(s))
   	       md.addAttribute("msg","Student Added Successfully");
   		   else
       	   md.addAttribute("msg","Student Could Not Be Added");
   	    }
    	
    	if(op.equals("delete"))
    	{
    	   if(studDaoimpl.deletetudent(s))
   	       md.addAttribute("msg","Student Added Successfully");
   		   else
       	   md.addAttribute("msg","Student Could Not Be Added");
   	    }
    	return "amd";
    }
}