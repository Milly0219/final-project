<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %>
<%
String id = request.getParameter("email");
String psw = request.getParameter("password");
if (id.equals("manager@gmail.com") && psw.equals("1234")){
	session.setAttribute("email","manager@gmail.com");
	out.print("<script>alert('管理員登入成功！'); window.location='m_index.jsp' </script>");
}else{
	if(request.getParameter("email") !=null && !request.getParameter("email").equals("") ){   
    
		//sql = "SELECT * FROM login WHERE LoginEmail='" +request.getParameter("email") + 
		//      "'  AND LoginPassword='" + request.getParameter("password") + "'"  ; 
		sql = "SELECT * FROM `login` WHERE `LoginEmail`=? AND `LoginPassword`=?";
		//' OR 1=1; #
		//out.println(sql);
		//out.close();//程式結束
		PreparedStatement pstmt = null;
		pstmt=con.prepareStatement(sql);
		pstmt.setString(1,request.getParameter("email"));
		pstmt.setString(2,request.getParameter("password"));
	
		ResultSet paperrs = pstmt.executeQuery();
		//ResultSet paperrs = con.createStatement().executeQuery(sql);
		
		if(paperrs.next()){            
			session.setAttribute("email",request.getParameter("email"));
			out.print("<script>window.location='index.jsp'</script>");
			con.close();
		}
		else{
			con.close();
			out.print("<script>alert('登入失敗！');window.location='index.jsp'</script>");
		}
	}
	else{
	response.sendRedirect("index.jsp");
	}
}
%>
