/*
 * タイトル：お問い合わせ内容をMongoDBに追加するクラス
 * 説明    ：お問い合わせ内容の追加
 *
 * 著作権  ：Copyright(c) 2016 InterNous, Inc.
 * 会社名  ：インターノウス株式会社
 *
 * 変更履歴：
 *
 */
package com.internousdev.rakuraku.dao;

import com.internousdev.rakuraku.util.MongoDBConnector;
import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;

/**
 * お問い合わせ内容をMongoDBに追加するクラス
 *
 * @author S.iiduka
 * @version 1.0
 *
 */
public class InsertContactDAO {
	public boolean ContactInsert(String user_name , String email , String contact){
		boolean result = false;
		MongoDBConnector con = new MongoDBConnector();
		DB db = con.getConnection();
		DBCollection coll = db.getCollection("contact");
		BasicDBObject input = new BasicDBObject();
		input.put("user_name", user_name);
		input.put("email", email);
		input.put("contact", contact);
		coll.insert(input);
		result = true;
		return result;

	}

}
