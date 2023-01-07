<!DOCTYPE html>
<%@ page contentType="text/html" import="java.sql.*"%>
<%@ page pageEncoding="UTF-8" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bravo自然禮讚犬食</title>
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
    <script src="js/plusminus.js"></script>

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
        <div class="product_name" style="font-weight: bolder;">Bravo自然禮讚犬食</div>
        <div class="introduce">
            <br> ● 羊肉+豌豆：低過敏肉類無穀配方</br>
            <br> ● 鹿肉+豌豆：低過敏肉類無穀配方</br>
            <br> ● 薑黃+枸杞：漢方食補養生配方</br>
            <br> ● 迷迭香萃取物：天然抗氧化，維護狗狗健康</br>
            <br> ● 絲蘭除臭精華：天然絲蘭精華，減少不良氣味產生</br>
        </div>
 
		<%
			
			sql = "SELECT * FROM `PRODUCT2` WHERE `ID` = 1";
			ResultSet ProductList = con.createStatement().executeQuery(sql);
			while (ProductList.next()){
				sql = "SELECT * FROM `PRODUCT` WHERE `productID` = 35";
				ResultSet ProductList2 = con.createStatement().executeQuery(sql);
				while (ProductList2.next()){
		%>

 
        <div class="chooseword">選擇口味：
        <select id="choose">
            <option name="Bravodog1" selected="selected" style="font-weight: bold;">牛肉口味 7kg</option>
            <option name="Bravodog2" selected="selected" style="font-weight: bold;">羊肉口味 7kg</option>
            <option name="Bravodog3" selected="selected" style="font-weight: bold;">羊肉配方 6kg</option>
            <option name="Bravodog4" selected="selected" style="font-weight: bold;">鹿肉配方 6kg</option>
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
            <img id="CPDCall" src="img/Bravo dog/Bravo dog all.JPG" width="425px" height="500px">
            <div class="rec">
                <div class="recimg">
                    <div class="scroll">
                        <img class="canall" src="img/Bravo dog/Bravo dog all.JPG" onclick="change(this);" width="82px" height="80px">
                        <img class="can1" src="img/Bravo dog/Bravo collagen dog beef.jpg" onclick="change(this);" width="82px" height="80px">
                        <img class="can2" src="img/Bravo dog/Bravo collagen dog lamb.jpg" onclick="change(this);" width="82px" height="80px">
                        <img class="can3" src="img/Bravo dog/Bravo dog lamb.jpg" onclick="change(this);" width="82px" height="80px">
                        <img class="can4" src="img/Bravo dog/Bravo dog deer.jpg" onclick="change(this);" width="82px" height="80px">
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
            <br>✧*。 品名：Bravo自然禮讚犬食_膠原蛋白配方 牛肉 。*✧</br>
            <br>● 精選優質肉類蛋白質，提供必需營養</br>
            <br>● 國際專利海洋小分子膠原蛋白，含是1000mg/kg</br>
            <br>● 潔淨海域海藻，補充天然微量礦物質</br>
            <br>● 天然絲蘭精華，減少排便臭味</br>
            <br>❣ 商品規格：1.5kg．7kg</br>
            <br>❣ 主要使用原料：國產非基因改造玉米、雞肉粉、牛肉粉、全麥、胚芽米、胜肽蛋白、家禽油脂(維生素E保存)、乾燥全蛋、乾燥甜菜、乾燥海藻</br>
            <br>、膠原蛋白、絲蘭萃取物、卵磷脂、迷迭香萃取物、維生素A、維生素D、維生素E、維生素B1、維生素B2、維生素B6、維生素B12、菸鹼酸、氯化膽</br>
            <br>鹼、泛酸鈣、葉酸、生物素、礦物質(鐵、鋅、銅、錳、硒)。 </br>
            <br>❣ 營養成分及含量：蛋白質22%↑、脂肪10%↑、纖維4.5%↓、水分10%↓、鈣1.3%↑、磷0.8%↑、膠原蛋白1000mg/kg</br>
      
            <br>—-✩———-✩———-✩———-✩———-✩—- —-✩———-✩———-✩———-✩———-✩—- —-✩———-✩———-✩———-✩———-✩—-


        </br>
        </div>
        <div class="beefveg">
            <br>✧*。 品名：Bravo自然禮讚犬食_膠原蛋白配方 羊肉 。*✧</br>
            <br>● 精選優質肉類蛋白質，提供必需營養</br>
            <br>● 國際專利海洋小分子膠原蛋白，含是1000mg/kg</br>
            <br>● 潔淨海域海藻，補充天然微量礦物質</br>
            <br>● 天然絲蘭精華，減少排便臭味</br>
            <br>❣ 商品規格：1.5kg、7kg</br>
            <br>❣ 主要使用原料：國產非基因改造玉米、雞肉粉、羊肉粉、全麥、胚芽米、胜肽蛋白、家禽油脂(維生素E保存)、乾燥全蛋、乾燥甜菜、乾燥海藻</br>
            <br>、膠原蛋白、絲蘭萃取物、卵磷脂、迷迭香萃取物、維生素A、維生素D、維生素E、維生素B1、維生素B2、維生素B6、維生素B12、菸鹼酸、氯化膽</br>
            <br>鹼、泛酸鈣、葉酸、生物素、礦物質(鐵、鋅、銅、錳、硒)。</br>
            <br>❣ 營養成分及含量：蛋白質22%↑、脂肪10%↑、纖維4.5%↓、水分10%↓、鈣1.3%↑、磷	0.8%↑、膠原蛋白	1000mg/kg    </br>
            <br>—-✩———-✩———-✩———-✩———-✩—- —-✩———-✩———-✩———-✩———-✩—- —-✩———-✩———-✩———-✩———-✩—-
        </div>

        <div class="beefliver">
            <br>✧*。 品名：Bravo自然禮讚無榖漢方犬食-羊肉配方 。*✧</br>
            <br>● 羊肉+豌豆：低過敏肉類無穀配方</br>
            <br>● 薑黃+枸杞：漢方食補養生配方</br>
            <br>● 迷迭香萃取物：天然抗氧化，維護狗狗健康</br>
            <br>● 絲蘭除臭精華：天然絲蘭精華，減少不良氣味產生</br>
            <br>商品規格：500g、1.5kg、6kg</br>
            <br>❣ 主要使用原料：羊肉絨、豌豆、馬鈴薯、雞肉絨、家禽油脂(維生素E保存)、乾燥全蛋、乾燥甜菜、薑黃、枸杞子、絲蘭萃取物、迷迭香萃取物</br>
            <br>乾燥海藻、膠原蛋白、絲蘭萃取物、卵磷脂、迷迭香萃取物、維生素A、維生素D、維生素E、維生素B1、維生素B2、維生素B6、維生素B12、卵磷脂</br>
            <br>、維生素A、維生素D、維生素E、維生素B1、核黃素、維生素B6、維生素B12、菸鹼酸、氯化膽鹼、泛酸鈣、葉酸、生物素、礦物(鐵、鋅、銅、錳、硒)。</br>
            <br>❣ 營養成分及含量：蛋白質26.0%↑、脂肪	12.0%↑、纖維4.5%↓、水分10.0%↓、鈣1.3%↑、磷	0.8%↑  </br>
            <br>—-✩———-✩———-✩———-✩———-✩—- —-✩———-✩———-✩———-✩———-✩—- —-✩———-✩———-✩———-✩———-✩—-
        </div>

       

        <!--留言板-->
        <section>
            <div class="rec2">
                <img class="doguser1 users" src="img/Classic Pets dog can/dog.png" style="width: 75px; height:75px;">
                <div class="usernames">dog1@gmail.com</div>
                <div class="commenttime commenttime1">2022/12/31 19:40</div>
                <div class="userstar"><pre>★ ★ ★ ★ ★</pre></div>
                <div class="usercomment usercomment1">我家狗狗愛不釋手💜</div>
    
                <img class="doguser2 users" src="img/Classic Pets dog can/bergamasco.png" style="width: 75px; height:75px;">
                <div class="usernames">unus1120101@gmail.com</div>
                <div class="commenttime">2022/12/02 10:00</div>
                <div class="userstar"><pre>★ ★ ★ ★ ★</pre></div>
                <div class="usercomment">非常香！！ Lucky吃得很開心👍🏻</div>
                <img class="doguser3 users" src="img/Classic Pets dog can/schnauzer.png" style="width: 75px; height:75px;">
                <div class="usernames">dog3@gmail.com</div>
                <div class="commenttime">2022/10/28 21:42</div>
                <div class="userstar"><pre>★ ★ ★ ★ ★</pre></div>
                <div class="usercomment">我家狗狗表示：好吃！推推👍🏻👍🏻</div>
            
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
                  <a href="Bravo cat.jsp" target="_blank"><img class="commend-row1" src="img/Bravo dog/bravo cat.JPG"></a>
                  <a href="Classic Pets dog can.jsp" target="_blank"><img class="commend-row1" src="img/Bravo dog/Classic Pets dog can.JPG"></a>
                  <a href="soon.jsp" target="_blank"><img class="commend-row1"  src="img/Bravo dog/soon.JPG"></a>
                  <a href="Classic Pets cat.jsp" target="_blank"><img class="commend-row1"  src="img/Bravo dog/Classic Pets cat.JPG" ></a>
                </div>
            
                <div class="flex-container-c fixc1">
                  <p class="commend-p c1">NT$1250</p>
                  <p class="commend-p2 c1">NT$850</p>
                  <p class="commend-p3 c1">NT$999</p>
                  <p class="commend-p4 c1">NT$530</p>
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