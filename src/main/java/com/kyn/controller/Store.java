package com.kyn.controller;

import java.util.Arrays;

public class Store {
	
	String name;
	String contactNumber;
	String[] localities;
	
	public Store() {
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getContactNumber() {
		return contactNumber;
	}
	public void setContactNumber(String contactNumber) {
		this.contactNumber = contactNumber;
	}
	public String[] getLocalities() {
		return localities;
	}
	public void setLocalities(String[] localities) {
		this.localities = localities;
	}
	
	public Store(String name, String contactNumber, String[] localities) {
		super();
		this.name = name;
		this.contactNumber = contactNumber;
		this.localities = localities;
	}
	@Override
	public String toString() {
		return "Store [name=" + name + ", contactNumber=" + contactNumber + ", localities="
				+ Arrays.toString(localities) + "]";
	}
	
	

}
