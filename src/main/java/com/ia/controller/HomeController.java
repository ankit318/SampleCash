package com.ia.controller;

import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.ia.Dao.HomeDao;
import com.ia.modal.Store;
import com.ia.modal.User;
import com.ia.util.CommonUtility;
import com.ia.util.MailConfiguration;

@Controller
public class HomeController {

	@Autowired	 
	HomeDao homeDao;
	
	@RequestMapping(value="/")
	public String home(Model model,HttpSession session) {
		
		
		if(session.getAttribute("userRole")!=null) {
			if(session.getAttribute("userRole").toString().equalsIgnoreCase("1")) {
				 return "redirect:admindashboard";
			 }else {
				 return "redirect:dashboard";
			 }	
		}
		//return "front/index";
		return "admin/login";
	}
	
	@RequestMapping(value="checkValidUser")
	@ResponseBody public String checkValidUser(HttpServletRequest request,HttpSession session) {
		
		User user = homeDao.checkValidUser(request.getParameter("password"),request.getParameter("userPassword"));
		
		if(user!=null) {
			
			session.setAttribute("username", user.getFname() +" "+ user.getLname());
			
			return "true";
		}else		
			return  "false";
		
	}
	
	
	@RequestMapping(value="uploadFile" , method=RequestMethod.POST)
	public String uploadFile(@RequestParam("tableName") String tableName,@RequestParam("file") MultipartFile file,HttpServletRequest request)
	{
		System.out.println("reportList-->"+request.getParameter("reportList"));
		if (!file.isEmpty()) {
			try {
				byte[] bytes = file.getBytes();

				// Creating the directory to store file
				String rootPath = System.getProperty("catalina.home");
				File dir = new File(rootPath + File.separator + "tmpFiles");
				if (!dir.exists())
					dir.mkdirs();

				// Create the file on server
				File serverFile = new File(dir.getAbsolutePath()
						+ File.separator + file.getOriginalFilename());
				BufferedOutputStream stream = new BufferedOutputStream(
						new FileOutputStream(serverFile));
				stream.write(bytes);
				stream.close();

				System.out.println("rootPath --->>>"+rootPath + File.separator + "tmpFiles");
				System.out.println("Server File Location="+ dir.getAbsolutePath());
				System.out.println("orignal file name ::-->"+file.getOriginalFilename());
				
				//int totalRecord = homeDao.fileUploadDataBase(rootPath + File.separator + "tmpFiles"+"/"+file.getOriginalFilename(), tableName);
				
				MailConfiguration.sendMail(tableName,"Record ::"+CommonUtility.count(rootPath + File.separator + "tmpFiles"+"/"+file.getOriginalFilename()));
				
				String csvFile = rootPath + File.separator + "tmpFiles"+"/"+file.getOriginalFilename();
		        BufferedReader br = null;
		        String line = "";
		        String cvsSplitBy = ",";

		        try {

		            br = new BufferedReader(new FileReader(csvFile));
		            while ((line = br.readLine()) != null) {
		                // use comma as separator
		                String[] country = line.split(cvsSplitBy);
		                System.out.println(country[0]);
		                //homeDao.fileUploadDataBase(country[0], tableName);

		            }

		        } catch (FileNotFoundException e) {
		            e.printStackTrace();
		        } catch (IOException e) {
		            e.printStackTrace();
		        } finally {
		            if (br != null) {
		                try {
		                    br.close();
		                } catch (IOException e) {
		                    e.printStackTrace();
		                }
		            }
		        }
				return "redirect:admindashboard";
			} catch (Exception e) {
				System.out.println("You failed to upload " + tableName + " => " + e.getMessage());
				return "redirect:admindashboard";
			}
		} else { 
			return "redirect:admindashboard";
		}

	}
	
	
	
	@RequestMapping(value = "/checkUser", method = RequestMethod.POST )
	public String checkUser(HttpServletRequest request,Model model,HttpSession session,HttpServletResponse response)  {
		
		System.out.println(request.getParameter("Email")+"---------"+request.getParameter("password"));
		 User user = homeDao.checkValidUser(request.getParameter("Email"), request.getParameter("password"));
		 
		 System.out.println("User ::"+user.getUserId());
		 
		 if(user!=null && user.getUserId()>0) {		 
			 session.setAttribute("userName", request.getParameter("Email"));
			 session.setAttribute("userId", user.getUserId());
			 session.setAttribute("userRole", user.getUserRole());

			 String userRole = user.getUserRole();
			 System.out.println(user +"--------------");
			 if(userRole.equalsIgnoreCase("1")) {
				 return "redirect:admindashboard";
			 }else {
				 
			 }
			 
			 return "redirect:dashboard";
		 }else {
			
			model.addAttribute("message", "Please enter valid username and password");
			return "admin/login";
		}		
	}
	
	
	
	@RequestMapping(value="logout")
	public String logout(HttpSession session)
	{
		session.setAttribute("userName", null);
		session.setAttribute("userId", null);
		session.setAttribute("userRole", null);
		 
		return "admin/login";
	}
	
	/*@RequestMapping(value="manageUser")
	public String user(Model model)
	{
		model.addAttribute("userList",homeDao.getUserList());
		
		return "admin/manageUser";
	}*/
	
	
	@RequestMapping(value="dashboard")
	public String dashboard(HttpServletRequest requestm,Model model,HttpSession session)
	{
		if(session.getAttribute("userId")!=null) {
			int userId = Integer.parseInt(session.getAttribute("userId")+"");
			System.out.println("This is dashboard  s1 --"+userId);
			return "admin/dashboard";	
		}else {
			return "redirect:login";	
		}
		
	}
	
	/*@RequestMapping(value="storeAction")
	public String storeAction(HttpServletRequest request,Store store ,Model model,HttpSession session)
	{
		String action = request.getParameter("action");
		
		if(action.equalsIgnoreCase("delete")) {
			homeDao.deleteStore(Integer.parseInt(request.getParameter("storeId")));
		}else if(action.equalsIgnoreCase("update")) {
			homeDao.insertStore(store);
		}else if(action.equalsIgnoreCase("insert")) {
			homeDao.updateStore(store,Integer.parseInt(request.getParameter("storeId")));
		}
		
		if(session.getAttribute("userId")!=null) {
			return "admin/storelist";	
		}else {
			return "redirect:login";	
		}
		
	}*/
	
	 
	/* End Admin controller */
	
	 
}
