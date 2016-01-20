package com.internousdev.rakuraku.action;

import java.sql.SQLException;

import com.opensymphony.xwork2.ActionSupport;



public class GoEventDetailsAction extends ActionSupport {

	private int id;


	public String execute() throws SQLException {
		System.out.println("このイベントのidは"+id);

		return SUCCESS;
	}


	/**
	 * @return eventId
	 */
	public int getId() {
		return id;
	}


	/**
	 * @param eventId セットする eventId
	 */
	public void setId(int id) {
		this.id = id;
	}




}
