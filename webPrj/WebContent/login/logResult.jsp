<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="login" class="prj.java.UserBean" scope="session"/>
<jsp:setProperty property="*" name="login"/>
<%@ page import="java.sql.*, prj.java.LocalSql" %>
<%
String sql = "select count(*) as cnt from user where userId='"
        +login.getId() + "' and userPw=md5('"+login.getPw()+"')";


Connection conn = null;
Statement stmt = null;
ResultSet rs = null;

try{
	   conn = LocalSql.getConnection();
	   stmt = conn.createStatement();
	   rs = stmt.executeQuery(sql);
	   if(rs.next()) login.setResult(rs.getInt("cnt")>0);
	   
	}finally {
	   if(rs!=null) rs.close();
	   if(stmt!=null) stmt.close();
	   if(conn!=null) conn.close();
	}
	response.sendRedirect("../");
	%>
</body>
</html>