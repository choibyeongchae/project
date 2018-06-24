<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
		<link rel="stylesheet" href="resources/assets/css/main.css" />
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
		 <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
		<script src="https://code.jquery.com/jquery-1.11.2.js"></script>
       
        <script>
        	
            function pageMove_toLogin(){
                location.href="/user/member";
            };
            
          
            
           
        </script>    
        
			
    </head>
	<body class="homepage">
		<div id="page-wrapper">
			<!-- Header -->
				<div id="header">

					<!-- Inner -->
						

					<!-- Nav -->
						<nav id="nav">
							<ul>
								<li><a href="/">홈</a></li>
								<li>
									<a href="Front/introduce">구단소개</a>
								</li>
								<li><a href="#">선수소개</a>
								    <ul>
								        <li><a href="Front/supervisor">감독/코칭스태프</a>
								            <ul>
								                <li><a href="Front/supervisor">감독</a></li>
								                <li><a href="Front/coach">코치</a></li>
								            </ul>
								        </li>
								        <li><a href="Front/infielderl">선수단</a>
								            <ul>
								                <li><a href="Front/infielder">내야수</a></li>
								                <li><a href="Front/outfielder">외야수</a></li>
								                <li><a href="Front/catcher">포수</a></li>
								                <li><a href="Front/pitcher">투수</a></li>
								            </ul>
								        </li>
								    </ul>
								</li>
								<li><a href="team/teamRank?year=2017">기록실</a>
								    <ul>
								        <li><a href="team/teamRank?year=2017">팀순위</a></li>
								        <li><a href="team/teamRecord?year=2017">팀기록</a></li>
								    </ul>
								</li>
								<li><a href="sboard/freeboard">게시판</a>
								    <ul>
										<li><a href="sboard/freeboard">자유게시판</a></li>
										<li><a href="sboard/deal">티켓거래게시판</a>
										</li>
										<li><a href="sboard/notice">공지사항</a></li>
									</ul>
								</li>
								<c:if test = "${empty login }">
								<li><a href="user/member">로그인</a></li>
								</c:if>
								<c:if test= "${not empty login}">
									<li><a href="user/logout">로그아웃</a></li>
								</c:if>
							</ul>
						</nav>

				</div>

			<!-- Banner -->
				<section id="banner">
					<header>
				      
					<h2><a href="#">跳躍! 奇跡の2017シーズン巨人たちの秋物語</a></h2>

					</header>
				</section>

			<!-- Carousel -->
				<section class="carousel">
					<div class="reel">

						<article>
							<a href="#" class="image featured"><img src="resources/images/lotte.jpg" alt="" /></a>
						</article>

						<article>
							<a href="#" class="image featured"><img src="resources/images/lotte2.jpg" alt="" /></a>
						</article>

						<article>
							<a href="#" class="image featured"><img src="resources/images/lotte3.jpg" alt="" /></a>
						</article>

						<article>
							<a href="#" class="image featured"><img src="resources/images/lotte4.jpg" alt="" /></a>
						</article>

						<article>
							<a href="#" class="image featured"><img src="resources/images/lotte5.jpg" alt="" /></a>
						</article>

						<article>
							<a href="#" class="image featured"><img src="resources/images/lotte6.jpg" alt="" /></a>
						</article>

						<article>
							<a href="#" class="image featured"><img src="resources/images/lotte7.jpg" alt="" /></a>
						</article>

						<article>
							<a href="#" class="image featured"><img src="resources/images/lotte8.jpg" alt="" /></a>
						</article>

						<article>
							<a href="#" class="image featured"><img src="resources/images/lotte9.jpg" alt="" /></a>
						</article>

						<article>
							<a href="#" class="image featured"><img src="resources/images/lotte10.PNG" alt="" /></a>
						</article>

					</div>
				</section>

			<!-- Main -->
				<div class="wrapper style2">

					<article id="main" class="container special">
						<a href="#" class="image featured"><img src="resources/images/sajik.jpg" alt="" /></a>
						<header>
							<h2 style="font-size : 35px;"><a href="#">ファンと共にするプロ野球最高の人気球団</a></h2>
							<p style="font-size : 20px;">
								社稷野球場は世界で一番大きなカラオケと呼ばれたりもします。<br>
								ロッテファンの独創的で熱狂的な応援はKBOリーグの応援文化を先導しています
							</p>
						</header>
						<p style="font-size : 20px;">
							ロッテジャイアンツは大韓民国最高の人気スポーツ球団に本拠地釜山は野球の都市'構図(球都)'と呼ばれます。 1991年韓国プロ野球最初にしたシーズン100万観客を達成し、2009年には単一シーズン歴代最多観衆記録に該当する1,380,018人が野球場を訪れました。 最高の情熱を自慢するロッテジャイアンツファンたちは独特の応援とマナーで韓国プロ野球の観衆の文化を先導しており、選手たちの自負心になってくれています。 選手とフロントはファンの愛に良い競技力に応えるため、毎試合、最善を尽くしており、さらに多様な見ものと楽しい経験を提供しようと努力しています。
						</p>
					</article>

				</div>

			<!-- Features -->

					<section id="features" class="container special">
						<header>
							<h2>各種イベントの紹介</h2>
							<p>ロッテジャイアンツは各種多様なイベントを行ってファンたちに愛されております。</p>
						</header>
						<div class="row">
							<article class="4u 12u(mobile) special">
								<a href="#" class="image featured"><img src="resources/images/lighting.jpg" alt="" /></a>
								<header>
									<h3><a href="#">ライティングショー</a></h3>
								</header>
								<p>
									国内野球団で初めてLED照明を設置しました。 瞬間点灯が可能なLED照明の特性を活用して 
