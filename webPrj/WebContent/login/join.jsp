<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입 페이지</title>
<link rel = "stylesheet" href = "../css/join.css" type = "text/css">
    <style>
    </style>
</head>
<body>	
   <form action="result.jsp" method="post">
    <div class="title">Register</div>
    <div id="msg" class="msg"> </div> 
    <label for="">아이디</label>
    <input class="input-field" type="text" name="id" placeholder="영문소문자/숫자, 4~16자"/>
    <label for="">이름</label>
    <input class="input-field" type="text" name="name" 
     value="<%=request.getParameter("id")==null?"":request.getParameter("id")%>" placeholder="홍길동" />
    <label for="">비밀번호</label>
    <input class="input-field" type="password" name="pw" placeholder="영문/숫자/특수문자 중 2가지 이상 조합"/>
    <label for="">비밀번호 확인</label>
    <input class="input-field" type="password" name="pw2" placeholder="영문/숫자/특수문자 중 2가지 이상 조합"/>
    <div>
    <button>회원 가입</button>
    <button type = "button" onclick="history.back()">취소</button>
    </div>
   </form> 
</body>
</html>