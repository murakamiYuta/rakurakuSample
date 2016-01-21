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

	private int previous;
	private int beforePage;



	private ArrayList<GoTopPageDTO> eventsList = new ArrayList<GoTopPageDTO>();
	private ArrayList<GoTopPageDTO> elementCountAfter = new ArrayList<GoTopPageDTO>();

	public boolean topPage(int pageNumber) {
		boolean result = false;
		Connection conn = DBConnector.getConnection();
		String sql = "SELECT id,name,img_path,start_date FROM event WHERE start_date >= DATE(NOW()) ORDER BY start_date LIMIT ?,13";

		System.out.println("DAOまできてますよ。"+pageNumber);

		beforePage=pageNumber*6;
		previous =beforePage-6;

		System.out.println("listHead"+previous);

		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, previous);

			ResultSet rs = ps.executeQuery();
			int i = 0;
			while (rs.next()) {
				GoTopPageDTO dto = new GoTopPageDTO();
				dto.setId(rs.getInt("id"));
				dto.setName(rs.getString("name"));
				dto.setImg_path(rs.getString("img_path"));
				SimpleDateFormat format = new SimpleDateFormat("yyyy'年'MM'月'dd'日'");
				String formatDate = format.format(rs.getDate("start_date"));
				dto.setStart_date(formatDate);
				i++;
				if(i<=6){
					elementCountAfter.add(dto);
					eventsList.add(dto);
				}else{
					elementCountAfter.add(dto);
				}
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
	 * @return beforePage
	 */
	public int getBeforePage() {
		return beforePage;
	}

	/**
	 * @param beforePage セットする beforePage
	 */
	public void setBeforePage(int beforePage) {
		this.beforePage = beforePage;
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








}