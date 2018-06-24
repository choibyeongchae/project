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
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700' rel='stylesheet' type='text/css'>
	<link href="../resources/assets/css/magnific-popup.css" rel="stylesheet"> 
	<link href="../resources/assets/css/templatemo_style.css" rel="stylesheet" type="text/css">	
	 <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
	 <script type="text/javascript" src="../resources/js/jquery-1.11.1.min.js"></script>
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
										<li><a href="../sbaord/notice">公知事項</a></li>
									</ul>
								</li>
								<c:if test="${empty login }">
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
					<h2><a href="#">選手紹介</a></h2>
						
						<p>
							
						</p>
					</header>
				</section>
				<select class="select_list" onchange=" move_to_Page(this.value)">
				    <option value="pitcher" selected>投手</option>
				    <option value="infielder">内野手</option>
				    <option value="outfielder">外野手</option>
				    <option value="catcher">捕手</option>
				</select>

			<!-- Carousel -->
					<div class="content-container" >
			<header>
			<!--<h1 class="center-text">Gallary at glance</h1>-->
			
		</header>
		<div id="portfolio-content" class="center-text">
			<div class="portfolio-page" id="page-1">
				<div class="portfolio-group">
					<a class="portfolio-item" href="../player/PitcherInformation?backnum=91">
						<img src="../resources/images/kangdongho.PNG" alt="image 1">
						
						<div class="detail">
							<div class="detail_introduce" style="width:100%; background-color : yellow; height:100%;"></div>
						</div>
					</a>				
				</div>
				<div class="portfolio-group">
					<a class="portfolio-item" href="../player/PitcherInformation?backnum=34">
						<img src="../resources/images/kimwon.PNG" alt="image 4">
						<div class="detail">

						</div>
					</a>				
				</div>
				<div class="portfolio-group">
					<a class="portfolio-item" href="../player/PitcherInformation?backnum=55">
						<img src="../resources/images/kimyu.PNG" alt="image 5">
						<div class="detail">

						</div>
					</a>				
				</div>
				<div class="portfolio-group">
					<a class="portfolio-item" href="../player/PitcherInformation?backnum=38">
						<img src="../resources/images/no.PNG" alt="image 7">
						<div class="detail">

						</div>
					</a>				
				</div>
				<div class="portfolio-group">
					<a class="portfolio-item" href="../player/PitcherInformation?backnum=46">
					<img src="../resources/images/Raley.PNG" alt="image 7">
						<div class="detail">
	
						</div>
					</a>				
				</div>
				<div class="portfolio-group">
					<a class="portfolio-item" href="../player/PitcherInformation?backnum=43">
						<img src="../resources/images/Lindblom.PNG" alt="image 6">
						<div class="detail">

						</div>
					</a>				
				</div>
			
			
				<div class="portfolio-group">
					<a class="portfolio-item" href="../player/PitcherInformation?backnum=32">
						<img src="../resources/images/parkse.PNG" alt="image 1">
						
						<div class="detail">
							
						</div>
					</a>				
				</div>
				
				
				<div class="portfolio-group">
					<a class="portfolio-item" href="../player/PitcherInformation?backnum=62">
						<img src="../resources/images/parksi.PNG" alt="image 2">
						<div class="detail">
						</div>
					</a>				
				</div>
				</div>
				<div class="portfolio-page" id="page-2">
				<div class="portfolio-group">
					<a class="portfolio-item" href="../player/PitcherInformation?backnum=89">
						<img src="../resources/images/parkjong.PNG" alt="image 3">
						<div class="detail">

						</div>
					</a>				
				</div>
				
				
				<div class="portfolio-group">
					<a class="portfolio-item" href="../player/PitcherInformation?backnum=40">
					 <img src="../resources/images/parkjin.PNG" alt="image 3">
						<div class="detail">
                           
						</div>
					</a>				
				</div>
				<div class="portfolio-group">
					<a class="portfolio-item" href="../player/PitcherInformation?backnum=100">
					<img src="../resources/images/parkhan.PNG" alt="image 3">
						<div class="detail">

						</div>
					</a>				
				</div>
				<div class="portfolio-group">
					<a class="portfolio-item" href="../player/PitcherInformation?backnum=49">
					<img src="../resources/images/bae.PNG" alt="image 3">
						<div class="detail">

						</div>
					</a>				
				</div>
				<div class="portfolio-group">
					<a class="portfolio-item" href="../player/PitcherInformation?backnum=1">
					<img src="../resources/images/sonseonglak.PNG" alt="image 3">
						<div class="detail">

						</div>
					</a>				
				</div>
				<div class="portfolio-group">
					<a class="portfolio-item" href="../player/PitcherInformation?backnum=64">
					<img src="../resources/images/songchang.PNG" alt="image 3">
						<div class="detail">

						</div>
					</a>				
				</div>
			
		
				<div class="portfolio-group">
					<a class="portfolio-item" href="../player/PitcherInformation?backnum=21">
						<img src="../resources/images/song.PNG" alt="image 1">
						
						<div class="detail">
							
						</div>
					</a>				
				</div>
					
				<div class="portfolio-group">
					<a class="portfolio-item" href="../player/PitcherInformation?backnum=51">
						<img src="../resources/images/gill.PNG" alt="image 2">
						<div class="detail">
						</div>
					</a>				
				</div>
				</div>
				<div class="portfolio-page" id="page-3">
				
				<div class="portfolio-group">
					<a class="portfolio-item" href="../player/PitcherInformation?backnum=88">
						<img src="../resources/images/youn.PNG" alt="image 3">
						<div class="detail">

						</div>
					</a>				
				</div>
				<div class="portfolio-group">
					<a class="portfolio-item" href="../player/PitcherInformation?backnum=35">
					<img src="../resources/images/myung.PNG" alt="image 3">
						<div class="detail">

						</div>
					</a>				
				</div>
				<div class="portfolio-group">
					<a class="portfolio-item" href="../player/PitcherInformation?backnum=45">
					<img src="../resources/images/jung.PNG" alt="image 3">
						<div class="detail">

						</div>
					</a>				
				</div>
				<div class="portfolio-group">
					<a class="portfolio-item" href="../player/PitcherInformation?backnum=60">
					<img src="../resources/images/sihwan.PNG" alt="image 3">
						<div class="detail">

						</div>
					</a>				
				</div>
			
				<div class="portfolio-group">
					<a class="portfolio-item" href="../player/PitcherInformation?backnum=37">
						<img src="../resources/images/jojunghoon.PNG" alt="image 2">
						
						<div class="detail">
							
						</div>
					</a>				
				</div>
				
				
				
				<div class="portfolio-group">
					<a class="portfolio-item" href="../player/PitcherInformation?backnum=48">
						<img src="../resources/images/jinmyung.PNG" alt="image 2">
						<div class="detail">
						</div>
					</a>				
				</div>
				<div class="portfolio-group">
					<a class="portfolio-item" href="../player/PitcherInformation?backnum=59">
						<img src="../resources/images/chajae.PNG" alt="image 3">
						<div class="detail">

						</div>
					</a>				
				</div>
				<div class="portfolio-group">
						<div class="detail">

						</div>
					</a>				
				</div>
				</div>
				
		</div>
	</div>	<!-- /.content-container -->	

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

		<script type="text/javascript" src="../resources/js/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="../resources/js/jquery.easing.1.3.js"></script>
	<script type="text/javascript" src="../resources/js/modernizr.2.5.3.min.js"></script>
	<script type="text/javascript" src="../resources/js/jquery.magnific-popup.min.js"></script> 
	<script type="text/javascript" src="../resources/js/templatemo_script.js"></script>
	<script src="../resources/assets/js/jquery.min.js"></script>
			<script src="../resources/assets/js/jquery.dropotron.min.js"></script>
			<script src="../resources/assets/js/jquery.scrolly.min.js"></script>
			<script src="../resources/assets/js/jquery.onvisible.min.js"></script>
			<script src="../resources/assets/js/skel.min.js"></script>
			<script src="../resources/assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="../resources/assets/js/main.js"></script>

	<script type="text/javascript">
		$(function () {
			$('.pagination ul li').click(changePage)
			$('.portfolio-item').magnificPopup({ 
				type: 'image',
				gallery:{
					enabled:true;
				}
			});
            var aaa= $(".portfolio-page").length;
             if(aaa < 3){
                $(".pagination .nav li:nth-child(3)").hide();
            } else{
                $(".pagination").show();
            }
		});
	</script>	


	</body>
</html>