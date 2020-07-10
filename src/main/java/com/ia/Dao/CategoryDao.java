package com.ia.Dao;

import java.util.List;

import com.ia.modal.Category;

public interface CategoryDao {

	//Insert category
	boolean insertCategory(Category category);
	
	//Get Category list
	List<Category> getCategory();
	
	//Update category status
	boolean updateCategoryStatus(int categoryId,int flag);
	
	//Delete category (Update is_delete flag)
	boolean deleteCategory(int categoryId);

	//Get SubCategory list
	List<Category> getSubCategory(int parentId);
	
}
