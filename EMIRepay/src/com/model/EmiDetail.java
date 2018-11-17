package com.model;

public class EmiDetail {
	private long Loan_ID;
	private long CID;
	private int total_installments;
	private long principal;
	private long interest;
	private long payback;
	private int emi;
	public long getLoan_ID() {
		return Loan_ID;
	}
	public void setLoan_ID(long loan_ID) {
		Loan_ID = loan_ID;
	}
	public long getCID() {
		return CID;
	}
	public void setCID(long cID) {
		CID = cID;
	}
	public int getTotal_installments() {
		return total_installments;
	}
	public void setTotal_installments(int total_installments) {
		this.total_installments = total_installments;
	}
	public long getPrincipal() {
		return principal;
	}
	public void setPrincipal(long principal) {
		this.principal = principal;
	}
	public long getInterest() {
		return interest;
	}
	public void setInterest(long interest) {
		this.interest = interest;
	}
	public long getPayback() {
		return payback;
	}
	public void setPayback(long payback) {
		this.payback = payback;
	}
	public int getEmi() {
		return emi;
	}
	public void setEmi(int emi) {
		this.emi = emi;
	}
	
}
