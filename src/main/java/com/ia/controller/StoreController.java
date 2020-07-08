package com.ia.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ia.Dao.StoreDao;
import com.ia.modal.Store;

@Controller
public class StoreController {

	
	@Autowired	 
	StoreDao storeDao;
	
	
	@RequestMapping(value="store")
	public String store(HttpServletRequest requestm,Model model,HttpSession session)
	{
		if(session.getAttribute("userId")!=null) {
			return "admin/store";	
		}else {
			return "redirect:login";	
		}
		
	}
	
	@RequestMapping(value = "/storeEntry", method = RequestMethod.POST)
	public String store(HttpServletRequest request,Store store,HttpSession session,HttpServletResponse response)
	{
		System.out.println("store :::"+store.getStoreName());
		int userId = Integer.parseInt(session.getAttribute("userId")+"");
		store.setCreatedBy(userId);
		storeDao.insert(store);
		return "redirect:store";
		
	}
	
	
	@RequestMapping(value="storeList")
	public String storeList(HttpServletRequest requestm,Model model,HttpSession session)
	{
		model.addAttribute("storeList", storeDao.getStore());
		
		if(session.getAttribute("userId")!=null) {
			return "admin/storelist";	
		}else {
			return "redirect:login";	
		}
		
	}
	
	
	
}
