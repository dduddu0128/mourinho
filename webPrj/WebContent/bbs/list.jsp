<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판 리스트</title>
<%@ include file = "../template/head.jspf" %>
<style type="text/css">
		#container {
            width: 1200px;
            margin: auto;
            min-height: 800px;
        }
        

        
        #bottom{
        height: 20px;
        }
        
        * {
    margin: 0;
    padding: 0;
}

html {
    font-size: 10px;
}

ul, li {
    list-style: none;
}

a {
    text-decoration: none;
    color: inherit;
}

.board_title {
    margin-bottom: 30px;
}

.board_title strong {
    font-size: 3rem;
    
}

.board_title p {
    margin-top: 5px;
    font-size: 1.4rem;
}

.board_wrap {
    width: 1000px;
    margin: 100px auto;
}

.bt_wrap {
    margin-top: 30px;
    text-align: center;
    font-size: 0;
}

.bt_wrap a {
    display: inline-block;
    min-width: 80px;
    margin-left: 10px;
    padding: 10px;
    border: 1px solid #000;
    border-radius: 2px;
    font-size: 1.4rem;
    background-color: #2a2a2a;
    color: white;
}

.bt_wrap a:first-child {
    margin-left: 0;
}

.bt_wrap a.on {
    background: #000;
    color: #fff;
}

.board_list {
    width: 100%;
    border-top: 2px solid #000;
}

.board_list > div {
    border-bottom: 1px solid #ddd;
    font-size: 0;
}

.board_list > div.top {
    border-bottom: 1px solid #999;
}

.board_list > div:last-child {
    border-bottom: 1px solid #000;
}

.board_list > div > div {
    display: inline-block;
    padding: 15px 0;
    text-align: center;
    font-size: 1.4rem;
}

.board_list > div.top > div {
    font-weight: 600;
}

.board_list .num {
    width: 10%;
}

.board_list .title {
    width: 60%;
    text-align: left;
}

.board_list .top .title {
    text-align: center;
}

.board_list .writer {
    width: 10%;
}

.board_list .date {
    width: 10%;
}

.board_list .count {
    width: 10%;
}

.board_page {
    margin-top: 30px;
    text-align: center;
    font-size: 0;
}

.board_page a {
    display: inline-block;
    width: 32px;
    height: 32px;
    box-sizing: border-box;
    vertical-align: middle;
    border: 1px solid #ddd;
    border-left: 0;
    line-height: 100%;
}

.board_page a.bt {
    padding-top: 10px;
    font-size: 1.2rem;
    letter-spacing: -1px;
}

.board_page a.num {
    padding-top: 9px;
    font-size: 1.4rem;
}

.board_page a.num.on {
    border-color: #000;
    background: #000;
    color: #fff;
}

.board_page a:first-child {
    border-left: 1px solid #ddd;
}

.board_view {
    width: 100%;
    border-top: 2px solid #000;
}

.board_view .title {
    padding: 20px 15px;
    border-bottom: 1px dashed #ddd;
    font-size: 2rem;
}

.board_view .info {
    padding: 15px;
    border-bottom: 1px solid #999;
    font-size: 0;
}

.board_view .info dl {
    position: relative;
    display: inline-block;
    padding: 0 20px;
}

.board_view .info dl:first-child {
    padding-left: 0;
}

.board_view .info dl::before {
    content: "";
    position: absolute;
    top: 1px;
    left: 0;
    display: block;
    width: 1px;
    height: 13px;
    background: #ddd;
}

.board_view .info dl:first-child::before {
    display: none;
}

.board_view .info dl dt,
.board_view .info dl dd {
    display: inline-block;
    font-size: 1.4rem;
}

.board_view .info dl dt {

}

.board_view .info dl dd {
    margin-left: 10px;
    color: #777;
}

.board_view .cont {
    padding: 15px;
    border-bottom: 1px solid #000;
    line-height: 160%;
    font-size: 1.4rem;
}

.board_write {
    border-top: 2px solid #000;
}

.board_write .title,
.board_write .info {
    padding: 15px;
}

.board_write .info {
    border-top: 1px dashed #ddd;
    border-bottom: 1px solid #000;
    font-size: 0;
}

.board_write .title dl {
    font-size: 0;
}

.board_write .info dl {
    display: inline-block;
    width: 50%;
    vertical-align: middle;
}

.board_write .title dt,
.board_write .title dd,
.board_write .info dt,
.board_write .info dd {
    display: inline-block;
    vertical-align: middle;
    font-size: 1.4rem;
}

.board_write .title dt,
.board_write .info dt {
    width: 100px;
}

.board_write .title dd {
    width: calc(100% - 100px);
}

.board_write .title input[type="text"],
.board_write .info input[type="text"],
.board_write .info input[type="password"] {
    padding: 10px;
    box-sizing: border-box;
}

.board_write .title input[type="text"] {
    width: 80%;
}

.board_write .cont {
    border-bottom: 1px solid #000;
}

