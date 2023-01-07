<!DOCTYPE html>
<%@page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*"%>
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
    <a href="m_product.jsp">產品變更</a> > 產品更新
</div>
<!--變更-->
<div class="main" id="main">
    <div class="content">
        <div class="main">
			<%
			request.setCharacterEncoding("UTF-8");
			String ProductID = request.getParameter("ProductID");
			String ProductAnimal = request.getParameter("ProductAnimal");
			String ProductBrand = request.getParameter("ProductBrand");
			String ProductName = request.getParameter("ProductName");
			String Price = request.getParameter("Price");
			String Stock = request.getParameter("Stock");
			String ImgUrl = request.getParameter("ImgUrl");
			if (request.getParameter("delete")!=null){
                sql = "DELETE FROM `PRODUCT` WHERE `ProductID` = '" + ProductID + "';";
                int no = con.createStatement().executeUpdate(sql);
				if (no > 0){
                    out.println("<h2> 刪除成功</h2>");
                }
			}else if (request.getParameter("add")!=null){
				
				sql = "INSERT INTO PRODUCT(ProductID, productAnimal, productBrand, productName, productPrice, productQuantity, imgUrl) VALUES('" + ProductID+ "','" + ProductAnimal + "','" + ProductBrand + "','" + ProductName + "','" + Price + "','" + Stock + "','" + ImgUrl + "')";
				int no = con.createStatement().executeUpdate(sql);
				if (no > 0){
					out.print("<h2>新增成功</h2>");
				}
				
			}else if(request.getParameter("edit")!=null){
				sql = "UPDATE PRODUCT SET `productAnimal` = '" + ProductAnimal + "',`productBrand` = '" + ProductBrand + "',`productName` = '" + ProductName + "',`productPrice` = '" + Price + "',`productQuantity` = '" + Stock + "',`imgUrl` = '" + ImgUrl + "' WHERE `ProductID` = '" + ProductID+ "';";
				int no2 = con.createStatement().executeUpdate(sql);
				if (no2 > 0){
					out.print("<h2>更新成功</h2>");
				}
			}
			con.close();
			%>
		</div>
	</div>
</div>
</body>
</html>