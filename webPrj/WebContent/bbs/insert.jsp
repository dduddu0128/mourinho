<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="bean" class="prj.java.BbsBean"></jsp:useBean>
<jsp:setProperty property="title" name ="bean" />
<jsp:setProperty property="id" name ="bean" />
<jsp:setProperty property="content" name ="bean" />
<%@ page import = "prj.java.LocalSql, java.sql.*" %>
<%@ include file= "../template/head.jspf" %>
<%
   if(request.getMethod().equals("GET")){
      response.sendRedirect("add.jsp");
      return;
   }
   if(bean.getTitle()==null||bean.getContent()==null){
	   System.out.println("아무것도 입력하지 않음");
      response.sendRedirect("add.jsp");
      return;
   }
   String title = bean.getTitle();
   String id = bean.getId();
   String content = bean.getContent();
   
   // sql injection 방지
   
   
   String sql = "INSERT INTO bbs VALUES(0, '"+id+"', '"+title+"', '"+content+"', current_date , 0);";
   System.out.println(sql);
   
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
   
   response.sendRedirect("list.jsp");
%>

</body>
</html>