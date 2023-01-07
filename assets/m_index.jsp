<!DOCTYPE html>
<%@ page contentType="text/html" %>
<%@ page pageEncoding="UTF-8" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>唯獨寵你 | 管理者介面</title>
	<link rel="icon" type="image/x-icon" href="img/logo.png">
    <style>
        @import "css/Classic\ Pets\ dog\ can.css";
        @import "css/header.css";
        @import "css/nav.css";
        @import "css/rank.css";
        @import "css/product.css";
        @import "css/footer.css";
		body {
			text-align: center;
			width: 100%;
			height: 100%;
		}
		table {
			border: 1px solid black;
			width: 50%;
			margin-top: 170px;
			margin-left: auto;
			margin-right: auto;
		}
		td,th {
			border: 1px solid black;
			
		}
    </style>

    <script src="js/main.js"> </script>
    <script src="js/login.js"> </script>
    <script src="js/member.js"> </script>
      
</head>
<body>
<h1>唯獨寵你 | 管理者介面</h1>
<a href="logout.jsp"><h2>登出</h2></a>
<h2>
<table>
	<td align="left" colspan="3">相關資料</td>
	<tr>
		<td align="left"><a href="m_product.jsp">產品資料</a></td>
		<td><a href="m_add.jsp" class="addlink">新增</a></td>
		<td><a href="m_product.jsp" class="changelink">變更</a></td>
	</tr>
	<tr>
		<td align="left" colspan="3"><a href="m_orders.jsp">銷貨紀錄</a></td>
	</tr>
</table>
</h2>





</body>