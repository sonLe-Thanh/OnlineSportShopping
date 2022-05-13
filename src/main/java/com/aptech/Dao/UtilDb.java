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
            String dbURL = "jdbc:mysql://localhost:3306;databaseName=advancedProgramming;user=root;password=dunghoinua";
			try {
				Class.forName("com.mysql.jdbc.Driver");
				connection = DriverManager.getConnection(dbURL);
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
