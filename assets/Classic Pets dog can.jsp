<!DOCTYPE html>
<%@ page contentType="text/html" import="java.sql.*"%>
<%@ page pageEncoding="UTF-8" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>加好寶狗罐</title>
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
        <div class="product_name" style="font-weight: bolder;">加好寶狗罐400g</div>
        <div class="introduce">
            <br>蛋白質 均衡成長及肌肉發展的必備要素</br>
            <br>碳水化合物 提供身體所需能量</br>
            <br>礦物質 強化骨骼及牙齒並保持整體機能正常</br>
            <br>脂肪 幫助毛髮光澤及維護皮膚健康</br>
            <br>維生素 維持生理機能並增加自然抵抗力</br>
        </div>
		
		<%
			
			sql = "SELECT * FROM `PRODUCT2` WHERE `ID` = 9";
			ResultSet ProductList = con.createStatement().executeQuery(sql);
			while (ProductList.next()){
				sql = "SELECT * FROM `PRODUCT` WHERE `productID` = 44";
				ResultSet ProductList2 = con.createStatement().executeQuery(sql);
				while (ProductList2.next()){
		%>

   
        <div class="chooseword">選擇口味：
        <select id="choose">
            <option name="dogcan1" selected="selected" style="font-weight: bold;">牛肉口味400g*24罐</option>
            <option name="dogcan2" selected="selected" style="font-weight: bold;">牛肉蔬菜400g*24罐</option>
            <option name="dogcan3" selected="selected" style="font-weight: bold;">牛肉總匯400g*24罐</option>
            <option name="dogcan4" selected="selected" style="font-weight: bold;">雞肉總匯400g*24罐</option>
            <option name="dogcan5" selected="selected" style="font-weight: bold;">雞肉蔬菜400g*24罐</option>
            <option name="dogcan6" selected="selected" style="font-weight: bold;">羊肉口味400g*24罐</option>
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
            <img id="CPDCall" src="img/Classic Pets dog can/Classic Pets dog can all.JPG" width="425px" height="500px">
            <div class="rec">
                <div class="recimg">
                    <div class="scroll">
                        <img class="canall" src="img/Classic Pets dog can/Classic Pets dog can all.JPG" onclick="change(this);" width="82px" height="80px">
                        <img class="can1" src="img/Classic Pets dog can/Classic Pets dog can beef.jpg" onclick="change(this);" width="82px" height="80px">
                        <img class="can2" src="img/Classic Pets dog can/Classic Pets dog can beef vegetable.jpg" onclick="change(this);" width="82px" height="80px">
                        <img class="can3" src="img/Classic Pets dog can/Classic Pets dog can beef liver.jpg" onclick="change(this);" width="82px" height="80px">
                        <img class="can4" src="img/Classic Pets dog can/Classic Pets dog can chicken liver.jpg" onclick="change(this);" width="82px" height="80px">
                        <img class="can5" src="img/Classic Pets dog can/Classic Pets dog can chicken vegetable.jpg" onclick="change(this);" width="82px" height="80px">
                        <img class="can6" src="img/Classic Pets dog can/Classic Pets dog can lamb.jpg" onclick="change(this);" width="82px" height="80px">
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
            <br>✧*。品名：加好寶狗罐 - 牛肉口味 。*✧</br>
            <br>❣ 適用對象：成犬</br>
            <br>❣ 成份：牛肉、牛肉副產品、雞肝、雞肉蛋白、羊肉副產品、植物蛋白、膠凝劑、s修飾澱粉、香料、礦物質、維生素、食用色素、水</br>
            <br>❣ 保存期限：36個月</br>
           
            <br>—-✩———-✩———-✩———-✩———-✩—- —-✩———-✩———-✩———-✩———-✩—- —-✩———-✩———-✩———-✩———-✩—-


        </br>
        </div>
        <div class="beefveg">
            <br>✧*。 品名：加好寶狗罐 - 牛肉蔬菜口味 。*✧</br>
            <br>❣ 適用對象：成犬</br>
            <br>❣ 成份：牛肉、牛肉副產品、雞肝、雞肉蛋白、羊肉副產品、植物蛋白、胡蘿蔔、綠豌豆、膠凝劑、修飾澱粉、香料、礦物質、維生素、食用色素、水</br>
            <br>❣ 保存期限：36個月</br>
            <br>—-✩———-✩———-✩———-✩———-✩—- —-✩———-✩———-✩———-✩———-✩—- —-✩———-✩———-✩———-✩———-✩—-
        </div>

        <div class="beefliver">
            <br>✧*。 品名：加好寶狗罐 - 牛肉總匯口味 。*✧</br>
            <br>❣ 適用對象：成犬</br>
            <br>❣ 成份：牛肉、牛肉副產品、雞肝、雞肉蛋白、羊肉副產品、植物蛋白、膠凝劑、修飾澱粉、香料、礦物質 、維生素、食用色素、水</br>
            <br>❣ 保存期限：36個月</br>
            <br>—-✩———-✩———-✩———-✩———-✩—- —-✩———-✩———-✩———-✩———-✩—- —-✩———-✩———-✩———-✩———-✩—-
        </div>

        <div class="chicken-rollup">
            <br>✧*。 品名：加好寶狗罐 - 雞肉總匯口味 。*✧</br>
            <br>❣ 適用對象：成犬</br>
            <br>❣ 成份：雞肉、雞肉蛋白、雞肝、牛肉副產品、羊肉副產品、植物蛋白、膠凝劑、修飾澱粉、香料、礦物質 、維生素、食用色素、水</br>
            <br>❣ 保存期限：36個月</br>
            <br>—-✩———-✩———-✩———-✩———-✩—- —-✩———-✩———-✩———-✩———-✩—- —-✩———-✩———-✩———-✩———-✩—-
        </div>

        <div class="chickenveg">
            <br>✧*。 品名：加好寶狗罐 - 雞肉蔬菜口味 。*✧</br>
            <br>❣ 適用對象：成犬</br>
            <br>❣ 成份：雞肉、雞肉蛋白、雞肝、羊肉、胡蘿蔔、綠豌豆、馬鈴薯、植物蛋白、小麥麵筋、膠凝劑、修飾澱粉、香料、礦物質、維生素、食用色素、水</br>
            <br>❣ 保存期限：36個月</br>
            <br>—-✩———-✩———-✩———-✩———-✩—- —-✩———-✩———-✩———-✩———-✩—- —-✩———-✩———-✩———-✩———-✩—-
        </div>

        <div class="sheep">
            <br>✧*。 品名：加好寶狗罐 - 羊肉口味 。*✧</br>
            <br>❣ 適用對象：成犬</br>
            <br>❣ 成份：羊肉、牛肉副產品、雞肝、雞肉蛋白、羊肉副產品、植物蛋白、膠凝劑、修飾澱粉、香料、礦物質、維生素、食用色素、水</br>
            <br>❣ 保存期限：36個月</br>
        </div>

        <!--留言板-->
        <section>
            <div class="rec2">
                <img class="doguser1 users" src="img/Classic Pets dog can/dog.png" style="width: 75px; height:75px;">
                <div class="usernames">dog1@gmail.com</div>
                <div class="commenttime commenttime1">2022/12/12 15:40</div>
                <div class="userstar"><pre>★ ★ ★ ★ ★</pre></div>
                <div class="usercomment usercomment1">我家狗狗超愛吃💜</div>
    
                <img class="doguser2 users" src="img/Classic Pets dog can/bergamasco.png" style="width: 75px; height:75px;">
                <div class="usernames">dog2@gmail.com</div>
                <div class="commenttime">2022/12/01 08:00</div>
                <div class="userstar"><pre>★ ★ ★ ★ ★</pre></div>
                <div class="usercomment">罐頭香到爆！Lucy吃的時候我也想吃😍</div>

                <img class="doguser3 users" src="img/Classic Pets dog can/schnauzer.png" style="width: 75px; height:75px;">
                <div class="usernames">dog3@gmail.com</div>
                <div class="commenttime">2022/11/18 22:42</div>
                <div class="userstar"><pre>★ ★ ★ ★ ★</pre></div>
                <div class="usercomment">我家這隻超挑食的也吃完了！推推👍🏻👍🏻</div>
            
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
                  <a href="Bravo dog.jsp" target="_blank"><img class="commend-row1" src="img/Classic Pets dog can/Bravo dog.JPG"></a>
                  <a href="Classic Pets dog can2.jsp"target="_blank"><img class="commend-row1" src="img/Classic Pets dog can/Classic Pets dog all1.JPG"></a>
                  <a href="Careline.jsp"target="_blank"><img class="commend-row1"  src="img/Classic Pets dog can/Careline all-3.jpg"></a>
                  <a href="soon.jsp"target="_blank"><img class="commend-row1"  src="img/Classic Pets dog can/soon all 6.JPG"></a>
                </div>
            
                <div class="flex-container-c fixc1">
                  <p class="commend-p c1">NT$799</p>
                  <p class="commend-p2 c1">NT$520</p>
                  <p class="commend-p3 c1">NT$520</p>
                  <p class="commend-p4 c1">NT$520</p>
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