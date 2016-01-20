package com.internousdev.rakuraku.action;


import com.opensymphony.xwork2.ActionSupport;

public class GoSignUpAction extends ActionSupport {
	/**
	 *
	 */
	private static final long serialVersionUID = -1742615774490085751L;

		//名前を表します。

		private String UserName;

		//名前(フリガナ)を表します。

		private String UserKanaName;

		//パスワードを表します。

		private String UserPassword;

		//確認パスワードを表します。
	 	private String confirmUserPassword;

	 	//メールアドレスを表します。

	 	private String UserEmail;

	 	//確認用メールアドレスを表します。

	 	private String confirmUserEmail;

	 	//名前登録のエラーメッセージを表します。
	private String errorUserName;

 	//名前(フリガナ)登録のエラーメッセージを表します。

 	private String errorUserKanaName;

 	//パスワード登録のエラーメッセージを表します。

 	private String ErrorUserPassword;

 	//確認パスワード登録のエラーメッセージを表します。

 	private String ErrorconfirmUserPassword;

 	//パスワードと確認パスワードが一致しない場合のエラーメッセージを表します。

 	private String CheckErrorUserPassword;

//バリデーションの実装

 	public void validate() {


        if(UserName == null || UserName.length() == 0){
            addActionError("名前を入力してください。");
        }
        if(UserKanaName == null || UserKanaName.length() == 0){
            addActionError("フリガナを入力してください。");
        }
        if(UserPassword.length() <= 8 && UserPassword.length() >= 16 ) {
            addActionError("8~16文字で入力してください。");
        }

}

}