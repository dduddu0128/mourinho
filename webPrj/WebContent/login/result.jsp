<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="user" class="prj.java.UserBean"/>
<jsp:setProperty property="*" name="user"/>
<%@ page import = "java.sql.* , prj.java.LocalSql"%>
<%

if("GET".equals(request.getMethod())){
	response.sendRedirect("login.jsp");
	return;
}

if(!user.getPw().equals(user.getPw2())){
	response.sendRedirect("join.jsp?id="+ user.getId());
	return;
}

String sql = "INSERT INTO user VALUES ('"+user.getId()+"', '"+user.getName()+"', md5('"+user.getPw()+"'))";
System.out.println(sql);
Connection conn = null;
Statement stmt = null;

try{
	conn = LocalSql.getConnection();
	stmt = conn.createStatement();
	stmt.executeUpdate(sql);
}finally{
	if(stmt != null ) stmt.close();
	if(conn != null ) conn.close();
}
response.sendRedirect("login.jsp");
%>
</body>
</html>