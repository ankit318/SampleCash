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

import com.ia.Dao.CategoryDao;
import com.ia.modal.Category;
import com.ia.util.CommonUtility;

@Component("categoryDao")
public class CategoryImpl implements CategoryDao {

	Properties categoryProp = CommonUtility.readPropertiesFile(this.getClass().getResourceAsStream("./category.properties"));
	
	@Autowired
	DataSource dataSource;

	Connection con;
	
	@Override
	public boolean categoryInsert(Category category) {
		// TODO Auto-generated method stub
		int status = 0;
		try (Connection con = (Connection) dataSource.getConnection()) {
			PreparedStatement ps = (PreparedStatement) con.prepareStatement(categoryProp.getProperty("categoryInsert"));
			ps.setString(1, category.getCatName());
			ps.setString(2, category.getCatPath());
			ps.setString(3, category.getCatDesc());
			status = ps.executeUpdate();
			con.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		System.out.println("Status :::" + status);
		if (status > 0)
			return true;
		else
			return false;

	}
	
	@Override
	public List<Category> getCategory() {
		// TODO Auto-generated method stub
		List<Category> data = new ArrayList<>();
		try (Connection con = (Connection) dataSource.getConnection()) {
			PreparedStatement ps = (PreparedStatement) con.prepareStatement(categoryProp.getProperty("getCategory"));
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Category category = new Category();
				category.setCategoryId(Integer.parseInt(rs.getString("category_id")));
				category.setCatName(rs.getString("name"));
				category.setCatDesc(rs.getString("cat_desc"));
				category.setCatPath(rs.getString("cat_path"));
				category.setParentId(rs.getInt("parent_id"));
				data.add(category);
			}
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
		return data;
	}
}
