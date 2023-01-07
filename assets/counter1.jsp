<%@ page contentType="text/html" %>
<%@ page pageEncoding="UTF-8" %>
<html>
<head><title>計數器設定</title>
</head>
<link rel="icon" type="image/x-icon" href="img/logo.png">
<body>
<%
     application.setAttribute("counter", "800");
	 out.print("初始值設定成功!");
%>
</body>
</html>