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
                .pagination.disabled a,  .pagination.disabled a:hover,  .pagination.disabled a:focus,  .pagination.disabled span {
                  color: #eee;
                  background: #fff;
                  cursor: default;
                }
                
                .pagination {  }
                
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
                
                #table { margin-bottom: 0;  text-align: center;}
             #table th{
                 text-align: center; 
             }
             
                </style>
                <link href="http://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
                <script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
                <script src="../resources/js/pagination.js"></script>
        <script></script>
		<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
		<script>
            $(function(){
                $(".select_list").on("change",function(){
                    var select = $(".select_list option:selected").val(); 
                    location.href=select+".html";
                });
                $("#searchBtn").click(function(){
                	self.location = "freeboard"
                	+ "${pageMaker.makeQuery(1)}"
                	+ "&searchType="
                	+ $("select option:selected").val()
                	+ "&keyword="+encodeURIComponent($("#keywordInput").val());
                });
                
                $("#newBtn").click(function(){
                	self.location = "board_write";
                })
            })
        </script>
        <script>
            function go_Replace(){
                location.href="board_write.html";
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
								<li><a href="freeboard">掲示板</a>
								    <ul>
										<li><a href="freeboard">自由掲示板</a></li>
										<li><a href="#">チケット譲渡掲示板</a>
										</li>
										<li><a href="notice">公知事項</a></li>
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
			<!-- Carousel -->
			<h2 style="text-align:center">自由掲示板</h2>
				<section class="carousel">
				   <script type="text/javascript"
                        src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
                        </script>
                        
                            <center>
                            
                            <div class="container">
                            
                                <table id="table" style="width: 650px" class="table table-striped">
                                  <tr>
                                        <th width="100px">番号</th>
                                        <th width="250px">タイトル</th>
                                        <th width="100px">作成者</th>
                                        <th width="100px">作成日</th>
                                        <th width="100px">照会数</th>

                                  </tr>
                           
                                  
                                  <c:forEach items="${list}" var="boardVO">
                                  
                                  	<tr>
                                  		<td>${boardVO.writenum}</td>
                                  		
                                  		<td><a href='board_detail${pageMaker.makeSearch(pageMaker.cri.page) }&writenum=${boardVO.writenum}'>
							${boardVO.writetitle}<strong>[${boardVO.comment_cnt}]</strong> 
							</a>
                                  			
                                  		</td>
                                  		<td>${boardVO.writepeople}</td>
                                  		<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${boardVO.writeday}"/></td>
                                  		<td>${boardVO.view_cnt }</td>
                                  	</tr>
                                  </c:forEach> 
                                </table>
                                <div class="paging-container" id="tablePaging"> </div>
                                	<div class="text-center">
							<ul class="pagination">
								 <li> <a href="freeboard${pageMaker.makeSearch(startPage)}">First </a> </li> 
								 <c:if test="${pageMaker.prev}">
								<li><a
									href="freeboard${pageMaker.makeSearch(pageMaker.startPage - 1) }">&laquo;</a></li>
								</c:if>
	
								<c:forEach begin="${pageMaker.startPage }"
									end="${pageMaker.endPage }" var="idx">
									<li
										<c:out value="${pageMaker.cri.page == idx?'class =active':''}"/>>
										<a href="freeboard${pageMaker.makeSearch(idx)}">${idx}</a>
									</li>
								</c:forEach>
	
								<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
									<li><a
										href="freeboard${pageMaker.makeSearch(pageMaker.endPage +1) }">&raquo;</a></li>
								</c:if>
								 <li> <a href="freeboard?page=${pageMaker.tempEndPage }">Last </a> </li> 
							</ul>
						</div>
                                        
                    </div>
                    <div class='box-body'>

					<select name="searchType">
						<option value="n"
							<c:out value="${cri.searchType == null?'selected':''}"/>>
							---</option>
						<option value="t"
							<c:out value="${cri.searchType eq 't'?'selected':''}"/>>
							Title</option>
						<option value="c"
							<c:out value="${cri.searchType eq 'c'?'selected':''}"/>>
							Content</option>
						<option value="w"
							<c:out value="${cri.searchType eq 'w'?'selected':''}"/>>
							Writer</option>
						<option value="tc"
							<c:out value="${cri.searchType eq 'tc'?'selected':''}"/>>
							Title OR Content</option>
						<option value="cw"
							<c:out value="${cri.searchType eq 'cw'?'selected':''}"/>>
							Content OR Writer</option>
						<option value="tcw"
							<c:out value="${cri.searchType eq 'tcw'?'selected':''}"/>>
							Title OR Content OR Writer</option>
					</select> <input type="text" name='keyword' id="keywordInput"
						value='${cri.keyword }'>
					<button id='searchBtn'>Search</button>
					<c:if test="${not empty login}">
					<button id='newBtn'>Write</button>
					</c:if>
					
				</div>
                    </center>
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