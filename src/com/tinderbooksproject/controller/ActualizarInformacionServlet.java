package com.tinderbooksproject.controller;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
//import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tinderbooksproject.model.InformacionUsuarios;

/**
 * Servlet implementation class ActualizarInformacionServlet
 */
@WebServlet("/ActualizarInformacionServlet")
@MultipartConfig
public class ActualizarInformacionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sDescripcion = request.getParameter("descripcion");
		String sEdad = request.getParameter("edad");
		String sNacionalidad = request.getParameter("nacionalidad");
		String sCiudad = request.getParameter("ciudad");
		String sAcademica = request.getParameter("academica");
		
		InformacionUsuarios objInfo = new InformacionUsuarios();
		objInfo.setDescripcion(sDescripcion);
		objInfo.setEdad(sEdad);
		objInfo.setNacionalidad(sNacionalidad);
		objInfo.setCiudad(sCiudad);
		objInfo.setAcademica(sAcademica);
		
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
		//ResultSet rs = null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
			conn = DriverManager.getConnection(url, user, password);
			stmt = conn.createStatement();
			stmt.executeUpdate("INSERT INTO usuariostinderbooks(uDescripcion, uEdad, uNacionalidad, "
					+ "uCiudad, uAcademica) VALUES('"+objInfo.getDescripcion()+"','"+objInfo.getEdad()+"',"
					+ "'"+objInfo.getNacionalidad()+"','"+objInfo.getCiudad()+"','"+objInfo.getAcademica()+"')");
			
			request.getRequestDispatcher("/WEB-INF/classes/PerfilUsuario.jsp").forward(request, response);
			
		}catch(Exception e) {
			e.printStackTrace();
			
		}finally {
			try {
			//	rs.close();
				stmt.close();
				conn.close();
				
			} catch (SQLException e) {
				e.printStackTrace();
				
			}			
		}
	}
}
