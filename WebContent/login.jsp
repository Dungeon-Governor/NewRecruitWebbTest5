<%@page contentType="text/html; charset=UTF-8" %>
<html>
<head>
<title>登录页面</title>
</head>
<body>
	 <form action="${pageContext.request.contextPath}/login.do" method="post" id="myform">
        用户名：<input type="text" id="username" name="name"/><br>
        密码：<input type="password" id="password" name="password"/><br>
        <input type="submit" value="登录" id="login" />
    </form>
    
	
</body>

</html>