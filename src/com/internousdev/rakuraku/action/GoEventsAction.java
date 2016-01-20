package com.internousdev.rakuraku.action;

import java.sql.SQLException;
import java.util.ArrayList;

import com.internousdev.rakuraku.dao.GoEventsDAO;
import com.internousdev.rakuraku.dto.GoEventsDTO;

import com.opensymphony.xwork2.ActionSupport;

public class GoEventsAction extends ActionSupport {
    private String events_name;
    private String story_teller;
    private String year;
    private String month;
    private String pref_id;



    public String getEvents_name() {
        return events_name;
    }

    public void setEvents_name(String events_name) {
        this.events_name = events_name;
    }

    public String getStory_teller() {
        return story_teller;
    }

    public void setStory_teller(String story_teller) {
        this.story_teller = story_teller;
    }

    public String getYear() {
        return year;
    }

    public void setYear(String year) {
        this.year = year;
    }

    public String getMonth() {
        return month;
    }

    public void setMonth(String month) {
        this.month = month;
    }

    public String getPref_id() {
        return pref_id;
    }

    public void setPref_id(String pref_id) {
        this.pref_id = pref_id;
    }

    private ArrayList<GoEventsDTO> eventsList = new ArrayList<GoEventsDTO>();


    public String execute() throws SQLException {
        String result = ERROR;

        System.out.println(events_name);
        System.out.println(story_teller);
        System.out.println(year);
        System.out.println(month);
        System.out.println(pref_id);

        GoEventsDAO dao = new GoEventsDAO();

        if (dao.Events()) {
            eventsList = dao.getEventsList();
            result=SUCCESS;
        }
        return result;
    }

    public ArrayList<GoEventsDTO> getEventsList() {
        return eventsList;
    }

    public void setEventsList(ArrayList<GoEventsDTO> eventsList) {
        this.eventsList = eventsList;
    }




}
