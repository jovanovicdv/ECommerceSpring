package com.comtrade.entity;

import java.time.LocalDate;
import java.util.LinkedHashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;
@Entity
@Table(name = "orders")
public class Order extends BaseEntity {
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "id_user")
	private User user;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private LocalDate orderDate;
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "order",cascade = {CascadeType.DETACH,CascadeType.MERGE, CascadeType.PERSIST, CascadeType.REFRESH })
	private Set<OrderDetail>details = new LinkedHashSet<OrderDetail>();
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public LocalDate getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(LocalDate orderDate) {
		this.orderDate = orderDate;
	}
	public Order() {
		
		this.orderDate = LocalDate.now();
	}
	
	
	

	public void addDetail(OrderDetail detail) {
		details.add(detail);
		detail.setOrder(this);
	}
	public void removeDetail(OrderDetail detail) {
		details.remove(detail);
		detail.setOrder(null);
	}
	public Set<OrderDetail> getDetails() {
		return details;
	}
	public void setDetails(Set<OrderDetail> details) {
		this.details = details;
	}
	
	
	
	
	
	

}
