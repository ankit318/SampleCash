package com.ia.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

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
	
	
	
	@RequestMapping(value="manageStore")
	public String manageStore(HttpServletRequest requestm,Model model,HttpSession session)
	{
		//model.addAttribute("storeList", storeDao.getStore());
		
		if(session.getAttribute("userId")!=null) {
			return "admin/storelist";	
		}else {
			return "redirect:login";	
		}
		
	}
	
	//Get Store List
	@RequestMapping(value="storeList")
	@ResponseBody	public List<Store> storeList(HttpServletRequest requestm,Model model,HttpSession session)
	{
		return storeDao.getStore();
	}
	
	//Delete Store
	@RequestMapping(value = "/storeDelete", method = RequestMethod.POST)
	@ResponseBody public boolean storeDelete(HttpServletRequest request,Store store,HttpSession session,HttpServletResponse response)
	{
		return  storeDao.deleteStore(Integer.parseInt(request.getParameter("storeId")));
	}
	
	//Update store 
	@RequestMapping(value = "/updateStoreStatus", method = RequestMethod.POST)
	@ResponseBody public boolean updateStoreStatus(HttpServletRequest request,Store store,HttpSession session,HttpServletResponse response)
	{
		return  storeDao.updateStoreStatus(Integer.parseInt(request.getParameter("storeId")),Integer.parseInt(request.getParameter("flag")));
	}
	
	
}
