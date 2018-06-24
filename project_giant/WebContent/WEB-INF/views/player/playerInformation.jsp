<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE HTML>
<!--
	Helios by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>Helios by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="../resources/assets/css/main.css" />
		 <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
		<style>
            .player_wrap {
	width : 100%;
    overflow: hidden;
}
            
.top {
	width : 100%;
    height: 300px;
}
.left_image {
	width : 30%;
    height: 300px;
    background: yellow;
    margin-right: 30px;
    float:left;
}
.left_image img{
	width : 100%;
    height: 100%;
}
.right_content {
	width : 60%;
    height: 300px;
    border: 1px solid black;
    float:right;
}
.center_left_year {
	width : 20%;
    height: 30px;
    clear: both;
    float:left;
    border-bottom: 1px solid black;
}
.player_position {
	width : 60%;
    overflow: hidden;
    margin :0 auto;
    text-align: left;
}
.en_name {
    width : 60%;
    margin : 0 auto;
	text-align: left;
    border-bottom: 1px solid black;
    font-size: 10px;
}
.introduce_player {
	width : 60%;
    overflow: hidden;
    margin: 0 auto;
}
.introduce_player table{
	text-align: left;
}
.introduce_player table td{
	border: none;
}
.introduce_player table tr{
	border: none;
}
.introduce_player table th{
	border: none;
}
.player_score th{
    font-weight: 900;
    color:black;
	background-color: #98F791;
    text-align: center;
}
.player_score td{
	color:black;
    text-align: center;
}
.player_all_score th{
	color:black;
	text-align:center;
}
.player_all_score td{
	color:black;
}
.select_year {
	width: 30%;
    height: 30px;
    line-height: 30px;
    float:right;
}
.player_all_score th{
    color:black;
    font-weight: 900;
	background-color: #98F791;
}
            
.aaa th{
    border: 1px solid black;
}
.aaa td{
    border: 1px solid black;
}
.align_text {
	width: 20%;
    height: 30px;
    line-height: 30px;
    float:left;
    clear: both;
}
        </style>
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
	</head>
	<body class="homepage">
		<div id="page-wrapper">

			<!-- Header -->
				<div id="header">

					<!-- Inner -->
					

					<!-- Nav -->
						<nav id="nav">
							<ul>
								<li><a href="../">ホーム</a></li>
								<li>
									<a href="../Front/introduce">九段紹介</a>
								</li>
								<li><a href="#">選手団紹介</a>
								    <ul>
								        <li><a href="../Front/supervisor">監督/コーチングスタッフ</a>
								            <ul>
								                <li><a href="../Front/supervisor">監督</a></li>
								                <li><a href="../Front/coach">コーチ</a></li>
								            </ul>
								        </li>
								        <li><a href="../Front/infielder">選手団</a>
								            <ul>
								                <li><a href="../Front/infielder">内野手</a></li>
								                <li><a href="../Front/outfielder">外野手</a></li>
								                <li><a href="../Front/catcher">捕手</a></li>
								                <li><a href="../Front/pitcher">投手</a></li>
								            </ul>
								        </li>
								    </ul>
								</li>
								<li><a href="../team/teamRank?year=2017">記録室</a>
								    <ul>
								        <li><a href="../team/teamRank?year=2017">チーム順位</a></li>
								        <li><a href="../team/teamRecord?year=2017">チーム記録</a></li>
								    </ul>
								</li>
								<li><a href="../sboard/freeboard">掲示板</a>
								    <ul>
										<li><a href="../sboard/freeboard">自由掲示板</a></li>
										<li><a href="../sboard/deal">チケット譲渡掲示板</a>
										</li>
										<li><a href="../sboard/notice">公知事項</a></li>
									</ul>
								</li>
								<c:if test="${empty login}">
								<li><a href="../user/member">ログイン</a></li>
								</c:if>
								<c:if test="${not empty login }">
								<li><a href="../user/logout">ログアウト</a></li>
								</c:if>
							</ul>
						</nav>

				</div>

			<!-- Banner -->
				<section id="banner">
					<header>
						<h2>選手詳細情報</h2>
					</header>
					<div class="player_wrap">
					    <div class="top">
					        <div class="left_image">
					        <c:forEach items="${list }" var="batterVO" begin="0" end="0">
					            <img src="${batterVO.img}" alt="">
					        </div>
					        <div class="right_content">
					         
					            <div class="player_position">
					                <h4>${batterVO.position }</h4>
					            </div>
					           
					            <div class="en_name">
					            <p>${batterVO.name }</p>
                                </div>
                                <br>
                                <div class="introduce_player">
					            <table>
			
  <tr>
    <th>生年月費</th>
    <th>${fn:substring(batterVO.birth,0,10) }</th>
  </tr>
  <tr>
    <td>投打</td>
    <td>${batterVO.pitcherhitting }</td>
  </tr>
                               <tr>
                                   <td>身長/体重</td>
                                   <td>${batterVO.height}cm/${batterVO.weight}kg</td>
                               </tr>
                               <tr>
                                   <td>経歴</td>
                                   <td>${batterVO.career }</td>
                               </tr>
                               <tr>
                                   <td>入団年度</td>
                                   <td>${fn:substring(batterVO.enteryear,0,4) }년</td>
                               </tr>
                               </c:forEach>
                                </table>
                                </div>
					        </div>
					    </div>
					    <div class="center_left_year">
					        2017成績
					    </div>
					    
					    <br>
					    <table class="player_score">
  <tr>
    <th>チーム</th>
    <th>season</th>
    <th>試合数</th>
    <th>安打</th>
    <th>打率</th>
    <th>2塁打</th>
    <th>３塁打</th>
    <th>ホームラン</th>
    <th>打点</th>
    <th>フォアボール</th>
    <th>得点</th>
  </tr>
  <c:forEach items="${list}" var="batterVO" begin="0" end="0">
  <tr>
    <td>${batterVO.team }</td>
    <td>${fn:substring(batterVO.seasonyear,0,4)}</td>
    <td>${batterVO.gamecnt }</td>
    <td>${batterVO.hit }</td>
    <td>${batterVO.battingavg }</td>
    <td>${batterVO.twohit }</td>
    <td>${batterVO.threehit }</td>
    <td>${batterVO.homerun }</td>
    <td>${batterVO.hittingscore }</td>
    <td>${batterVO.fourball }</td>
    <td>${batterVO.addscore }</td>
  </tr>
  </c:forEach>
