package com.ia.Dao;

import java.util.List;

import com.ia.modal.Category;

public interface CategoryDao {

	boolean categoryInsert(Category category);
	
	List<Category> getCategory();
}
