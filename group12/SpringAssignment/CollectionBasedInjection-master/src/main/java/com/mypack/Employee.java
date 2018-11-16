package com.mypack;

import java.util.List;

public class Employee {
	private int id;
	private String name;
	private List<Address> addr;
	
	public Employee(int id, String name, List<Address> addr) {
		super();
		this.id = id;
		this.name = name;
		this.addr = addr;
	}

	@Override
	public String toString() {
		return "Employee [id=" + id + ", name=" + name + ", addr=" + addr + "]";
	}
	
	
}
