<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<% 
session.removeAttribute("email");
//response.sendRedirect("index.jsp") ;
out.print("<script>alert('登出成功！');window.location='index.jsp'</script>");
%>