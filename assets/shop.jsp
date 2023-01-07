<!DOCTYPE html>
<%@ page contentType="text/html" import="java.sql.*"%>
<%@ page pageEncoding="UTF-8" %>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>唯獨寵你｜購物車</title>
    <link rel="icon" type="image/x-icon" href="img/logo.png">

    <style>
        @import "css/header.css";
        @import "css/nav.css";
        @import "css/footer.css";
        @import "css/shop.css";
    </style>

    <script src="js/main.js"> </script>
    <script src="js/login.js"> </script>
    <script src="js/member.js"> </script>
    <script src="js/close.js"> </script>


</head>
<body>
    <!-- Top鍵 -->
    <button onclick="topFunction()" id="myBtn" title="Go to top">Top</button>
    <script>
        let mybutton = document.getElementById("myBtn");
        
        window.onscroll = function() {scrollFunction()};
        
        function scrollFunction() {
          if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
            mybutton.style.display = "block";
          } else {
            mybutton.style.display = "none";
          }
        }

        function topFunction() {
          document.body.scrollTop = 0;
          document.documentElement.scrollTop = 0;
        }
    </script>

  <%@include file="header.jsp"%>
  <%if(session.getAttribute("email")==null){
			out.print("<script>alert('請先登入!'); window.location='index.jsp'</script>");
	}%>
  <!--購物車標題-->
    <section>
        <h1 class="shop-title">我の購物車</h1>
        <table align="center" >
            <tr id="shopcar">
                <th name="prouductimg"></th>
                <th name="prouductname">商品名稱</th>
                <th name="flavor">口味</th>
                <th name="a price">單價</th>
                <th name="amount">數量</th>
                <th name="prices">小計</th>
                <th name="delete">編輯</th>
            </tr>

  <!--項目一-->
            
            <tr class="item1" align="center">
                <td width="170"><img class="shop-img" src="img/product/Classic Pets dog can2.JPG"></td>
                <td width="250">加好寶乾狗糧</td>
                <td width="180">
				<select class="shop-select" id="choose">
                    <option name="dog2can1" selected="selected" style="font-weight: bold;">牛肉口味</option>
                    <option name="dog2can2" selected="selected" style="font-weight: bold;">牛肉蔬菜</option>
                    <option name="dog2can3" selected="selected" style="font-weight: bold;">牛肉總匯</option>
                    <option name="dog2can4" selected="selected" style="font-weight: bold;">雞肉總匯</option>
                    <option name="dog2can5" selected="selected" style="font-weight: bold;">雞肉蔬菜</option>
                    <option name="dog2can6" selected="selected" style="font-weight: bold;">羊肉口味</option>
                </select></td>

                <td width="180">$570</td>
                <td width="100">
                    <ul class="box" style="margin-top: 70px;">
                        <li><input type="button" id="minus" class="minus" value="-"></li>
                        <li><input type="text" id="amount" class="amount" name="amount" value="1" readonly="true" style="background-color:transparent;border:0;"></li>
                        <li><input type="button" id="plus" class="plus" value="+"></li>
                       
                    </ul>
                </td>
        
                    <script src="js/plusminus.js"></script>
        
                    <td width="180">$570</td>
                    <td><img class="delete" src="img/delete.png" height="60px" width="60px"></button></td>
            </tr>
	
    <!--項目二-->

            <tr class="item1" align="center">
                <td width="170"><img class="shop-img" src="img/product/FC.JPG"></td>
                <td width="250">福壽貓食FUSO Pets</td>
                <td width="180">       
                <select class="shop-select" id="choose">
                    <option name="Fuso1" selected="selected" style="font-weight: bold;">鮭魚+牛肉</option>
                    <option name="Fuso2" selected="selected" style="font-weight: bold;">鮪魚+蟹肉</option>
                    <option name="Fuso3" selected="selected" style="font-weight: bold;">鮪魚+雞肉</option>
                    <option name="Fuso4" selected="selected" style="font-weight: bold;">鮪魚口味</option>
                </select></td>
                <td width="150">$699</td>
                <td>
                    <ul class="box" style="margin-top: 70px;">
                        <li><input type="button" id="minus-1" class="minus" value="-"></li>
                        <li><input type="text" id="amount-1" class="amount" value="1" readonly="true" style="background-color:transparent;border:0;"></li>
                        <li><input type="button" id="plus-1" class="plus" value="+"></li>
                    </ul>
                </td>

                <script src="js/plusminus-1.js"></script>

                    <td width="150">$699</td>
                    <td width="150"><img class="delete" src="img/delete.png" height="60px" width="60px"></td>
            </tr>
    
     <!--項目三-->

            <tr class="item4" align="center">
                <td width="170"></td>
                <td width="250"></td>
                <td width="200"></td>
                <td width="150"></td>
                <td></td>
                <td width="150" name="totalprice">總計：$1,269</td>
                <td><a href="list.jsp"><input class="checkout" type="button" name="checkout" value="結帳"></a></td>
            </tr> 

        </table>
    </section>



    <footer>
        <%@include file="footer.jsp"%>
    </footer>

</body>
</html>