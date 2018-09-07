package com.tinderbooksproject.model;

public class SignUp {
	private String pEmail;
	private String pPassword;
	private String pFirstName;
	private String pLastName;
	private String pBirthDate;
	private String pGender;
	
	public SignUp() {
	}
	
	public String getEmail() {
		return pEmail;
	}
	
	public void setEmail(String pEmail) {
		this.pEmail = pEmail;
	}
	
	public String getPassword() {
		return pPassword;
	}
	
	public void setPassword(String pPassword) {
		this.pPassword = pPassword;
	}
	
	public String getFirstName() {
		return pFirstName;
	}
	
	public void setFirstName(String pFirstName) {
		this.pFirstName = pFirstName;
	}
	
	public String getLastName() {
		return pLastName;
	}
	
	public void setLastName(String pLastName) {
		this.pLastName = pLastName;
	}
	
	public String getBirthDate() {
		return pBirthDate;
	}
	
	public void setBirthDate(String pBirthDate) {
		this.pBirthDate = pBirthDate;
	}
	
	public String getGender() {
		return pGender;
	}
	
	public void setGender(String pGender) {
		this.pGender = pGender;
	}
	
}
