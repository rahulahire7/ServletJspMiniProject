package com.model;

public class Product 
{

	private String Prodnm;			//variable for product name
	private int price;				//variable for price of product
	private int stock;				//variable for stocks remaining
	
	public int getPrice()			//getter method for price
	{
		return price;
	}
	public void setPrice(int price) //setter method for price
	{
		this.price = price;
	}
	
	
	public String getProdnm()   	//getter method for product name
	{
		return Prodnm;
	}
	public void setProdnm(String prodnm) //setter method for product name
	{
		Prodnm = prodnm;
	}
	public int getStock()			//getter method for stock
	{
		return stock;
	}
	public void setStock(int stock) //setter method for stock
	{
		this.stock = stock;
	}
}
