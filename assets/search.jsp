<!DOCTYPE html>
<%@ page contentType="text/html" import="java.sql.*"%>
<%@ page pageEncoding="UTF-8" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>唯獨寵你</title>
	<link rel="icon" type="image/x-icon" href="img/logo.png">
    <style>
        @import "css/Classic\ Pets\ dog\ can.css";
        @import "css/header.css";
        @import "css/nav.css";
        @import "css/rank.css";
        @import "css/product.css";
        @import "css/footer.css";
    </style>

    <script src="js/main.js"> </script>
    <script src="js/login.js"> </script>
    <script src="js/member.js"> </script>
      
</head>

<body>
<header>

  <%@ include file="header.jsp"%>

  <!-- 動態廣告-->
    <div class="container">
        <div class="mySlides fade">
            <img src="img/A4.jpg" style="width:100%" height="520px">
        </div>
      
        <div class="mySlides fade">
            <img src="img/A1.jpg" style="width:100%" height="520px">
        </div>
      
        <div class="mySlides fade">
            <img src="img/A2.jpg" style="width:100%" height="520px">
        </div>

        <div class="mySlides fade">
          <img src="img/A3.jpg" style="width:100%" height="520px">
        </div>
      
        <a class="arrow" onclick="plusSlides(-1)">❮</a>
        <a class="next" onclick="plusSlides(1)">❯</a>
        
      </div>
      <br>
      
    <div style="text-align:center">
            <span class="dot" onclick="currentSlide(1)"></span> 
            <span class="dot" onclick="currentSlide(2)"></span> 
            <span class="dot" onclick="currentSlide(3)"></span>
            <span class="dot" onclick="currentSlide(4)"></span>  
    </div>
</header> 

  <!-- 熱賣商品-->
    <section>
          <img class="hot" src="img/hot.png">

          <div class="rank">
              <img class="hot2" src="img/hot2.png"  width="340px" height="300px">
              <img class="hot1" src="img/hot1.png"  width="420px" height="380px">
              <img class="hot3" src="img/hot3.png"  width="340px" height="300px">
          </div>
    </section>


  <!-- 商品圖-row1--> 
  
  
    <div>
	
	<%
	request.setCharacterEncoding("UTF-8");
	String search = request.getParameter("search");
	sql="SELECT * FROM `product2` where `productName` like '%"+search+"%' ";
	ResultSet rs=con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY).executeQuery(sql);
	%>
	 
	 
     <section>
            <h1 class="product-recommend">搜尋結果</h1>
			
            <div>
                <div class="commend-row1fix">
                  <%while(rs.next()){%>
				  <a href="<%=rs.getString(4)%>"><img class="commend-row1" src="<%=rs.getString(3)%>"></a>
				  <%}%>
				  
                </div>
            
                <div class="flex-container-c fixc1">
				  <%while(rs.next()){%>
                  <p class="commend-p c1"><%=rs.getString(2)%></p>
                  <%}%>
                </div>
            
            </div>
            <div style="clear:both"></div>
        
	
  </section>



 


     
<script> 
    var myIndex = 0;

    carousel();

    function carousel() {
      var i;
      var x = document.getElementsByClassName("mySlides");
      var dots = document.getElementsByClassName("dot");
      for (i = 0; i < x.length; i++) {
        x[i].style.display = "none";
      }
      myIndex++;
      if (myIndex > x.length) {
        myIndex = 1
      }
      x[myIndex - 1].style.display = "block";

      for (i = 0; i < x.length; i++) {
        dots[i].className = dots[i].className.replace(" act", "");
      }
      dots[myIndex - 1].className += " act";
      setTimeout(carousel, 4000); // Change image every 2 seconds
    }


    showSlides(myIndex);

    // Next/previous controls
    function plusSlides(n) {
      showSlides(myIndex += n);
    }

    // Thumbnail image controls
    function currentSlide(n) {
      showSlides(myIndex = n);
    }

    function showSlides(n) {
      var i;
      var slides = document.getElementsByClassName("mySlides");
      var dots = document.getElementsByClassName("dot");
      if (n > slides.length) {
        myIndex = 1
      }
      if (n < 1) {
        myIndex = slides.length
      }
      for (i = 0; i < slides.length; i++) {
        slides[i].style.display = "none";
      }
      for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" act", "");
      }
      slides[myIndex - 1].style.display = "block";
      dots[myIndex - 1].className += " act";
    }

</script>


<footer>
<div class="contact">
    Copyright © 2022 唯獨寵你
</div>
<p class="look">瀏覽人數：<%@ include file="counter2.jsp"%></p>
</footer>
</body>
</html>