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
         <style>
             .carousel article{
                 width :30%;
             }
        </style>
		<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
		<script>
		function move_to_Page(url){
		    location.href="../Front/"+url;
		}
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
								<li><a href="/">ホーム</a></li>
								<li>
									<a href="introduce">九段紹介</a>
								</li>
								<li><a href="supervisor">選手団紹介</a>
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
								        <li><a href="../team//teamRecord?year=2017">チーム記録</a></li>
								    </ul>
								</li>
								<li><a href="../sboard/freeboard">掲示板</a>
								    <ul>
										<li><a href="../sboard/freeboard">自由掲示板</a></li>
										<li><a href="../sbaord/deal">チケット譲渡掲示板</a>
										</li>
										<li><a href="../sboard/notice">公知事項</a></li>
									</ul>
								</li>
								<c:if test="${empty login }">
								<li><a href="../user/member">ログイン</a>
								</li>
								</c:if>
								<c:if test="${not empty login }">
								<li><a href="../user/logout">ログアウト</a>
								</c:if>
							</ul>
						</nav>

				</div>

			<!-- Banner -->
				<section id="banner">
					<header>
					<h2><a href="#">コーチ紹介</a></h2>
						
						<p>
							
						</p>
					</header>
				</section>
				<select class="select_list" onchange="move_to_Page(this.value)">
				    <option value="supervisor">감독</option>
				    <option value="coach" selected>코치</option>
				</select>

			<!-- Carousel -->
				<section class="carousel" style="width:100%;">
					<div>

						<article class="coach">
							<a href="#" class="image featured"><img src="../resources/images/kim.PNG" alt="" /></a>
							<header>
								<h3><a href="#">NO.75 キムウォンヒョン</a></h3>
							</header>
							<p>ヘッド/投手コーチ</p>
						</article>

						<article class="coach">
							<a href="#" class="image featured"><img src="../resources/images/young.PNG" alt="" /></a>
							<header>
								<h3><a href="#">NO.99 李容勲</a></h3>
							</header>
							<p>1軍 投手(プルペン)コーチ</p>
						</article>

						<article class="coach">
							<a href="#" class="image featured"><img src="../resources/images/jang.PNG" alt="" /></a>
							<header>
								<h3><a href="#">NO.72 ジャンジェジュン</a></h3>
							</header>
							<p>1軍 パッテリーコーチ</p>
						</article>

						<article class="coach">
							<a href="#" class="image featured"><img src="../resources/images/kimsung.PNG" alt="" /></a>
							<header>
								<h3><a href="#">NO.95 キムスングァン</a></h3>
							</header>
							<p>1軍打撃コーチ</p>
						</article>

						<article class="coach">
							<a href="#" class="image featured"><img src="../resources/images/minjae.PNG" alt="" /></a>
							<header>
								<h3><a href="#">NO.78 キムミンジェ</a></h3>
							</header>
							<p>1軍内野守備コーチ</p>
						</article>

						<article class="coach">
							<a href="#" class="image featured"><img src="../resources/images/kimdae.PNG" alt="" /></a>
							<header>
								<h3><a href="#">NO.94 キムデイク</a></h3>
							</header>
							<p>1軍外野守備コーチ</p>
						</article>

						<article class="coach">
							<a href="#" class="image featured"><img src="../resources/images/choiman.PNG" alt="" /></a>
							<header>
								<h3><a href="#">NO.82 チェマンホ</a></h3>
							</header>
							<p>1軍作戦コーチ</p>
						</article>

						<article class="coach">
							<a href="#" class="image featured"><img src="../resources/images/jeongbo.PNG" alt="" /></a>
							<header>
								<h3><a href="#">NO.80 鄭寶明</a></h3>
							</header>
							<p>1軍打撃(サブ)コーチ</p>
						</article>

						<article class="coach">
							<a href="#" class="image featured"><img src="../resources/images/sonsang.PNG" alt="" /></a>
							<header>
								<h3><a href="#">NO.79 ソンサンデ</a></h3>
							</header>
							<p>フューチャーズ監督</p>
						</article>

						<article class="coach">
							<a href="#" class="image featured"><img src="../resources/images/okspring.PNG" alt="" /></a>
							<header>
								<h3><a href="#">NO.90 クリスオクスプリン</a></h3>
							</header>
							<p>フューチャーズ(メイン)投手コーチ</p>
						</article>
						<article class="coach">
							<a href="#" class="image featured"><img src="../resources/images/jinpill.PNG" alt="" /></a>
							<header>
								<h3><a href="#">NO.85 チンピルチュン</a></h3>
							</header>
							<p>フューチャーズ(ブルペン)投手コーチ</p>
						</article>
						<article class="coach">
							<a href="#" class="image featured"><img src="../resources/images/kangjin.PNG" alt="" /></a>
							<header>
								<h3><a href="#">NO.97カンジンギュ</a></h3>
							</header>
							<p>フューチャーズバッテリーコーチ</p>
						</article>
						<article class="coach">
							<a href="#" class="image featured"><img src="../resources/images/jangjong.PNG" alt="" /></a>
							<header>
								<h3><a href="#">NO.73 張鍾熏</a></h3>
							</header>
							<p>フューチャーズ打撃コーチ</p>
						</article>
						<article class="coach">
							<a href="#" class="image featured"><img src="../resources/images/parkjeong.PNG" alt="" /></a>
							<header>
								<h3><a href="#">NO.86 朴廷桓</a></h3>
							</header>
							<p>フューチャーズの内野守備コーチ</p>
						</article>
						<article class="coach">
							<a href="#" class="image featured"><img src="../resources/images/sinmingi.PNG" alt="" /></a>
							<header>
								<h3><a href="#">NO.77 シンミンキ</a></h3>
							</header>
							<p>フューチャーズ作戦コーチ</p>
						</article>
						<article class="coach">
							<a href="#" class="image featured"><img src="../resources/images/kimtae.PNG" alt="" /></a>
							<header>
								<h3><a href="#">NO.70 金泰均</a></h3>
							</header>
							<p>ドリーム首席コーチ</p>
						</article>
						<article class="coach">
							<a href="#" class="image featured"><img src="../resources/images/joo.PNG" alt="" /></a>
							<header>
								<h3><a href="#">NO.76 ジュヒョングヮン</a></h3>
							</header>
							<p>ドリーム投手コーチ</p>
						</article>
						<article class="coach">
							<a href="#" class="image featured"><img src="../resources/images/franco.PNG" alt="" /></a>
							<header>
								<h3><a href="#">NO.81 フリオフランコ</a></h3>
							</header>
							<p>ドリーム打撃コーチ</p>
						</article>
						<article class="coach">
							<a href="#" class="image featured"><img src="../resources/images/kudong.PNG" alt="" /></a>
							<header>
								<h3><a href="#">NO.71 クドンウ</a></h3>
							</header>
							<p>ドリームリハビリコーチ</p>
						</article>
						<article class="coach">
							<a href="#" class="image featured"><img src="../resources/images/jaeyeong.PNG" alt="" /></a>
							<header>
								<h3><a href="#">NO.87 ジャンジェヨン </a></h3>
							</header>
							<p>1軍トレーニングコーチ</p>
						</article>
						<article class="coach">
							<a href="#" class="image featured"><img src="../resources/images/leeyeong.PNG" alt="" /></a>
							<header>
								<h3><a href="#">NO.83 イヨンジュン </a></h3>
							</header>
							<p>1軍トレーニングコーチ</p>
						</article>
						<article class="coach">
							<a href="#" class="image featured"><img src="../resources/images/jonghun.PNG" alt="" /></a>
							<header>
								<h3><a href="#">NO.84 金宗壎</a></h3>
							</header>
							<p>1軍コンディショニングコーチ</p>
						</article>
						<article class="coach">
							<a href="#" class="image featured"><img src="../resources/images/hojin.PNG" alt="" /></a>
							<header>
								<h3><a href="#">NO.93 リュホジン</a></h3>
							</header>
							<p>フューチャーズコンディショニングコーチ</p>
						</article>
						<article class="coach">
							<a href="#" class="image featured"><img src="../resources/images/yun.PNG" alt="" /></a>
							<header>
								<h3><a href="#">NO.96 ユンヨフン </a></h3>
							</header>
							<p>ドリームコンディショニングコーチ</p>
						</article>

					</div>
				</section>

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