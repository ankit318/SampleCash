package com.ia.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.ia.Dao.HomeDao;

@Controller
public class APIController {

	@Autowired	 
	HomeDao homeDao;

	
	/*@CrossOrigin
	@RequestMapping(value="userUrlAPI/{userId}")
	@ResponseBody public List<MasterURL> userUrlAPI(@PathVariable("userId") String userId,Model model,HttpSession session)
	{
		return homeDao.getUrlList(Integer.parseInt(userId),"display");
	}*/
	
	/*@RequestMapping(value = "/updateUrlStatusAPI/{action}/{urlId}/{status}")
	@ResponseBody String updateUrlStatusAPI(@PathVariable("action") String action,@PathVariable("urlId") String urlId,@PathVariable("status") String status) {
		
		
		if(action.equalsIgnoreCase("scrap")) {
			return  homeDao.updateUrlStatus(Long.parseLong(urlId), status,"scrap")+"";	
		}
		return "false";
	}*/
	
}
