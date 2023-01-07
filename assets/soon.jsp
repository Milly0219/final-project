<!DOCTYPE html>
<%@ page contentType="text/html" import="java.sql.*"%>
<%@ page pageEncoding="UTF-8" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Soon吸寵物尿布墊</title>
    <link rel="icon" type="image/x-icon" href="img/logo.png">
    <style>
        @import "css/soon.css";
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
        <div class="product_name" style="font-weight: bolder;">Soon吸尿布墊(8包/箱)</div>
        <div class="introduce">
            <br>● 吸水力佳，瞬間吸收鎖水</br>
            <br>● 寵物訓練尿墊 1.5kg 加厚款</br>
            <br>● 提供三種尺寸，S號 / M號 / L號</br>
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
            <option name="soon1" selected="selected" style="font-weight: bold;">S 號 (8包)</option>
            <option name="soon1" selected="selected" style="font-weight: bold;">M 號 (8包)</option>
            <option name="soon1" selected="selected" style="font-weight: bold;">L 號 (8包)</option>
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
        <div class="soon">
            <img id="soonbig" src="img/product/soon.JPG" width="425px" height="500px">
            <div class="rec">
                <div class="recimg">
                    <div class="scroll">
                        <img class="soonall" src="img/product/soon.JPG" onclick="change2(this);" width="80px" height="80px">
                        <img class="soon1" src="img/soon/soon all 4.jpg" onclick="change2(this);" width="80px" height="80px">
                        <img class="soon2" src="img/soon/soon all 1.jpg" onclick="change2(this);" width="80px" height="80px">
                        <img class="soon3" src="img/soon/soon all 3.jpg" onclick="change2(this);" width="80px" height="80px">
                        <img class="soon4" src="img/soon/soon all 2.jpg" onclick="change2(this);" width="80px" height="80px">
                        <img class="soon5" src="img/soon/soon all 5.jpg" onclick="change2(this);" width="80px" height="80px">
                        <img class="S" src="img/soon/soon s.jpg" onclick="change2(this);" width="80px" height="80px">
                        <img class="M" src="img/soon/soon m.jpg" onclick="change2(this);" width="80px" height="80px">
                        <img class="L" src="img/soon/soon l.jpg" onclick="change2(this);" width="82px" height="80px">

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

        <div class="Ssize">
            <br>✧*。品名：Soon吸加厚款寵物尿布墊1.5kg - S號 。*✧</br>
            <br>❣ 包數 & 公斤數：100片/包。1.5Kg/包。</br>
            <br>❣ 尺寸：《長45公分 * 寬30公分》</br>
                       
            <br>—-✩———-✩———-✩———-✩———-✩—- —-✩———-✩———-✩———-✩———-✩—- —-✩———-✩———-✩———-✩———-✩—-


        </br>
        </div>
        <div class="Msize">
            <br>✧*。 品名：Soon吸加厚款寵物尿布墊1.5kg - M號 。*✧</br>
            <br>❣ 包數 & 公斤數：50片/包。1.5Kg/包。</br>
            <br>❣ 尺寸：《長60公分 * 寬45公分》</br>
            <br>—-✩———-✩———-✩———-✩———-✩—- —-✩———-✩———-✩———-✩———-✩—- —-✩———-✩———-✩———-✩———-✩—-
        </div>

        <div class="Lsize">
            <br>✧*。 品名：Soon吸加厚款寵物尿布墊1.5kg - L號 。*✧</br>
            <br>❣ 包數 & 公斤數：25片/包。1.5Kg/包。</br>
            <br>❣ 尺寸：《長90公分 * 寬60公分》</br>
            <br>—-✩———-✩———-✩———-✩———-✩—- —-✩———-✩———-✩———-✩———-✩—- —-✩———-✩———-✩———-✩———-✩—-
        </div>

        <!--留言板-->
        <section>
            <div class="rec2">
                <img class="doguser1 users" src="img/Classic Pets dog can/dog.png" style="width: 75px; height:75px;">
                <div class="usernames">dog1@gmail.com</div>
                <div class="commenttime">2022/01/01 03:03</div>
                <div class="userstar"><pre>★ ★ ★ ★ ★</pre></div>
                <div class="usercomment usercomment1">產品如其名！吸超快！</div>
    
                <img class="doguser2 users" src="img/Classic Pets dog can/bergamasco.png" style="width: 75px; height:75px;">
                <div class="usernames">dog2@gmail.com</div>
                <div class="commenttime">2022/12/06 12:36</div>
                <div class="userstar"><pre>★ ★ ★ ★ ★</pre></div>
                <div class="usercomment">我家狗狗終於學會去尿墊上尿尿了🥺</div>

                <img class="doguser3 users" src="img/Classic Pets dog can/schnauzer.png" style="width: 75px; height:75px;">
                <div class="usernames">dog3@gmail.com</div>
                <div class="commenttime">2022/11/16 22:47</div>
                <div class="userstar"><pre>★ ★ ★ ★ ★</pre></div>
                <div class="usercomment">品質好到沒話說💗💗</div>
            
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
                  <a href="Careline.jsp" target="_blank"><img class="commend-row1" src="img/product/Careline.jpg"></a>
                  <a href="Bravo dog.jsp" target="_blank"><img class="commend-row1" src="img/product/bravo dog.JPG"></a>
                  <a href="Classic Pets dog can2.jsp" target="_blank"><img class="commend-row1"  src="img/product/Classic Pets dog can2.JPG"></a>
                  <a href="Classic Pets cat can.jsp" target="_blank"><img class="commend-row1"  src="img/product/Classic Pets cat can.JPG"></a>
                </div>
            
                <div class="flex-container-c fixc1">
                  <p class="commend-p c1">NT$780</p>
                  <p class="commend-p2 c1">NT$1250</p>
                  <p class="commend-p3 c1">NT$570</p>
                  <p class="commend-p4 c1">NT$590</p>
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