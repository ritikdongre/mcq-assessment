package com.entities;

public class Result {

	private int id;
	private String test_id;
	private String name;
	private String email;
	private int marks;
	
	
	
	public Result(int id, String test_id, String name, String email, int marks) {
		super();
		this.id = id;
		this.test_id = test_id;
		this.name = name;
		this.email = email;
		this.marks = marks;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTest_id() {
		return test_id;
	}
	public void setTest_id(String test_id) {
		this.test_id = test_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getMarks() {
		return marks;
	}
	public void setMarks(int marks) {
		this.marks = marks;
	}
	
	
	
	
}
