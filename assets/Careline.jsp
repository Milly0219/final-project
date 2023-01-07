<!DOCTYPE html>
<%@ page contentType="text/html" import="java.sql.*"%>
<%@ page pageEncoding="UTF-8" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>自然物語犬罐</title>
    <link rel="icon" type="image/x-icon" href="img/logo.png">
    <style>
        @import "css/Careline.css";
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
        <div class="product_name" style="font-weight: bolder;">自然物語犬罐400g</div>
        <div class="introduce">
            <br>特選新鮮優質的肉類與副產品為主材料</br>
            <br>獸醫師與營養師的精心調配以適當的胺基酸、蛋白質、脂肪酸、碳水化合物</br>
            <br>自然源的維生素與礦物質在適當的溫度烹飪出原汁原味的食感</br>
            <br>讓您的愛犬同時擁有食慾與健康</br>
        </div>
		<%
			
			sql = "SELECT * FROM `PRODUCT2` WHERE `ID` = 12";
			ResultSet ProductList = con.createStatement().executeQuery(sql);
			while (ProductList.next()){
				sql = "SELECT * FROM `PRODUCT` WHERE `productID` = 39";
				ResultSet ProductList2 = con.createStatement().executeQuery(sql);
				while (ProductList2.next()){
		%>
   
        <div class="chooseword">選擇口味：
        <select id="choose">
            <option name="careline1" selected="selected" style="font-weight: bold;">牛肉與肉丁400g*24罐</option>
            <option name="careline2" selected="selected" style="font-weight: bold;">牛肉鮪魚400g*24罐</option>
            <option name="careline3" selected="selected" style="font-weight: bold;">羊肉與肉丁400g*24罐</option>
            <option name="careline4" selected="selected" style="font-weight: bold;">純雞肉400g*24罐</option>
            <option name="careline5" selected="selected" style="font-weight: bold;">雞肉與鮪魚400g*24罐</option>
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
            <img id="CPDCall" src="img/Careline/Careline all-3.jpg" width="425px" height="500px">
            <div class="rec">
                <div class="recimg">
                    <div class="scroll">
                        <img class="canall" src="img/Careline/Careline all-3.jpg" onclick="change(this);" width="82px" height="80px">
                        <img class="can1" src="img/Careline/Careline beef.jpg" onclick="change(this);" width="82px" height="80px">
                        <img class="can2" src="img/Careline/Careline beef tuna.jpg" onclick="change(this);" width="82px" height="80px">
                        <img class="can3" src="img/Careline/Careline lamb.jpg" onclick="change(this);" width="82px" height="80px">
                        <img class="can4" src="img/Careline/Careline chicken.jpg" onclick="change(this);" width="82px" height="80px">
                        <img class="can5" src="img/Careline/Careline chicken tuna.jpg" onclick="change(this);" width="82px" height="80px">
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
            <br>✧*。品名：自然物語犬罐 - 牛肉與肉丁口味 。*✧</br>
            <br>❣ 規格：400g</br>
            <br>❣ 營養成分及含量：蛋白質5%↑、脂肪3%↑、纖維1%↓、粗灰分3%↓、水份85%↓</br>
            <br>—-✩———-✩———-✩———-✩———-✩—- —-✩———-✩———-✩———-✩———-✩—- —-✩———-✩———-✩———-✩———-✩—-
        </div>
        <div class="beeftuna">
            <br>✧*。 品名：自然物語犬罐 - 牛肉鮪魚口味 。*✧</br>
            <br>❣ 規格：400g</br>
            <br>❣ 營養成分及含量：蛋白質7%↑、脂肪3%↑、纖維1%↓、粗灰分3%↓、水份85%↓</br>
            <br>—-✩———-✩———-✩———-✩———-✩—- —-✩———-✩———-✩———-✩———-✩—- —-✩———-✩———-✩———-✩———-✩—-
        </div>

        <div class="mutton">
            <br>✧*。 品名：自然物語犬罐 - 羊肉與肉丁口味 。*✧</br>
            <br>❣ 規格：400g</br>
            <br>❣ 營養成分及含量：蛋白質5%↑、脂肪4%↑、纖維1%↓、粗灰分3%↓、水份85%↓</br>
            <br>—-✩———-✩———-✩———-✩———-✩—- —-✩———-✩———-✩———-✩———-✩—- —-✩———-✩———-✩———-✩———-✩—-
        </div>

        <div class="chicken">
            <br>✧*。 品名：自然物語犬罐 - 純雞肉口味 。*✧</br>
            <br>❣ 規格：400g</br>
            <br>❣ 營養成分及含量：蛋白質4%↑、脂肪4%↑、纖維1%↓、粗灰分3%↓、水份85%↓</br>
            <br>—-✩———-✩———-✩———-✩———-✩—- —-✩———-✩———-✩———-✩———-✩—- —-✩———-✩———-✩———-✩———-✩—-
        </div>

        <div class="chickentuna">
            <br>✧*。 品名：自然物語犬罐 - 雞肉與鮪魚口味 。*✧</br>
            <br>❣ 規格：400g</br>
            <br>❣ 營養成分及含量：蛋白質7%↑、脂肪3%↑、纖維1%↓、粗灰分3%↓、水份85%↓</br>
        </div>

        <!--留言板-->
        <section>
            <div class="rec2">
                <img class="doguser1 users" src="img/Careline/dog.PNG" style="width: 80px; height:70px;">
                <div class="usernames">unus1120101@gmail.com</div>
                <div class="commenttime commenttime1">2022/12/05 12:43</div>
                <div class="userstar"><pre>★ ★ ★ ★ ★</pre></div>
                <div class="usercomment usercomment1">Yoyo超級喜歡😍很快就吃完了！</div>
    
                <img class="doguser2 users" src="img/Careline/dog1.png" style="width: 75px; height:75px;">
                <div class="usernames">dog2@gmail.com</div>
                <div class="commenttime">2022/11/14 10:00</div>
                <div class="userstar"><pre>★ ★ ★ ★ ★</pre></div>
                <div class="usercomment">十分滿意👍🏻我家小狗每個口味都超愛😋</div>

                <img class="doguser3 users" src="img/Careline/dog2.png" style="width: 75px; height:75px;">
                <div class="usernames">dog3@gmail.com</div>
                <div class="commenttime">2022/10/22 17:52</div>
                <div class="userstar"><pre>★ ★ ★ ★ ★</pre></div>
                <div class="usercomment">狗狗吃得開心，我也開心！</div>
            
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
                  <a href="Classic Pets dog can.jsp" target="_blank"><img class="commend-row1" src="img/Classic Pets dog can/Classic Pets dog can all.JPG"></a>
                  <a href="Classic Pets dog can2.jsp"target="_blank"><img class="commend-row1" src="img/Classic Pets dog can/Classic Pets dog all1.JPG"></a>
                  <a href="Bravo dog.jsp"target="_blank"><img class="commend-row1"  src="img/Bravo dog/Bravo dog all.JPG"></a>
                  <a href="Meo cat can.jsp"target="_blank"><img class="commend-row1"  src="img/meo cat can/meo cat can all-1.JPG"></a>
                </div>
            
                <div class="flex-container-c fixc1">
                  <p class="commend-p c1">NT$850</p>
                  <p class="commend-p2 c1">NT$520</p>
                  <p class="commend-p3 c1">NT$799</p>
                  <p class="commend-p4 c1">NT$950</p>
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