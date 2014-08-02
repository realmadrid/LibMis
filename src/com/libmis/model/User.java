package com.libmis.model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToMany;

import org.hibernate.search.annotations.Field;
import org.hibernate.search.annotations.Index;
import org.hibernate.search.annotations.Indexed;
import org.hibernate.search.annotations.IndexedEmbedded;
import org.hibernate.search.annotations.Store;

@Entity
@Indexed
public class User {
	
	@Id
	@GeneratedValue
	private int id;
	
	@Field(index=Index.TOKENIZED,store=Store.NO)
	private String username;
	
	private String password;
	
	@Field(index=Index.TOKENIZED,store=Store.NO)
	private String realname;
	
	//身份证号
	@Field(index=Index.TOKENIZED,store=Store.NO)
	private String idnumber;
	
	@Field(index=Index.TOKENIZED,store=Store.NO)
	private String sex;
	
	@Field(index=Index.TOKENIZED,store=Store.NO)
	private String cellphone;
	
	@Field(index=Index.TOKENIZED,store=Store.NO)
	private String email;
	
	@Field(index=Index.TOKENIZED,store=Store.NO)
	private String address;
		
	@ManyToMany
	@IndexedEmbedded
	private Set<Role> roles = new HashSet<Role>();
	
	//借书上限
	@Field(index=Index.TOKENIZED,store=Store.NO)
	private int limitNumber;
	
	//已借数量
	@Field(index=Index.TOKENIZED,store=Store.NO)
	private int borrowed;

	@Field(index=Index.TOKENIZED,store=Store.NO)
	private String remark;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getRealname() {
		return realname;
	}

	public void setRealname(String realname) {
		this.realname = realname;
	}

	public String getIdnumber() {
		return idnumber;
	}

	public void setIdnumber(String idnumber) {
		this.idnumber = idnumber;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getCellphone() {
		return cellphone;
	}

	public void setCellphone(String cellphone) {
		this.cellphone = cellphone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Set<Role> getRoles() {
		return roles;
	}

	public void setRoles(Set<Role> roles) {
		this.roles = roles;
	}

	public int getBorrowed() {
		return borrowed;
	}

	public void setBorrowed(int borrowed) {
		this.borrowed = borrowed;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public int getLimitNumber() {
		return limitNumber;
	}

	public void setLimitNumber(int limitNumber) {
		this.limitNumber = limitNumber;
	}
	
}
