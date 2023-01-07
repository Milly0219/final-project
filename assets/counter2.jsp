<%@ page contentType="text/html" %>
<%@ page pageEncoding="UTF-8" %>
<%
  int counter;
  String strNo = (String)application.getAttribute("counter");//讀application變數
  counter = Integer.parseInt(strNo); //轉成整數
  counter++;                                        //計數器加1
  strNo = String.valueOf(counter);    //轉成字串
  application.setAttribute("counter", strNo);//寫application變數
%>
<%= counter %>
