/*
 * タイトル：規約画面に遷移するクラス
 * 説明    ：規約画面に遷移する
 *
 * 著作権  ：Copyright(c) 2016 InterNous, Inc.
 * 会社名  ：インターノウス株式会社
 *
 * 変更履歴：
 *
 */
package com.internousdev.rakuraku.action;

import java.sql.SQLException;

import com.opensymphony.xwork2.ActionSupport;
/**規約画面に遷移するクラス
*@author S.iiduka
* @version 1.0
*/
public class GoAgreementAction extends ActionSupport {
	/**
	 *
	 */
	private static final long serialVersionUID = 4319394663017864418L;

	public String execute() throws SQLException {
		return SUCCESS;
	}

}
