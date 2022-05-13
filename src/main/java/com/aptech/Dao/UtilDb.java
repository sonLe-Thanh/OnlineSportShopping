package com.aptech.Dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class UtilDb {

	private Connection connection;

	public UtilDb(Connection conection) {
		this.connection = conection;
	}

	UtilDb() {
	}

	public Connection getConnection() {
		return connection;
	}

	public void setConnection(Connection connection) {
		this.connection = connection;
	}

	public void connect() {
		if (connection == null) {
			try {
				Class.forName("com.mysql.jdbc.Driver");
				connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/advancedProgramming",
                        "root","dunghoinua123");
			} catch (Exception e) {
				System.out.println(e.getMessage());
			}
		}
	}

	public void disConnect() {
		if (connection != null) {
			try {
				connection.close();
			} catch (Exception e) {
				System.out.println(e.getMessage());
			}
		}
	}

}
