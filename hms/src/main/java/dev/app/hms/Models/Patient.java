package dev.app.hms.Models;

import javax.persistence.*;

@Entity
@Table(name = "patient")
public class Patient {
	@Id
	@GeneratedValue
	private long idpatient;
	@Column(name = "first_name")
	private String first_name;
	@Column(name = "last_name")
	private String last_name;
	@Column(name = "date_of_birth")
	private String date_of_birth;
	@Column(name = "phone_number")
	private String phone_number;
	@Column(name = "address")
	private String address;
	@Column(name = "city")
	private String city;

	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name ="user", referencedColumnName = "iduser")
	private TestEntity2 user;
	
	
	public Patient() {
		}
	public Patient(long idpatient, String first_name, String last_name, String date_of_birth, String phone_number, String address, String city) {
		this.idpatient = idpatient;
		this.first_name = first_name;
		this.last_name = last_name;
		this.date_of_birth = date_of_birth;
		this.phone_number = phone_number;
		this.address = address;
		this.city = city;

		
	}
	public long getidpatient() {
		return idpatient;
	}
	public void setidpatient(long idpatient) {
		this.idpatient = idpatient;
	}
	public String getfirst_name() {
		return first_name;
	}
	public void setfirst_name(String first_name) {
		this.first_name = first_name;
	}
	public String getlast_name() {
		return last_name;
	}
	public void setlast_name(String last_name) {
		this.last_name = last_name;
	}
	public String getdate_of_birth() {
		return date_of_birth;
	}
	public void setdate_of_birth(String date_of_birth) {
		this.date_of_birth = date_of_birth;
	}
	public String getphone_number() {
		return date_of_birth;
	}
	public void setphone_number(String phone_number) {
		this.phone_number = phone_number;
	}
	public String getadres() {
		return address;
	}
	public void setadres(String address) {
		this.address = address;
	}
	public String getcity() {
		return city;
	}
	public void setcity(String city) {
		this.city = city;
	}

}