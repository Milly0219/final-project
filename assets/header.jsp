<!DOCTYPE html>
<%@ page contentType="text/html" import="java.sql.*"%>
<%@ page pageEncoding="UTF-8" %>
<%@ include file="config.jsp" %>
  <!-- 動態選單-->
  <nav>
      <div id="mySidebar" class="sidebar">
          <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
          <a href="about_team.jsp" target="_blank">關於我們</a>
          <a href="member_profile.jsp">會員資料</a>
          <a href="Q_A.jsp" target="_blank">常見問題</a>
      </div>
  
      <div id="main">
          <button class="openbtn" onclick="openNav()">&#9776; </button>
      
      </div>
  <!--選單-->
      <div class="menu">
          <a href="index.jsp"><img class="logo" src="img/logo.png" width="130px" height="110px"></a>
          <a href="index.jsp"><img class="fp" src="img/footprint-home.png"></a>
          <a href="shop.jsp" target="_blank"><img class="fp" src="img/footprint-buycar.png"></a>
          <a onclick="document.getElementById('id01').style.display='block'"><img class="fp" src="img/footprint-me.png"></a>
  <!--登入後變成登出-->
  <%if(session.getAttribute("email")!= null ){
        Object objname = session.getAttribute("email");
        request.setCharacterEncoding("utf-8");
        sql = "SELECT * FROM `LOGIN` WHERE `LoginEmail` = '"+objname+"'";
        ResultSet rs=con.createStatement().executeQuery(sql);
        if(session.getAttribute("email") != null ){
            while(rs.next()) {

        %>
  <!--選單-會員登入-->      
      <a href="logout.jsp"><div id="id01" class="modal"></div></a>
	  
	  
  <%}}}else{%>
  <!--選單-會員登入-->      
      <div id="id01" class="modal">

        <form class="modal-content animate" action="login.jsp" method="post">
              <div class="img-container">
                  <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
                  <img class="memberpic" src="img/member.png">
              </div>
        
              <div class="member-container">
                  <label  for="username"><b>帳號</b></label><br>
                  <input name="email" class="form-in" id="email-1" type="email" placeholder="Enter Email" required>
              
                  <br><label for="password"><b>密碼</b></label>
                  <br><input name="password" class="form-in" type="password" placeholder="Enter Password" required>
                  <br><input class="login" type="submit" value="登入" onclick="loginsucc()">
                  <input type="button" id="noregister" value="尚未註冊?點我註冊!" onclick="inregister()">

              </div>

              <div class="cancel-container">
                  <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">關閉</button>
              </div>
        </form>

      </div>

  <!--註冊頁面-->
      <div id="id02" class="modal2">

        <form class="modal-content animate" action="signin.jsp" method="post">
              <div class="img-container">
                  <span onclick="document.getElementById('id02').style.display='none'" class="close" title="Close Modal">&times;</span>
                  <img class="memberpic2" src="img/register dog.png">
              </div>
        
              <div class="member-container2">
                  <label  for="name"><b>姓名</b></label><br>
                  <input name="name" class="form-in-1" id="text-1" type="text" placeholder="Enter Name" required><br>
                  <label  for="address"><b>地址</b></label><br>
                  <input name="address" class="form-in-1" id="text-1" type="text" placeholder="Enter Address" required><br>
                  <label  for="tel"><b>電話</b></label><br>
                  <input name="tel" class="form-in-1" id="text-1" type="text" placeholder="Enter Phonenumber" required><br>
                  <label  for="username"><b>帳號</b></label><br>
                  <input name="email" class="form-in-1" id="email-1" type="email" placeholder="Enter Email" required><br>
                  <label for="password"><b>密碼</b></label>
                  <br><input id="inputPassword" name="Password" class="form-in-1" type="password" placeholder="(格式:含英數至少六個字元)" pattern="^(?=.*[a-zA-Z])(?=.*[0-9]).{6,}$" required="required" oninput="setCustomValidity('');" oninvalid="setCustomValidity('請輸入正確的密碼格式:含英數至少六個字元');"/><br>
                  <label for="password"><b>確認密碼</b></label>
                  <br><input id="inputPassword" name="ConfirmPassword" class="form-in-1" type="password" placeholder="Enter Confirm Password" required="required" oninput="setCustomValidity('');" onchange="if(document.getElementById('inputPassword').value != document.getElementById('ConfirmPassword').value){setCustomValidity('密碼不吻合');}"/><br>
                  <br><input class="login"  id="submit" type="submit" value="註冊" onclick="signscc()">
                  
            </div>
        </form>
      </div>
	  <%}%>
	    <!--選單-腳印-->
          <img class="fp2" src="img/foot-prints.png" width="120px" height="140px"></a>
          <img class="fp2" src="img/foot-prints.png" width="120px" height="140px"></a>
          <img class="fp2" src="img/dog.png" width="120px" height="110px"></a>

		<!--選單-搜尋-->
		
		<img class="sc" src="img/search2.png" width="60px" height="60px" alt=""></a>
		<div class="search">
		
		<form class="sc" method="post" action="search.jsp">

			<input type="search" id="search" name="search" placeholder="關鍵字搜尋" />
          <div class="search"></div>
		  
		</form>
		</div>
      </div>
  </nav>