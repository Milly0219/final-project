<!DOCTYPE html>
<%@ page contentType="text/html" import="java.sql.*"%>
<%@ page pageEncoding="UTF-8" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bravo自然禮讚貓食</title>
    <link rel="icon" type="image/x-icon" href="img/logo.png">
    
    <style>
        @import "css/Bravo\ cat.css";
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
        <div class="product_name" style="font-weight: bolder;">Bravo自然禮讚貓食</div>
        <div class="introduce">
            <br>膠原蛋白配方-鮭魚 & 鮪魚：</br>
            <br>● 精選優質肉類蛋白質，提供必需營養</br>
            <br>● 國際專利海洋小分子膠原蛋白，含是1000mg/kg</br>
            <br>無穀漢方配方-鮭魚 & 鮪魚：</br>
            <br>● 薑黃+枸杞：漢方食補養生配方</br>
            <br>● 絲蘭除臭精華：天然絲蘭精華，減少不良氣味產生</br>

        </div>
		
		<%
			
			sql = "SELECT * FROM `PRODUCT2` WHERE `ID` = 2";
			ResultSet ProductList = con.createStatement().executeQuery(sql);
			while (ProductList.next()){
				sql = "SELECT * FROM `PRODUCT` WHERE `productID` = 05";
				ResultSet ProductList2 = con.createStatement().executeQuery(sql);
				while (ProductList2.next()){
		%>
   
        <div class="chooseword">選擇口味：
        <select id="choose">
            <option name="bravocat1" selected="selected" style="font-weight: bold;">膠原蛋白配方-鮭魚 7kg</option>
            <option name="bravocat2" selected="selected" style="font-weight: bold;">膠原蛋白配方-鮪魚 7kg</option>
            <option name="bravocat3" selected="selected" style="font-weight: bold;">無穀漢方配方-鮭魚 5.45kg</option>
            <option name="bravocat4" selected="selected" style="font-weight: bold;">無穀漢方配方-鮪魚 5.45kg</option>
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
        <div class="bravocat">
            <img id="bravocatbig" src="img/product/bravo cat.JPG" width="425px" height="500px">
            <div class="rec">
                <div class="recimg">
                    <div class="scroll">
                        <img class="bravocatall" src="img/product/bravo cat.JPG" onclick="change3(this);" width="82px" height="80px">
                        <img class="bravocat1" src="img/bravo cat/Bravo collagen cat salmon.jpg" onclick="change3(this);" width="82px" height="80px">
                        <img class="bravocat2" src="img/bravo cat/Bravo collagen cat tuna.jpg" onclick="change3(this);" width="82px" height="80px">
                        <img class="bravocat3" src="img/bravo cat/Bravo cat salmon.jpg" onclick="change3(this);" width="82px" height="80px">
                        <img class="bravocat4" src="img/bravo cat/Bravo cat tuna.jpg" onclick="change3(this);" width="82px" height="80px">

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

        <div class="salmon">
            <br>✧*。品名：Bravo自然禮讚貓食_膠原蛋白配方 鮭魚 。*✧</br>
            <br>❣ 商品規格：1.5kg、7kg</br>
            <br>❣ 主要使用原料：雞肉粉、鮭魚粉、國產非基因改造玉米、胚芽米、全麥、胜肽蛋白、</br>
            <pre>   家禽油脂(維生素E保存)、乾燥全蛋、乾燥甜菜、乾燥海藻、膠原蛋白、絲蘭萃取物、</pre>
            <pre>   卵磷脂、迷迭香萃取物、牛磺酸、維生素A、維生素D、維生素E、維生素B1、維生素B2、</pre>
            <pre>   維生素B6、維生素B12、菸鹼酸、氯化膽鹼、泛酸鈣、葉酸、生物素、礦物質(鐵、鋅、銅、錳、硒)。</pre>
            <br>❣ 營養成分及含量：蛋白質32%↑、脂肪14%↑、纖維5%↓、水分10%↓、鈣1.3%↑、磷0.8%↑、膠原蛋白1000mg/kg</br>
            <br>—-✩———-✩———-✩———-✩———-✩—- —-✩———-✩———-✩———-✩———-✩—- —-✩———-✩———-✩———-✩———-✩—-


        </br>
        </div>
        <div class="tuna">
            <br>✧*。Bravo自然禮讚貓食_膠原蛋白配方 鮪魚 。*✧</br>
            <br>❣ 商品規格：1.5kg、7kg</br>
            <br>❣ 主要使用原料：雞肉粉、鮪魚粉、國產非基因改造玉米、胚芽米、全麥、胜肽蛋白、</br>
            <pre>   家禽油脂(維生素E保存)、乾燥全蛋、乾燥甜菜、乾燥海藻、膠原蛋白、絲蘭萃取物、卵磷脂、</pre>
            <pre>   迷迭香萃取物、牛磺酸、維生素A、維生素D、維生素E、維生素B1、維生素B2</pre>
            <pre>   、維生素B6、維生素B12、菸鹼酸、氯化膽鹼、泛酸鈣、葉酸、生物素、礦物質(鐵、鋅、銅、錳、硒)。</pre>
            <br>❣ 營養成分及含量：蛋白質32%↑、脂肪14%↑、纖維5%↓、水分10%↓、鈣1.3%↑、磷0.8%↑、膠原蛋白1000mg/kg</br>
            <br>—-✩———-✩———-✩———-✩———-✩—- —-✩———-✩———-✩———-✩———-✩—- —-✩———-✩———-✩———-✩———-✩—-
        </div>

        <div class="salmon1">
            <br>✧*。Bravo自然禮讚貓食-無穀漢方配方 鮭魚 。*✧</br>
            <br>❣ 商品規格：300g、1.36kg、5.45kg</br>
            <br>❣ 主要使用原料：雞肉絨、鮭魚肉絨、豌豆、鷹嘴豆、家禽油脂(維生素E保存)、乾燥全蛋、</br>
            <pre>   乾燥甜菜、薑黃、枸杞子、絲蘭萃取物、椰子油、卵磷脂、牛磺酸、維生素A、維生素D、維生素E、</pre>
            <pre>   維生素B1、維生素B6、維生素B12、核黃素、菸鹼酸、氯化膽鹼、泛酸鈣、葉酸、生物素、礦物質(鐵、鋅、銅、錳、硒)。</pre>
            <br>❣ 營養成分及含量：蛋白質34%↑、脂肪15%↑、纖維5%↓、水分10%↓、鈣1.2%↑、磷0.8%↑</br>
            <br>—-✩———-✩———-✩———-✩———-✩—- —-✩———-✩———-✩———-✩———-✩—- —-✩———-✩———-✩———-✩———-✩—-
        </div>

        <div class="tuna1">
            <br>✧*。Bravo自然禮讚貓食-無穀漢方配方 鮪魚 。*✧</br>
            <br>❣ 商品規格：300g、1.36kg、5.45kg</br>
            <br>❣ 主要使用原料：雞肉絨、鮪魚肉絨、豌豆、鷹嘴豆、家禽油脂(維生素E保存)、乾燥全蛋、乾燥甜菜、</br>
            <pre>   薑黃、枸杞子、絲蘭萃取物、椰子油、卵磷脂、牛磺酸、維生素A、維生素D、維生素E、維生素B1、</pre>
            <pre>   維生素B6、維生素B12、核黃素、菸鹼酸、氯化膽鹼、泛酸鈣、葉酸、生物素、礦物質(鐵、鋅、銅、錳、硒)。</pre>
            <br>❣ 營養成分及含量：蛋白質34%↑、脂肪15%↑、纖維5%↓、水分10%↓、鈣1.2%↑、磷0.8%↑</br>
        </div>


        <!--留言板-->
        <section>
            <div class="rec2">
                <img class="catuser1 users" src="img/meo meat/cool-glasses.png" style="width: 95px; height:97px;">
                <div class="usernames">cat1@gmail.com</div>
                <div class="commenttime commenttime1">2022/12/24 23:18</div>
                <div class="userstar"><pre>★ ★ ★ ★ ★</pre></div>
                <div class="usercomment usercomment1">我家貓咪每天都在期待放飯時刻💛💛</div>
    
                <img class="catuser2 users" src="img/meo meat/squinting.png" style="width: 95px; height:97px;">
                <div class="usernames">cat2@gmail.com</div>
                <div class="commenttime">2022/11/08 10:50</div>
                <div class="userstar"><pre>★ ★ ★ ★ ★</pre></div>
                <div class="usercomment">營養超高的飼料~</div>

                <img class="catuser3 users" src="img/meo meat/smile.png" style="width: 95px; height:97px;">
                <div class="usernames">cat3@gmail.com</div>
                <div class="commenttime">2022/10/31 19:58</div>
                <div class="userstar"><pre>★ ★ ★ ★ ★</pre></div>
                <div class="usercomment">推推漢方配方💕</div>
            
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
                  <a href="Bravo dog.jsp" target="_blank"><img class="commend-row1" src="img/product/bravo dog.JPG"></a>
                  <a href="Classic Pets cat.jsp" target="_blank"><img class="commend-row1" src="img/product/Classic Pets cat.JPG"></a>
                  <a href="Classic Pets cat can.jsp" target="_blank"><img class="commend-row1"  src="img/product/Classic Pets cat can.JPG"></a>
                  <a href="iq meat.jsp"target="_blank"><img class="commend-row1"  src="img/product/iq+ meat paste.jpg"></a>
                </div>
            
                <div class="flex-container-c fixc1">
                  <p class="commend-p c1">NT$1250</p>
                  <p class="commend-p2 c1">NT$530</p>
                  <p class="commend-p3 c1">NT$590</p>
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