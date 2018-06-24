<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@include file="../include/header.jsp"%>


<style>
.fileDrop {
  width: 80%;
  height: 100px;
  border: 1px dotted gray;
  background-color: lightslategrey;
  margin: auto;
  
}
</style>

<!-- Main content -->
<section class="content">
	<div class="row">
		<!-- left column -->
		<div class="col-md-12">
			<!-- general form elements -->
			<div class="box box-primary">
				<div class="box-header">
					<h3 class="box-writetitle">REGISTER BOARD</h3>
				</div>
				<c:forEach items="${list}" var="batterVO" begin="0" end="0">
				<form role="form" action="batterModifyPage" method="post">

					<input type='hidden' name='backnum' value="${batterVO.backnum}">
					 <input type='hidden' name='page' value="${cri.page}">
					  <input type='hidden' name='perPageNum' value="${cri.perPageNum}">
					<input type='hidden' name='searchType' value="${cri.searchType}">
					<input type='hidden' name='keyword' value="${cri.keyword}">
				</form>
				</c:forEach>
				<!-- /.box-header -->
<div class="box-body">
					
					<table class="table table-bordered">
					
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
    <td>${batterVO.team}</td>
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

				</div>

	<!-- /.box-body -->
			<div class="box-footer">
			   <button type="submit" class="btn btn-warning" id="modifyBtn">modify</button>
			    <button type="submit" class="btn btn-primary" id="goListBtn">GO LIST </button>
			  </div>
			</div>
			<!-- /.box -->
		</div>
		<!--/.col (left) -->

	</div>
	<!-- /.row -->
</section>
<!-- /.content -->
</div>
<!-- /.content-wrapper -->

<script type="text/javascript" src="/resources/js/upload.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.0.10/handlebars.min.js"></script>
<script>
	$(function(){
		var formObj = $("form[role='form']");
		$("#goListBtn").click(function(){
			location.href="../player/mainPlayer";
		});
		$("#modifyBtn").click(function(){
			formObj.attr("action", "../player/batterModifyPage");
			formObj.attr("method", "get");		
			formObj.submit();
		});
	})
</script>

 

<%@include file="../include/footer.jsp"%>
