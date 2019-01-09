package com.map.web.servlet;


import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.map.entity.MapEntity;
import com.map.service.MapService;

import net.sf.json.JSONArray;

/**
 * 
 */
@WebServlet("/MapDataServlet")
public class MapDataServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/**
		 * 调用业务层:
		 * 页面跳转:
		 */
		try{
			// 调用业务层:
			MapService mapService = new MapService();
			List<MapEntity> list = mapService.findData();
			System.out.println("  list----->   "+list);
			request.setAttribute("list", JSONArray.fromObject(list));
			System.out.println("  JSONArray.fromObject(list)----->   "+JSONArray.fromObject(list));
			request.getRequestDispatcher("/jsp/map.jsp").forward(request, response);
		}catch(Exception e){
			e.printStackTrace();
			throw new RuntimeException();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doGet(request, response);
	}

}
