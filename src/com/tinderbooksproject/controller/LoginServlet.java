package com.tinderbooksproject.controller;

import java.io.IOException;
import java.io.InputStream;
//import java.io.PrintWriter;
//import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tinderbooksproject.model.Login;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sEmailLogin = request.getParameter("txtEmailUser");
		String sPasswordLogin = request.getParameter("txtPasswordUser");
		
		//response.setContentType("text/html");
		//PrintWriter salida = response.getWriter();
		
		//Se crea el objeto POJO
		Login objLogin = new Login();
		objLogin.setEmail(sEmailLogin);
		objLogin.setPassword(sPasswordLogin);
	
		//Crea el objeto Properties
		Properties props = new Properties();
		InputStream input;
		String propsFile = "config.properties";
		
		input = getClass().getClassLoader().getResourceAsStream(propsFile);
		props.load(input);
		
		String url = props.getProperty("url");
		String user = props.getProperty("user");
		String password = props.getProperty("password");
		
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
			conn = DriverManager.getConnection(url, user, password);
			stmt = conn.createStatement();
			rs = stmt.executeQuery("SELECT * FROM UsuariosTinderBooks WHERE uEmail = '"+ objLogin.getEmail() +"'");

			while(rs.next()) {
				String cEmail = rs.getString("uEmail");
				String cPassword = rs.getString("uPassword");
				String cName = rs.getString("uFirstName");
				
				if(objLogin.getEmail().equals(cEmail) && objLogin.getPassword().equals(cPassword)) {
					HttpSession objSession = request.getSession();
					objSession.setAttribute("SessAttrName", cName);
					//salida.println("Esta funcionando bien");
					//response.sendRedirect(request.getContextPath() + "/WEB-INF/Index.jsp");
					request.getRequestDispatcher("/WEB-INF/classes/Index.jsp").forward(request, response);
				}
				else {
					request.getRequestDispatcher("/Principal.jsp").forward(request, response);
				}
			}
			
		}catch(Exception e) {
			e.printStackTrace();
			
		}finally {
			try {
				rs.close();
				stmt.close();
				conn.close();
			} catch (SQLException sqle) {
				sqle.printStackTrace();
			}
		}
	}

}
