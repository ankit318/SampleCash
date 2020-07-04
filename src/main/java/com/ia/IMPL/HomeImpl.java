
package com.ia.IMPL;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.ia.Dao.HomeDao;
import com.ia.modal.Category;
import com.ia.modal.User;

@Component("homeDao")
public class HomeImpl implements HomeDao {

	@Autowired
	DataSource dataSource;

	Connection con;

	@Override
	public List<String> getData() {
		// TODO Auto-generated method stub
		List<String> data = new ArrayList<>();
		try (Connection con = (Connection) dataSource.getConnection()) {
			String sql = "select * from login";
			PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				System.out.println(rs.getString("username"));
				data.add(rs.getString("username"));

			}

			con.close();
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}

		return data;
	}

	@Override
	public User checkValidUser(String userName, String password) {
		// TODO Auto-generated method stub
		User user = new User();
		try (Connection con = (Connection) dataSource.getConnection()) {
			String sql = "select * from user where useremail = ? and binary password = ?";
			PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
			ps.setString(1, userName);
			ps.setString(2, password);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				user.setFname(rs.getString("fname"));
				user.setLname(rs.getString("lname"));
				user.setUserId(rs.getInt("user_id"));
				user.setUserRole(rs.getString("user_role"));
				user.setApprovedLink(rs.getString("approved_link"));
				user.setApprovedLink2(rs.getString("approved_link_scrap2"));
				user.setApprovedLink3(rs.getString("approved_link_scrap3"));
				user.setCompanyLink(rs.getString("company_link"));
			}
			con.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return user;
	}

	@Override
	public boolean insert(User user) {
		// TODO Auto-generated method stub
		int status = 0;
		try (Connection con = (Connection) dataSource.getConnection()) {
			String sql = "insert into user(fname,lname,useremail,password) value(?,?,?,?)";
			PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
			ps.setString(1, user.getFname());
			ps.setString(2, user.getLname());
			ps.setString(3, user.getUserEmail());
			ps.setString(4, user.getPassword());
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
			System.out.println("Size:: " + rs.last());
			System.out.println("Size:: " + rs.getRow());

		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
		return data;
	}

	@Override
	public List<User> getUserList() {
		// TODO Auto-generated method stub
		List<User> users = new ArrayList<>();
		try (Connection con = (Connection) dataSource.getConnection()) {
			String sql = "select * from user";
			PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				User user = new User();
				user.setFname(rs.getString("fname"));
				user.setLname(rs.getString("lname"));
				user.setUserEmail(rs.getString("useremail"));
				user.setPassword(rs.getString("password"));
				user.setMobileNumber(rs.getString("mobile_number"));
				user.setUserId(rs.getInt("user_id"));
				users.add(user);
			}
			con.close();
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("Error ::::");

			e.printStackTrace();
		}
		return users;
	}

	@Override
	public List<User> getStoreList() {
		List<User> users = new ArrayList<>();
		try (Connection con = (Connection) dataSource.getConnection()) {
			String sql = "select * from master_store order by store_name";
			PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				User user = new User();
				user.setFname(rs.getString("fname"));
				user.setLname(rs.getString("lname"));
				user.setUserEmail(rs.getString("useremail"));
				user.setPassword(rs.getString("password"));
				user.setMobileNumber(rs.getString("mobile_number"));
				user.setUserId(rs.getInt("user_id"));
				users.add(user);
			}
			con.close();
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("Error ::::");

			e.printStackTrace();
		}
		return users;
	}

	/*
	 * @Transactional
	 * 
	 * @Override public boolean insertScrap(Scrap scrap) { // TODO Auto-generated
	 * method stub int status = 0; try (Connection con = (Connection)
	 * dataSource.getConnection()){
	 * 
	 * String sql =
	 * "insert into scrap(name,current_org,current_position,location,url,ipaddress,user_id,contact_url,url_id,past_org,past_position,remarks) value(?,?,?,?,?,?,?,?,?,?,?,?)"
	 * ; PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
	 * ps.setString(1, scrap.getName()); ps.setString(2, scrap.getCurrent_org());
	 * ps.setString(3, scrap.getCurrent_position()); ps.setString(4,
	 * scrap.getLocation()); ps.setString(5, scrap.getUrl()); ps.setString(6,
	 * scrap.getIpaddress()); ps.setString(7, scrap.getUser_id()); ps.setString(8,
	 * scrap.getContact_url()); ps.setLong(9, scrap.getUrl_id()); ps.setString(10,
	 * scrap.getPast_org()); ps.setString(11, scrap.getPast_position());
	 * ps.setString(12, scrap.getRemarks()); status = ps.executeUpdate();
	 * con.commit(); con.close(); }catch (Exception e) { // TODO: handle exception
	 * e.printStackTrace(); }
	 * 
	 * System.out.println("Status insertScrap:::"+status); if(status > 0) return
	 * true; else return false; }
	 */

}
