package com.internousdev.rakuraku.action;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Map;
import java.util.TimeZone;
import java.util.UUID;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.rakuraku.dao.GoChangesConfirmationDAO;
import com.opensymphony.xwork2.ActionSupport;

/**
 * ユーザー情報をデータベースに更新する為のメソッド
 * @author S.Sugimoto
 * @version 1.1
 * @since1.0
 */
public class GoChangeCompletionAction extends ActionSupport implements SessionAware{

	/**
	 * シリアルID
	 */
	private static final long serialVersionUID = 7278440492233932498L;

	/**
	 * セッション
	 */
	private Map<String, Object> session;

	private String token;

	/**
	 * 更新するユーザー情報をDBに入れ込む為のメソッド(更新日の操作も含む)
	 */
	public String execute(){
		String result = ERROR;

		int id = 1;
		String name = (String) session.get("updateName");
		String name_kana = (String) session.get("updateName_kana");
		String password = (String) session.get("updatePassword");
		String email = (String) session.get("updateNewEmail");
		int card_num = (int) session.get("updateCard_num");

		UUID tk = UUID.randomUUID();
		String tk2 = tk.toString();
		token = tk2;

		Calendar calendar = Calendar.getInstance();
		TimeZone tz = TimeZone.getTimeZone("Asia/Tokyo");
		calendar.setTimeZone(tz);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd kk:mm:ss");
		String updated_at = sdf.format(calendar.getTime());

		GoChangesConfirmationDAO dao = new GoChangesConfirmationDAO();

		if(email == null){
			if(dao.selectEmail(id)){
				email = dao.getNowEmail();
			}else{
				return ERROR;
			}
		}

		int count = dao.updateBase(id, email, password, name, name_kana, card_num, token, updated_at);

		if(1 <= count){
			result = SUCCESS;
		}
		session.remove("updateName");
		session.remove("upfdateName_kana");
		session.remove("updatePassword");
		session.remove("updateNewEmail");
		session.remove("updateCard_num");

		return result;
	}

	/**
	 * セッションを格納する為のメソッド
	 * @param session
	 */
	public void setSession(Map<String, Object> session){
		this.session = session;
	}


}
