package com.internousdev.rakuraku.action;

import java.sql.SQLException;

import com.internousdev.rakuraku.dao.AdminLogInDAO;
import com.opensymphony.xwork2.ActionSupport;


public class AdminLogInAction extends ActionSupport{

	/**
	 * ユーザー名
	 */
	private String id;
	/**
	 * パスワード
	 */
	private String password;
	/**
	 * ユーザー名エラー
	 */
	private String errorId;

	/**
	 * パスワードエラー
	 */
	private String errorPassword;

	/**
	 * ログインエラー
	 */
	private String errorLogin;

	public String execute() throws SQLException{

		//ユーザーidのヴァリデーション
		if(!id.matches("^[0-9]+${1,11}")){
			   errorId = (getText("文字列を入力し下さい"));
			   return ERROR;
		}
			   //パスワードのヴァリデーション
		if(!password.matches(".{1,255}")){
			   errorPassword = (getText("文字列を入力し下さい"));
			   return ERROR;
		   }

		//ログイン判定
		String result = ERROR;
		AdminLogInDAO dao = new AdminLogInDAO();

			if(dao.Login(id, password)){
				result = SUCCESS;
			}else{
				errorLogin = (getText("ログインに失敗しました"));
			}
			return result;
		}

	/**
	 * ユーザー名を取得するためのメソッド
	 * @return user ユーザー名
	 */
	public String getId() {
		return id;
	}

	/**
	 * ユーザー名を格納する為のメソッド
	 * @param user ユーザー名
	 */
	public void setId(String id){
		this.id = id;
	}

	/**
	 * パスワードを取得する為のメソッド
	 * @return password パスワード
	 */
	public String getPassword() {
		return password;
	}

	/**
	 * パスワードを格納するためのメソッド
	 * @param password パスワード
	 */
	public void setPassword(String password){
		this.password = password;
	}

	/**
	 * ユーザー名エラーを取得する為のメソッド
	 * @return errorUser ユーザー名エラー
	 */
	public String getErrorId(){
		return errorId;
	}

	/**
	 * ユーザー名エラーを格納するためのメソッド
	 * @param errorUser ユーザー名エラー
	 */
	public void setErrorId(String errorId){
		this.errorId = errorId;
	}

	/**
	 * パスワードエラーを取得する為のメソッド
	 * @return errorPasswordパスワードエラー
	 */
	public String getErrorPassword(){
		return errorPassword;
		}

	/**
	 * パスワードエラーを格納する為のメソッド
	 * @param errorPassword パスワードエラー
	 */
	public void setErrorPassword(String errorPassword){
		this.errorPassword = errorPassword;
	}

	/**
	 * ログインエラーを取得する為のメソッド
	 * @return errorLogin ログインエラー
	 */
	public String getErrorLogin(){
		return errorLogin;
		}

	/**
	 * ログインエラーを格納するためのメソッド
	 * @param errorLogin ログインエラー
	 */
	public void setErrorLogin(String errorLogin){
		this.errorLogin = errorLogin;
	}
}
