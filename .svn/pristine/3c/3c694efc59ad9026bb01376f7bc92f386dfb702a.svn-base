package com.libmis.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

import org.hibernate.search.annotations.Field;
import org.hibernate.search.annotations.Index;
import org.hibernate.search.annotations.Indexed;
import org.hibernate.search.annotations.Store;

@Entity
@Indexed
public class Copy {

	@Id
	@GeneratedValue
	private int id;
	
	//条码号
	@Field(index=Index.TOKENIZED,store=Store.NO)
	@Column(unique=true)
	private String barcode;
	
	//所在书架
	@Field(index=Index.TOKENIZED,store=Store.NO)
	private String  bookshelf;
	
	//入库时间
	private Date entertime;
	
	//出库时间
	private Date outtime;
	
	//副本状况，是否损坏
	@Field(index=Index.TOKENIZED,store=Store.NO)
	private String status;
	
	//是否注销
	@Field(index=Index.TOKENIZED,store=Store.NO)
	private boolean logoff;
	
	//是否借出
	@Field(index=Index.TOKENIZED,store=Store.NO)
	private boolean borrowed;
	
	@ManyToOne
	private Book book;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getBarcode() {
		return barcode;
	}

	public void setBarcode(String barcode) {
		this.barcode = barcode;
	}

	public String getBookshelf() {
		return bookshelf;
	}

	public void setBookshelf(String bookshelf) {
		this.bookshelf = bookshelf;
	}

	public boolean getLogoff() {
		return logoff;
	}

	public void setLogoff(boolean logoff) {
		this.logoff = logoff;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public void setEntertime(Date entertime) {
		this.entertime = entertime;
	}

	public void setOuttime(Date outtime) {
		this.outtime = outtime;
	}

	public Date getEntertime() {
		return entertime;
	}

	public Date getOuttime() {
		return outtime;
	}

	public boolean isBorrowed() {
		return borrowed;
	}

	public void setBorrowed(boolean borrowed) {
		this.borrowed = borrowed;
	}

	public Book getBook() {
		return book;
	}

	public void setBook(Book book) {
		this.book = book;
	}
	
}
