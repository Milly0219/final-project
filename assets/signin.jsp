<meta http-equiv=“Content-Type” content=“text/html; charset=utf-8”>
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*,java.util.*"%>
<%@include file="config.jsp" %>
<%

				request.setCharacterEncoding("UTF-8");
				String name=request.getParameter("name");
				
				String address=request.getParameter("address");
				String phone=request.getParameter("tel");
				String id=request.getParameter("email");
				String pwd=request.getParameter("Password");
				String pwd2=request.getParameter("ConfirmPassword");
				
				sql = "SELECT count(*) as count FROM `LOGIN` WHERE `LoginEmail` = '"+id+"';";
				ResultSet rs=con.createStatement().executeQuery(sql);
				int count = 0;
				if(rs.next()){
					count = rs.getInt("count");
				}
				
				if(count == 0) {
    				if(name==""||address==""||phone==""||id==""||pwd==""){
						out.print("<script>alert('註冊失敗，所有欄位不得為空，返回主頁');window.location='index.jsp'</script>");
					}
					else if(!pwd.equals(pwd2)){
						out.print("<script>alert('註冊失敗，請確認密碼是否皆輸入正確，返回主頁');window.location='index.jsp'</script>");
					}
					else{	
						try{
				 			sql = "INSERT INTO `login`(LoginName, address, tel, LoginEmail, LoginPassword) values('"+name+"','"+address+"','"+phone+"','"+id+"','"+pwd+"')";
							con.createStatement().executeUpdate(sql);
							out.print("<script>alert('註冊成功，返回主頁');window.location='index.jsp'</script>");
				
						}
						catch(SQLException sExec){
							out.print("<script>alert('註冊失敗，該帳號存在或有其他問題，返回主頁');window.location='index.jsp'</script>");
						}
					}
				}else{
					out.print("<script>alert('註冊失敗，此帳號已被註冊，返回主頁');window.location='index.jsp'</script>");
				}	
		
		
%>