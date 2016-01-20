package com.internousdev.rakuraku.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.rakuraku.dao.GoChangesConfirmationDAO;
import com.opensymphony.xwork2.ActionSupport;

/**
 * 登録内容変更画面のヴァリデーションを行うためのクラス
 * @author S.Sugimoto
 * @version 1.1
 * @since 1.0
 */
public class GoChangesConfirmationAction extends ActionSupport implements SessionAware{

	/**
	 * シリアルID
	 */
	private static final long serialVersionUID = 1596683595737992285L;

	/**
	 * セッション
	 */
	private Map<String, Object> session;

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
	 * パスワード確認用
	 */
	private String confirm_password;

	/**
	 * 現在のメールアドレス
	 */
	private String nowEmail;

	/**
	 * 新しいメールアドレス
	 */
	private String email;

	/**
	 * メールアドレス確認用
	 */
	private String confirm_email;

	/**
	 * クレジットカード番号
	 */
	private int card_num;

	/**
	 *
	 */
	private String errorName;

	/**
	 *
	 */
	private String errorName_kana;

	/**
	 *
	 */
	private String errorPassword;


	/**
	 * 確認パスワードのエラーメッセージ
	 */
	private String errorConfirm_password;

	/**
	 *
	 */
	private String errorEmail;

	/**
	 * 確認メールアドレスのエラーメッセージ
	 */
	private String errorConfirm_email;

	/**
	 * メールアドレスの重複エラーメッセージ
	 */
	private String errorNowEmail;

	/**
	 * クレジットカード番号の重複エラーメッセージ
	 */
	private String errorNowCard_num;


	/**
	 * 入力内容を確認し、問題なければsセッションで値を持たせる為のメソッド
	 * @return result 入力内容に誤りがなければSUCCESS、あればERROR
	 */
	public String execute(){
		String result = validateField();

		if(result.equals(SUCCESS)){
			System.out.println(result);
			setSessionFieldValue();
		}
		return result;
	}
	/**
	 * ヴァリデーションする為のメソッド
	 * @return result 入力内容に誤りがなければSUCCESS、あればERROR
	 */
	private String validateField(){
		int id = 1;

		if(!(name.matches(".{1,50}")) || name.matches("^.*(?= |　).*$")){
			errorName =getText("名前は50文字まで入力できます");
			return ERROR;
		}

		if(!(name_kana.matches(".{1,50}")) || !(name_kana.matches("^[ァ-ヶー]+$"))){
			errorName_kana = getText("フリガナ50文字まで入力できます");
			return ERROR;
		}

		if(password.length() < 8 || password.length() > 16 || !(password.matches("[0-9a-z]+"))){
			errorPassword = getText("8～16文字の半角英数を組み合わせて下さい");
			return ERROR;
		}

		if(!confirm_password.equals(password)){
			errorConfirm_password = getText("パスワードが一致していません");
			return ERROR;
		}

		if(!(email.matches(".{1,100}") ||  email.matches("^.*(?= |　).*$"))){
			errorEmail = getText("メールアドレスは100文字以内の入力をお願いします");
			return ERROR;
		}
		GoChangesConfirmationDAO dao = new GoChangesConfirmationDAO();



		System.out.println(dao);
		dao.selectEmail(id);
		nowEmail = dao.getNowEmail();

		return SUCCESS;
	}


	/**
	 * 入力内容をセッションに格納する為のメソッド
	 */
	private void setSessionFieldValue(){
		session.put("updateName", name);
		session.put("updateName_kana", name_kana);
		session.put("updatePassword", password);
		session.put("updateNewEmail", email);
		session.put("updateCard_num", card_num);
	}

	/**
	 * セッションを取得する為のメソッド
	 * @return session
	 */
	public Map<String, Object> getSession() {
		return session;
	}

	/**
	 * セッションを格納する為のメソッド
	 * @param session
	 */
	public void setSession(Map<String, Object> session) {
		this.session = session;
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
	 * 確認パスワードを取得する為のメソッド
	 * @return confirm_password
	 */
	public String getConfirm_password() {
		return confirm_password;
	}

	/**
	 * 確認パスワードを格納する為のメソッド
	 * @param confirm_password
	 */
	public void setConfirm_password(String confirm_password) {
		this.confirm_password = confirm_password;
	}

	/**
	 * 現在のメールアドレスを取得する為のメソッド
	 * @return nowEmail
	 */
	public String getNowEmail() {
		return nowEmail;
	}

	/**
	 * 現在のメールアドレスを格納する為のメソッド
	 * @param nowEmail
	 */
	public void setNowEmail(String nowEmail) {
		this.nowEmail = nowEmail;
	}

	/**
	 * 新しいメールアドレスを取得する為のメソッド
	 * @return newEmail
	 */
	public String getEmail() {
		return email;
	}

	/**
	 * 新しいメールアドレスを格納する為のメソッド
	 * @param newEmail
	 */
	public void setEmail(String email) {
		this.email = email;
	}

	/**
	 * 確認メールアドレスを取得する為のメソッド
	 * @return confirm_email
	 */
	public Object getConfirm_email() {
		return confirm_email;
	}

	/**
	 * 確認メールアドレスを格納する為のメソッド
	 * @param confirm_email
	 */
	public void setConfirm_email(String confirm_email) {
		this.confirm_email = confirm_email;
	}

	/**
	 * クレジットカード番号を取得する為のメソッド
	 * @return card_num
	 */
	public int getCard_num() {
		return card_num;
	}

	/**
	 * クレジットカード番号を格納する為のメソッド
	 * @param card_num
	 */
	public void setCard_num(int card_num) {
		this.card_num = card_num;
	}

	/**
	 * @return errorName
	 */
	public String getErrorName() {
		return errorName;
	}
	/**
	 * @param errorName セットする errorName
	 */
	public void setErrorName(String errorName) {
		this.errorName = errorName;
	}

	/**
	 * @return errorName_kana
	 */
	public String getErrorName_kana() {
		return errorName_kana;
	}
	/**
	 * @param errorName_kana セットする errorName_kana
	 */
	public void setErrorName_kana(String errorName_kana) {
		this.errorName_kana = errorName_kana;
	}

	/**
	 * @return errorPasswordLength
	 */
	public String getErrorPassword() {
		return errorPassword;
	}
	/**
	 * @param errorPasswordLength セットする errorPasswordLength
	 */
	public void setErrorPassword(String errorPassword) {
		this.errorPassword = errorPassword;
	}


	/**
	 * @return errorConfirm_password
	 */
	public String getErrorConfirm_password() {
		return errorConfirm_password;
	}

	/**
	 * @param errorConfirm_password セットする errorConfirm_password
	 */
	public void setErrorConfirm_password(String errorConfirm_password) {
		this.errorConfirm_password = errorConfirm_password;
	}
	/**
	 * @return errorEmail
	 */
	public String getErrorEmail() {
		return errorEmail;
	}
	/**
	 * @param errorEmail セットする errorEmail
	 */
	public void setErrorEmail(String errorEmail) {
		this.errorEmail = errorEmail;
	}


}