.board_write .cont textarea {
    display: block;
    width: 100%;
    height: 300px;
    padding: 15px;
    box-sizing: border-box;
    border: 0;
    resize: vertical;
}
@media (max-width: 1000px) {
    .board_wrap {
        width: 100%;
        min-width: 320px;
        padding: 0 30px;
        box-sizing: border-box;
    }

    .board_list .num,
    .board_list .writer,
    .board_list .count {
        display: none;
    }

    .board_list .date {
        width: 40%;
    }

    .board_list .title {
        text-indent: 10px;
    }

    .board_list .top .title {
        text-indent: 0;
    }

    .board_page a {
        width: 26px;
        height: 26px;
    }

    .board_page a.bt {
        padding-top: 7px;
    }
    
    .board_page a.num {
        padding-top: 6px;
    }

    .board_view .info dl {
        width: 50%;
        padding: 0;
    }

    .board_view .info dl:nth-child(-n+2) {
        margin-bottom: 5px;
    }

    .board_view .info dl::before {
        display: none;
    }

    .board_view .info dl dt,
    .board_view .info dl dd {
        font-size: 1.2rem;
    }

    .board_write .info dl {
        width: 49%;
    }

    .board_write .info dl:first-child {
        margin-right: 2%;
    }

    .board_write .title dt,
    .board_write .info dt {
        display: none;
    }

    .board_write .title dd,
    .board_write .info dd {
        width: 100%;
    }

    .board_write .title input[type="text"],
    .board_write .info input[type="text"],
    .board_write .info input[type="password"] {
        width: 100%;
    }
}
</style>
</head>
<body>
<%@ include file= "../template/header.jspf" %>
<%@ include file= "../template/menu.jspf" %>
    
    <div id="container">
    	<div id="content">
    	<div class="board_wrap">
    	   <div class="board_title">
            <strong>Q&A</strong>
           </div>
        <div class="board_list_wrap">
            <div class="board_list">
                <div class="top">
                    <div class="num">번호</div>
                    <div class="title">제목</div>
                    <div class="writer">작성자</div>
                    <div class="date">작성일</div>
                    <div class="count">조회수</div>
                </div>
                <%@ page import="prj.java.*, java.sql.*, java.util.*" %>
        		<%
    			int limit=10;
    			String msgLimit=request.getParameter("limit");
    			if(msgLimit!=null)limit=Integer.parseInt(msgLimit);
    			String key=request.getParameter("key");
    			if(key==null)key="title";
    			String word=request.getParameter("word");
    			if(word==null)word="";
    			int maxCnt=0;
    			String msgP=request.getParameter("page");
    			int p=1;
    			if(msgP!=null)p=Integer.parseInt(msgP);
        		
    			String sql="select num,title,userId,regdate,visitcnt from bbs where "+key;
    			sql+=" like '%"+word+"%' order by num desc limit "+limit;
    			sql+=" offset "+(limit*(p-1));
    			
    			String sql2="select CEILING(count(*)/"+limit;
    			sql2+=") from bbs where "+key+" like '%"+word+"%'";
    			
        		ArrayList<BbsBean> list = null;
        		list = new ArrayList<BbsBean>();
        		Connection conn = null;
        		Statement stmt  = null;
        		ResultSet rs    = null;
        		try{
        			conn = LocalSql.getConnection();
        			stmt=conn.createStatement();
    				rs=stmt.executeQuery(sql2);
    				if(rs.next())maxCnt=rs.getInt(1);
    				rs.close();
    				stmt.close();
    				// get List
    				stmt=conn.createStatement();
    				rs=stmt.executeQuery(sql);
        			
        			while(rs.next()){
        				BbsBean bean=new BbsBean();
        				bean.setNum(rs.getInt("num"));
        				bean.setTitle(rs.getString("title"));
        				bean.setId(rs.getString("userId"));
        				bean.setVisitCnt(rs.getInt("visitCnt"));
        				bean.setRegdate(rs.getDate("regdate"));
        				list.add(bean);
        			}
        		}finally{
        			if(rs!=null)rs.close();
        			if(stmt!=null)stmt.close();
        			if(conn!=null)conn.close();
        		}
        		
        		for(int i=0; i<list.size(); i++){
        			BbsBean bean=list.get(i);
        		%>
                <div>
                    <div class="num"><%=bean.getNum() %></div>
                    <div class="title"><a href="detail.jsp?num=<%=bean.getNum() %>"><%=bean.getTitle() %></a></div>
                    <div class="writer"><%=bean.getId() %></div>
                    <div class="date"><%=bean.getRegdate() %></div>
                    <div class="count"><%=bean.getVisitCnt() %></div>
                </div>
                <%} %>
            </div>
            <div class="board_page">
           		 <%
                int start=0+5*((p-1)/5);
				int end=start+5;//maxCnt
				if(end>maxCnt)end=maxCnt;
				if(start!=0){%>
				<a href="list.jsp?limit=<%=limit %>&page=<%=start-1%>&key=<%=key%>&word=<%=word%>" class="bt prev"><</a>
				<%}
				for(int i=start; i<end; i++){ 
				%>
					<a href="list.jsp?limit=<%=limit %>&page=<%=i+1%>&key=<%=key%>&word=<%=word%>" class="num on">[<%=i+1 %>]</a>
				<%} 
				if(end<maxCnt){%>
				<a href="list.jsp?limit=<%=limit %>&page=<%=end+1%>&key=<%=key%>&word=<%=word%>" class="bt next">></a>
				<%} %>
            </div>
             </div>
            <div class="bt_wrap">
                <a href="add.jsp">글쓰기</a>
                <!--<a href="#">수정</a>-->
            </div>
        </div>
    </div>
    </div>
    </div> 
    
<%@ include file= "../template/footer.jspf" %>
</body>
</html>