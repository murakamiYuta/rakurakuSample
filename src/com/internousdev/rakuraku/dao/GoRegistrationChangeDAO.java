package com.internousdev.rakuraku.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.internousdev.rakuraku.dto.GoRegistrationChangeDTO;
import com.internousdev.rakuraku.util.DBConnector;

/**
 * @author S.Sugimoto
 * @version 1.1
 * @since 1.0
 */
public class GoRegistrationChangeDAO {

	public boolean registrationChange(int id, GoRegistrationChangeDTO dto){
		boolean result = false;
		Connection conn = DBConnector.getConnection();
		String sql = "SELECT email,password,name,name_kana,card_num FROM user WHERE id = ?";
		try{
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			if(rs.next()){
				dto.setEmail(rs.getString("email"));
				dto.setPassword(rs.getString("password"));
				dto.setName(rs.getString("name"));
				dto.setName_kana(rs.getString("name_kana"));
				dto.setCard_num(rs.getInt("card_num"));
				result = true;
			}
		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			try{
				conn.close();
			}catch(SQLException e){
				e.printStackTrace();
			}
		}
		return result;
	}
}
