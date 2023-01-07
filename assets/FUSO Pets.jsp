<!DOCTYPE html>
<%@ page contentType="text/html" import="java.sql.*"%>
<%@ page pageEncoding="UTF-8" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>福壽貓FUSO Pets</title>
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
        <div class="product_name" style="font-weight: bolder;">福壽貓貓食20lb</div>
        <div class="introduce">
            <br>FUSO PETS 愛貓貓食</br>
            <br>● 符合NRC國際寵物營養標準</br>
            <br>● 添加乳酸菌、Oligo糖和天然絲蘭成份,提升貓咪腸道有益菌,促進消化,吸收更完善</br>
            <br>● 富含亞麻仁油酸及適量W3+W6均衡配比,使貓咪的毛髮亮麗有光澤</br>
            <br>● 添加牛磺酸,以維護貓咪心臟及視神經機能的正常運作</br>
            <br>● 篩選低鎂低灰份原料,減輕貓咪身體負擔</br>
            <br>● 蛋白質32%↑、脂肪14%↑、纖維4%↓、灰份9%↓、水份10%↓、鈣1.3%↑、磷0.8%↑</br>
            <br>規格:9.07kg</br>
        </div>
 		<%
			
			sql = "SELECT * FROM `PRODUCT2` WHERE `ID` = 3";
			ResultSet ProductList = con.createStatement().executeQuery(sql);
			while (ProductList.next()){
				sql = "SELECT * FROM `PRODUCT` WHERE `productID` = 09";
				ResultSet ProductList2 = con.createStatement().executeQuery(sql);
				while (ProductList2.next()){
		%>           
        <div class="chooseword">選擇口味：
        <select id="choose">
            <option name="Fuso1" selected="selected" style="font-weight: bold;">鮭魚+牛肉 20lb</option>
            <option name="Fuso2" selected="selected" style="font-weight: bold;">鮪魚+蟹肉 20lb</option>
            <option name="Fuso3" selected="selected" style="font-weight: bold;">鮪魚+雞肉 20lb</option>
            <option name="Fuso4" selected="selected" style="font-weight: bold;">鮪魚口味 20lb</option>
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
            <img id="CPDCall" src="img/FUSO Pets/FC.JPG" width="425px" height="500px">
            <div class="rec">
                <div class="recimg">
                    <div class="scroll">
                        <img class="canall" src="img/FUSO Pets/FC.JPG" onclick="change(this);" width="82px" height="80px">
                        <img class="can1" src="img/FUSO Pets/FC beef.jpg" onclick="change(this);" width="82px" height="80px">
                        <img class="can2" src="img/FUSO Pets/FC crab.jpg" onclick="change(this);" width="82px" height="80px">
                        <img class="can3" src="img/FUSO Pets/FC chicken.jpg" onclick="change(this);" width="82px" height="80px">
                        <img class="can4" src="img/FUSO Pets/FC tuna.png" onclick="change(this);" width="82px" height="80px">
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
            <br>✧*。品名：FUSO Pets貓食_鮭魚+牛肉。*✧</br>
            <br>●  茄紅素及維生素A、C、E天然抗氧化配方，強化免疫力，讓貓咪健康茁壯</br>
            <br>●  複合蔬果膳食纖維化毛配方，幫助貓咪消化道健康</br>
            <br>●  均衡ω3及ω6不飽和脂肪酸，促進毛髮光澤亮麗</br>
            <br>●  低鎂及低灰分配方，並控制尿液PH值，長期食用有效預防泌尿道結石</br>
            <br>❣ 商品規格：1.5kg．9.07kg</br>
            <br>❣ 主要使用原料：精選玉米、糙米、水解胜肽蛋白、牛肉粉(產地：澳洲)、雞肉粉、魚粉、珍珠大麥、蔬菜(番茄、甜菜)、家禽脂肪(以維生素E保存)</br>
            <br>、酵母粉、乾燥全蛋、絲蘭精華、牛磺酸、綜合維他命、綜合礦物質、天然香料</br>
            <br>❣ 營養成分及含量：粗蛋白質32%↑、粗脂肪14%↑、粗纖維	4%↓、
            灰分9%↓、水分10%↓、鈣1.3%↑、磷	0.8%↑
            </br>
           
            <br>—-✩———-✩———-✩———-✩———-✩—- —-✩———-✩———-✩———-✩———-✩—- —-✩———-✩———-✩———-✩———-✩—-


        </br>
        </div>
        <div class="beefveg">
            <br>✧*。 品名：FUSO Pets貓食_鮪魚+蟹肉 。*✧</br>
            <br>●  茄紅素及維生素A、C、E天然抗氧化配方，強化免疫力，讓貓咪健康茁壯</br>
            <br>●  複合蔬果膳食纖維化毛配方，幫助貓咪消化道健康</br>
            <br>●  均衡ω3及ω6不飽和脂肪酸，促進毛髮光澤亮麗</br>
            <br>●  低鎂及低灰分配方，並控制尿液PH值，長期食用有效預防泌尿道結石</br>
            <br>❣ 商品規格：1.5kg．9.07kg</br>
            <br>❣ 主要使用原料：精選玉米、糙米、雞肉粉、水解胜肽蛋白、魚粉、珍珠大麥、蔬菜(番茄、甜菜)、家禽脂肪(以維生素E保存)、酵母粉、乾燥全蛋、</br>
            <br>絲蘭精華、牛磺酸、綜合維他命、綜合礦物質、天然香料</br>
            <br>❣ 營養成分及含量：粗蛋白質32%↑、粗脂肪14%↑、粗纖維	4%↓、灰分9%↓、水分10%↓、鈣1.3%↑、磷	0.8%↑</br>


            <br>—-✩———-✩———-✩———-✩———-✩—- —-✩———-✩———-✩———-✩———-✩—- —-✩———-✩———-✩———-✩———-✩—-
        </div>

        <div class="beefliver">
            <br>✧*。 品名：FUSO Pets貓食_鮪魚+蟹肉 。*✧</br>
            <br>●  茄紅素及維生素A、C、E天然抗氧化配方，強化免疫力，讓貓咪健康茁壯</br>
            <br>●  複合蔬果膳食纖維化毛配方，幫助貓咪消化道健康</br>
            <br>●  均衡ω3及ω6不飽和脂肪酸，促進毛髮光澤亮麗</br>
            <br>●  低鎂及低灰分配方，並控制尿液PH值，長期食用有效預防泌尿道結石</br>
            <br>❣ 商品規格：1.5kg．9.07kg</br>
            <br>❣ 主要使用原料：精選玉米、糙米、雞肉粉、魚粉、珍珠大麥、蔬菜(番茄、甜菜)、家禽脂肪(以維生素E保存)、酵母粉、絲蘭精華、牛磺酸、綜合維</br>
            <br>他命、綜合礦物質、天然香料</br>
            <br>❣ 營養成分及含量：粗蛋白質32%↑、粗脂肪14%↑、粗纖維	4%↓、灰分9%↓、水分10%↓、鈣1.3%↑、磷0.8%↑</br>
            <br>—-✩———-✩———-✩———-✩———-✩—- —-✩———-✩———-✩———-✩———-✩—- —-✩———-✩———-✩———-✩———-✩—-
        </div>

        <div class="chicken-rollup">
            <br>✧*。 品名：福壽喵喵貓食-鮪魚口味 。*✧</br>
            <br>❣ 淨重：20LB(9.07kg)</br>
            <br>❣ 主要使用原料：雞肉粉、魚粉、國產玉米、胚芽米、精選麥粉、家禽脂肪(天然維生素E保存)、啤酒酵母、膳食纖維、乾燥全蛋、海藻、鹽、綜合維</br>
            <br> 生素、綜合礦物質、牛磺酸、乳酸菌、絲蘭精華。</br>
            <br>❣ 營養成分及含量：蛋白質32%↑、脂肪14%↑、纖維4%↓、鈣1.3%↑、磷0.8%↑、水分	10%↓、牛磺酸0.1%↓</br>
        </div>



        <!--留言板-->
        <section>
            <div class="rec2">
                <img class="doguser1 users" src="img/Classic Pets cat can/cat.png" style="width: 75px; height:75px;">
                <div class="usernames">cat1@gmail.com</div>
                <div class="commenttime commenttime1">2022/12/12 15:40</div>
                <div class="userstar"><pre>★ ★ ★ ★ ★</pre></div>
                <div class="usercomment usercomment1">我家貓貓超愛吃💜</div>
    
                <img class="doguser2 users" src="img/Classic Pets cat can/cat 3.png" style="width: 75px; height:75px;">
                <div class="usernames">cat2@gmail.com</div>
                <div class="commenttime">2022/12/01 08:00</div>
                <div class="userstar"><pre>★ ★ ★ ★ ★</pre></div>
                <div class="usercomment">罐頭超香！Emma在吃時我也想吃😍</div>

                <img class="doguser3 users" src="img/Classic Pets cat can/cat 6.png" style="width: 75px; height:75px;">
                <div class="usernames">cat3@gmail.com</div>
                <div class="commenttime">2022/11/18 22:42</div>
                <div class="userstar"><pre>★ ★ ★ ★ ★</pre></div>
                <div class="usercomment">我家貓超挑食，自從吃完後直接愛上！推推👍🏻👍🏻</div>
            
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
                  <a href="Bravo cat.jsp" target="_blank"><img class="commend-row1" src="img/FUSO Pets/bravo cat.JPG"></a>
                  <a href="Meo cat can.jsp" target="_blank"><img class="commend-row1" src="img/FUSO Pets/meo cat can.JPG"></a>
                  <a href="Classic Pets cat can.jsp" target="_blank"><img class="commend-row1"  src="img/FUSO Pets/Classic Pets cat can.JPG"></a>
                  <a href="Careline.jsp" target="_blank"><img class="commend-row1"  src="img/FUSO Pets/Careline.jpg"></a>
                </div>
            
                <div class="flex-container-c fixc1">
                  <p class="commend-p c1">NT$1250</p>
                  <p class="commend-p2 c1">NT$950</p>
                  <p class="commend-p3 c1">NT$590</p>
                  <p class="commend-p4 c1">NT$780</p>
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