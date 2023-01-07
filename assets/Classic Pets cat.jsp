<!DOCTYPE html>
<%@ page contentType="text/html" import="java.sql.*"%>
<%@ page pageEncoding="UTF-8" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>加好寶貓糧</title>
    <link rel="icon" type="image/x-icon" href="img/logo.png">

    <style>
        @import "css/Classic\ Pets\ dog\ can.css";
        @import "css/header.css";
        @import "css/nav.css";
        @import "css/footer.css";
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



  <article>
    <!--產品資訊-->
    <section class="productim">
        <div class="product_name" style="font-weight: bolder;">加好寶貓糧7kg</div>
        <div class="introduce">
            <br>◎ 含天然纖維能幫助愛貓排出毛球</br>
            <br>◎ 食材自然原色，無添加色素</br>
            <br>◎ 鈣、磷、維生素Ｄ　幫助骨骼發展，保護牙齒</br>
            <br>◎ 嗜口性極佳</br>
        </div>
 		<%
			
			sql = "SELECT * FROM `PRODUCT2` WHERE `ID` = 7";
			ResultSet ProductList = con.createStatement().executeQuery(sql);
			while (ProductList.next()){
				sql = "SELECT * FROM `PRODUCT` WHERE `productID` = 01";
				ResultSet ProductList2 = con.createStatement().executeQuery(sql);
				while (ProductList2.next()){
		%>        
        <div class="chooseword">選擇口味：
        <select id="choose">
            <option name="Classic-Pets-cat1" selected="selected" style="font-weight: bold;">海洋魚口味 7kg</option>
            <option name="Classic-Pets-cat2" selected="selected" style="font-weight: bold;">海鮮口味 7kg</option>
            <option name="Classic-Pets-cat3" selected="selected" style="font-weight: bold;">鮪魚口味 7kg</option>
            <option name="Classic-Pets-cat4" selected="selected" style="font-weight: bold;">雞肉口味 7kg</option>
        </select>
        </div>
        <!--選擇數量-->
        <ul class="box" style="margin-top: 70px;">
            <li class="amountname">數量：</li>
            <li><input type="button" id="minus" class="minus" value="-"></li>
            <li><input type="text" id="amount" class="amount" value="1" readonly="true" style="background-color:transparent;border:0;"></li>
            <li><input type="button" id="plus" class="plus" value="+"></li>
        </ul>

        <script src="js/plusminus.js"></script>

        <div class="pricename">價錢：</div>
        <div id="product_price">NT$<%=ProductList.getString(2)%></div>
        <div id="left">
            <pre>庫存：$<%=ProductList2.getString(6)%>            已售出：0</pre>
        </div>
		<%
			}}
		%>           
        <!--加入購物車&直接結帳-->
        <a href="cart_add.jsp"><input class="pluscarbtn" type="button" name="plusbuycar" value="加入購物車" style="text-align: center;"></a>
        <a href="shop.jsp"><input class="checkoutbtn" type="button" name="checkout" value="直接結帳" style="text-align: center;"></a>

        
    </section>

    <!--產品圖片-->
    <section>
        <div class="CPDC">
            <img id="CPDCall" src="img/Classic Pets cat/Classic Pets cat.JPG" width="425px" height="500px">
            <div class="rec">
                <div class="recimg">
                    <div class="scroll">
                        <img class="canall" src="img/Classic Pets cat/Classic Pets cat.JPG" onclick="change(this);" width="82px" height="80px">
                        <img class="can1" src="img/Classic Pets cat/Classic Pets cat ocean .jpg" onclick="change(this);" width="82px" height="80px">
                        <img class="can2" src="img/Classic Pets cat/Classic Pets cat seafood.jpg" onclick="change(this);" width="82px" height="80px">
                        <img class="can3" src="img/Classic Pets cat/Classic Pets cat tuna.jpg" onclick="change(this);" width="82px" height="80px">
                        <img class="can4" src="img/Classic Pets cat/Classic Pets cat chicken .jpg" onclick="change(this);" width="82px" height="80px">
                    </div>
                </div>
            </div>
        </div>
        <!--評分分數-->
        <div class="productstar">
            <img src="img/star.png">
            <img src="img/star.png">
            <img src="img/star.png">
            <img src="img/star.png">
            <img src="img/star.png">
        </div>
        <div class="score">5.0</div>
    </section>

    <section id="product_note">
        <h1 class="product-description">.ᐟ.ᐟ 商品描述 .ᐟ.ᐟ</h1>

        <div class="beef">
            <br>✧*。品名：加好寶乾貓糧 - 海洋魚口味。*✧</br>
            <br>❣ 適用對象：成貓</br>
            <br>❣ 商品規格：1.5公斤 / 7公斤</br>
            <br>❣ 成份：玉米、黃豆、樹薯、玉米蛋白、雞肉、雞油、麥麩、礦物質、鮪魚、啤酒酵母、蝦類蛋白、魚油、維生素、DL-蛋氨酸、牛磺酸、胡蘿蔔乾</br>
            、魷魚蛋白、抗氧化劑</br>
            <br>❣ 保存期限：18個月</br>

            <br>—-✩———-✩———-✩———-✩———-✩—- —-✩———-✩———-✩———-✩———-✩—- —-✩———-✩———-✩———-✩———-✩—- </br>
        </div>

        <div class="beefveg">
            <br>✧*。 品名：加好寶乾貓糧 - 海鮮口味 。*✧</br>
            <br>❣ 適用對象：成貓</br>
            <br>❣ 商品規格：1.5公斤 / 7公斤</br>
            <br>❣ 成份：玉米、黃豆、樹薯、玉米蛋白、雞肉、雞油、麥麩、礦物質、鮪魚、啤酒酵母、蝦類蛋白、魚油、維生素、DL-蛋氨酸、牛磺酸、胡蘿蔔乾</br>
            、魷魚蛋白、抗氧化劑</br>
            <br>❣ 保存期限：18個月</br>


            <br>—-✩———-✩———-✩———-✩———-✩—- —-✩———-✩———-✩———-✩———-✩—- —-✩———-✩———-✩———-✩———-✩—-
        </div>

        <div class="beefveg">
            <br>✧*。 品名：加好寶乾貓糧 - 鮪魚口味 。*✧</br>
            <br>❣ 適用對象：成貓</br>
            <br>❣ 商品規格：1.5公斤 / 7公斤</br>
            <br>❣ 成份：玉米、黃豆、樹薯、玉米蛋白、雞肉、雞油、麥麩、礦物質、鮪魚、啤酒酵母、蝦類蛋白、魚油、維生素、DL-蛋氨酸、牛磺酸、胡蘿蔔乾</br>
            <br>、魷魚蛋白、抗氧化劑</br>
            <br>❣ 保存期限：18個月</br>


            <br>—-✩———-✩———-✩———-✩———-✩—- —-✩———-✩———-✩———-✩———-✩—- —-✩———-✩———-✩———-✩———-✩—-
        </div>

        <div class="chicken-rollup">
            <br>✧*。品名：加好寶乾貓糧 - 雞肉口味 。*✧</br>
            <br>❣ 適用對象：成貓</br>
            <br>❣ 商品規格：1.5公斤 / 7公斤</br>
            <br>❣ 成份：玉米、黃豆、樹薯、玉米蛋白、雞肉、雞油、麥麩、礦物質、鮪魚、啤酒酵母、蝦類蛋白、魚油、維生素、DL-蛋氨酸、牛磺酸、胡蘿蔔乾</br>
            、魷魚蛋白、抗氧化劑</br>
            <br>❣ 保存期限：18個月</br>
        </div>



        <!--留言板-->
        <section>
            <div class="rec2">
                <img class="doguser1 users" src="img/Classic Pets cat can/cat.png" style="width: 75px; height:75px;">
                <div class="usernames">cat1@gmail.com</div>
                <div class="commenttime commenttime1">2022/12/27 12:40</div>
                <div class="userstar"><pre>★ ★ ★ ★ ★</pre></div>
                <div class="usercomment usercomment1">我家Perry超愛💜</div>
    
                <img class="doguser2 users" src="img/Classic Pets cat can/cat 3.png" style="width: 75px; height:75px;">
                <div class="usernames">cat2@gmail.com</div>
                <div class="commenttime">2022/11/24 08:24</div>
                <div class="userstar"><pre>★ ★ ★ ★ ★</pre></div>
                <div class="usercomment">飼料超香！我也想吃😍</div>

                <img class="doguser3 users" src="img/Classic Pets cat can/cat 6.png" style="width: 75px; height:75px;">
                <div class="usernames">cat3@gmail.com</div>
                <div class="commenttime">2022/11/11 22:22</div>
                <div class="userstar"><pre>★ ★ ★ ★ ★</pre></div>
                <div class="usercomment">我家貓很挑，但吃完後直接愛上！推👍🏻</div>
            
                <!--星星評分-->
                <div class="stars">
                    <input type="radio" name="star" id="star1" hidden />
                    <label for="star1"></label>
            
                    <input type="radio" name="star" id="star2" hidden />
                    <label for="star2"></label>
            
                    <input type="radio" name="star" id="star3" hidden />
                    <label for="star3"></label>
            
                    <input type="radio" name="star" id="star4" hidden />
                    <label for="star4"></label>
            
                    <input type="radio" name="star" id="star5" hidden />
                    <label for="star5"></label>
                </div>
                <input class="msg" type="text" name="msg_cotect" placeholder="留下評論及評分">
                <input class="sendcomment" type="button" value="送出評論" name="sentmsgs" onclick="sentmsgout()">
                <script>
                function sentmsgout(){
                    alert("已送出評論");
                }
                </script>

            </div>
        </section>
    

        <section>
            <h1 class="product-recommend">.ᐟ.ᐟ 推薦商品 .ᐟ.ᐟ</h1>
            <div>
                <div class="commend-row1fix">
                  <a href="Careline.jsp" target="_blank"><img class="commend-row1" src="img/Classic Pets cat/Careline.jpg"></a>
                  <a href="Meo cat can.jsp" target="_blank"><img class="commend-row1" src="img/Classic Pets cat/meo cat can.JPG"></a>
                  <a href="Meo meat.jsp" target="_blank"><img class="commend-row1"  src="img/Classic Pets cat/meo meat.JPG"></a>
                  <a href="Classic Pets dog can2.jsp" target="_blank"><img class="commend-row1"  src="img/Classic Pets cat/Classic Pets dog can2.JPG"></a>
                </div>
            
                <div class="flex-container-c fixc1">
                  <p class="commend-p c1">NT$780</p>
                  <p class="commend-p2 c1">NT$950</p>
                  <p class="commend-p3 c1">NT$1270</p>
                  <p class="commend-p4 c1">NT$570</p>
                </div>
            
            </div>
            <div style="clear:both"></div>
        </section>


    </article>


   <script src="js/product.js"></script>

  
    <footer>
		<%@include file="footer.jsp"%>
    </footer>
</body>
</html>