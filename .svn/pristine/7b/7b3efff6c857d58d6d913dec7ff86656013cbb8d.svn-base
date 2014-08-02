package com.libmis.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

import org.hibernate.search.annotations.Field;
import org.hibernate.search.annotations.Index;
import org.hibernate.search.annotations.Indexed;
import org.hibernate.search.annotations.IndexedEmbedded;
import org.hibernate.search.annotations.Store;

@Entity
@Indexed
public class Borrow {

	@Id
	@GeneratedValue
	private int id;
	
	@ManyToOne
	@IndexedEmbedded
	private User user;
	
	@ManyToOne
	@IndexedEmbedded
	private Copy copy;
	
	//借出时间
	private Date borrowTime;
	
	//应还时间
	private Date shouldReturnTime;
	
	//实际归还时间
	private Date realReturnTime;
	
	//是否归还
	@Field(index=Index.TOKENIZED,store=Store.NO)
	private boolean haveReturned;
	
	//续借次数
	@Field(index=Index.TOKENIZED,store=Store.NO)
	private int renewTimes;
	
	//备注
	@Field(index=Index.TOKENIZED,store=Store.NO)
	private String remark;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Copy getCopy() {
		return copy;
	}

	public void setCopy(Copy copy) {
		this.copy = copy;
	}

	public boolean isHaveReturned() {
		return haveReturned;
	}

	public void setHaveReturned(boolean haveReturned) {
		this.haveReturned = haveReturned;
	}

	public int getRenewTimes() {
		return renewTimes;
	}

	public void setRenewTimes(int renewTimes) {
		this.renewTimes = renewTimes;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Date getBorrowTime() {
		return borrowTime;
	}

	public void setBorrowTime(Date borrowTime) {
		this.borrowTime = borrowTime;
	}

	public Date getShouldReturnTime() {
		return shouldReturnTime;
	}

	public void setShouldReturnTime(Date shouldReturnTime) {
		this.shouldReturnTime = shouldReturnTime;
	}

	public Date getRealReturnTime() {
		return realReturnTime;
	}

	public void setRealReturnTime(Date realReturnTime) {
		this.realReturnTime = realReturnTime;
	}

}
