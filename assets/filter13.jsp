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
          <a href="Careline.jsp" target="_blank"><img src="img/A4.jpg" style="width:100%" height="520px"></a>
        </div>
      
        <div class="mySlides fade">
          <a href="Meo meat.jsp" target="_blank"><img src="img/A1.jpg" style="width:100%" height="520px"></a>
        </div>
      
        <div class="mySlides fade">
          <a href="Bravo cat.jsp" target="_blank"><img src="img/A2.jpg" style="width:100%" height="520px"></a>
        </div>

        <div class="mySlides fade">
          <a href="soon.jsp" target="_blank"><img src="img/A3.jpg" style="width:100%" height="520px"></a>
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
              <a href="Careline.jsp" target="_blank"><img class="hot2" src="img/hot2.png"  width="340px" height="300px"></a>
              <a href="Bravo dog.jsp" target="_blank"><img class="hot1" src="img/hot1.png"  width="420px" height="380px"></a>
              <a href="Classic Pets cat.jsp" target="_blank"><img class="hot3" src="img/hot3.png"  width="340px" height="300px"></a>
          </div>
    </section>

  <!-- 商品篩選--> 
  <section>
        <div class="dropdown">
            <button class="brand" id="brand">品牌</button>
                <div class="brand-content">
				<form class=>
                    <a href="filter1.jsp" name="Classic Pets">加好寶</a>
                    <a href="filter2.jsp" name="Bravo">自然禮讚</a>
                    <a href="filter3.jsp" name="Fuso">福壽貓</a>
                    <a href="filter4.jsp" name="Meo">Me-O</a>
                    <a href="filter5.jsp" name="iq">iq+</a>
                    <a href="filter6.jsp" name="Careline">自然物語</a>
                    <a href="filter7.jsp" name="Soon">Soon吸</a>
                  </div>
        </div>

        <div class="dropdown">
            <button class="sort" id="sort">種類</button>
                <div class="sort-content">
                    <a href="filter8.jsp" name="feed">飼料</a>
                    <a href="filter9.jsp" name="can">罐頭</a>
                    <a href="filter10.jsp" name="meat">肉泥</a>
                    <a href="filter11.jsp" name="pad">尿墊</a>
                </div>
        </div>

  <!-- 商品圖-row1--> 
    <div>
      <img class="big-pic" src="img/product/prouduct-pic.jpg">
          <div class="row1fix">
              <a  href="Bravo cat.jsp" target="_blank"><img class="row1" src="img/product/bravo cat.JPG"></a>
              <a href="FUSO Pets.jsp"><img class="row1" src="img/product/FC.JPG"></a>
              <a href="iq meat.jsp"><img class="row1"  src="img/product/iq+ meat paste.jpg"></a>
          </div>
            
          <div class="flex-container fixp1">
              <p class="cpdogcan-p p1">NT$1250</p>
              <p class="cpdogcan-p2 p1">NT$699</p>
              <p class="cpdogcan-p3 p1">NT$159</p>
          
          </div>

  <!-- 商品圖-row2-->           
      <div>
          <div class="row2fix">
              <a href="Classic Pets cat.jsp"><img class="row2" src="img/product/Classic Pets cat.JPG"></a>
              <a href="Classic Pets cat can.jsp"><img class="row2" src="img/product/Classic Pets cat can.JPG"></a>
              <a href="Meo meat.jsp"><img class="row2" src="img/product/meo meat.JPG"></a>
          </div>
            
          <div class="flex-container fixp2">
              <p class="cpdogcan-p4 p2">NT$530</p>
              <p class="cpdogcan-p5 p2">NT$590</p>
              <p class="cpdogcan-p6 p2">NT$1270</p>
          </div>

          <img class="big-pic2" src="img/product/prouduct-pic2.jpg">
      </div>

  <!-- 商品圖-row3-->           
      <div>
          <img class="big-pic3" src="img/product/prouduct-pic4.jpg">
          <div class="row3fix">
		      <a href="meo cat can.jsp"><img class="row3" src="img/product/meo cat can.JPG"></a>
              
              <a href="soon.jsp"><img class="row3" src="img/product/soon.JPG"></a>
              
          </div>
            
          <div class="flex-container fixp3">
			 <p class="cpdogcan-p7 p3">　　</p>
		     <p class="cpdogcan-p7 p3">　　</p>
			 <p class="cpdogcan-p7 p3">　　</p>
			 <p class="cpdogcan-p7 p3">　　</p>
		  　 <p class="cpdogcan-p7 p3">　　</p>
			 <p class="cpdogcan-p7 p3">　　</p>
			 <p class="cpdogcan-p7 p3">　　</p>
			 <p>　　</p>
			 <p>　　</p>
			 <p>　　</p>
			 <p>　　</p>
			 <p>　　</p>
			 <p>　　</p>
			 <p>　　</p>
			 <p>　　</p>
			 <p>　　</p>
			 <p>　　</p>
			 <p>　　　　　　　　</p>
			 <p class="cpdogcan-p7 p3">　NT$950</p>
			 <p>　　</p>
			 <p>　　</p>
			 <p>　　</p>
			
			 <p></p>
             <p class="cpdogcan-p8 p3">　NT$999</p>
			 <p class="cpdogcan-p8 p3"></p>
			 
              
			  
          </div>
    </div>



  <!--書籤-->           
      <div id="sidenav" class="sidenav">
          <a href="filter12.jsp" class="dog-sidenav" id="about"><img src="img/dog-food.png" class="dog-pic"></a>
          <a href="filter13.jsp"class="cat-sidenav" id="blog"><img src="img/cat-food.png" class="cat-pic"></a>

          </div>
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
<%@include file="footer.jsp"%>
</footer>
</body>
</html>