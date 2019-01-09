<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<body>
<h1>商品的列表页面</h1>
<table border="1" width="800">
	<tr>
		<td colspan="8">
			名称:<input type="text" id="pname" name="pname"><input type="button" value="查询" onclick="search()">&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="button" value="添加" onclick="addPage()"/>&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="button" value="删除" onclick="delAll()"/>&nbsp;&nbsp;&nbsp;&nbsp;
		</td>	
	</tr>
	<tr>
		<td>序号</td>
		<td>商品名称</td>
		<td>市场价格</td>
		<td>商城价格</td>
	</tr>
	<c:forEach var="p" items="${ list }" varStatus="status">
	<tr>
		<td>${ p.id }</td>
		<td>${ p.userId }</td>
		<td>${ p.longtitude }</td>
		<td>${ p.landtitude }</td>
	</tr>
	</c:forEach>
</table>
</body>
</html>