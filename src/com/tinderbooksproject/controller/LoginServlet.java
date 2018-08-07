package com.tinderbooksproject.controller;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
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
//import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSession;

import com.tinderbooksproject.model.Login;

@WebServlet("/LoginServlet")

public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sEmail = request.getParameter("txtEmailUser");
		String sPassword = request.getParameter("txtPasswordUser");
		
		//response.setContentType("text/html");
		PrintWriter salida = response.getWriter();
		Login objLogin = new Login();
		objLogin.setEmail(sEmail);
		objLogin.setPassword(sPassword);
		
		HttpSession session = request.getSession();
		//salida.println("La ID es: "+ session.getId());
		
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
			Class.forName("com.mysql.cj.jdbc.Driver").getConstructor().newInstance();
			conn = DriverManager.getConnection(url, user, password);
			stmt = conn.createStatement();
			rs = stmt.executeQuery("SELECT * FROM UsuariosTinderBooks WHERE uEmail = '"+ objLogin.getEmail() +"'");

			while(rs.next()) {
				String cEmail = rs.getString("uEmail");
				String cPassword = rs.getString("uPassword");
				//String cName = rs.getString("uFirstName");
				
				if(objLogin.getEmail().equals(cEmail) && objLogin.getPassword().equals(cPassword)) {
					//HttpSession session = request.getSession();
					//session.setAttribute("SessAttrName", cName);
					request.getRequestDispatcher("/Index.jsp").forward(request, response);
				}
				else {
					/*String rEmail = "";
					String rPassword = "";
					request.setAttribute("AttrEmail", rEmail);
					request.setAttribute("AttrPassword", rPassword);*/
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
