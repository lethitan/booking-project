package com.demo.models;
// Generated Feb 8, 2022 6:12:34 PM by Hibernate Tools 5.1.7.Final

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * Tables generated by hbm2java
 */
@Entity
@Table(name = "tables", catalog = "sem_project")
public class Tables implements java.io.Serializable {

	private Integer id;
	private Category category;
	private Restaurant restaurant;
	private String name;
	private String floor;
	private double pricePlus;
	private String timeIn;
	private String timeOut;
	private String description;
	private List<Photo> photos = new ArrayList<Photo>();
	private Set<OrderTable> orderTables = new HashSet<OrderTable>(0);

	public Tables() {
	}

	public Tables(Category category, Restaurant restaurant, String name, String floor, double pricePlus, String timeIn,
			String timeOut, String description) {
		this.category = category;
		this.restaurant = restaurant;
		this.name = name;
		this.floor = floor;
		this.pricePlus = pricePlus;
		this.timeIn = timeIn;
		this.timeOut = timeOut;
		this.description = description;
	}

	public Tables(Category category, Restaurant restaurant, String name, String floor, double pricePlus, String timeIn,
			String timeOut, String description, List<Photo> photos, Set<OrderTable> orderTables) {
		this.category = category;
		this.restaurant = restaurant;
		this.name = name;
		this.floor = floor;
		this.pricePlus = pricePlus;
		this.timeIn = timeIn;
		this.timeOut = timeOut;
		this.description = description;
		this.photos = photos;
		this.orderTables = orderTables;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "id", unique = true, nullable = false)
	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "category_id", nullable = false)
	public Category getCategory() {
		return this.category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "res_id", nullable = false)
	public Restaurant getRestaurant() {
		return this.restaurant;
	}

	public void setRestaurant(Restaurant restaurant) {
		this.restaurant = restaurant;
	}

	@Column(name = "name", nullable = false, length = 250)
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name = "floor", nullable = false, length = 250)
	public String getFloor() {
		return this.floor;
	}

	public void setFloor(String floor) {
		this.floor = floor;
	}

	@Column(name = "price_plus", nullable = false, precision = 22, scale = 0)
	public double getPricePlus() {
		return this.pricePlus;
	}

	public void setPricePlus(double pricePlus) {
		this.pricePlus = pricePlus;
	}

	@Column(name = "time_in", nullable = false, length = 250)
	public String getTimeIn() {
		return this.timeIn;
	}

	public void setTimeIn(String timeIn) {
		this.timeIn = timeIn;
	}

	@Column(name = "time_out", nullable = false, length = 250)
	public String getTimeOut() {
		return this.timeOut;
	}

	public void setTimeOut(String timeOut) {
		this.timeOut = timeOut;
	}

	@Column(name = "description", nullable = false, length = 1000)
	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "tables")
	public List<Photo> getPhotos() {
		return this.photos;
	}

	public void setPhotos(List<Photo> photos) {
		this.photos = photos;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "tables")
	public Set<OrderTable> getOrderTables() {
		return this.orderTables;
	}

	public void setOrderTables(Set<OrderTable> orderTables) {
		this.orderTables = orderTables;
	}

}
