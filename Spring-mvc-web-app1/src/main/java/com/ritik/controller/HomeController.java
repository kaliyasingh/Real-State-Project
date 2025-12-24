package com.ritik.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
	public String indpage()
	{
		return "login";
	}

//	@RequestMapping(value = "/checkuser")
//	public String checkuser(@RequestParam("username") String user,
//			                 @RequestParam("password") String pass)
//	{
//		if(daoimpl.checkUserValidation(user, pass))
//		return "home";
//		else
//		return "error";
//	}
	
	@RequestMapping(value = "/checkuser")
    public ModelAndView checkUser(@ModelAttribute("u") UserInfo u)
    {
		ModelAndView mv = null;
		if(daoimpl.checkUserValidation(u))
		{
			mv = new ModelAndView("home","username",u.getUsername());
			return mv;
		}
		else 
		{
			mv= new ModelAndView("error","msg","Invalid username/password");
			return mv;
		}
    	
    }
}
