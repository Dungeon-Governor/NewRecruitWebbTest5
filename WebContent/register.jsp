<%@page contentType="text/html; charset=UTF-8" %>
<html>
<head>
<title>注册</title>
</head>
<body>
<form id="form2" name="form2" method="post" action="${pageContext.request.contextPath}/register.do">
<table width="34%" height="273" border="1" align="center">


  <tr>
    <td><div align="center">姓名</div></td>
    <td><div align="center">
      <input type="text" name="username" />
    </div></td>
  </tr>
  
   <tr>
    <td><div align="center">QQ</div></td>
    <td><div align="center">
      <input type="text" name="qq" />
    </div></td>
  </tr>
  
    <tr>
    <td><div align="center">专业</div></td>
    <td><div align="center">
      <input type="text" name="profession" />
    </div></td>
  </tr>
  
  <tr>
    <td><div align="center">电话</div></td>
    <td><div align="center">
      <input type="text" name="phone" />
    </div></td>
  </tr>
  
  <tr>
    <td><div align="center">组</div></td>
    <td><div align="center">
      <input type="text" name="team" />
    </div></td>
  </tr>
  
 
</table>
<p>&nbsp;</p>

  <label></label>
  <div align="center">
    <input type="submit" name="Submit" value="提交" />
  </div>
</form>
<p>&nbsp;</p>
</body>

</html>