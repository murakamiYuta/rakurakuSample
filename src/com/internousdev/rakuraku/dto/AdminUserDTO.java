/**
 *
 */
package com.internousdev.rakuraku.dto;

/**
 * @author internous
 *
 */
public class AdminUserDTO {

	/**
	 * ID
	 */
	private int id;

	/**
	 * パスワード
	 */
	private String password;

	/**
	 * ユーザー名
	 */
	private String user;

	/**
	 * メールアドレス
	 */
	private String mail;

	/**
	 * IDを取得する為のメソッド
	 * @return id
	 */
	public int getId(){
		return id;
	}

	/**
	 * IDを格納する為のメソッド
	 * @param id
	 */
	public void setId(int id){
		this.id = id;
	}
	/**
	 * パスワードを取得する為のメソッド
	 * @return password
	 */
	public String getPassword(){
		return password;
	}

	/**
	 * パスワードを格納する為のメソッド
	 * @param password
	 */
	public void setPassword(String password){
		this.password = password;
	}

	/**
	 * ユーザー名を取得する為のmメソッド
	 * @return user
	 */
	public String getUser(){
		return user;
	}

	/**
	 * ユーザー名を格納するためのメソッド
	 * @param user
	 */
	public void setUser(String user){
		this.user = user;
		}
	/**
	 * メールを取得する為のメソッド
	 * @return mail
	 */
	public String getMail(){
		return mail;
	}

	/**
	 * パスワードを格納する為のメソッド
	 * @param mail
	 */
	public void setMail(String mail){
		this.mail = mail;
	}



}

