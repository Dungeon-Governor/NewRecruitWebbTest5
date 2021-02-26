<%@page contentType="text/html; charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>


</head>
<body>

		<table width="80%" align="center">
		<tr>
			<td>编号</td>
			<td>姓名</td>
			<td>QQ</td>
			<td>专业</td>
			<td>电话</td>
			<td>方向</td>
			
			
		</tr>
						<c:forEach items="${list1  }" var="bean">
		
			<tr>
				<td>${bean.id}</td>
				<td>${bean.username}</td>
				<td>${bean.qq}</td>
				<td>${bean.profession}</td>
				<td>${bean.phone}</td>
				<td>${bean.direction}</td>
				
				
				
				<td><a href="delete1.do?id=${bean.id}">删除</a></td>
				
				
			</tr>
					</c:forEach>	
</table>
</body>
</html>