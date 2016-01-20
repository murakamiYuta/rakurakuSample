/**
 *
 */
package com.internousdev.rakuraku.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.internousdev.rakuraku.dto.AdminUserDTO;
import com.internousdev.rakuraku.util.DBConnector;




/**
 * @author internous
 *
 */
public class AdminUserDAO {
	/**
	 * ユーザー一覧情報を格納するリスト
	 */
	private ArrayList<AdminUserDTO> list = new ArrayList<AdminUserDTO>();

	/**
	 * 画面にユーザー情報一覧を表示させる為のメソッド
	 * @return result データベースからのユーザー一覧情報を格納できたか否か
	 * @throws SQLException
	 */
	public boolean select() throws SQLException{
			boolean result = false;
	        Connection conn = DBConnector.getConnection();
	        String sql = "SELECT * FROM user";

	         try{
	            PreparedStatement ps = conn.prepareStatement(sql);
	            ResultSet rs = ps.executeQuery();
	            while(rs.next()) {
	            	AdminUserDTO dto = new AdminUserDTO();
	            	dto.setId(rs.getInt("id"));
	            	dto.setPassword(rs.getString("password"));
	            	dto.setUser(rs.getString("user"));
	            	dto.setMail(rs.getString("mail"));
	            	list.add(dto);
	            	result = true;
	             }
	         }catch (SQLException e) {
	        	 e.printStackTrace();
	         }finally{
	        	 try{
	        		 conn.close();
	 	         }catch (SQLException e){
	 	        	 e.printStackTrace();
	 	         }
	 	     }
	         return result;
	}

	/**
	 * リストを取得する為のメソッド
	 * @return list
	 */
	public ArrayList<AdminUserDTO> getUserSelect(){
		return list;
	}

	/**
	 * リストを格納する為のメソッド
	 * @param list
	 */
	public void setList(ArrayList<AdminUserDTO> list) {
		this.list = list;
	}

}



