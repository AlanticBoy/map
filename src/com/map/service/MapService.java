package com.map.service;

import java.sql.SQLException;
import java.util.List;

import com.map.dao.MapDao;
import com.map.entity.MapEntity;

public class MapService {

	public List<MapEntity> findData() throws SQLException {
		MapDao mapDao = new MapDao();
		return mapDao.findData();
	}
}
