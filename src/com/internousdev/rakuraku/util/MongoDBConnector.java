package com.internousdev.rakuraku.util;

import java.net.UnknownHostException;

import com.mongodb.DB;
import com.mongodb.MongoClient;

/**
 * MongoDBのpizza_seijinというデータベースに接続する為のクラス
 * @author S.iiduka
 * @version 1.1
 * @since 1.0
 */
public class MongoDBConnector {

	/**
	 * モンゴクライアント
	 */
	private MongoClient client = null;

	/**
	 * 指定したデータベースへの接続情報を取得するメソッド
	 * @return DB 指定したデータベースへの接続情報
	 */
	public DB getConnection() {
		DB db = null;
		try {
			client = new MongoClient("localhost", 27017);
			db = client.getDB("rakugo");
		} catch (UnknownHostException e) {
			e.printStackTrace();
		}
		return db;
	}

	/**
	 * openしたクライアントをクローズするためのメソッド
	 */
	public void closeConnection() {
		client.close();
	}
}
