<!DOCTYPE html>
<%@ page contentType="text/html" import="java.sql.*"%>
<%@ page pageEncoding="UTF-8" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>唯獨寵你｜購物明細</title>
	<link rel="icon" type="image/x-icon" href="img/logo.png">
    <style>
        @import "css/header.css";
        @import "css/nav.css";
        @import "css/footer.css";
        @import "css/shop.css";
        @import "css/list.css";
    </style>

    <script src="js/main.js"> </script>
    <script src="js/login.js"> </script>
    <script src="js/member.js"> </script>
    <script src="js/checkout.js"> </script>
    <script src="js/close.js"></script>
</head>
<body>
     <%@include file="header.jsp"%>

<section class="section1">
    <table align="center" >
        <tr>   
            <th name="prouductimg"></th>   
            <th name="prouductname">商品名稱</th>
            <th name="flavor">口味</th>
            <th name="prices">小計</th>
        </tr>
    <!--細項一-->
        <tr class="item1" align="center">
            <td width="180"><img class="shop-img" src="img/product/Classic Pets dog can2.JPG"></td>
       
            <td width="250">加好寶乾狗糧</td>
            <td width="180">羊肉口味</td>
            <td width="180">$570</td>
           
        </tr>

    <!--細項二-->
        <tr class="item1" align="center">
            <td width="180"><img class="shop-img" src="img/product/FC.JPG"></td>
       
            <td width="250">福壽貓食FUSO Pets</td>
            <td width="180">鮪魚口味</td>
            <td width="180">$699</td>
           
        </tr>

        <tr class="item4" align="center">
            <td></td>
            <td></td>
            <td></td>
            <td name="totalprice">總計：$1,269</td>
    </table>    
</section>

<section class="section2">
    <form id="shop-form" action="index.jsp">
        <div class="shopcheck-container ">
            <div class="form1" align="center">購買表單</div>
                <p>
                    <label for="name"><b>姓名</b></label>
                    <input class="frame2" type="text"  name="receiver_name" id="text-1" required>
                    <label for="psw-repeat"><b>聯絡電話</b></label>
                    <input class="frame2" type="text"  name="receiver_tel" id="text-1" required>
            
                    <label for="email"><b>電子信箱</b></label>
                    <input class="frame3" type="email"  name="receiver_email" id="email-1" required>
                    <label for="psw-repeat"><b>付款方式</b></label>
                    <select name="choose" class="choose">
                        <option selected="selected" style="font-weight: bold;">貨到付款</option>
                    </select>
                <br>
             
                    <label for="psw-repeat"><b>收件地址</b></label>
                    <input class="frame4" type="text"  name="receiver_address" id="text-1" required>
                <hr>

            <button type="submit" class="registerbtn" name="receiver_submit" onclick="checkoutsuc()">送出</button>

        </div>
     </form>
</section>


<footer>
    <%@include file="footer.jsp"%>
</footer>

</body>
</html>