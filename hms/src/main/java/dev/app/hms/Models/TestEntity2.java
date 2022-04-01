package dev.app.hms.Models;

import javax.persistence.*;

@Entity
@Table(name = "user")
public class TestEntity2 {
	@Id
	private long iduser;
	@Column(name = "is_employee")
	private int is_employee;
	@Column(name = "email")
	private String email;
	@Column(name = "password")
	private String password;
	
	public TestEntity2() {
	}
	public TestEntity2(long iduser, int is_employee, String email, String password) {
		this.iduser = iduser;
		this.is_employee = is_employee;
		this.email = email;
		this.password = email;
	}
	public long getiduser() {
		return iduser;
	}
	public void setiduser(long iduser) {
		this.iduser = iduser;
	}
	public int getis_employee() {
		return is_employee;
	}
	public void setis_employee(int is_employee) {
		this.is_employee = is_employee;
	}
	public String getemail() {
		return email;
	}
	public void seteamil(String email) {
		this.email = email;
	}
	public String getpassword() {
		return password;
	}
	public void setpassword(String password) {
		this.password = password;
	}
}