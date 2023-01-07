<!DOCTYPE html>
<%@ page contentType="text/html" import="java.sql.*"%>
<%@ page pageEncoding="UTF-8" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>唯獨寵你｜關於我們</title>
	<link rel="icon" type="image/x-icon" href="img/logo.png">
	
    <style>
        @import "css/header.css";
        @import "css/nav.css";
        @import "css/footer.css";
        @import "css/about_team.css";
        
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

    <header>
    <%@include file="header.jsp"%>
    </header>
    <main>
        <div class="article1">
            <article>
                <section class="content">
                    <h2>唯獨寵你</h2>
                    <div class="hr"></div>
                    <p>唯獨「寵」你，寵不只是寵物，更是寵愛，現在有不少的愛貓愛狗人士，我們就應該要用最好的來呵護毛小孩。</p>
                </section>
                <section class="content1">
                    <h2>公司介紹</h2>
                    <div class="hr"></div>
                    <p>協鴻有限公司-在台灣寵物市場上代理提供寵物寶貝及飼主最健康的營養保健用品及飼料食品。為了最愛的寵物，協鴻總是在國內國外琳瑯滿目的寵物產品中尋尋覓覓引進最適合台灣寵物市場的產品，在品質挑選上協鴻更精心的研究把關及資料調查，只為了提升寵物及畜主的生活品質目標。因為協鴻深信， 好的產品能帶給寵物更長久的生命力及快樂時光。</p>
                    <p>協鴻有限公司亦為國內最大寵物食品製造商-福壽寵物食品北區優良經銷商，本公司也經銷全亞洲寵物乾糧最大製造商-好侶股份有限公司旗下多款優良品牌，帶給消費者更多更好的選擇。</p>
                </section>
                <section class="content2">
                    <h2>品牌特色</h2>
                    <div class="hr"></div>
                    <p>此網站選用的寵物食品來自好侶集團，品牌包含讓貓饕難以抗拒的美食Me-O咪歐、毛孩呷好飽天天好心情的Classic Pets加好寶、專門針對寵物的營養需求所研製食品的iq+。好侶精心打造寵物食品品牌，共同秉承集團原創精神，贏得消費者的一致好評！</p>
                    <p>另一個來自全台最大的寵物食品製造商－福壽實業，品牌包含Bravo自然禮讚、FUSO Pets、豪門優鮮，在台灣擁有30多年在地的寵物食品專業研發經驗，也是本土廠商唯一有能力開發「處方糧」之專業寵物食品廠，針對台灣本土之溼熱氣候、台灣犬貓體質開發出適合台灣狗狗、貓咪的營養健康飲食配方。福壽寵物食品專業廠全廠區皆通過 HACCP食品風險控管、ISO22000雙國際級食品安全認證，為人食等級的安全寵糧！</p>
                </section>
            </article>
        </div>
        
        <div class="article3">
            <article>
                <section class="headline">
                    <h2>｜團 隊 成 員｜</h2>
                </section>
            </article>
            <article>
                <section class="art3">
                    <div class="container">
                        <img src="img/about_team/photo1.PNG"  class="image1">
                        <div class="overlay1">這次的期末真的是非常浩大的工程，是熬了很多夜換來的，謝謝我的組員們，沒有他們的話，這個網頁也完成不了！後端的組員們也都很Carry，讓我們的網頁更加完美！在這裡想致敬前端跟後端工程師都辛苦了！</div>
                    </div>
                    <div class="container">
                        <img src="img/about_team/photo2.PNG"  class="image2">
                        <div class="overlay2">要寫出一個好網頁真的不容易，不只要學會很多方法、理解程式碼的運用，我覺得耐心也相當重要，像是我第一次遇到的問題因為耗了太多時間我就放棄嘗試，直到後來覺得還是再修正看看，培養耐心一個一個地方好好調整，最終成功了。謝謝一起為專題努力的組員們，為了呈現好作品付出許多心力，大家都辛苦了！</div>
                    </div>
                    <div class="container">
                        <img src="img/about_team/photo3.PNG"  class="image3">
                        <div class="overlay3">這次期末專案我們是負責前端撰寫，在過程中會遇到各種debug，也為了趕工與組員度過了好幾個數夜，但是看到成品後會意外的很有成就感，內心充滿著滿滿的感動。在此次合作中，幾乎也沒溝通或合作上的問題，非常感謝我們前後端都很凱睿的好夥伴們，辛苦大家了！</div>
                    </div>
                </section>
                <section>
                    <div class="name1">
                        <img src="img/about_team/name1.PNG" class="namephoto1">
                        <img src="img/about_team/name2.PNG" class="namephoto2">
                        <img src="img/about_team/name3.PNG" class="namephoto3">
                    </div>
                </section>
                <section class="art3">
                    <div class="container">
                        <img src="img/about_team/photo4.PNG"  class="image4">
                        <div class="overlay4">這次的期末作業對我來說真的非常困難，我對於寫程式真的很不擅長，幸運的是我遇到了很厲害的組員，在好幾個夜晚過後神奇的生出網站，前端的人也很高效、負責，製作出了那麼漂亮的網站頁面，大家一起完成一件事情真的是件讓人很有成就感的事。</div>
                    </div>
                    <div class="container">
                        <img src="img/about_team/photo5.PNG"  class="image5">
                        <div class="overlay5">這次期末讓我學到很多東西，了解到原來做網頁需要花很多的心力，我們平常看到的只是漂亮的網頁，卻不知背後的到底花了多少時間在趕程式。與我們搭配的前端真的很用心，每天不斷的在更新，讓我們後端有很多的時間可以完成，遇到問題也會積極的提出，讓問題能夠快速解決。</div>
                    </div>
                    <div class="container">
                        <img src="img/about_team/photo6.PNG"  class="image6">
                        <div class="overlay6">這一次合作給我帶了許多不一樣的體驗，我更知道怎麼和組員去溝通我的需求，讓我們的合作更有效率。在不斷的討論中去精進我們的網頁，也去理解對方到底都做了什麼事情，讓我們有對彼此的工作更有認識。也會共同去解決一些我們在前後端都有遇到的問題。也非常謝謝我們的前端，很努力地幫我們做出漂亮的網頁。</div>
                    </div>
                </section>
                <section>
                    <div class="name2">
                        <img src="img/about_team/name4.PNG" class="namephoto4">
                        <img src="img/about_team/name5.PNG" class="namephoto5">
                        <img src="img/about_team/name6.PNG" class="namephoto6">
                    </div>
                </section>
            </article>
        </div>

        <div class="article2">
            <article>
                <section class="headline">
                    <h2>｜協鴻有限公司｜</h2>
                    <h3>☎️ 02-2679-0867　📞0932276631　🕗08:00-17:00 週休二日</h3>
                </section>
            </article>
            <article>
                <section>
                    <iframe class="map" src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d452.18594540424016!2d121.34817243329331!3d24.94952111454039!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x34681953535c1bcd%3A0x942ab686426ced38!2z5Y2U6bS75pyJ6ZmQ5YWs5Y-4!5e0!3m2!1szh-TW!2stw!4v1671978451004!5m2!1szh-TW!2stw"  style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                </section>
            </article>
            <article>
                <section class="shopeephoto">
                    <img src="img/about_team/shopee.PNG"><font>•*¨*•.¸¸☆*･ﾟ</font><a href="https://shopee.tw/shaehung?categoryId=100631&entryPoint=ShopByPDP&itemId=1732740903&upstream=search" target="_blank">寵物好食堂</a>
                </section>
            </article>
        </div>
    </main>
    <footer>
        <%@ include file="footer.jsp"%>
    </footer>
</body>
</html>