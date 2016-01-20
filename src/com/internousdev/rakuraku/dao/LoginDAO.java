/*
 * タイトル：ログインの為のDAO
 * 説明    ：ログインの可否を判断する
 *
 * 著作権  ：Copyright(c) 2016 InterNous, Inc.
 * 会社名  ：インターノウス株式会社
 *
 * 変更履歴：2016.01.19 Tuesday
 *         ：新規登録
 *
 */
package com.internousdev.rakuraku.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.internousdev.rakuraku.util.DBConnector;

/**
 * ログインの為のDAO
 * @author 田代 祐樹
 * @since 1.0
 * @version 1.0
 */

public class LoginDAO {

	/**
	 *DBからユーザーを検索してIDを排出
	 * @return int
	 */

	public int Login(String email,String password) throws SQLException{
		int result = 0;
		Connection con = DBConnector.getConnection();
		String sql = "SELECT id FROM user WHERE email = ? AND password = ?";

		try {
			PreparedStatement ps = con.prepareStatement(sql);

			ps.setString(1, email);
			ps.setString(2, password);
			ResultSet rs = ps.executeQuery();
			if(rs.next()){
				result = rs.getInt("id");
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
