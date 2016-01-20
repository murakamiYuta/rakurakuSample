package com.internousdev.rakuraku.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.internousdev.rakuraku.dto.GoEventsDTO;
import com.internousdev.rakuraku.util.DBConnector;

public class GoEventsDAO {

    private ArrayList<GoEventsDTO> eventsList = new ArrayList<GoEventsDTO>();

    public boolean Events() {
        boolean result = false;
        Connection conn = DBConnector.getConnection();
        String sql = "select name,img_path,detail from event";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                GoEventsDTO dto = new GoEventsDTO();
                dto.setName(rs.getString("name"));
                dto.setImg_path(rs.getString("img_path"));
                dto.setDetail(rs.getString("detail"));
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
    public ArrayList<GoEventsDTO> getEventsList() {
        return eventsList;
    }

    /**
     * @param eventsList セットする eventsList
     */
    public void setEventsList(ArrayList<GoEventsDTO> eventsList) {
        this.eventsList = eventsList;
    }



}
