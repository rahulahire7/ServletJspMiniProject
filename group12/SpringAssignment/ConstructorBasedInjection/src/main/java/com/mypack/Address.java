package com.mypack;

public class Address {
	private String city;
	private int pincode;
	
	public Address(String city, int pincode) {
		super();
		this.city = city;
		this.pincode = pincode;
	}

	@Override
	public String toString() {
		return "Address [city=" + city + ", pincode=" + pincode + "]";
	}
	
}
