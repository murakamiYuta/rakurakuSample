package com.internousdev.rakuraku.action;

import java.sql.SQLException;

import com.opensymphony.xwork2.ActionSupport;



public class GoEventDetailsAction extends ActionSupport {

	/**
	 *
	 */
	private static final long serialVersionUID = 5934831373036939068L;
	private int id;


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String execute() throws SQLException {
		System.out.println("このイベントのidは"+id);

		return SUCCESS;
	}








}
