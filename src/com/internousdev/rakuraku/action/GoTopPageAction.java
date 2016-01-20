package com.internousdev.rakuraku.action;

import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;

import com.internousdev.rakuraku.dao.GoTopPageDAO;
import com.internousdev.rakuraku.dto.GoTopPageDTO;
import com.opensymphony.xwork2.ActionSupport;

public class GoTopPageAction extends ActionSupport implements ServletResponseAware,ServletRequestAware {
	/**
	 *
	 */
	private static final long serialVersionUID = -5298332223878290894L;


	/**
	 * リクエスト
	 */
	private HttpServletRequest request;

	private int pageNumber;


	/**
	 * レスポンス
	 */
	private HttpServletResponse response;



	private ArrayList<GoTopPageDTO> eventsList = new ArrayList<GoTopPageDTO>();

	public String execute() throws SQLException {
		String result = ERROR;
        System.out.println(request.getParameter("number"));
        String pram=request.getParameter("number");
        if(pram==null||pram.length()==0){
        	pageNumber=1;
        }else {
			try {
				pageNumber=Integer.parseInt(pram);
			} catch (NumberFormatException e) {
				pageNumber = 1;
			}
		}
        System.out.println("ページ数の設定はできてる"+pageNumber);
		GoTopPageDAO dao = new GoTopPageDAO();

		if (dao.topPage(pageNumber)) {
			eventsList = dao.getEventsList();
			result=SUCCESS;
		}
		return result;
	}


	public ArrayList<GoTopPageDTO> getEventsList() {
		return eventsList;
	}

	public void setEventsList(ArrayList<GoTopPageDTO> eventsList) {
		this.eventsList = eventsList;
	}

	/**
	 * リクエスト格納メソッド
	 * @param request リクエスト
	 */
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}
	/**
	 * レスポンス格納メソッド
	 * @param response レスポンス
	 */
	public void setServletResponse(HttpServletResponse response) {
		this.response = response;
	}
	/**
	 * リクエスト取得メソッド
	 * @return request リクエスト
	 */
	public HttpServletRequest getRequest() {
		return request;
	}
	/**
	 * レスポンス取得メソッド
	 * @return response レスポンス
	 */
	public HttpServletResponse getResponse() {
		return response;
	}


	/**
	 * @return pageNumber
	 */
	public int getPageNumber() {
		return pageNumber;
	}


	/**
	 * @param pageNumber セットする pageNumber
	 */
	public void setPageNumber(int pageNumber) {
		this.pageNumber = pageNumber;
	}



}