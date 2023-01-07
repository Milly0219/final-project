<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*,java.util.*"%>
<%@include file="config.jsp" %>
<%
    if(session.getAttribute("email")==null){
        out.print("<script>alert('請先登入'); window.location='index.jsp'</script>");
    }
    else{
		out.print("<script>alert('成功加入購物車!'); window.location='index.jsp'</script>");
	}
	
%>