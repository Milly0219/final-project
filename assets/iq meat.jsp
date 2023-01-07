<!DOCTYPE html>
<%@ page contentType="text/html" import="java.sql.*"%>
<%@ page pageEncoding="UTF-8" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/x-icon" href="img/logo.png">

    <title>iq+ 貓咪樂泥棒</title>
    <style>
        @import "css/iq\ meat.css";
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
        <div class="product_name" style="font-weight: bolder;">iq+ 貓咪樂泥棒 20入/包</div>
        <div class="introduce">
            <p></p>
            <br>雞肉口味：屬於貓咪的日式點心 綠茶提取物&牛磺酸添加</br>
            <br>鰹魚口味：屬於貓咪的日式點心 貓咪最喜歡的魚魚口味 綠茶提取物&牛磺酸添加 </br>
            <br>鮪魚口味：屬於貓咪的日式點心 貓咪最喜歡的魚魚口味 綠茶提取物&牛磺酸添加</br>
            <p></p>
        </div>
 		<%
			
			sql = "SELECT * FROM `PRODUCT2` WHERE `ID` = 4";
			ResultSet ProductList = con.createStatement().executeQuery(sql);
			while (ProductList.next()){
				sql = "SELECT * FROM `PRODUCT` WHERE `productID` = 23";
				ResultSet ProductList2 = con.createStatement().executeQuery(sql);
				while (ProductList2.next()){
		%>        
   
        <div class="chooseword">選擇口味：
        <select id="choose">
            <option name="iq+meat1" selected="selected" style="font-weight: bold;">雞肉口味 (20入)</option>
            <option name="iq+meat2" selected="selected" style="font-weight: bold;">鰹魚口味 (20入)</option>
            <option name="iq+meat3" selected="selected" style="font-weight: bold;">鮪魚口味 (20入)</option>
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
        <div class="meomeat">
            <img id="meomeatall" src="img/product/iq+ meat paste.jpg" width="425px" height="500px">
            <div class="rec">
                <div class="recimg">
                    <div class="scroll">
                        <img class="meatall" src="img/product/iq+ meat paste.jpg" onclick="change1(this);" width="82px" height="80px">
                        <img class="meat1" src="img/iq meat/iq+ meat paste chicken.jpg" onclick="change1(this);" width="82px" height="80px">
                        <img class="meat1-1" src="img/iq meat/iq+ meat paste bonito.jpg" onclick="change1(this);" width="82px" height="80px">
                        <img class="meat2" src="img/iq meat/iq+ meat paste tuna.jpg" onclick="change1(this);" width="82px" height="80px">
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

        <div class="crab">
            <br>✧*。品名：iq+ 貓咪樂泥棒 - 鮪魚口味 。*✧</br>
            <br>❣ 適用對象：成貓</br>
            <br>❣ 商品規格：14g*4支/袋裝 14g*20支/袋裝</br>
            <br>❣ 成份：鮪魚、鮪魚粉、雞油、膠凝劑、修飾澱粉、魚香料、綠茶提取物粉、pH調整劑(焦磷酸鈉)、牛磺酸、維生素(C、E)、水</br>
            <br>❣ 保存期限：24個月</br>
            <br>—-✩———-✩———-✩———-✩———-✩—- —-✩———-✩———-✩———-✩———-✩—- —-✩———-✩———-✩———-✩———-✩—-


        </br>
        </div>
        <div class="bonito">
            <br>✧*。iq+ 貓咪樂泥棒 - 鰹魚口味 。*✧</br>
            <br>❣ 適用對象：成貓</br>
            <br>❣ 商品規格：14g*4支/袋裝 14g*20支/袋裝</br>
            <br>❣ 成份：鮪魚、鰹魚粉、雞油、膠凝劑、修飾澱粉、綠茶提取物粉、pH調整劑(焦磷酸鈉)、牛磺酸、維生素(C、E)、水</br>
            <br>❣ 保存期限：24個月</br>
            <br>—-✩———-✩———-✩———-✩———-✩—- —-✩———-✩———-✩———-✩———-✩—- —-✩———-✩———-✩———-✩———-✩—-
        </div>

        <div class="salmon">
            <br>✧*。品名：iq+ 貓咪樂泥棒 - 雞肉口味 。*✧</br>
            <br>❣ 適用對象：成貓</br>
            <br>❣ 商品規格：14g*4支/袋裝 14g*20支/袋裝</br>
            <br>❣ 成份：雞肉、雞肝、雞油、膠凝劑、修飾澱粉、雞調味粉、綠茶提取物粉、pH調整劑(焦磷酸鈉)、牛磺酸、維生素(C、E)、水</br>
            <br>❣ 保存期限：24個月</br>
            <br>—-✩———-✩———-✩———-✩———-✩—- —-✩———-✩———-✩———-✩———-✩—- —-✩———-✩———-✩———-✩———-✩—-
        </div>

        <!--留言板-->
        <section>
            <div class="rec2">
                <img class="catuser1 users" src="img/meo meat/cool-glasses.png" style="width: 95px; height:97px;">
                <div class="usernames">cat1@gmail.com</div>
                <div class="commenttime commenttime1">2022/12/24 23:18</div>
                <div class="userstar"><pre>★ ★ ★ ★ ★</pre></div>
                <div class="usercomment usercomment1">上次買Meo肉泥貓咪很愛😻這次換買iq+的試試看！</div>
    
                <img class="catuser2 users" src="img/meo meat/squinting.png" style="width: 95px; height:97px;">
                <div class="usernames">cat2@gmail.com</div>
                <div class="commenttime">2022/11/08 10:50</div>
                <div class="userstar"><pre>★ ★ ★ ★ ★</pre></div>
                <div class="usercomment">價格便宜~超讚😋</div>

                <img class="catuser3 users" src="img/meo meat/smile.png" style="width: 95px; height:97px;">
                <div class="usernames">cat3@gmail.com</div>
                <div class="commenttime">2022/10/31 19:58</div>
                <div class="userstar"><pre>★ ★ ★ ★ ★</pre></div>
                <div class="usercomment">我家貓現在都追著我跑🤣🤣</div>
            
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
                  <a href="Meo meat.jsp" target="_blank"><img class="commend-row1" src="img/product/meo meat.JPG"></a>
                  <a href="Meo cat can.jsp" target="_blank"><img class="commend-row1" src="img/product/meo cat can.JPG"></a>
                  <a href="FUSO Pets.jsp" target="_blank"><img class="commend-row1"  src="img/product/FC.JPG"></a>
                  <a href="Classic Pets dog can2.jsp" target="_blank"><img class="commend-row1"  src="img/product/Classic Pets dog can2.JPG"></a>
                </div>
            
                <div class="flex-container-c fixc1">
                  <p class="commend-p c1">NT$1270</p>
                  <p class="commend-p2 c1">NT$950</p>
                  <p class="commend-p3 c1">NT$699</p>
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