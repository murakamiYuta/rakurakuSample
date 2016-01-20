package com.internousdev.rakuraku.dto;

public class GoEventsDTO {

	/*
	 * イベントID
	 */
	private int id;

	/*
	 * イベント名
	 */
	private String name;

	/*
	 * 価格
	 */
	private float price;

	/*
	 * 詳細
	 */
	private String detail;

	/*
	 * 画像のpath
	 */
	private String img_path;

	/*
	 * 噺家名
	 */
	private String story_teller;

	/*
	 * 開催日
	 */
	private String start_date;

	/*
	 * 場所名
	 */
	private String place;

	/*
	 * 住所
	 */
	private String place_adress;

	/**
	 * @return id
	 */
	public int getId() {
		return id;
	}

	/**
	 * @param id
	 *            セットする id
	 */
	public void setId(int id) {
		this.id = id;
	}

	/**
	 * @return name
	 */
	public String getName() {
		return name;
	}

	/**
	 * @param name
	 *            セットする name
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * @return price
	 */
	public float getPrice() {
		return price;
	}

	/**
	 * @param price
	 *            セットする price
	 */
	public void setPrice(float price) {
		this.price = price;
	}

	/**
	 * @return detail
	 */
	public String getDetail() {
		return detail;
	}

	/**
	 * @param detail
	 *            セットする detail
	 */
	public void setDetail(String detail) {
		this.detail = detail;
	}

	/**
	 * @return img_path
	 */
	public String getImg_path() {
		return img_path;
	}

	/**
	 * @param img_path
	 *            セットする img_path
	 */
	public void setImg_path(String img_path) {
		this.img_path = img_path;
	}

	/**
	 * @return story_teller
	 */
	public String getStory_teller() {
		return story_teller;
	}

	/**
	 * @param story_teller
	 *            セットする story_teller
	 */
	public void setStory_teller(String story_teller) {
		this.story_teller = story_teller;
	}

	/**
	 * @return start_date
	 */
	public String getStart_date() {
		return start_date;
	}

	/**
	 * @param start_date
	 *            セットする start_date
	 */
	public void setStart_date(String start_date) {
		this.start_date = start_date;
	}

	/**
	 * @return place
	 */
	public String getPlace() {
		return place;
	}

	/**
	 * @param place
	 *            セットする place
	 */
	public void setPlace(String place) {
		this.place = place;
	}

	/**
	 * @return place_adress
	 */
	public String getPlace_adress() {
		return place_adress;
	}

	/**
     * @param place_adress セットする place_adress
     */
    public void setPlace_adress(String place_adress) {
        this.place_adress = place_adress;
    }
}

