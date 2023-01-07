<!DOCTYPE html>
<%@ page contentType="text/html" import="java.sql.*"%>
<%@ page pageEncoding="UTF-8" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>加好寶乾狗糧15kg</title>
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
        <div class="product_name" style="font-weight: bolder;">加好寶乾狗糧15kg</div>
        <div class="introduce">
            <br>◎ Omega6和鋅能有效保健皮膚、使毛色健康亮麗</br>
            <br>◎ 均衡的碳水化合物幫助愛犬健康有活力</br>
            <br>◎ 維生素E和硒可幫助增加愛犬自然抵抗力</br>
            <br>◎ 鈣、磷可幫助骨骼和牙齒的發育與成長</br>
            <br>◎ 顆粒設計有助於清除齒垢</br>
            <br>◎ 優質蛋白質有助於維持強健的肌肉</br>
        </div>
 		<%
			
			sql = "SELECT * FROM `PRODUCT2` WHERE `ID` = 6";
			ResultSet ProductList = con.createStatement().executeQuery(sql);
			while (ProductList.next()){
				sql = "SELECT * FROM `PRODUCT` WHERE `productID` = 30";
				ResultSet ProductList2 = con.createStatement().executeQuery(sql);
				while (ProductList2.next()){
		%>     
        <div class="chooseword">選擇口味：
        <select id="choose">
            <option name="dog2can1" selected="selected" style="font-weight: bold;">牛肉口味 15kg</option>
            <option name="dog2can2"selected="selected" style="font-weight: bold;">牛肉蔬菜 15kg</option>
            <option name="dog2can3"selected="selected" style="font-weight: bold;">羊肉口味 15kg</option>
            <option name="dog2can4"selected="selected" style="font-weight: bold;">雞肉口味 15kg</option>
            <option name="dog2can5"selected="selected" style="font-weight: bold;">雞肉蔬菜 15kg</option>
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
            <pre>庫存：<%=ProductList2.getString(6)%>            已售出：0</pre>
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
            <img id="CPDCall" src="img/Classic Pets dog can2/Classic Pets dog can2.JPG" width="425px" height="500px">
            <div class="rec">
                <div class="recimg">
                    <div class="scroll">
                        <img class="canall" src="img/Classic Pets dog can2/Classic Pets dog can2.JPG" onclick="change(this);" width="82px" height="80px">
                        <img class="can1" src="img/Classic Pets dog can2/Classic Pets dog2 beef.jpg" onclick="change(this);" width="82px" height="80px">
                        <img class="can2" src="img/Classic Pets dog can2/Classic Pets dog2 beef vegetable.jpg" onclick="change(this);" width="82px" height="80px">
                        <img class="can3" src="img/Classic Pets dog can2/Classic Pets dog2 lamb.jpg" onclick="change(this);" width="82px" height="80px">
                        <img class="can4" src="img/Classic Pets dog can2/Classic Pets dog2 chicken.jpg" onclick="change(this);" width="82px" height="80px">
                        <img class="can5" src="img/Classic Pets dog can2/Classic Pets dog2 chicken vegetable.jpg" onclick="change(this);" width="82px" height="80px">
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
            <br>✧*。 品名：加好寶乾狗糧 - 牛肉口味 - 中大型成犬專用 。*✧</br>
            <br>❣ 成份：玉米、黃豆、雞肉、樹薯、米糠、雞油、礦物質、維生素、香料（牛肉口味來自於香料）、抗氧化劑</br>
            <br>❣ 保存期限：18個月</br>
            <br>—-✩———-✩———-✩———-✩———-✩—- —-✩———-✩———-✩———-✩———-✩—- —-✩———-✩———-✩———-✩———-✩—-
        </br>
        </div>

        <div class="beefveg">
            <br>✧*。 品名：加好寶乾狗糧 - 牛肉蔬菜口味 - 中大型成犬專用 。*✧</br>
            <br>❣ 成份：玉米、黃豆、雞肉、樹薯、米糠、雞油、礦物質、維生素、胡蘿蔔、香料（牛肉口味來自於香料）、抗氧化劑</br>
            <br>❣ 保存期限：18個月</br>
            <br>—-✩———-✩———-✩———-✩———-✩—- —-✩———-✩———-✩———-✩———-✩—- —-✩———-✩———-✩———-✩———-✩—-
        </div>

        <div class="beefliver">
            <br>✧*。 品名：加好寶乾狗糧 - 羊肉口味 - 中大型成犬專用 。*✧</br>
            <br>❣ 成份：玉米、黃豆、樹薯、米糠、雞肉、雞油、礦物質、羊肉、維生素、抗氧化劑</br>
            <br>❣ 保存期限：18個月</br>
            <br>—-✩———-✩———-✩———-✩———-✩—- —-✩———-✩———-✩———-✩———-✩—- —-✩———-✩———-✩———-✩———-✩—-
        </div>

        <div class="chicken-rollup">
            <br>✧*。 品名：加好寶乾狗糧 - 雞肉口味 - 中大型成犬專用 。*✧</br>
            <br>❣ 成份：玉米、黃豆、雞肉、樹薯、米糠、雞油、礦物質、維生素、抗氧化劑</br>
            <br>❣ 保存期限：18個月</br>
            <br>—-✩———-✩———-✩———-✩———-✩—- —-✩———-✩———-✩———-✩———-✩—- —-✩———-✩———-✩———-✩———-✩—-
        </div>

        <div class="chickenveg">
            <br>✧*。 品名：加好寶乾狗糧 - 雞肉蔬菜口味 - 中大型成犬專用。*✧</br>
            <br>❣ 成份：玉米、黃豆、雞肉、樹薯、米糠、雞油、礦物質、維生素、胡蘿蔔、抗氧化劑</br>
            <br>❣ 保存期限：18個月</br>
        </div>

        <!--留言板-->
        <section>
            <div class="rec2">
                <img class="doguser1 users" src="img/Classic Pets dog can/dog.png" style="width: 75px; height:75px;">
                <div class="usernames">dog1@gmail.com</div>
                <div class="commenttime commenttime1">2022/12/12 15:40</div>
                <div class="userstar"><pre>★ ★ ★ ★ ★</pre></div>
                <div class="usercomment usercomment1">我家Petty超愛💜</div>
    
                <img class="doguser2 users" src="img/Classic Pets dog can/bergamasco.png" style="width: 75px; height:75px;">
                <div class="usernames">dog2@gmail.com</div>
                <div class="commenttime">2022/12/01 08:00</div>
                <div class="userstar"><pre>★ ★ ★ ★ ★</pre></div>
                <div class="usercomment">還會再定期回購😍</div>

                <img class="doguser3 users" src="img/Classic Pets dog can/schnauzer.png" style="width: 75px; height:75px;">
                <div class="usernames">dog3@gmail.com</div>
                <div class="commenttime">2022/11/18 22:42</div>
                <div class="userstar"><pre>★ ★ ★ ★ ★</pre></div>
                <div class="usercomment">我家狗狗吃超多又超快！👍🏻</div>
            
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
                  <a href="Careline.jsp" target="_blank"><img class="commend-row1" src="img/Classic Pets dog can2/Careline.jpg"></a>
                  <a href="Classic Pets dog can.jsp" target="_blank"><img class="commend-row1" src="img/Classic Pets dog can2/Classic Pets dog can.JPG"></a>
                  <a href="Classic Pets cat.jsp" target="_blank"><img class="commend-row1"  src="img/Classic Pets dog can2/Classic Pets cat.JPG"></a>
                  <a href="Bravo dog.jsp" target="_blank"><img class="commend-row1"  src="img/Classic Pets dog can2/bravo dog.JPG"></a>
                </div>
            
                <div class="flex-container-c fixc1">
                  <p class="commend-p c1">NT$780</p>
                  <p class="commend-p2 c1">NT$850</p>
                  <p class="commend-p3 c1">NT$530</p>
                  <p class="commend-p4 c1">NT$1250</p>
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