イベントを企画、5回裏終了後ファンたちと一緒にするライティングショーを進行中であり、試合のうち、本塁打、勝利時など重要な瞬間にも 
LED照明を活用しています。 ライティングショーは、社稷野球場でのみ可能なイベントで 
ロッテ・ジャイアンツの名物として定着しました。
								</p>
							</article>
							<article class="4u 12u(mobile) special">
								<a href="#" class="image featured"><img src="resources/images/unisef.jpg" alt="" /></a>
								<header>
									<h3><a href="#">ユニセフデー</a></h3>
								</header>
								<p>
									ロッテジャイアンツは2011年からプロスポーツ球団としてアジアで唯一、ユニセフとパートナー十を締結して'すべての子どもがセンボクハン世の中'を作るために努力中です。 毎月1回選手簡易特別のユニホームを着て試合に臨むユニセフデーを開催し、ファンとともに社会貢献活動に参加しており、疎外階層や多文化家庭の子どもたちに向けた各種の慈善活動とプログラムを施行しています。
								</p>
							</article>
							<article class="4u 12u(mobile) special">
								<a href="#" class="image featured"><img src="resources/images/dora.jpg" alt="" /></a>
								<header>
									<h3><a href="#">ドラえもんコラボレーション</a></h3>
								</header>
								<p>
									人気漫画キャラクター'ドラえもん'と提携して多様なファンサービスを進めています。
16シーズン初め'ドラえもん100ビミルドの口承'展示会を実施し、ファンたちの多くの愛を受けており、コラボレーションを記念して 
発売したドラえもんのユニフォームと関連商品も大きな人気を博しています。
選手団は土曜日のホーム試合で、特別のユニホームを着用しています。
								</p>
							</article>
						</div>
					</section>

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
			<script src="resources/assets/js/jquery.min.js"></script>
			<script src="resources/assets/js/jquery.dropotron.min.js"></script>
			<script src="resources/assets/js/jquery.scrolly.min.js"></script>
			<script src="resources/assets/js/jquery.onvisible.min.js"></script>
			<script src="resources/assets/js/skel.min.js"></script>
			<script src="resources/assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="resources/assets/js/main.js"></script>

	</body>
</html>