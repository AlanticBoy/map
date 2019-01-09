package com.map.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.map.entity.MapEntity;
import com.map.utils.JDBCUtils;

public class MapDao {

	public List<MapEntity> findData() throws SQLException {
		QueryRunner queryRunner = new QueryRunner(JDBCUtils.getDataSource());
		String sql = "select ad.* from app_demo ad";
		List<MapEntity> list = queryRunner.query(sql, new BeanListHandler<MapEntity>(MapEntity.class));
		return list;
	}
}
