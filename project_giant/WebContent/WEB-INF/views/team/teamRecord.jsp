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
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
        <link rel="stylesheet" href="../resources/assets/css/main.css" />
        <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
        <!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
        <style>
                .pagination.disabled a,  .pagination.disabled a:hover,  .pagination.disabled a:focus,  .pagination.disabled span {
                  color: #eee;
                  background: #fff;
                  cursor: default;
                }
                
                .pagination { float: left; }
                
                .pagination.disabled li.active a {
                  color: #fff;
                  background: #cccccc;
                  border-color: #cccccc;
                }
                
                .paging-container select {
                  float: left;
                  margin: 20px 0 20px 10px;
                  padding: 9px 3px;
                  border-color: #ddd;
                  border-radius: 4px;
                }
                .inning{
                	width : 100px;
                }
                #table { margin-bottom: 0; }
                </style>
                <link href="http://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
                <script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
                <script src="../resources/js/pagination.js"></script>
		<script>
            $(function(){
                $(".select_list").on("change",function(){
                    var select = $(".select_list option:selected").val(); 
                    location.href=select+".html";
                });
                $(".select_year").on("change",function(){
                    var select = $(".select_year option:selected").val(); 
                    $("#table tr").next().remove();
                    console.log(select);
                    $("#table").append("<c:forEach items='${list}' var='teamRecordVO'><tr class='data'><td>${fn:substring(teamRecordVO.seasonyear,4,6) }</td><td>${teamRecordVO.battingavg }</td><td>${teamRecordVO.gamecount }</td><td>${teamRecordVO.hit }</td><td>${teamRecordVO.twohit }</td><td>${teamRecordVO.threehit }</td><td>${teamRecordVO.homerun }</td><td>${teamRecordVO.run }</td><td>${teamRecordVO.point }</td><td>${teamRecordVO.losescore }</td><td>${teamRecordVO.mylosescore }</td><td>${teamRecordVO.miss }</td><td>${teamRecordVO.longhitavg }</td><td>${teamRecordVO.onbaseavg }</td><td>${teamRecordVO.saveavg }</td><td>${teamRecordVO.hitbypitch }</td></tr></c:forEach>");
                    document.frm.submit(); 
                });
            });
        </script>

<script>
        
           
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
								<li><a href="../">ホーム</a></li>
								<li>
									<a href="../Front/introduce">九段紹介</a>
								</li>
								<li><a href="../Front/supervisor">選手団紹介</a>
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
								<li><a href="teamRank?year=2017">記録室</a>
								    <ul>
								        <li><a href="teamRank?year=2017">チーム順位</a></li>
								        <li><a href="teamRecord?year=2017">チーム記録</a></li>
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
					<h2><a href="#">チーム記録</a></h2>
					</header>
				</section>
			<!-- Carousel -->
				<section class="carousel">
                        <script type="text/javascript"
                        src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
                        </script></div>
                        <div class="jquery-script-clear"></div>
                        </div>
                        
                            <div class="container">
                            	<form id="aaa" method="get" action="teamRecord"name="frm">
                             <select name="year" class="select_year" style="border:1px solid black;">
                             	<option value="2018" selected>2018</option>
                             	<option value="2017">2017</option>
                             	<option value="2016">2016</option>
                             </select>
                             </form>
                              <form id="form1">
                                <table id="table" style="width: 1000px" class="table table-striped">
                                  <tr>

                                        <th>팀명</th>
                                        <th>타율</th>
                                        <th>경기수</th>
                                        <th>안타</th>
                                        <th>2루타</th>
                                        <th>3루타</th>
                                        <th>홈런</th>
                                        <th>도루</th>
                                        <th>득점</th>
                                        <th>실점</th>
                                        <th>자책점</th>
                                        <th>실책</th>
                                        <th>장타율</th>
                                        <th>출루율</th>
                                        <th>방어율</th>
                                        <th>사구</th>

                      <!--
                                        <th>チーム名</th>
                                        <th>打率</th>
                                        <th>試合数</th>
                                        <th>打数</th>
                                        <th>安打</th>
                                        <th>2塁打</th>
                                        <th>3塁打</th>
                                        <th>ホームラン</th>
                                        <th>盗塁</th>
                                        <th>得点</th>
                                        <th>イニング</th>
                                        <th>失点</th>
                                        <th>自責点</th>
                                        <th>失策</th>
                                        <th>長打率</th>
                                        <th>出塁率</th>
                                        <th>防御率</th> 
                                        <th >フォアボール</th> -->
                                  </tr>
                                  <c:forEach items="${list}" var="teamRecordVO">
                                
                                  <tr class="data">
                                        <td>${fn:substring(teamRecordVO.seasonyear,4,6) }</td>
                                        <td>${teamRecordVO.battingavg }</td>
                                        <td>${teamRecordVO.gamecount }</td>
                                        <td>${teamRecordVO.hit }</td>
                                        <td>${teamRecordVO.twohit }</td>
                                        <td>${teamRecordVO.threehit }</td>
                                        <td>${teamRecordVO.homerun }</td>
                                        <td>${teamRecordVO.run }</td>
                                        <td>${teamRecordVO.point }</td>
                                        <td>${teamRecordVO.losescore }</td>
                                        <td>${teamRecordVO.mylosescore }</td>
                                        <td>${teamRecordVO.miss }</td>
                                        <td>${teamRecordVO.longhitavg }</td>
                                        <td>${teamRecordVO.onbaseavg }</td>
                                        <td>${teamRecordVO.saveavg }</td>
                                        <td>${teamRecordVO.hitbypitch }</td>
                                  </tr>
                                  </c:forEach>
                                </table>
                              </form>
                            </div>
                            
                    <!--
				   <table border="1" class="rank">
                       <tr>
                          <th>순위</th>
                          <th>팀명</th>
                          <th>타율</th>
                          <th>경기수</th>
                          <th>타수</th>
                          <th>안타</th>
                          <th>2루타</th>
                          <th>3루타</th>
                          <th>홈런</th>
                          <th>도루</th>
                          <th>득점</th>
                          <th>이닝</th>
                          <th>실점</th>
                          <th>자책점</th>
                          <th>실책</th>
                          <th>장타율</th>
                          <th>출루율</th>
                          <th>방어율</th>
                          <th>볼넷</th>
                          <th>사구</th>
                          <th>희생플라이</th>
                       </tr>
                       <tr>
                          <td>1</td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                       </tr>
                       <tr>
                          <td>2</td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                       </tr>
                       <tr>
                          <td>3</td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                       </tr>
                       <tr>
                          <td>4</td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                       </tr>
                       <tr>
                          <td>5</td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                       </tr>
                       <tr>
                          <td>6</td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                       </tr>
                       <tr>
                          <td>7</td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                       </tr>
                       <tr>
                          <td>8</td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                       </tr>
                       <tr>
                          <td>9</td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                       </tr>
                       <tr>
                          <td>10</td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                       </tr>
                    </table> -->
                    <!--<iframe width="100%" height="700px" src="Easy-Large-Table-Pagination-Plugin-With-jQuery-Paginator/index.html">-->
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