package dev.app.hms.Models;

import javax.persistence.*;

@Entity
@Table(name = "block")
public class TestEntity2 {
	@Id
	private long idblock;
	@Column(name = "name")
	private String name;
	
	public TestEntity2() {
	}
	public TestEntity2(long idblock, String name) {
		this.idblock = idblock;
		this.name = name;
	}
	public long getidblock() {
		return idblock;
	}
	public void setidblock(long idblock) {
		this.idblock = idblock;
	}
	public String getname() {
		return name;
	}
	public void setname(String name) {
		this.name = name;
	}
}