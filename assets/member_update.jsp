<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %>
<%  
	request.setCharacterEncoding("UTF-8");
    String uname = request.getParameter("member-name");
    String ubirth = request.getParameter("birth");
    String utel = request.getParameter("tel");
	String uaddr = request.getParameter("addr");
	
    sql="UPDATE LOGIN SET `LoginName` = '" + uname + "',`birthday` = '" + ubirth + "',`tel` = '" + utel + "',`address` = '" + uaddr + "' WHERE `LoginEmail` = '" + session.getAttribute("email")+ "';";
    int no=con.createStatement().executeUpdate(sql);
	if (no>0){
        session.removeAttribute("email"); 
        out.print("<script>alert('會員資料已更新，請重新登入！'); window.location='index.jsp' </script>");
    }
    con.close();
%>