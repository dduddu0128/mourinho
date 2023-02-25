<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>업데이트</title>
</head>
<body>
<%request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="bean" class="prj.java.BbsBean"/>
<jsp:setProperty property="*" name="bean"/>

<%@ page import="prj.java.LocalSql, java.sql.*" %>
<%
if(request.getMethod().equals("GET")){
	response.sendRedirect("edit.jsp?num="+bean.getNum());
	return;
}

String sql="update bbs set title ='"+bean.getTitle()+"',content='"+bean.getContent()+"'where num="+ bean.getNum();
Connection conn = null;
Statement stmt = null;

try{
    conn = LocalSql.getConnection();
    stmt = conn.createStatement();
    stmt.executeUpdate(sql);
 }finally {
    if(stmt != null) stmt.close();
    if(conn != null) conn.close();
 }
response.sendRedirect("detail.jsp?num="+bean.getNum());
%>
</body>
</html>