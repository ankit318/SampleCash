package com.ia.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ia.Dao.CategoryDao;
import com.ia.modal.Category;

@Controller
public class CategoryController {

	@Autowired
	CategoryDao categoryDao;
	
	@RequestMapping(value="category")
	public String category(Model model)
	{
		model.addAttribute("categoryList",categoryDao.getCategory());
		
		System.out.println("This is category"+categoryDao.getCategory().size());
		return "admin/manageCategory";
	}
	
	@RequestMapping(value="manageCategory")
	public String manageCategory(Model model)
	{
			
		System.out.println("This is dashboard"+categoryDao.getCategory().size());
		return "admin/category";
	}
	
	@RequestMapping(value="categoryInsert")
	public String categoryInsert(Category category) {
		
		
		System.out.println("Categoty :::"+category.getCatName());
		
		categoryDao.insertCategory(category);
		 
		return "redirect:category";
	}

}
