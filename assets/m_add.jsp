<!DOCTYPE html>
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %>
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
<!--路徑-->
<div class="path" align="left">
    <a href="m_index.jsp">管理首頁</a> > 
    <a href="m_product.jsp">產品變更</a> > 新增產品
</div>
<!--新增產品的表格-->
<div class="main" id="main">
	<div class="content">
        <div class="main">
            <div class="top">
                <h2>新增產品</h2>
            </div>
			
			<div class="ListContent">
				<form method="post" action="m_update.jsp" class="AddForm">
					<span>產品ID</span>
					<input type="text" name="ProductID" value=""><br>
					<span>產品適用動物</span>
					<input type="text" name="ProductAnimal" value=""><br>
					<span>產品品牌</span>
					<input type="text" name="ProductBrand" value=""><br>
					<span>產品名稱</span>
					<input type="text" name="ProductName" value=""><br>
					<span>產品價格</span>
					<input type="text" name="Price" value=""><br>
					<span>庫存</span>
					<input type="text" name="Stock" value=""><br>
					<span>圖片連結</span>
					<input type="text" name="ImgUrl" value=""><br>

					<input type="submit" class="submit" name="add" value="確定新增">
				</form>
			</div>
		</div>
	</div>
</div>


</body>
</html>