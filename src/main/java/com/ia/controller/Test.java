package com.ia.controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Test {

	public static void main(String[] args) {

        String url = "jdbc:postgresql://ia-master-repo.ckxezqztkeob.ap-south-1.rds.amazonaws.com:5432/s2_postgre";
        String user = "postgres";
        String password = "L4nding4ia";

        int id = 6;
        String author = "Trygve Gulbranssen";
        String query = "INSERT INTO scrap(name,user_id) VALUES(?, ?)";

        try (Connection con = DriverManager.getConnection(url, user, password);
             PreparedStatement pst = con.prepareStatement(query,PreparedStatement.RETURN_GENERATED_KEYS)) {
            
            
            pst.setString(1, author);
            pst.setInt(2, 0);
            pst.executeUpdate();

            int status = 0;
            try (ResultSet generatedKeys = pst.getGeneratedKeys()) {
	            if (generatedKeys.next()) {
	            	status = generatedKeys.getInt(1);
	            } else {
	                throw new SQLException("Creating user failed, no ID obtained.");
	            }
	            
	            System.out.println("status--"+status);
	            
	        }catch (Exception e) {
	        	e.printStackTrace();
			}
            
        } catch (SQLException ex) {

            Logger lgr = Logger.getLogger(Test.class.getName());
            lgr.log(Level.SEVERE, ex.getMessage(), ex);
        }
        
        /*String query = "select * from scrap";

        try (Connection con = DriverManager.getConnection(url, user, password);
             PreparedStatement pst = con.prepareStatement(query)) {
        	 ResultSet rs =	pst.executeQuery();
        	 
        	 while (rs.next()) {
				System.out.println(rs.getString("name"));
				
			}

        } catch (SQLException ex) {

            Logger lgr = Logger.getLogger(Test.class.getName());
            lgr.log(Level.SEVERE, ex.getMessage(), ex);
        }*/
        
    }
}

