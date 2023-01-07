<!DOCTYPE html>
<%@ page contentType="text/html" import="java.sql.*"%>
<%@ page pageEncoding="UTF-8" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Me-O咪歐貓罐</title>
    <link rel="icon" type="image/x-icon" href="img/logo.png">

    <style>
        @import "css/Meo cat can.css";
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
        <div class="product_name" style="font-weight: bolder;">Me-O咪歐貓罐170g</div>
        <div class="introduce">
            <br>含豐富牛磺酸 可調節愛貓視力的神經傳導 維持大腦與視覺的正常生理功能</br>
            <br>維生素Ｅ具抗氧化作用 加強增加愛貓自然抵抗力</br>
            <br>添加高純度的Omega 3 & 6及鋅 幫助皮膚健康 使毛髮蓬鬆亮麗</br>
            <br>優質蛋白質與均衡的胺基酸配方 幫助愛貓肌肉發展 活動力PLUS</br>
        </div>
 		<%
			
			sql = "SELECT * FROM `PRODUCT2` WHERE `ID` = 11";
			ResultSet ProductList = con.createStatement().executeQuery(sql);
			while (ProductList.next()){
				sql = "SELECT * FROM `PRODUCT` WHERE `productID` = 21";
				ResultSet ProductList2 = con.createStatement().executeQuery(sql);
				while (ProductList2.next()){
		%>        
   
        <div class="chooseword">選擇口味：
        <select id="choose">
            <option name="meocat1" selected="selected" style="font-weight: bold;">鮪魚口味170g*48罐</option>
            <option name="meocat2" selected="selected" style="font-weight: bold;">沙丁魚口味170g*48罐</option>
        </select>
        </div>
        <!--選擇數量-->
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

        <div id="product_price"></div>
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
            <img id="CPDCall" src="img/meo cat can/meo cat can all-1.JPG" width="425px" height="500px">
            <div class="rec">
                <div class="recimg">
                    <div class="scroll">
                        <img class="canall" src="img/meo cat can/meo cat can all-1.JPG" onclick="change(this);" width="82px" height="80px">
                        <img class="can1" src="img/meo cat can/meo cat can tuna.jpg" onclick="change(this);" width="82px" height="80px">
                        <img class="can2" src="img/meo cat can/meo cat can sardine.jpg" onclick="change(this);" width="82px" height="80px">
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

        <div class="tuna">
            <br>✧*。品名：咪歐貓罐 - 鮪魚口味 。*✧</br>
            <br>❣ 適用對象：成貓</br>
            <br>❣ 成份：鮪魚、大豆油、膠凝劑、香料、修飾澱粉、維生素和礦物質、牛磺酸、食用色素</br>
            <br>❣ 保存期限：36個月</br>
            <br>—-✩———-✩———-✩———-✩———-✩—- —-✩———-✩———-✩———-✩———-✩—- —-✩———-✩———-✩———-✩———-✩—-
        </div>
        <div class="sardine">
            <br>✧*。 品名：咪歐貓罐 - 沙丁魚口味 。*✧</br>
            <br>❣ 適用對象：成貓</br>
            <br>❣ 成份：沙丁魚、鯖魚、大豆油、膠凝劑、香料、維生素和礦物質、牛磺酸、食用色素</br>
            <br>❣ 保存期限：36個月</br>
            <br>—-✩———-✩———-✩———-✩———-✩—- —-✩———-✩———-✩———-✩———-✩—- —-✩———-✩———-✩———-✩———-✩—-
        </div>

        

        <!--留言板-->
        <section>
            <div class="rec2">
                <img class="doguser1 users" src="img/meo cat can/cat.png" style="width: 80px; height:70px;">
                <div class="usernames">unus1120101@gmail.com</div>
                <div class="commenttime commenttime1">2022/12/16 01:55</div>
                <div class="userstar"><pre>★ ★ ★ ★ ★</pre></div>
                <div class="usercomment usercomment1">讚讚！我會繼續回購給小咪吃😻</div>
    
                <img class="doguser2 users" src="img/meo cat can/cat1.png" style="width: 75px; height:75px;">
                <div class="usernames">dog2@gmail.com</div>
                <div class="commenttime">2022/11/25 17:30</div>
                <div class="userstar"><pre>★ ★ ★ ★ ★</pre></div>
                <div class="usercomment">不可或缺的好食品💯我的貓貓每天都在吃！</div>

                <img class="doguser3 users" src="img/meo cat can/cat2.png" style="width: 75px; height:75px;">
                <div class="usernames">dog3@gmail.com</div>
                <div class="commenttime">2022/11/02 9:12</div>
                <div class="userstar"><pre>★ ★ ★ ★ ★</pre></div>
                <div class="usercomment">好吃又健康，買起來👍🏻</div>
            
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
                  <a href="Classic Pets cat.jsp" target="_blank"><img class="commend-row1" src="img/product/Classic Pets cat.JPG"></a>
                  <a href="Bravo cat.jsp" target="_blank"><img class="commend-row1" src="img/Bravo dog/bravo cat.JPG"></a>
                  <a href="FUSO Pets.jsp" target="_blank"><img class="commend-row1"  src="img/FUSO Pets/FC.JPG"></a>
                  <a href="iq meat.jsp" target="_blank"><img class="commend-row1"  src="img/product/iq+ meat paste.jpg"></a>
                </div>
            
                <div class="flex-container-c fixc1">
                  <p class="commend-p c1">NT$530</p>
                  <p class="commend-p2 c1">NT$1250</p>
                  <p class="commend-p3 c1">NT$699</p>
                  <p class="commend-p4 c1">NT$159</p>
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