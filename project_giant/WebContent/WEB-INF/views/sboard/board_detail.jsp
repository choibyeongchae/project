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
		<writetitle>Helios by HTML5 UP</writetitle>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="../resources/assets/css/main.css" />
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
		 <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
		<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.0.10/handlebars.min.js"></script>
		<script src="../resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>
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
                
                #table { margin-bottom: 0; }
             #table{
                 border : 1px solid lightgray;
                 text-align: center;
             }
             #table th{
                 text-align: center;
             }
            #modDiv {
	width: 300px;
	height: 100px;
	background-color: gray;
	position: absolute;
	top: 80%;
	left: 50%;
	margin-top: -50px;
	margin-left: -150px;
	padding: 10px;
	z-index: 1000;
}
                </style>
                <link href="http://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
                <script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
		<script>
		
            $(function(){
            	var formObj = $("form[role='form']");
                
                $(".btn-warning").click(function(){
                    formObj.attr("action","/sboard/board_modify");
                    formObj.attr("method","get");
                    formObj.submit();
                })
                $(".btn-danger").click(function(){
                	
                	formObj.attr("action","/sboard/removePage");
                	formObj.submit();
                })
                $(".btn-primary").click(function(){
                	formObj.attr("method","get");
                	formObj.attr("action","/sboard/freeboard");
                	formObj.submit();
                })
            }); 
                
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
								                <li><a href="../Frontcatcher">捕手</a></li>
								                <li><a href="../Front/pitcher">投手</a></li>
								            </ul>
								        </li>
								    </ul>
								</li>
								<li><a href="../team/teamRank?year=2017">記録室</a>
								    <ul>
								        <li><a href="../Front/teamRank?year=2017">チーム順位</a></li>
								        <li><a href="../Front/teamRecord?year=2017">チーム記録</a></li>
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
			<!-- Carousel -->
				<section class="carousel">
				   <script type="text/javascript"
                        src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
                        </script>
                        	<form role="form" method="post">
                        		<input type="hidden" name="writenum" value="${boardVO.writenum}">
                        		<input type="hidden" name="page" value="${cri.page}">
                        		<input type="hidden" name="perPageNum" value="${cri.perPageNum }">
                        		<input type="hidden" name="searchType" value="${cri.searchType }">
                        		<input type="hidden" name="keyword" value="${cri.keyword }">
                        	</form>
                        
                            <div class="container">
                             <center>
                                <table id="table" style="width: 900px;" class="table table-striped">
                                  <tr>
                                        <th width="15%"style="text-align:center">タイトル</th>
                                        <td colspan="5">${boardVO.writetitle}</td>
                                        
                                  </tr>
                                  <tr>
                                      <th style="text-align:center">작성자</th>
                                      <td>${boardVO.writepeople}
                
                                      </td>
                                      <th width style="text-align:center">作成日</th>
                                      <td><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${boardVO.writeday}"/></td>
                                      <th style="text-align:center">照会数</th>
                                      <td>${boardVO.view_cnt }</td>
                                  </tr>
                                  <tr>
                                      <td height="200px" colspan="6">
                                      <p>
                                     ${boardVO.writecontent}
                                          </p>
                                      </td>
                                  </tr>
                                 
                                </table>
                                <div class="box-footer">
			     <c:if test="${login.id == boardVO.writepeople}">
				    <button type="submit" class="btn btn-warning" id="modifyBtn">Modify</button>
				    <button type="submit" class="btn btn-danger" id="removeBtn">REMOVE</button>
				 </c:if>
				 <br>
				 <br>
			    <button type="submit" class="btn btn-primary" id="goListBtn">GO LIST </button>
			    <br>
			    <br>
			     <ul id="replies" style="border: 1px solid lightgray; width:80%;">
	</ul>
			  </div>
			  <br>
                          
        <br>
       
        <!-- **로그인 한 회원에게만 댓글 작성폼이 보이게 처리  -->
        <br>
     
	</div>
    </div>
                              
                                 </center>
                                 <div id='modDiv' style="display: none;">
		<div class='modal-writetitle'></div>
		<div>
			<input type='text' id='replytext'>
		</div>
			<input type="text" id="replyer">
		<div>
			<button type="button" id="replyModBtn">Modify</button>
			<button type="button" id="replyDelBtn">DELETE</button>
			<button type="button" id='closeBtn'>Close</button>
		</div>
	</div>
                            </div>
                            <center>
                            
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
											<li>&copy;  All rights reserved.</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
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