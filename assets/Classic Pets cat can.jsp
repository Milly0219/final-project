<!DOCTYPE html>
<%@ page contentType="text/html" import="java.sql.*"%>
<%@ page pageEncoding="UTF-8" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>加好寶貓罐80g</title>
    <link rel="icon" type="image/x-icon" href="img/logo.png">
    <style>
        @import "css/Classic\ Pets\ cat\ can.css";
        @import "css/header.css";
        @import "css/nav.css";
        @import "css/footer.css";
    </style>

    <script src="js/main.js"> </script>
    <script src="js/login.js"> </script>
    <script src="js/member.js"> </script>
    <script src="js/close.js"> </script>
    <script src="js/product.js"></script>

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
        <p class="product_name" style="font-weight: bolder;">加好寶貓罐80g</p>
        <div class="introduce">
            <br>※ 牛磺酸 -- 對於維持貓咪的視力功能相當重要</br>
            <br>※ 新鮮食材 -- 真實魚肉看得見</br>
            <br>※ 完整均衡的營養配方</br>
            <br>建議搭配加好寶乾貓糧更添美味</br>
        </div>
		<%
			
			sql = "SELECT * FROM `PRODUCT2` WHERE `ID` = 8";
			ResultSet ProductList = con.createStatement().executeQuery(sql);
			while (ProductList.next()){
				sql = "SELECT * FROM `PRODUCT` WHERE `productID` = 13";
				ResultSet ProductList2 = con.createStatement().executeQuery(sql);
				while (ProductList2.next()){
		%>   
        <div class="chooseword">選擇口味：
        <select id="choose">
            <option name="catcan1" selected="selected" style="font-weight: bold;">海陸雙響80g*24罐</option>
            <option name="catcan2" selected="selected" style="font-weight: bold;">新鮮鮪魚+鮭魚80g*24罐</option>
            <option name="catcan3" selected="selected" style="font-weight: bold;">新鮮鮪魚佐南瓜80g*24罐</option>
            <option name="catcan4" selected="selected" style="font-weight: bold;">新鮮鮪魚佐鮮蝦80g*24罐</option>
            <option name="catcan5" selected="selected" style="font-weight: bold;">新鮮鮪魚佐蟹棒80g*24罐</option>
            <option name="catcan6" selected="selected" style="font-weight: bold;">鮪魚慕斯佐羊奶80g*24罐</option>
            <option name="catcan7" selected="selected" style="font-weight: bold;">鮮鮪魚凍80g*24罐</option>
            <option name="catcan8" selected="selected" style="font-weight: bold;">嚴選雞肉+起司80g*24罐</option>
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
            <img id="CPDCall" src="img/Classic Pets cat can/Classic Pets cat can.JPG" width="425px" height="500px">
            <div class="rec">
                <div class="recimg">
                    <div class="scroll">
                        <img class="canall" src="img/Classic Pets cat can/Classic Pets cat can.JPG" onclick="change(this);" width="82px" height="80px">
                        <img class="can1" src="img/Classic Pets cat can/Classic Pets cat can seafood.jpg" onclick="change(this);" width="82px" height="80px">
                        <img class="can2" src="img/Classic Pets cat can/Classic Pets cat can salmon.jpg" onclick="change(this);" width="82px" height="80px">
                        <img class="can3" src="img/Classic Pets cat can/Classic Pets cat can pumpkin.jpg" onclick="change(this);" width="82px" height="80px">
                        <img class="can4" src="img/Classic Pets cat can/Classic Pets cat can shrimp.jpg" onclick="change(this);" width="82px" height="80px">
                        <img class="can5" src="img/Classic Pets cat can/Classic Pets cat can crab.jpg" onclick="change(this);" width="82px" height="80px">
                        <img class="can6" src="img/Classic Pets cat can/Classic Pets cat can goat milk.jpg" onclick="change(this);" width="82px" height="80px">
                        <img class="can7" src="img/Classic Pets cat can/Classic Pets cat can tuna.jpg" onclick="change(this);" width="82px" height="80px">
                        <img class="can8" src="img/Classic Pets cat can/Classic Pets cat can chickencheese.jpg" onclick="change(this);" width="82px" height="80px">

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
            <br>✧*。品名：加好寶無榖貓罐 - 海陸饗宴 。*✧</br>
            <br>❣ 適用對象：成貓</br>
            <br>❣ 成份：鮪魚、雞肉、膠凝劑、增味劑、牛磺酸、維生素和礦物質</br>
            <br>❣ 保存期限：36個月</br>
           
            <br>—-✩———-✩———-✩———-✩———-✩—- —-✩———-✩———-✩———-✩———-✩—- —-✩———-✩———-✩———-✩———-✩—-


        </br>
        </div>
        <div class="beefveg">
            <br>✧*。 品名：加好寶無榖貓罐 - 新鮮鮪魚+鮭魚 。*✧</br>
            <br>❣ 適用對象：成貓</br>
            <br>❣ 成份：鮪魚、鮭魚、膠凝劑、增味劑、牛磺酸、維生素和礦物質</br>
            <br>❣ 保存期限：36個月</br>
            <br>—-✩———-✩———-✩———-✩———-✩—- —-✩———-✩———-✩———-✩———-✩—- —-✩———-✩———-✩———-✩———-✩—-
        </div>

        <div class="beefliver">
            <br>✧*。 品名：加好寶無榖貓罐 - 新鮮鮪魚佐南瓜 。*✧</br>
            <br>❣ 適用對象：成貓</br>
            <br>❣ 成份：鮪魚、南瓜、膠凝劑、增味劑、牛磺酸、維生素和礦物質</br>
            <br>❣ 保存期限：36個月</br>
            <br>—-✩———-✩———-✩———-✩———-✩—- —-✩———-✩———-✩———-✩———-✩—- —-✩———-✩———-✩———-✩———-✩—-
        </div>

        <div class="chicken-rollup">
            <br>✧*。 品名：加好寶無榖貓罐 - 新鮮鮪魚佐鮮蝦 。*✧</br>
            <br>❣ 適用對象：成貓</br>
            <br>❣ 鮪魚、蝦、膠凝劑、增味劑、牛磺酸、維生素和礦物質</br>
            <br>❣ 保存期限：36個月</br>
            <br>—-✩———-✩———-✩———-✩———-✩—- —-✩———-✩———-✩———-✩———-✩—- —-✩———-✩———-✩———-✩———-✩—-
        </div>

        <div class="chickenveg">
            <br>✧*。 品名：加好寶無榖貓罐 - 新鮮鮪魚佐蟹棒 。*✧</br>
            <br>❣ 適用對象：成貓</br>
            <br>❣ 鮪魚、蟹肉棒、膠凝劑、增味劑、牛磺酸、維生素和礦物質</br>
            <br>❣ 保存期限：36個月</br>
            <br>—-✩———-✩———-✩———-✩———-✩—- —-✩———-✩———-✩———-✩———-✩—- —-✩———-✩———-✩———-✩———-✩—-
        </div>

        <div class="sheep">
            <br>✧*。 品名：加好寶無榖貓罐 - 鮪魚慕斯佐羊奶 。*✧</br>
            <br>❣ 適用對象：成貓</br>
            <br>❣ 鮪魚、修飾澱粉、山羊奶、葵花籽油、增稠劑、增味劑、牛磺酸、維生素和礦物質</br>
            <br>❣ 保存期限：36個月</br>
            <br>—-✩———-✩———-✩———-✩———-✩—- —-✩———-✩———-✩———-✩———-✩—- —-✩———-✩———-✩———-✩———-✩—-
        </div>

        <div class="sheep">
            <br>✧*。 品名：加好寶無榖貓罐 - 鮮鮪魚凍 。*✧</br>
            <br>❣ 適用對象：成貓</br>
            <br>❣ 鮪魚、膠凝劑、增味劑、牛磺酸、維生素和礦物質</br>
            <br>❣ 保存期限：36個月</br>
            <br>—-✩———-✩———-✩———-✩———-✩—- —-✩———-✩———-✩———-✩———-✩—- —-✩———-✩———-✩———-✩———-✩—-
        </div>

        <div class="sheep">
            <br>✧*。 品名：加好寶無榖貓罐 - 嚴選雞肉+起司 。*✧</br>
            <br>❣ 適用對象：成貓</br>
            <br>❣ 雞肉、奶酪、膠凝劑、增味劑、牛磺酸、維生素和礦物質</br>
            <br>❣ 保存期限：36個月</br>
        </div>

        <!--留言板-->
        <section>
            <div class="rec2">
                <img class="doguser1 users" src="img/Classic Pets cat can/cat.png" style="width: 75px; height:75px;">
                <div class="usernames">cat1@gmail.com</div>
                <div class="commenttime commenttime1">2022/12/25 12:25</div>
                <div class="userstar"><pre>★ ★ ★ ★ ★</pre></div>
                <div class="usercomment usercomment1">我家貓貓超喜歡💜</div>

                <img class="doguser2 users" src="img/Classic Pets cat can/cat 3.png" style="width: 75px; height:75px;">
                <div class="usernames">cat2@gmail.com</div>
                <div class="commenttime">2022/11/30 08:00</div>
                <div class="userstar"><pre>★ ★ ★ ★ ★</pre></div>
                <div class="usercomment">罐頭香到爆！Lucy好像變胖了😍</div>

                <img class="doguser3 users" src="img/Classic Pets cat can/cat 6.png" style="width: 75px; height:75px;">
                <div class="usernames">cat3@gmail.com</div>
                <div class="commenttime">2022/10/18 22:55</div>
                <div class="userstar"><pre>★ ★ ★ ★ ★</pre></div>
                <div class="usercomment">我家這隻超愛吃！推👍🏻</div>
            
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
                  <a href="Meo cat can.jsp" target="_blank"><img class="commend-row1" src="img/Classic Pets cat can/meo cat can.JPG"></a>
                  <a href="iq meat.jsp" target="_blank"><img class="commend-row1" src="img/Classic Pets cat can/iq+ meat paste.jpg"></a>
                  <a href="Classic Pets cat can.jsp" target="_blank"><img class="commend-row1"  src="img/Classic Pets cat can/Classic Pets dog can.JPG"></a>
                  <a href="Bravo cat.jsp" target="_blank"><img class="commend-row1"  src="img/Classic Pets cat can/FC.JPG"></a>
                </div>
            
                <div class="flex-container-c fixc1">
                  <p class="commend-p c1">NT$950</p>
                  <p class="commend-p2 c1">NT$159</p>
                  <p class="commend-p3 c1">NT$850</p>
                  <p class="commend-p4 c1">NT$699</p>
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