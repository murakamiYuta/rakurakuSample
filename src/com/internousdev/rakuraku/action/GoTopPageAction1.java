
/*
 * タイトル：ログインの為のクラス
 * 説明    ：ログインの可否を判断する
 *
 * 著作権  ：Copyright(c) 2016 InterNous, Inc.
 * 会社名  ：インターノウス株式会社
 *
 * 変更履歴：2016.01.19 Tuesday
 *         ：新規登録
 *
 */
package com.internousdev.rakuraku.action;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.rakuraku.dao.LoginDAO;
import com.opensymphony.xwork2.ActionSupport;
/**
 * ログインの為のクラス
 * @author 田代 祐樹
 * @since 1.0
 * @version 1.0
 */
public class GoTopPageAction1 extends ActionSupport implements SessionAware {

	/**
	 *シリアルID
	 */
	private static final long serialVersionUID = -6575560332274739301L;

	/**
	 *emailを格納
	 */
	private String email;

	/**
	 *パスワードを格納
	 */
	private String password;

	private Map<String, Object> session;

	/**
	 * session取得メソッド
	 * @return session セッション
	 */
	public Map<String, Object> getSession() {
		return session;
	}
	/**
	 * session格納メソッド
	 * @param session セッション
	 */
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	/**
	 * email取得メソッド
	 * @return email メールアドレス
	 */
	public String getEmail() {
		return email;
	}

	/**
	 * emailを格納するためのメソッド
	 * @param email メールアドレス
	 */
	public void setEmail(String email) {
		this.email = email;
	}

	/**
	 * password取得メソッド
	 * @return password パスワード
	 */
	public String getPassword() {
		return password;
	}
	/**
	 * passwordを格納するためのメソッド
	 * @param password パスワード
	 */
	public void setPassword(String password) {
		this.password = password;
	}

	/**
	 *ログイン可否判断
	 * @return String
	 */
    public String execute(){

    	String result = "error";

    	LoginDAO dao = new LoginDAO();
    	int id = 0;
    	try {
    	    id = dao.Login(email, password);
		} catch (SQLException e) {
			e.printStackTrace();
		}
        if(id != 0){
            result = "success";
            session.put("userId", id);
        }else{
        	addActionMessage("メールアドレスまたはパスワードが間違っています！");
        }
    	return result;
    }

}
