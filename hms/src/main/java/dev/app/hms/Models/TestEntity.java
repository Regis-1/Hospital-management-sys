package dev.app.hms.Models;

import javax.persistence.*;

@Entity
@Table(name = "testtab")
public class TestEntity {
	@Id
	private long id;
	@Column(name = "text")
	private String text;
	
	public TestEntity() {
	}
	public TestEntity(long id, String text) {
		this.id = id;
		this.text = text;
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
}