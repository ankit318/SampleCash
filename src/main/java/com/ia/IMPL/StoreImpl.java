package com.ia.IMPL;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.ia.Dao.StoreDao;
import com.ia.modal.Store;
import com.ia.util.CommonUtility;

@Component("storeDao")
public class StoreImpl implements StoreDao {

	Properties prop = CommonUtility.readPropertiesFile(this.getClass().getResourceAsStream("./store.properties"));
	
	@Autowired
	DataSource dataSource;

	Connection con;
	
	@Override
	public List<Store> getStore() {
		// TODO Auto-generated method stub
		
		List<Store> storeslist = new ArrayList<>();
		try (Connection con = (Connection) dataSource.getConnection()) {
			PreparedStatement ps = (PreparedStatement) con.prepareStatement(prop.getProperty("getStore"));
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Store store = new Store();
				store.setMasterStoreId(rs.getInt("master_store_id"));
				store.setStoreName(rs.getString("store_name"));
				store.setStoreSlug(rs.getString("store_slug"));
				store.setStoreDomain(rs.getString("store_domain"));
				store.setStorePartnerKey(rs.getString("store_partner_key"));
				store.setStoreHeading(rs.getString("store_heading"));
				store.setPriority(rs.getString("priority"));
				store.setMiniumTransactionAmount(rs.getDouble("minium_transaction_amount"));
				store.setIsActive(rs.getInt("is_active"));
				storeslist.add(store);
			}
			con.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return storeslist;
	}

	@Override
	public boolean insert(Store store) {
		// TODO Auto-generated method stub
		int status = 0;
		try (Connection con = (Connection) dataSource.getConnection()) {
			PreparedStatement ps = (PreparedStatement) con.prepareStatement(prop.getProperty("insertStore"));
			ps.setString(1, store.getStoreName());
			ps.setString(2, store.getStoreSlug());
			ps.setString(3, store.getStoreDomain());
			ps.setString(4, store.getStorePartnerKey());
			ps.setString(5, store.getStoreHeading());
			ps.setString(6, store.getStoreDescription());
			ps.setString(7, store.getNotice());
			ps.setString(8, store.getPriority());
			ps.setDouble(9, store.getMiniumTransactionAmount());
			ps.setString(10, store.getVary());
			ps.setString(11, store.getStorePrimaryKeyWord());
			ps.setString(12, store.getStoreSecondaryKeyWord());
			ps.setInt(13, store.getCreatedBy());
			
			status = ps.executeUpdate();
			con.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		if (status > 0) {
			return true;
		} else {
			return false;
		}
		
	}

	@Override
	public boolean deleteStore(int storeId) {
		// TODO Auto-generated method stub
		int status = 0;
		try (Connection con = (Connection) dataSource.getConnection()) {
			PreparedStatement ps = (PreparedStatement) con.prepareStatement(prop.getProperty("deleteStore"));
			ps.setInt(1, storeId);
			status = ps.executeUpdate();
			con.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		 
		if (status > 0) {
			return true;
		} else {
			return false;
		}
	}
	
	@Override
	public boolean updateStoreStatus(int storeId,int flag) {
		// TODO Auto-generated method stub
		int status = 0;
		try (Connection con = (Connection) dataSource.getConnection()) {
			PreparedStatement ps = (PreparedStatement) con.prepareStatement(prop.getProperty("updateStoreStatus"));
			ps.setInt(1, flag);
			ps.setInt(2, storeId);
			status = ps.executeUpdate();
			con.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		 
		if (status > 0) {
			return true;
		} else {
			return false;
		}
	}
	
	@Override
	public boolean updateStore(Store store, int storeId) {
		int status = 0;
		try (Connection con = (Connection) dataSource.getConnection()) {
			String sql = "update master_store set store_name = ?,store_slug = ?,store_domain = ?,store_partner_key = ?,store_description = ?,store_heading = ?,priority = ?,notice = ?,minium_transaction_amount = ?,vary = ?,store_primary_key_word = ?,store_secondary_key_word=? where master_store_id = ?";
			PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
			ps.setString(1, store.getStoreName());
			ps.setString(2, store.getStoreSlug());
			ps.setString(3, store.getStoreDomain());
			ps.setString(4, store.getStorePartnerKey());
			ps.setString(5, store.getStoreDescription());
			ps.setString(6, store.getStoreHeading());
			ps.setString(7, store.getPriority());
			ps.setString(8, store.getNotice());
			ps.setDouble(9, store.getMiniumTransactionAmount());
			ps.setString(10, store.getVary());
			ps.setString(11, store.getStorePrimaryKeyWord());
			ps.setString(12, store.getStoreSecondaryKeyWord());
			ps.setInt(13, store.getMasterStoreId());
			status = ps.executeUpdate();
			con.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		;
		System.out.println("Status :::" + status);
		if (status > 0)
			return true;
		else
			return false;
	}

}
