<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인 페이지</title>
<link rel = "stylesheet" href = "../css/login.css" type = "text/css"/>
<style></style>
</head>
<body>
 	<form action="logResult.jsp" method="post">
        <h2 id="title">LOGIN</h2>
        <div id="msg"></div>
        <input type="text" name="id" placeholder="아이디 입력"  autofocus/>
        <input type="password" name="pw" placeholder="비밀번호 입력"/>
        <button>SIGN IN</button>
        <div>
            <a href="join.jsp">[회원가입]</a>
            <a href="../index.jsp">[홈으로]</a>
        </div>
     </form>
</body>
</html>