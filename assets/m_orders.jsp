<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %>
<!DOCTYPE html>
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
    <a href="m_orders.jsp">瀏覽訂單資訊</a>
</div>
        <div class="main" id="main">
            <div class="content">
            <div class="top">
                <h2>瀏覽訂單資訊</h2>
            </div>
                <div class="main">
                <%
                sql = "SELECT * FROM `order` ORDER BY `idorder` DESC;" ;
                ResultSet OrderList =  con.createStatement().executeQuery(sql) ; 
                while(OrderList.next()){
                    sql = "SELECT * FROM `login` WHERE `LoginName` = '"+OrderList.getString("oname")+"'";
                    ResultSet Client =  con.createStatement().executeQuery(sql); 
                    while(Client.next()){
                %>
                    <button type="button" class="collapsible"> 客戶 : <%= " "+Client.getString("LoginName")%> </button>
                    <div class="ListContent">
                            <span>訂單ID :</span><%=" " + OrderList.getString(1)%><br>
                            
                            <%
                            int total = 0;
                            sql = "SELECT * FROM `order` WHERE `idorder` = '"+OrderList.getString("idorder")+"'";
                            ResultSet OrdersDeatils =  con.createStatement().executeQuery(sql); 
                            while(OrdersDeatils.next()){
                            %>
                            <hr>
                            
                            <%
                            sql = "SELECT * FROM `product` WHERE `ProductID` = '"+OrdersDeatils.getString("ProductID")+"'";
                            ResultSet Product =  con.createStatement().executeQuery(sql); 
                            while(Product.next()){
                            %>
                            <span>產品 :</span></span><%=" " + Product.getString(3)%><br>
                            <span>口味 :</span></span><%=" " + Product.getString(4)%><br>
							<span>數量 :</span><%=" " + OrdersDeatils.getString(9)%><br>
							
                            <%
                            int cnt = Integer.parseInt(OrdersDeatils.getString(9)) * Integer.parseInt(Product.getString("productPrice"));
                            total = total + cnt;
                            %>
                            <span>小計 :</span><%=" " + cnt%>元<br>
                            <%
                            }
                            }
                            %>
                            <hr>
                            <span>總計 :</span><%=" " + total%>元
                    </div>
                <%
                    }
                }
                %>
                </div>
            </div>
           
        </div>
    </div>

</body>

</html>