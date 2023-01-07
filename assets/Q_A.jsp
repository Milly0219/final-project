<!DOCTYPE html>
<%@ page contentType="text/html" import="java.sql.*"%>
<%@ page pageEncoding="UTF-8" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>唯獨寵你｜常見問題</title>
    <link rel="icon" type="image/x-icon" href="img/logo.png">

    <style>
        @import "css/header.css";
        @import "css/nav.css";
        @import "css/footer.css";
        @import "css/Q_A.css";
        @import url('https://fonts.googleapis.com/css2?family=Kanit&display=swap');
        @import url('https://fonts.googleapis.com/css2?family=Bree+Serif&display=swap');
        @import url('https://fonts.googleapis.com/css2?family=Zen+Antique&display=swap');
    </style>

    <script src="js/main.js"> </script>
    <script src="js/login.js"> </script>
    <script src="js/member.js"> </script>
    <script src="js/close.js"> </script>


</head>
<body>
    <header>
    <%@include file="header.jsp"%>


    </header>
    <main>
        <div class="article1">
            <article>
                <section class="headline">
                    <h2 align="center">常 見 問 題 Q & A</h2>
                </section>
                <section class="content">
                    <h3>Q : 商品下單後幾天內會收到呢？</h3>
                    <p>全品項有分現貨和預購，現貨1-3天出貨，預購7-10天出貨。</p>
                    <h3>Q : 要如何知道此商品是現貨還是預購呢？</h3>
                    <p>若想了解有關商品的任何資訊，歡迎詢問我們！<br><br>
                    <a href="mailto:yunyun394652@gmail.com?subject=唯獨寵你">點此詢問</a></p>
                    <h3>Q : 貓咪食品的保存期限有多久呢？</h3>
                    <p>全品項的保存期限皆為一年以上。</p>
                    <p>可以於商品資訊處得知詳細資訊～</p>
                    <h3>Q : 狗狗罐頭有口味可以挑嗎？</h3>
                    <p>我們有不同品牌和口味的食品，提供給毛小孩做選擇！</p>
                    <img class="QA" src="img/QA.png">
                </section>
            </article>
        </div>
    </main>
    <footer>
        <%@include file="footer.jsp"%>
    </footer>
</body>
</html>