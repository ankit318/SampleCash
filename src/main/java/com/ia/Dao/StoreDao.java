package com.ia.Dao;

import java.util.List;
import com.ia.modal.Store;
import com.ia.modal.User;

public interface StoreDao {
	
	List<Store> getStore();
	boolean insert(Store store);
	boolean deleteStore(int storeId);

}
