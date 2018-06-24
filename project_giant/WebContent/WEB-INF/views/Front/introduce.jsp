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
		<link rel="stylesheet" href="../resources/assets/css/main.css" />
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
		 <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
	</head>
	<script>
		//console.log(${UserVO.uid});
	</script>
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
									<a href="introduce">九段紹介</a>
								</li>
								<li><a href="#">選手団紹介</a>
								    <ul>
								        <li><a href="supervisor">監督/コーチングスタッフ</a>
								            <ul>
								                <li><a href="supervisor">監督</a></li>
								                <li><a href="coach">コーチ</a></li>
								            </ul>
								        </li>
								        <li><a href="infielder">選手団</a>
								            <ul>
								                <li><a href="infielder">内野手</a></li>
								                <li><a href="outfielder">外野手</a></li>
								                <li><a href="catcher">捕手</a></li>
								                <li><a href="pitcher">投手</a></li>
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
								<c:if test= "${empty login }">
								<li><a href="../user/member">ログイン</a></li>
								</c:if>
								<c:if test= "${not empty login}">
								<li><a href="../user/logout">ログアウト</a></li>
								</c:if>
							</ul>
						</nav>

				</div>

			<!-- Banner -->
				<section id="banner">
					<header>
						<h2>ロッテジャイアント球団情報でございます。</h2>
						<p>
							
						</p>
					</header>
				</section>

			<!-- Carousel -->

			<!-- Main -->
				<div class="wrapper style2">

					<article id="main" class="container special">
						<a href="#" class="image featured"><img src="../resources/images/giant.jpg" alt="" /></a>
						<header>
							<h2><a href="#">韓国プロ野球を
代表する名門球団</a></h2>
							<p>
								1982年は韓国プロ野球がスタートした元年であり、 
ロッテジャイアンツは1975年、実業野球創設以来、1982年プロ野球団に
転換し、今までチーム名と本拠地、某グループが変わっていない最も伝統のある名門球団です。
1984年と1992年二回も韓国シリーズ優勝を獲得し、リーグを先導する優勝チームがなるために
選手団全体が一つになって毎試合、最善を尽くす姿をお見せています。
							</p>
						</header>
					</article>

				</div>
				<div class="wrapper style2">

					<article id="main" class="container special">
                        <center><h2>球団ミッション&ビジョン</h2></center>
						<a href="#" class="image featured"><img src="../resources/images/mission.PNG" alt="" /></a>
					</article>

				</div>
				<div class="wrapper style2">

					<article id="main" class="container special">
						<a href="#" class="image featured"><img src="../resources/images/prent.PNG" alt="" /></a>
					</article>

				</div>

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