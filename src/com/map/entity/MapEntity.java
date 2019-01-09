package com.map.entity;

import java.util.Date;

/**
 * 对应数据库表的实体
 * @author Administrator
 *
 */
public class MapEntity {
	public Integer id;
	public String userId;
	public String longtitude;
	public String landtitude;
	public Date entryTime;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getLongtitude() {
		return longtitude;
	}
	public void setLongtitude(String longtitude) {
		this.longtitude = longtitude;
	}
	public String getLandtitude() {
		return landtitude;
	}
	public void setLandtitude(String landtitude) {
		this.landtitude = landtitude;
	}
	public Date getEntryTime() {
		return entryTime;
	}
	public void setEntryTime(Date entryTime) {
		this.entryTime = entryTime;
	}
	@Override
	public String toString() {
		return "MapEntity [id=" + id + ", userId=" + userId + ", longtitude=" + longtitude + ", landtitude="
				+ landtitude + ", entryTime=" + entryTime + "]";
	}
}
