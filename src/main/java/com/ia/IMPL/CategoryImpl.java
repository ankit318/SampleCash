package com.ia.IMPL;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.ia.Dao.CategoryDao;
import com.ia.modal.Category;

@Component("categoryDao")
public class CategoryImpl implements CategoryDao {

	@Autowired
	DataSource dataSource;

	Connection con;
	
	@Override
	public boolean categoryInsert(Category category) {
		// TODO Auto-generated method stub

		int status = 0;
		try (Connection con = (Connection) dataSource.getConnection()) {
			String sql = "insert into category(name,cat_path,cat_desc) values(?,?,?)";
			PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
			ps.setString(1, category.getCatName());
			ps.setString(2, category.getCatPath());
			ps.setString(3, category.getCatDesc());
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
	
	@Override
	public List<Category> getCategory() {
		// TODO Auto-generated method stub
		List<Category> data = new ArrayList<>();
		try (Connection con = (Connection) dataSource.getConnection()) {
			String sql = "select * from category";
			PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Category category = new Category();
				category.setCategoryId(Integer.parseInt(rs.getString("category_id")));
				category.setCatName(rs.getString("name"));
				category.setCatDesc(rs.getString("cat_desc"));
				category.setCatPath(rs.getString("cat_path"));
				data.add(category);

			}
			con.close();
			/*System.out.println("Size:: " + rs.last());
			System.out.println("Size:: " + rs.getRow());*/

		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
		return data;
	}
}
