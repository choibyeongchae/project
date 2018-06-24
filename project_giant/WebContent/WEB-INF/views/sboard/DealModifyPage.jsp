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
                 
                 text-align: center;
             }
             #table th{
                 text-align: center;
             }
              #table{
                 border: 1px solid gray;
                 text-align: center;
             }
             #table > * {
                 border-top: 1px solid gray;  border-bottom: 1px solid gray;
             }
             #table  .form-group:first-child{
                 border-top: none;
             }
             #table input{
                 border-top: 1px solid gray;
             }
             #table textarea{
                 border-top : 1px solid gray;
             }
                </style>
                <link href="http://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
                <script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
        <script></script>
		<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
		<script>
            $(function(){
                $(".select_list").on("change",function(){
                    var select = $(".select_list option:selected").val(); 
                    location.href=select+".html";
                });
                $(".go_toList").click(function(){
                	self.location = "/sboard/freeboard?page=${cri.page}&perPageNum=${cri.perPageNum}"
            			+"&searchType=${cri.searchType}&keyword=${cri.keyword}";
                })
               
                
                var formObj = $("form[role='form']");
                
                $(".modi_data").click(function(){
                	formObj.submit();
                });
            })
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
								<li><a href="../team/teamRank?year=2017">記録室</a>
								    <ul>
								        <li><a href="../team/teamRank?year=2017">チーム順位</a></li>
								        <li><a href="../team/teamRecord?year=2017">チーム記録</a></li>
								    </ul>
								</li>
								<li><a href="../sboard/freeboard">掲示板</a>
								    <ul>
										<li><a href="../sbaord/freeboard">自由掲示板</a></li>
										<li><a href="#">チケット譲渡掲示板</a>
										</li>
										<li><a href="../sbaord/notice">公知事項</a></li>
									</ul>
								</li>
								<c:if test="${empty login }">
								<li><a href="../user/member">ログイン</a></li>
								</c:if>
								<c:if test="${not empty login }">
								<li><a href="../user/member">ログアウト</a></li>
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
                        
                        
                            <div class="container">
                             <center>
<!--
                                <table id="table" style="width: 900px;" class="table table-striped">
                                  <tr>
                                        <th width="15%"style="text-align:center">タイトル</th>
                                        <td colspan="5"><input type="text"style="width:100%" value="加入挨拶1"></td>
                                        
                                  </tr>
                                  <tr>
                                      <th width="15%"style="text-align:center">内容</th>
                                      <td colspan="5"><input type="text"style="width:100%; height:200px;" ></td>
                                  </tr>
                                 
                                </table>
<-->
                                <form method="post" role="form">
                                	<input type="hidden" name="page" value="${cri.page }">
                                	<input type="hidden name="perPageNum" value="${cri.perPageNum }">
                                	<input type="hidden" name="searchType" value="${cri.searchType }">
                                	<input type="hidden" name="keyword" value="${cri.keyword }">
                                    <div id="table">
                                        <div class="form-group">
                                            <label for="eample">writenum</label>
                                            <input type="text" name="writenum" class="form_control" readonly="readonly" value="${boardVO.writenum}"}>
                                        </div>
                                        <div class="form-group">
                                            <label for="eample">Title</label>
                                            <input type="text" name="writetitle" class="form_control" readonly="readonly" value="${boardVO.writetitle}"}>
                                        </div>
                                        <div class="form-group">
                                            <label for="eample">Content</label>
                                            <textarea class="form_control" name="writecontent" rows="3">
                                            	${boardVO.writecontent}
                                            </textarea>
                                        </div>
                                        
                                        <div class="form-group">
                                            <label for="eample">Writer</label>
                                            <input type="text" name="writepeople" class="form_control" value="${boardVO.writepeople}" readonly>
                                        </div>
                                    </div>
                                    
                                </form>
                            
                                <button type="submit" class="modi_data">直す</button>
                                <button class="go_toList">cancel</button>
                                </center>
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