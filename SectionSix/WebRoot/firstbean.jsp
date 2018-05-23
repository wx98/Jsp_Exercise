<!-- 调用JavaBean -->
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="mybean.TestBean" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'firstbean.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  	<!--应用jsp:useBean声明使用TestBean，指定其id为"test"-->
  	<jsp:useBean id="test" class="mybean.TestBean" />
  	
  	<%	
  		//调用TestBean属性的set方法设置两个属性的值。
  		test.setName("wangym");
  		test.setPass("wangym0806");
  	%>
  	
  	<h3>应用getProperty获得的值为：</h3>
  	<!-- 应用jsp:getProperty获得TestBean中属性的值并输出 -->
  	用户名:
  	<jsp:getProperty property="name" name="test"/>
  	密码：
  	<jsp:getProperty property="pass" name="test"/>
  	
  	<!-- 应用jsp:setProperty分别设置两个属性的值   -->
  	<jsp:setProperty property="name" name="test" value = "liujin"/>
  	<jsp:setProperty property="pass" name="test" value="liujin0104"/>
	<h3>调用get方法获得的值为： </h3>
	
	<!-- 调用TestBean属性的get方法获得TestBean中的值并输出    -->
	与户名： 
	<%=test.getName() %>
	密码: 
	<%=test.getPass() %> 
  </body>
</html>
