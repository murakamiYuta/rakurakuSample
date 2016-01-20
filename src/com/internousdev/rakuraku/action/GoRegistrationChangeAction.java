package com.internousdev.rakuraku.action;

import java.sql.SQLException;

import com.internousdev.rakuraku.dao.GoRegistrationChangeDAO;
import com.internousdev.rakuraku.dto.GoRegistrationChangeDTO;
import com.opensymphony.xwork2.ActionSupport;

/**
 * 登録内容変更画面へ遷移するためのクラス
 * @author S.Sugimoto
 * @version 1.1
 * @since 1.0
 */
public class GoRegistrationChangeAction extends ActionSupport {

	/**
	 * シリアルID
	 */
	private static final long serialVersionUID = -5537553665933426531L;

	/**
	 * 名前
	 */
	private String name;

	/**
	 * フリガナ
	 */
	private String name_kana;

	/**
	 * パスワード
	 */
	private String password;

	/**
	 * メールアドレス
	 */
	private String email;

	/**
	 * クレジットカード番号
	 */
	private int card_num;

	/**
	 *登録内容変更画面へ遷移するためのメソッド
	 */
	public String execute() throws SQLException {
		int id = 1;
		GoRegistrationChangeDAO dao = new GoRegistrationChangeDAO();
		GoRegistrationChangeDTO dto = new GoRegistrationChangeDTO();
		if(!dao.registrationChange(id,dto)){
			return ERROR;
		}

		name = dto.getName();
		name_kana = dto.getName_kana();
		password = dto.getPassword();
		email = dto.getEmail();
		card_num = dto.getCard_num();

		return SUCCESS;
	}

	/**
	 * 名前を取得する為のメソッド
	 * @return name
	 */
	public String getName() {
		return name;
	}

	/**
	 * 名前を格納する為のメソッド
	 * @param name
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * フリガナを取得する為のメソッド
	 * @return name_kana
	 */
	public String getName_kana() {
		return name_kana;
	}

	/**
	 * フリガナを格納する為のメソッド
	 * @param name_kana
	 */
	public void setName_kana(String name_kana) {
		this.name_kana = name_kana;
	}

	/**
	 * パスワードを取得する為のメソッド
	 * @return password
	 */
	public String getPassword() {
		return password;
	}

	/**
	 * パスワードを格納する為のメソッド
	 * @param password
	 */
	public void setPassword(String password) {
		this.password = password;
	}

	/**
	 * エールアドレスを取得する為のメソッド
	 * @return email
	 */
	public String getEmail() {
		return email;
	}

	/**
	 * メールアドレスを格納する為のメソッド
	 * @param email
	 */
	public void setEmail(String email) {
		this.email = email;
	}

	/**
	 * クレジットカード番号を取得する為のメソッド
	 * @return card_num
	 */
	public int getCard_num() {
		return card_num;
	}

	/**
	 * クレジットカードを格納する為のメソッド
	 * @param card_num
	 */
	public void setCard_num(int card_num) {
		this.card_num = card_num;
	}

}
