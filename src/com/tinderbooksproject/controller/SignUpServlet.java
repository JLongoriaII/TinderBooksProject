package com.tinderbooksproject.controller;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tinderbooksproject.model.InformacionUsuarios;
import com.tinderbooksproject.model.SignUp;

@WebServlet("/SignUpServlet")
@MultipartConfig
public class SignUpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Recuadación de datos que envia el JS
		String sFirstName = request.getParameter("firstName");
		String sLastName = request.getParameter("lastName");
		String sEmail = request.getParameter("email");
		String sPassword = request.getParameter("password");
		String sSex = request.getParameter("sex");
		String fechaString = request.getParameter("birthday");
		SimpleDateFormat objSimpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		Date sFechaNacimiento = null;
		try {
			sFechaNacimiento = (Date) objSimpleDateFormat.parse(fechaString);
		} catch (ParseException e1) {
			e1.printStackTrace();
		}
		String sFechaFinal = objSimpleDateFormat.format(sFechaNacimiento);
		
		//Objeto SignUp para el POJO
		SignUp objSignUp = new SignUp();
		objSignUp.setEmail(sEmail);
		objSignUp.setFirstName(sFirstName);
		objSignUp.setLastName(sLastName);
		objSignUp.setPassword(sPassword);
		objSignUp.setBirthDate(sFechaFinal);
		objSignUp.setGender(sSex);
		
		InformacionUsuarios objInfo = new InformacionUsuarios();
		objInfo.setDescripcion("");
		objInfo.setEdad("");
		objInfo.setNacionalidad("");
		objInfo.setCiudad("");
		objInfo.setAcademica("");
		
		//Crea el objeto Properties, y llama al archivo y adquiere sus attributos
		PrintWriter salida = response.getWriter();
		Properties props = new Properties();
		String propsFile = "config.properties";
		InputStream input = null;
		
		input = getClass().getClassLoader().getResourceAsStream(propsFile);
		props.load(input);
		
		String url = props.getProperty("url");
		String user = props.getProperty("user");
		String password = props.getProperty("password");
		
		//Crea los objetos para la conexion de la base de datos.
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
			conn = DriverManager.getConnection(url, user, password);
			stmt = conn.createStatement();
			rs = stmt.executeQuery("SELECT * FROM UsuariosTinderBooks WHERE uEmail = '"+ objSignUp.getEmail() +"'");
			
			if(rs.next()) {
				salida.println("Esta cuenta ya esta registrada");
			}else {
				stmt.executeUpdate("INSERT INTO UsuariosTinderBooks(uEmail, uPassword, uFirstName,"
						+ " uLastName, uBirthDate, uGender, uDescription, uAge, uNationality, uCity, uAcademic) VALUES('"+objSignUp.getEmail()+"','"+objSignUp.getPassword()+
						"','"+objSignUp.getFirstName()+"','"+objSignUp.getLastName()+"','"+objSignUp.getBirthDate()+"','"+objSignUp.getGender()+
						"','"+objInfo.getDescripcion()+"','"+objInfo.getEdad()+"','"+objInfo.getNacionalidad()+
						"','"+objInfo.getCiudad()+"','"+objInfo.getAcademica()+"')");
				
				request.getRequestDispatcher("/Principal").forward(request, response);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
			
		}finally {
			try {
				rs.close();
				stmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		salida.close();
	}
}
