package com.kyn.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class WebController {
	
	@Autowired 
	public StoreService service;
	List<Store> allStore=new ArrayList<Store>();
	
	@GetMapping( value = "/")
	public String home()
	{
		return "index";
	}
	
	@RequestMapping(value="/addstore", method=RequestMethod.GET)
//	String addStore(Model model)
	String addStore(@ModelAttribute("store") Store s)
	{
//		model.addAttribute("store", new Store());
		System.out.println("Display add store details page");
		return "addStore";
	}
	
	@RequestMapping(value="/saveStore", method=RequestMethod.POST)
	public String addinStore(@ModelAttribute("store") Store s) {
		service.saveStore(s);
		System.out.println(s);
		return "redirect:/"; 
	}
	
	@RequestMapping(value="/viewStore",method=RequestMethod.GET)
	public ModelAndView listallStore()
	{
//		List<Store> allStore=service.showAllStore();
		allStore=service.showAllStore();
		System.out.println(allStore);
		return new ModelAndView("listStore","lone",allStore);
	}
//	@RequestMapping(value="/viewStore", method=RequestMethod.GET)
//	public String viewStore(Model model) {
//		System.out.println("List out all store");
//		List<Store> allStores = service.showAllStore();
//		model.addAttribute("all_Stores", allStores);
//		return"listStore";
//	}
}


