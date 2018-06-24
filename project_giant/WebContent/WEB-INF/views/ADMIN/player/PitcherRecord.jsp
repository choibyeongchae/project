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
				<c:forEach items="${list}" var="pitcherVO" begin="0" end="0">
				<form role="form" action="pitcherModifyPage" method="post">

					<input type='hidden' name='backnum' value="${pitcherVO.backnum}"> <input
						type='hidden' name='page' value="${cri.page}"> <input
						type='hidden' name='perPageNum' value="${cri.perPageNum}">
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
    <th>防御率</th>
    <th>勝</th>
    <th>敗</th>
    <th>セーブ</th>
    <th>ホールド</th>
    <th>イニング</th>
    <th>三振</th>
    <th>四球</th>
    <th>被ホームラン</th>
 
  </tr>
					
					
					<c:forEach items="${list}" var="pitcherVO">
					
  <tr>
    <td>${pitcherVO.team }</td>
    <td>${fn:substring(pitcherVO.seasonyear,0,4)}</td>
    <td>${pitcherVO.gamecnt }</td>
    <td>${pitcherVO.saveavg }</td>
    <td>${pitcherVO.win }</td>
    <td>${pitcherVO.lose }</td>
    <td>${pitcherVO.save }</td>
    <td>${pitcherVO.hold }</td>
    <td>${pitcherVO.inning }</td>
    <td>${pitcherVO.strikeout }</td>
    <td>${pitcherVO.hitbypitch }</td>
    <td>${pitcherVO.myhomerun }</td>
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
			formObj.attr("action", "../player/pitcherModifyPage");
			formObj.attr("method", "get");		
			formObj.submit();
		});
		
	})
</script>

 

<%@include file="../include/footer.jsp"%>
