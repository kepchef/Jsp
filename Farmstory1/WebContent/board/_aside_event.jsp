<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String cate  = request.getParameter("cate");
	String title = null;
	
	if(cate.equals("event")){
		title = "이벤트";
	}
%>
<div id="sub">
    <div><img src="/Farmstory1/img/sub_top_tit4.png" alt="EVENT"></div>
    <section class="cate4">
        <aside>
            <img src="/Farmstory1/img/sub_aside_cate4_tit.png" alt="이벤트"/>

            <ul class="lnb">
                <li class="on"><a href="/Farmstory1/board/list.jsp?gnb=event&cate=event">이벤트</a></li>
            </ul>
        </aside>
        <article>
            <nav>
                <img src="/Farmstory1/img/sub_nav_tit_cate4_tit1.png" alt="이벤트"/>
                <p>
                    HOME > 이벤트 > <em><%= title %></em>
                </p>
            </nav>

            <!-- 내용 시작 -->