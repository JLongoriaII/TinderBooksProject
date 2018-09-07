package com.tinderbooksproject.controller;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/EditarInfoServlet")
public class EditarInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Properties props = new Properties();
		String propsFile = "config.properties";
		InputStream input = null;
		
		input = getClass().getClassLoader().getResourceAsStream(propsFile);
		props.load(input);
		
		String url = props.getProperty("url");
		String user = props.getProperty("user");
		String password = props.getProperty("password");
		
		Connection conn = null;
		Statement stmt = null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
			conn = DriverManager.getConnection(url, user, password);
			stmt = conn.createStatement();
			stmt.executeQuery("SELECT * FROM usuariostinderbooks");
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			
		}
	}

}
