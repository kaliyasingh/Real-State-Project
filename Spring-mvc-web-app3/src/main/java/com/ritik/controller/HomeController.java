package com.ritik.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ritik.dao.UserInfoDao;
import com.ritik.pojo.UserInfo;

@Controller
public class HomeController {
	
    private UserInfoDao daoimpl;
    
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
			return "error";
		}	
	}
}