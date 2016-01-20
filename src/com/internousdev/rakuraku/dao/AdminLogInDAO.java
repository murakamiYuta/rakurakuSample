package com.internousdev.rakuraku.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.internousdev.rakuraku.util.DBConnector;


public class AdminLogInDAO {

	public boolean Login(String id,String password) throws SQLException{
		boolean result = false;
		Connection con = DBConnector.getConnection();
		String sql = "SELECT id,password FROM admin WHERE id = ? AND password = ?";

		try {
			PreparedStatement ps = con.prepareStatement(sql);

			ps.setString(1, id);
			ps.setString(2, password);
			ResultSet rs = ps.executeQuery();
			if(rs.next()){
				result = true;
			}

		}catch(SQLException e){
			e.printStackTrace();
		}finally {
			try{
				con.close();
			}catch(SQLException e){
				e.printStackTrace();
			}
		}
		return result;

	}

}
