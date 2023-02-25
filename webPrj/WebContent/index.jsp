<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file= "template/head.jspf" %>
<style type="text/css">

		
        #container {
            width: 1200px;
            margin: auto;
            min-height: 800px;
        }
        
        #content>h1{
        text-align: center;
        margin: 20px;
        }
        
        #bottom{
        height: 50px;
        }
        
        .bxImg{
        height: 900px;
 		width: 900px;
        }
        
        
        img{
        margin: auto;
        display: block;
        max-width: 100%;
 		max-height: 100%;
        }

</style>
<script type="text/javascript">
var bx;
$(function(){
    
    bx=$('.bx').bxSlider();
    $('.bx-controls').hide();
    setInterval(bx.goToNextSlide,2500);
});
</script>
</head>
<body>
<%@ include file= "template/header.jspf" %>
<%@ include file= "template/menu.jspf" %>
    


    
    <div id="container">
    	<div id="content">
        	<h1>2023 SPRING & SUMMER</h1>
        	<div class="bx">
          		<div class="bxImg"><img src="imgs/img01.jpg" alt="img01" /></div>
          		<div class="bxImg"><img src="imgs/img02.jpg" alt="img02" /></div>
          		<div class="bxImg"><img src="imgs/img03.jpg" alt="img03" /></div>
          		<div class="bxImg"><img src="imgs/img04.jpg" alt="img04" /></div>
         		<div class="bxImg"><img src="imgs/img05.jpg" alt="img05" /></div>
         		<div class="bxImg"><img src="imgs/img06.jpg" alt="img06" /></div>
        	</div>
    	</div>
    	<div id="bottom"></div>
    </div> 
    
    
<%@ include file= "template/footer.jspf" %>
</body>
</html>