</table>
                <div class="align_text">
                    <h5>通産記録</h5>
                </div>
                			    <table class="player_all_score">
 <tr>
    <th>チーム</th>
    <th>season</th>
    <th>試合数</th>
    <th>安打</th>
    <th>打率</th>
    <th>2塁打</th>
    <th>３塁打</th>
    <th>ホームラン</th>
    <th>打点</th>
    <th>フォアボール</th>
    <th>得点</th>
  </tr>
  <c:forEach items="${list}" var="batterVO">
  <tr>
    <td>${batterVO.team }</td>
    <td>${fn:substring(batterVO.seasonyear,0,4)}</td>
    <td>${batterVO.gamecnt }</td>
    <td>${ batterVO.hit}</td>
    <td>${batterVO.battingavg }</td>
    <td>${batterVO.twohit }</td>
    <td>${batterVO.threehit }</td>
    <td>${batterVO.homerun }</td>
    <td>${batterVO.hittingscore }</td>
    <td>${batterVO.fourball }</td>
    <td>${batterVO.addscore }</td>
  </tr>
  </c:forEach>
</table>
					</div>
				</section>

			<!-- Carousel -->

			<!-- Main -->

			<!-- Features -->
				

			<!-- Footer -->
				<div id="footer">
					<div class="container">
						<div class="row">
							<div class="12u">

								<!-- Contact -->
									<section class="contact">
										<header>
										<ul class="icons">
											<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
											<li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
											<li><a href="#" class="icon fa-instagram"><span class="label">Instagram</span></a></li>
											<li><a href="#" class="icon fa-pinterest"><span class="label">Pinterest</span></a></li>
											<li><a href="#" class="icon fa-dribbble"><span class="label">Dribbble</span></a></li>
											<li><a href="#" class="icon fa-linkedin"><span class="label">Linkedin</span></a></li>
										</ul>
                                        </header>
									</section>

								<!-- Copyright -->
									<div class="copyright">
										<ul class="menu">
											<li>&copy; Untitled. All rights reserved.</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
										</ul>
									</div>
							</div>

						</div>
					</div>
				</div>
		</div>

		<!-- Scripts -->
			<script src="../resources/assets/js/jquery.min.js"></script>
			<script src="../resources/assets/js/jquery.dropotron.min.js"></script>
			<script src="../resources/assets/js/jquery.scrolly.min.js"></script>
			<script src="../resources/assets/js/jquery.onvisible.min.js"></script>
			<script src="../resources/assets/js/skel.min.js"></script>
			<script src="../resources/assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="../resources/assets/js/main.js"></script>

	</body>
</html>