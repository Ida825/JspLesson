package com.et.jc;


public class MyCard {
	private String id;
	private String cardNo;
	private String bornDate;
	private String cardAddress;
	public MyCard() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getCardNo() {
		return cardNo;
	}
	public void setCardNo(String cardNo) {
		this.cardNo = cardNo;
	}
	public String getBornDate() {
		return bornDate;
	}
	public void setBornDate(String bornDate) {
		this.bornDate = bornDate;
	}
	public String getCardAddress() {
		return cardAddress;
	}
	public void setCardAddress(String cardAddress) {
		this.cardAddress = cardAddress;
	}
	@Override
	public String toString() {
		return "MyCard [id=" + id + ", cardNo=" + cardNo + ", bornDate=" + bornDate + ", cardAddress=" + cardAddress
				+ "]";
	}
	
	
}
