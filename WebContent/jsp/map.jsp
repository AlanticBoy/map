<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en">
 <head>
  <meta charset="UTF-8"><!--编码格式-->
  <meta name="Generator" content="EditPlus®">
  <meta name="Author" content="ZhengyunaGao">
  <!--网页三要素-->
  <meta name="Keywords" content="LBS">
  <meta name="Description" content="LBS">
  <title>Java项目 LBS移动地图定位</title>
  
  <!--css 样式 层叠样式表-->
  <style>
    *{margin:0; padding:0;}

	.top{height:90px;background:#000000;box-shadow:0 0 5px #000}
	.top .t-center{width:90%;height:90px;margin:0 auto;}
    .top .t-center img{margin-top:3px}

	.top .t-center .t-search{width:320px;height:50px;float:right;margin-top:29px;color:white;}
	.top .t-center .t-search .txt{width:75px;height:30px;outline:none;border:1px solid #ccc;border-radius:5px}

    .top .t-center .t-search .btn{width:60px;height:30px;outline:none;border:none;border-radius:15px;color:#330033;margin-top:2px;box-shadow:1 1 5px #000;}
	.top .t-center .t-search .btn:active{background:#ffffff;box-shadow:none;}

	#myMap{height:93vh;background:#868686;}
  </style>
 </head>
 <body>
  <!--盒子 容器层-->
  <!--start top-->
  <div class="top">
    <div class="t-center">
	  <img src="${ pageContext.request.contextPath }/images/head_logo.png">
	  <div class="t-search">
	    起点：<input type="text" class="txt">
		终点：<input type="text" class="txt">
		<input type="button" value="查询" class="btn">
	  </div> 
	</div>
  </div>
 <!--end top-->
 <!--start myMap-->
  <div id="myMap"></div>
 <!--end myMap-->

 <!--javascript-->
  <script type="text/javascript" src="https://webapi.amap.com/maps?v=1.4.11&key=c3673e3ce7699c04e61ea2a54e80247d"></script>
  <script>
    //初始化地图
	var map = new AMap.Map('myMap', {
        resizeEnable: true, //是否监控地图容器尺寸变化
        zoom:15, //初始化地图层级
        center: [113.509028,34.811093] //初始化地图中心点
    });
    var list = <%=request.getAttribute("list")%>;
	 var lineArr = new Array();    
	//定义二维数组接收并处理前台的值
	for (var i = 0; i < list.length; i++) {
		lineArr[i] = new Array();  //声明二维，每一个一维数组里面的一个元素都是一个数组；
		lineArr[i][0] = list[i].longtitude;//这里将变量初始化，我这边统一初始化为空，后面在用所需的值覆盖里面的值
		lineArr[i][1] = list[i].landtitude;//这里将变量初始化，我这边统一初始化为空，后面在用所需的值覆盖里面的值
	} 
    
	/* var lineArr = [
        [113.509179, 34.808543],
        [113.5092  , 34.808578],
        [113.509737, 34.808578],
        [113.509822, 34.809195]
    ];  */
    var polyline = new AMap.Polyline({
        path: lineArr,          //设置线覆盖物路径
        strokeColor: "#3366FF", //线颜色
        strokeWeight: 5,        //线宽
        strokeStyle: "solid",   //线样式
    });
    map.add(polyline);
  </script>
 </body>
</html>
