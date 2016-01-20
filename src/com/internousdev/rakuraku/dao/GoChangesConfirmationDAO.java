package com.internousdev.rakuraku.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.internousdev.rakuraku.util.DBConnector;

/**
 *データベースと接続し、ユーザー情報・クレジット情報を更新するためのクラス
 * @author S.Sugimoto
 * @version 1.1
 * @since 1.0
 */
public class GoChangesConfirmationDAO {

	/**
	 * DBに登録されているユーザーのメールアドレス
	 */
	private String nowEmail;

	private String token;


	/**
	 * DBのユーザー情報を更新する為のメソッド
	 * @param id ID
	 * @param email メールアドレス
	 * @param password パスワード
	 * @param name 名前
	 * @param name_kana フリガナ
	 * @param card_num クレジットカード番号
	 * @param date ユーザー情報の変更登録日
	 * @return
	 */
	public  int updateBase(int id, String email, String password, String name, String name_kana, int card_num, String token, String updated_at){
		int count = 0;

		Connection con = DBConnector.getConnection();
		String sql = "UPDATE user SET email = ?, password = ?, name = ?, name_kana = ?,"
				+ " card_num = ?, token = ?, updated_at = ? WHERE id = ?";

		try{
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1,email);
			ps.setString(2,password);
			ps.setString(3,name);
			ps.setString(4,name_kana);
			ps.setInt(5,card_num);
			ps.setString(6,token);
			ps.setString(7,updated_at);
			ps.setInt(8,id);

			count = ps.executeUpdate();
		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			try{
				con.close();
			}catch(SQLException e){
				e.printStackTrace();
			}
		}

		return count;
	}

	/**
	 * DBに接続し、ユーザーのメールアドレスを取得し、変数に格納する為のメソッド
	 * @param id ID
	 * @return result メールアドレスが取得できたらtrue,出来なければfalse
	 */
	public boolean selectEmail(int id){

		boolean result = false;
		Connection conn = DBConnector.getConnection();

		try{
			String sql = "SELECT email FROM user WHERE ";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			if(rs.next()){
				nowEmail = rs.getString("email");
				result = true;
			}
		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			if(conn != null){
				try{
					conn.close();
				}catch(SQLException e){
					e.printStackTrace();
				}
			}
		}
		return result;
	}

	/**
	 * DBに登録されているユーザーのメールアドレスを取得する為のメソッド
	 * @return email
	 */
	public String getNowEmail(){
		return nowEmail;
	}

	public String getToken(){
		return token;
	}

	/**
	 * @param token セットする token
	 */
	public void setToken(String token) {
		this.token = token;
	}
}
