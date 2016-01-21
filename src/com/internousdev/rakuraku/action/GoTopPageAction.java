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

	private int previous;
	private int elementBefore;

	private int pageButton1;
	private int pageButton2;
	private int pageButton3;
	private int pageButton4;
	private int pageButton5;


	/**
	 * レスポンス
	 */
	private HttpServletResponse response;


	private ArrayList<GoTopPageDTO> eventsList = new ArrayList<GoTopPageDTO>();
	private ArrayList<GoTopPageDTO> elementCountAfter = new ArrayList<GoTopPageDTO>();

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
			elementCountAfter = dao.getElementCountAfter();
			setElementBefore(getPrevious());
			result=SUCCESS;
		}
		setPageButton1(getPageNumber()-2);
		setPageButton2(getPageNumber()-1);
		setPageButton3(getPageNumber());
		setPageButton4(getPageNumber()+1);
		setPageButton5(getPageNumber()+2);

		return result;
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


	/**
	 * @return eventsList
	 */
	public ArrayList<GoTopPageDTO> getEventsList() {
		return eventsList;
	}


	/**
	 * @param eventsList セットする eventsList
	 */
	public void setEventsList(ArrayList<GoTopPageDTO> eventsList) {
		this.eventsList = eventsList;
	}


	/**
	 * @return elementCountAfter
	 */
	public ArrayList<GoTopPageDTO> getElementCountAfter() {
		return elementCountAfter;
	}


	/**
	 * @param elementCountAfter セットする elementCountAfter
	 */
	public void setElementCountAfter(ArrayList<GoTopPageDTO> elementCountAfter) {
		this.elementCountAfter = elementCountAfter;
	}


	/**
	 * @return elementBefore
	 */
	public int getElementBefore() {
		return elementBefore;
	}


	/**
	 * @param elementBefore セットする elementBefore
	 */
	public void setElementBefore(int elementBefore) {
		this.elementBefore = elementBefore;
	}


	/**
	 * @return previous
	 */
	public int getPrevious() {
		return previous;
	}


	/**
	 * @param previous セットする previous
	 */
	public void setPrevious(int previous) {
		this.previous = previous;
	}



	/**
	 * @return pageButton1
	 */
	public int getPageButton1() {
		return pageButton1;
	}



	/**
	 * @param pageButton1 セットする pageButton1
	 */
	public void setPageButton1(int pageButton1) {
		this.pageButton1 = pageButton1;
	}



	/**
	 * @return pageButton2
	 */
	public int getPageButton2() {
		return pageButton2;
	}



	/**
	 * @param pageButton2 セットする pageButton2
	 */
	public void setPageButton2(int pageButton2) {
		this.pageButton2 = pageButton2;
	}



	/**
	 * @return pageButton3
	 */
	public int getPageButton3() {
		return pageButton3;
	}



	/**
	 * @param pageButton3 セットする pageButton3
	 */
	public void setPageButton3(int pageButton3) {
		this.pageButton3 = pageButton3;
	}



	/**
	 * @return pageButton4
	 */
	public int getPageButton4() {
		return pageButton4;
	}



	/**
	 * @param pageButton4 セットする pageButton4
	 */
	public void setPageButton4(int pageButton4) {
		this.pageButton4 = pageButton4;
	}



	/**
	 * @return pageButton5
	 */
	public int getPageButton5() {
		return pageButton5;
	}



	/**
	 * @param pageButton5 セットする pageButton5
	 */
	public void setPageButton5(int pageButton5) {
		this.pageButton5 = pageButton5;
	}








}