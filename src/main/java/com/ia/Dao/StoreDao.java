package com.ia.Dao;

import java.util.List;

import com.ia.modal.Store;

public interface StoreDao {
	
	List<Store> getStore();
	boolean insert(Store store);
	boolean deleteStore(int storeId);
	boolean updateStore(Store store,int storeId);
	boolean updateStoreStatus(int storeId,int flag);
	

}
