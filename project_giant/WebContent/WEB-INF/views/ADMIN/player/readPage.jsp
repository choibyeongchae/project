<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>  
<%@include file="../include/header.jsp"%>
<script type="text/javascript" src="/resources/js/upload.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.0.10/handlebars.min.js"></script>
<style type="text/css">
    .popup {position: absolute;}
    .back { background-color: gray; opacity:0.5; width: 100%; height: 300%; overflow:hidden;  z-index:1101;}
    .front { 
       z-index:1110; opacity:1; boarder:1px; margin: auto; 
      }
     .show{
       position:relative;
       max-width: 1200px; 
       max-height: 800px; 
       overflow: auto;       
     } 
  	
</style>

<div class='popup back' style="display:none;"></div>
<div id="popup_front" class='popup front' style="display:none;">
<img id="popup_img">
</div>
    
<!-- Main content -->
<section class="content">
	<div class="row">
		<!-- left column -->
		<div class="col-md-12">
			<!-- general form elements -->
			<div class="box box-primary">
				<div class="box-header">
					<h3 class="box-writetitle">READ BOARD</h3>
				</div>
				<!-- /.box-header -->

				<form role="form" action="modifyPage" method="post">

					<input type='hidden' name='backnum' value="${playerVO.backnum}"> <input
						type='hidden' name='page' value="${cri.page}"> <input
						type='hidden' name='perPageNum' value="${cri.perPageNum}">
					<input type='hidden' name='searchType' value="${cri.searchType}">
					<input type='hidden' name='keyword' value="${cri.keyword}">

				</form>
				

				<div class="box-body">
					<div class="form-group">
						<label for="exampleInputEmail1">backnum</label>
						<input type="text" name='backnum' class="form-control" value="${playerVO.backnum}" readonly="readonly">
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">name</label>
						<input type="text" name='name' class="form-control" value="${playerVO.name}" readonly="readonly">
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">birth</label>
						<input type="text" name="birth" class="form-control" value="${fn:substring(playerVO.birth,0,10) }" readonly="readonly">
					</div>
				</div>
				<!-- /.box-body -->
				
				<ul class="mailbox-attachments clearfix uploadedList"></ul>
				
			  <div class="box-footer">
			   <button type="submit" class="btn btn-warning" id="modifyBtn">modify</button>
				    <button type="submit" class="btn btn-danger" id="removeBtn">REMOVE</button>
			    <button type="submit" class="btn btn-primary" id="goListBtn">GO LIST </button>
			    <button type="submit" class="btn btn-primary2" id="goReadRecord">READ RECORD</button> 
			  </div>



			</div>
			<!-- /.box -->
		</div>
		<!--/.col (left) -->

	</div>
	<!-- /.row -->

	<!-- /.row -->


          
<!-- Modal -->
	
	
</section>
<!-- /.content -->
<script>
$(document).ready(function(){
	
	var formObj = $("form[role='form']");
	
	console.log(formObj);
	
	$("#modifyBtn").on("click", function(){
		formObj.attr("action", "../player/modifyPage");
		formObj.attr("method", "get");		
		formObj.submit();
	});
	
	$("#removeBtn").on("click", function(){
		// 등록된 게시글 삭제 처리
		formObj.attr("action", "../player/remove");
		formObj.submit();
	});
	
	$("#goReadRecord").click(function(){
		<c:if test="${playerVO.position == '투수'}">
		formObj.attr("action","../player/PitcherRecord");
		formObj.attr("method", "get");
		formObj.submit();
		</c:if>
		<c:if test="${playerVO.position != '투수'}">
		formObj.attr("action","../player/BatterRecord");
		formObj.attr("method", "get");
		formObj.submit();
		</c:if>
	})
	
	
	$("#goListBtn").click(function(){
		location.href="../player/mainPlayer";
	});
	
	
	
});
</script>

<%@include file="../include/footer.jsp"%>
