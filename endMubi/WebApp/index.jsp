<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	int login = 0;
	int delete = 0;
	String id = "";
	

	if(session.getAttribute("login") != null) {
		login = (int)session.getAttribute("login");
	}
	
	if(session.getAttribute("delete") != null) {
		delete = (int)session.getAttribute("delete");
	}
	
	if(session.getAttribute("id") != null) {
		id = (String)session.getAttribute("id");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
	<!-- 
	<meta name-"viewport" content="속성"> 피시화면의 비율을 줄여 모바일  화면에서 보일 수 있도록 하는 기술
	initial-scale : 초기배율을 설정 기본값 1
	minimum-scale : viewport의 최소 배율값, 기본값은 0.25
	maximum-scale : viewport의 최대 배율값, 기본값은 1.6
	user-scalable : 사용자의 확대/축소 기능을 설정, 기본값을 yes입니다
	user-scalable=no : 화면확대 금지
	width=device-width : 디바이스 가로값 설정
	 -->	 
	 
	 
<title>Mubi</title>
<!-- CSS 경로  -->
	<link rel="stylesheet" href="assets/css/reset01.css">
	<link rel="stylesheet" href="assets/css/style01.css">
	 <link rel="stylesheet" href="assets/css/swiper.css">
	  <link rel="stylesheet" href="assets/css/font-awesome.css">
	
	<!-- 파비콘 -->
    <link rel="shortcut icon" href="assets/icons/favicon.ico">
    <link rel="apple-touch-icon-precomposed" href="assets/icons/favicon_72.png" />
    <link rel="apple-touch-icon-precomposed" sizes="96x96" href="assets/icons/favicon_96.png" />
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/icons/favicon_144.png" />
    <link rel="apple-touch-icon-precomposed" sizes="192x192" href="assets/icons/favicon_192.png" />
    <!-- 굳이 쓸모없음 -->
	
	<!-- 웹 폰트 -->
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:100,300,400,500,700,900&amp;subset=korean" rel="stylesheet">
</head>
<script> // 로그아웃 후 뒤로가기 막기위해 사용 
/*window.history.forward();
   function noBack() {
      window.history.forward();
   }
   
   int login = 0;
   window.history.forward();
	function noBack() {
		if((int)session.getAttribute("login") == -1) {
				window.history.forward();
		}
	}*/

</script>	<!--  onload="noBack();" onpageshow="if(event.persisted) noBack();" onunload="" -->
<body onload="noBack();" onpageshow="if(event.persisted) noBack();" onunload="">
 <header id="header">
        <div class="container">
            <div class="row">
                <div class="header clearfix">
                    <h1>
                        <a href="index.jsp">
                            <em><img src="assets/img/logo.png" alt="MEGABOX"></em>   
                           <!--  <strong><img src="assets/img/logo-sub.png" alt="LIFE THEATER"></strong> -->
                        </a>
                    </h1>
                    <nav id="mNav">
                        <h2 class="ir_so">메가박스 전체메뉴</h2>
                        <a href="#" class="ham"><span></span></a>
                    </nav>
                    <nav class="nav">
                    <c:if test="${login != 1 || delete == 1 }">
                        <ul class="clearfix">
                           <!--  <li><a href="#">게시판</a></li> -->
                            <li><a href="login.jsp">로그인</a></li>
                            <li><a href="userJoin.jsp">회원가입</a></li>
                        </ul>
                    </c:if>
                    <c:if test="${login == 1}">
                        <ul class="clearfix">
                            <!-- <form action="logout.do" method="post" id="out">
                            	<li onclick="out.submit()"><a href="#">로그아웃</a></li> -->
                            	<li><a href="userUpdate.jsp">내정보수정</a></li>
                            	<li><a href="reservationCheck.do?id=<%= id %>">예매 확인</a></li>
                            	<li><a href="logout.do">로그아웃</a></li>
                            <!-- </form> -->
                        </ul>
                    </c:if>
                    </nav>
                </div>
            </div>
        </div>
    </header>
<!-- //header -->
    
    
  <section id="banner">
        <h2 class="ir_so">최신 영화 소식</h2>
        <div class="banner_menu">
            <div class="container">
                <div class="row">
                    <div class="bm_left">
                        <ul>
                            <c:if test="${login == 1 }">
                            <li><a href="userUpdate.jsp"><b><%=id %></b>님 환영합니다.</a></li>
                            <%-- <li><b><a href="userSearchOne.do?id=${uvo1.id }">${uvo1.id }</a></b>님 환영합니다.</li> --%>
                            <li><a href="userDelete.jsp">회원탈퇴</a></li>
                            </c:if>
                        </ul>
                    </div>
                    <div class="bm_right">
                        <ul>
                            
                         <!--    <li><a href="#">마이페이지</a></li> -->
                        </ul>
                        <ul>
                     <!--        <li class="white"><a href="#">상영시간표</a></li> -->
                            <li class="purple"><a href="rscreen.do">빠른 예매</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="slider">
            <div class="swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide ss1">
                        <div class="container">
                            <div class="row">
                                <h2>아바타: 물의 길 <em>Avatar: The Way of Water</em></h2>
                                <p>판도라의 바다, 새로운 세계가 펼쳐진다!</p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide ss2">
                        <div class="container">
                            <div class="row">
                                <h2>올빼미 <em>The Night Owl</em></h2>
                                <p>세자는 죽었다! 유일한 목격자는 맹인 침술사</p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide ss3">
                        <div class="container">
                            <div class="row">
                                <h2>탄생 <em>A birth</em></h2>
                                <p>1845년, 조선 근대의 문을 열다!</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-pagination"></div>
                <div class="swiper-button-prev"></div>
                <div class="swiper-button-next"></div>
            </div>
        </div>
    </section>
    <!-- //banner -->
    
   <section id="movie">
        <div class="container">
            <div class="row">
            
            
                <div class="movie">
                    <h2 class="ir_so">최신 영화 정보</h2>
                    <div class="movie_title">
                       <ul>
                            <li class="active"><a href="">영화관 정보</a></li>
                       
                        </ul>
                    </div>
                    <div class="movie_chart">
                        <div class="chart_cont1">
                            <div>
                                <div class="poster">
                                    <figure>
                                        <img src="assets/img/아바타포스터01.jpg" srcset="assets/img/아바타포스터01@.jpg 2x"  alt="아바타">
                                    </figure>
                                    <div class="rank"><strong>1</strong></div>
                                    <div class="mx">
                                        <span class="icon m ir_pm">MX</span>
                                        <span class="icon b ir_pm">Boutique</span>
                                    </div>
                                </div>
                                <div class="infor">
                                    <h3><span class="icon all ir_pm">전체관람가</span> <strong>아바타 : 물의길</strong></h3>
                                    <div class="infor_btn">
                                        <a href="Allcomment.do?title=아바타 - 물의 길">상세보기</a>
                                        <a href="rscreen.do">예매하기</a>
                                       
                                    </div>
                                </div>
                            </div>
                            
                            
                            <div>
                                <div class="poster">
                                    <figure>
                                        <img src="assets/img/올빼미포스터01.jpg" srcset="assets/img/올빼미포스터01@.jpg 2x"  alt="올빼미">
                                    </figure>
                                    <div class="rank"><strong>2</strong></div>
                                    <div class="mx">
                                        <span class="icon m ir_pm">MX</span>
                                        <span class="icon b ir_pm">Boutique</span>
                                    </div>
                                </div>
                                <div class="infor">
                                    <h3><span class="icon a19 ir_pm">15세</span> <strong>올빼미</strong></h3>
                                    <div class="infor_btn">
                                        <a href="Allcomment.do?title=올빼미">상세보기</a>
                                        <a href="rscreen.do">예매하기</a>
                                    </div>
                                </div>
                            </div>
                              <!--   //////////////////////////////////////////////////////////////////////////////////////// -->
                              
                              
                            <div>
                                <div class="poster">
                                    <figure>
                                        <img src="assets/img/탄생포스터01.png" srcset="assets/img/탄생포스터01@.png 2x"  alt="탄생">
                                    </figure>
                                    <div class="rank"><strong>3</strong></div>
                                    <div class="mx">
                                        <span class="icon m ir_pm">MX</span>
                                        <span class="icon b ir_pm">Boutique</span>
                                    </div>
                                </div>
                                <div class="infor">
                                    <h3><span class="icon a15 ir_pm">15세</span> <strong>탄생</strong></h3>
                                    <div class="infor_btn">
                                        <a href="Allcomment.do?title=탄생">상세보기</a>
                                        <a href="rscreen.do">예매하기</a>
                                    </div>
                                </div>
                            </div>
                            
                              <!--   //////////////////////////////////////////////////////////////////////////////////////// -->
                              
                              
                            <div>
                                <div class="poster">
                                    <figure>
                                        <img src="assets/img/영웅포스터01.jpg" srcset="assets/img/영웅포스터01@.jpg 2x"  alt="영웅">
                                    </figure>
                                    <div class="rank"><strong>4</strong></div>
                                    <div class="mx">
                                        <span class="icon m ir_pm">MX</span>
                                        <span class="icon b ir_pm">Boutique</span>
                                    </div>
                                </div>
                                <div class="infor">
                                    <h3><span class="icon a19 ir_pm">15세</span> <strong>영웅</strong></h3>
                                    <div class="infor_btn">
                                        <a href="Allcomment.do?title=영웅">상세보기</a>
                                        <a href="rscreen.do">예매하기</a>
                                    </div>
                                </div>
                            </div>
                              <!--   //////////////////////////////////////////////////////////////////////////////////////// -->
                            
                        </div>
                        
                        
                        <!-- //chart_cont1-->
                        
                    
                        
                        <div class="chart_cont2">
                        
                        
                        
                        
                        
                        
                        
                            
                        </div>
                        <!-- //chart_cont2-->
                        <div class="chart_cont3">
                            
                        </div>
                        <!-- //chart_cont3-->
                        <div class="chart_cont4">
                            
                        </div>
                        <!-- //chart_cont4-->
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- //movie -->
    
    <!-- movie  -->
    
	<!-- end 배너  -->




    <footer id="footer">
        <div id="footer_sns">
            <div class="container">
                <div class="footer_sns">
                    <ul>
                        <li class="icon s1"><a href="#"><span class="ir_pm">트위터</span></a></li>
                        <li class="icon s2"><a href="#"><span class="ir_pm">페이스북</span></a></li>
                        <li class="icon s3"><a href="#"><span class="ir_pm">인스타그램</span></a></li>
                        <li class="icon s4"><a href="#"><span class="ir_pm">구글 플레이</span></a></li>
                        <li class="icon s5"><a href="#"><span class="ir_pm">아이폰 앱스토어</span></a></li>
                    </ul>    
                    <div class="tel">
                        <a href="#">ARS <em>1544-0070</em></a>
                    </div>
                </div>
            </div>
        </div>
        <div id="footer_infor">
            <div class="container">
                <div class="row">
                    <div class="footer_infor">
                        <h2><a href="index.jsp"><img src="assets/img/logo_footer.png" alt="megabox"></a></h2>
                        <ul>
                            <li><a href="#">회사소개</a></li>
                            <li><a href="#">채용정보</a></li>
                            <li><a href="#">제휴/광고/부대사업 문의</a></li>
                            <li><a href="#">이용약관</a></li>
                            <li><a href="#">개인정보처리방침</a></li>
                            <li><a href="#">고객센터</a></li>
                            <li><a href="#">윤리경영</a></li>
                       </ul>
                        <address>
                            <p>서울특별시 동작구 노량진동, 2층 Mubi(주) (노량진, KG아이티뱅크)<br><span class="bar2">대표자명 김동환</span> 개인정보보호 책임자 경영지원실 실장 김지은<br><span class="bar2">사업자등록번호 031-123-59478</span> 통신판매업신고번호 제 777호</p>
                            <p>Copyright 2014 by MegaboxJoongAng Inc. All right reserved</p>
                        </address>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- //footer -->


<!-- 자바스크립트 라이브러리 -->
   <script src="assets/js/jquery.min_1.12.4.js"></script>
    <script src="assets/js/modernizr-custom.js"></script>
    <script src="assets/js/ie-checker.js"></script>
    <script src="assets/js/swiper.min.js"></script>
    <script>
        var swiper = new Swiper('.swiper-container',{
            pagination: {
                el: '.swiper-pagination',
            },
            navigation: {
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev',
            },
            autoplay: {
                delay: 5000,
            },
        });
    </script>
</body>
</html>