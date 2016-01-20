/*
 * タイトル：お問い合わせ内容をMongoDB追加するためのクラス
 * 説明    ：お問い合わせ内容を追加
 *
 * 著作権  ：Copyright(c) 2016 InterNous, Inc.
 * 会社名  ：インターノウス株式会社
 *
 * 変更履歴：
 *
 */
package com.internousdev.rakuraku.action;

import com.internousdev.rakuraku.dao.InsertContactDAO;
import com.opensymphony.xwork2.ActionSupport;

/**お問い合わせ内容をMongoDB追加するためのクラス
*@author S.iiduka
* @version 1.0
*/
public class InsertContactAction extends ActionSupport{

	/**
	 *生成したシリアルID
	 */
	private static final long serialVersionUID = 5203619475554767582L;

	/**
	 * ユーザーネーム
	 */
	private String user_name;
	 /**
	  * メールアドレス
	 */
	private String email;
	/**
	 * お問い合わせ内容
	 */
	private String contact;
	/**
	 * データベースに追加できた場合に表示するメッセージ
	 */
	private String reply;

	/**
	 * Q&Aからお問い合わせ内容をMongoDBに追加するためのメソッド
	 *
	 * @return SUCCESS:お問い合わせ内容の追加成功
	 */
	public String execute(){
		String result = SUCCESS;
		InsertContactDAO dao = new InsertContactDAO();
		boolean res = dao.ContactInsert(user_name, email, contact);
		if (!res){
			result = ERROR;
		}else{
			reply = "お問い合わせを受け付けました、後日emailにてお返事します。";
		}
	return result;
	}

	/**
	 * user_nameを取得するためのメソッド
	 *
	 * @return user_name ユーザー名
	 */
	public String getUser_name() {
		return user_name;
	}
	/**
	 * user_nameを格納するためのメソッド
	 *
	 * @param user_name
	 *            ユーザー名
	 */
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	/**
	 * emailを取得するためのメソッド
	 *
	 * @return email メールアドレス
	 */
	public String getEmail() {
		return email;
	}
	/**
	 * emailを格納するためのメソッド
	 *
	 * @param email
	 *            メールアドレス
	 */
	public void setEmail(String email) {
		this.email = email;
	}
	/**
	 * contactを取得するためのメソッド
	 *
	 * @return contact 問い合わせ内容
	 */
	public String getContact() {
		return contact;
	}
	/**
	 * contactを格納するためのメソッド
	 *
	 * @param contact
	 *            問い合わせ内容
	 */
	public void setContact(String contact) {
		this.contact = contact;
	}
	/**
	 * contactを格納するためのメソッド
	 *
	 * @param contact
	 *            追加成功時メッセージ
	 */
	public String getReply() {
		return reply;
	}
	/**
	 * contactを格納するためのメソッド
	 *
	 * @param contact
	 *            追加成功時メッセージ
	 */
	public void setReply(String reply) {
		this.reply = reply;
	}

}
