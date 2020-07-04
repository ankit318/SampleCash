package com.ia.Dao;

import java.util.List;

import com.ia.modal.Category;
import com.ia.modal.Store;
import com.ia.modal.User;

public interface HomeDao {

	List<String> getData();
	
	User checkValidUser(String userName,String password);
	
	boolean insert(User user);
	
	boolean categoryInsert(Category category);
	
	List<Category> getCategory();
	
	List<User> getUserList();
	
	List<Store> getStoreList();
	
	boolean deleteStore(int storeId);
	
	boolean insertStore(Store store);
	
	boolean updateStore(Store store,int storeId);
}
