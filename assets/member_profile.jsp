<!DOCTYPE html>
<%@ page contentType="text/html" import="java.sql.*"%>
<%@ page pageEncoding="UTF-8" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>唯獨寵你｜會員資料</title>
    <link rel="icon" type="image/x-icon" href="img/logo.png">
    <style>
        @import "css/header.css";
        @import "css/nav.css";
        @import "css/footer.css";
        @import "css/member_profile.css";
        
    </style>
    <script src="js/main.js"> </script>
    <script src="js/login.js"> </script>
    <script src="js/member.js"> </script>
    <script src="js/close.js"></script>

    
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

    <header>
        <%@include file="header.jsp"%>
    </header>
	
    <main>
        <div class="article1">
            <article >
                <section>
                    <div id="mySidenav" class="sidenav">
                        <a href="#profilee" id="profile" class="revise">會員資料</a>
                        <a href="#orderr" id="order" class="order">訂單紀錄</a>
                        <a href="#commentt" id="comment" class="comment">評論紀錄</a>
                    </div>
                </section>
				
                <section class="sec1">
                    <div class="headline">
                        <h2>會員資料</h2>
                        <hr>
                    </div>
					
                    <div>
                        <img src="img/member_profile/dog.PNG">
                    </div>
					<%
						sql = "SELECT * FROM `login` WHERE `LoginEmail` ='"+session.getAttribute("email")+"'" ;
						ResultSet rs = con.createStatement().executeQuery(sql);
						while (rs.next()){
					%>
                    <div class="form">
						
                        <form id="profilee" action="member_update.jsp">
                            <ul>
                                <li class="name">姓名
                                    <input type="text" name="member-name" placeholder="悠尼思">
                                </li>
                                <li class="birthaday">生日
                                    <input type="text" name="birth" placeholder="2002-11-01">
                                </li>
                                <li class="gender">性別
                                    <input type="text" name="gender"  value="<%=rs.getString(5)%>" readonly>
                                </li>
                                <li class="phone">電話
                                    <input type="text" name="tel" placeholder="0920230101">
                                </li>
                                <li class="address">地址
                                    <input type="text" name="addr" placeholder="321桃園市振平區安屏路36號">
                                </li>
                                <li class="mail">郵件
                                    <input type="text" name="member-email" value="<%=rs.getString(7)%>" readonly>
                                </li>
                                <li class="password">密碼
                                    <input type="password" name="member-password" value="<%=rs.getString(8)%>" readonly>
                                </li>
                            </ul>        
                            <input type="button" value="修改" onclick="location.href='member_update.jsp'">
                        </form>
                    </div>
						<%}%>
                </section>
            </article>
        </div>
        
		
        
        <div class="article3">
            <article >
                <section id="orderr" class="sec3">
                    <div class="headline">
                        <h2>訂單紀錄</h2>
                        <hr>
                    </div>
                    <div class="orderphoto">
                        <img src="img/member_profile/shopping-bag.png">
                    </div>
                    <section>
                        <table class="table1" align="center">
                            <tr>   
                                <th name="prouductimg"></th>   
                                <th name="prouductname">商品名稱</th>
                                <th name="flavor">口味</th>
                                <th name="prices">小計</th>
                            </tr>
                        <!--細項一-->
                            <tr class="item1" align="center">
                                <td width="180"><img class="shop-img" src="img/product/Classic Pets dog can2.JPG"></td>
                           
                                <td width="250">加好寶乾狗糧</td>
                                <td width="180">羊肉口味</td>
                                <td width="180">$570</td>
                               
                            </tr>
                    
                        <!--細項二-->
                            <tr class="item1" align="center">
                                <td width="180"><img class="shop-img" src="img/product/FC.JPG"></td>
                           
                                <td width="250">福壽貓食FUSO Pets</td>
                                <td width="180">鮪魚口味</td>
                                <td width="180">$699</td>
                               
                            </tr>
                    
                            <tr class="item4" align="center">
                                <td></td>
                                <td></td>
                                <td></td>
                                <td name="totalprice">總計：$1,269</td>
                        </table>    
                    </section>
                </section>
            </article>
        </div>
        <div class="article4">
            <article >
                <section id="commentt" class="sec4">
                    <div class="headline">
                        <h2>評論紀錄</h2>
                        <hr>
                    </div>
                    <section>
                        <table class="table2" align="center">
                            <tr>
                                <th name="prouductimg"></th>
                                <th>日期/時間</th>
                                <th name="prouductname">商品名稱</th>
                                <th name="flavor">口味</th>
                                <th>評分/評論</th>
                            </tr>
                            <tr class="comment1" align="center">
                                <td width="180"><img src="img/Classic Pets dog can/Classic Pets dog can all.JPG"></td>
                                <td width="220">2022/12/12 15:40</td>
                                <td width="200">加好寶狗罐</td>
                                <td width="200">雞肉總匯口味</td>
                                <td width="250">⭐⭐⭐⭐⭐<br>我家狗狗超愛吃❤️</td>
                            </tr>
                            <tr class="comment2" align="center">
                                <td width="180"><img src="img/Bravo dog/Bravo dog all.JPG"></td>
                                <td width="220">2022/12/02 20:23</td>
                                <td width="200">Bravo犬食<br>膠原蛋白配方</td>
                                <td width="200">牛肉口味</td>
                                <td width="250">⭐⭐⭐⭐⭐<br>非常香！！<br>Lucky吃得很開心👍🏻</td>
                            </tr>
                            <tr class="comment3" align="center">
                                <td width="180"><img src="img/meo cat can/meo cat can all-1.JPG"></td>
                                <td width="220">2022/11/22 11:01</td>
                                <td width="200">Me-O貓罐</td>
                                <td width="200">鮪魚口味</td>
                                <td width="250">⭐⭐⭐⭐⭐<br>咪咪表示很喜歡💯<br>下次要吃沙丁魚口味的！</td>
                            </tr>
                        </table>
                    </section>
                </section>
            </article>
        </div>
    </main>
    <footer>
       <%@include file="footer.jsp"%>
    </footer>
</body>
</html>