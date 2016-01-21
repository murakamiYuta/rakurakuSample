package com.internousdev.rakuraku.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import com.internousdev.rakuraku.dto.GoTopPageDTO;
import com.internousdev.rakuraku.util.DBConnector;

public class GoTopPageDAO {



	private int pageNumber;

	private int listLast;
	private int listHead;



	private ArrayList<GoTopPageDTO> eventsList = new ArrayList<GoTopPageDTO>();

	public boolean topPage(int pageNumber) {
		boolean result = false;
		Connection conn = DBConnector.getConnection();
		String sql = "SELECT id,name,img_path,start_date FROM event WHERE start_date >= DATE(NOW()) ORDER BY start_date LIMIT ?,6";

		System.out.println("DAOまできてますよ。"+pageNumber);

		int listHead =(pageNumber*6)-6;

		System.out.println("listHead"+listHead);
		System.out.println("listLast"+listLast);

		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, listHead);

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				GoTopPageDTO dto = new GoTopPageDTO();
				dto.setId(rs.getInt("id"));
				dto.setName(rs.getString("name"));
				dto.setImg_path(rs.getString("img_path"));
				SimpleDateFormat format = new SimpleDateFormat("yyyy'年'MM'月'dd'日'");
				String formatDate = format.format(rs.getDate("start_date"));
				dto.setStart_date(formatDate);
				eventsList.add(dto);
				result = true;
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return result;

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





	public int getListLast() {
		return listLast;
	}





	public void setListLast(int listLast) {
		this.listLast = listLast;
	}





	public int getListHead() {
		return listHead;
	}





	public void setListHead(int listHead) {
		this.listHead = listHead;
	}





}