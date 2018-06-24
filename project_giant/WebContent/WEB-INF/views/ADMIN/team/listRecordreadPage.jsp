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

				<form role="form" action="RecordModifyPage" method="post">

					<input type='hidden' name='seasonyear' value="${teamRecordVO.seasonyear}"> 
				</form>

				<div class="box-body">
				<div class="form-group">
						<label for="exampleInputEmail1">team</label>
						<input type="text" name='seasonyear' class="form-control" value="${teamRecordVO.seasonyear}" readonly="readonly">
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">battingavg</label>
						<input type="text" name='battingavg' class="form-control" value="${teamRecordVO.battingavg}" readonly="readonly">
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">gamecount</label>
						<input type="text" class="form-control" name="gamecount" value="${teamRecordVO.gamecount}" readonly="readonly">
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">hit</label>
						<input type="text" name="hit" class="form-control"  value="${teamRecordVO.hit  }" readonly="readonly">
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">twohit</label>
						<input type="text" name="twohit" class="form-control" value="${teamRecordVO.twohit }" readonly="readonly">
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">threehit</label>
						<input type="text" name="threehit" class="form-control" value="${teamRecordVO.threehit }" readonly="readonly">
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">homerun</label>
						<input type="text" name="homerun" class="form-control" value="${teamRecordVO.homerun }" readonly="readonly">
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">run</label>
						<input type="text" name="run" class="form-control" value="${teamRecordVO.run }" readonly="readonly">
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">point</label>
						<input type="text" name="point" class="form-control" value="${teamRecordVO.point }" readonly="readonly">
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">losescore</label>
						<input type="text" name="losescore" class="form-control" value="${teamRecordVO.losescore }" readonly="readonly">
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">mylosescore</label>
						<input type="text" name="mylosescore" class="form-control" value="${teamRecordVO.mylosescore }" readonly="readonly">
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">miss</label>
						<input type="text" name="miss" class="form-control" value="${teamRecordVO.miss }" readonly="readonly">
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">longhitavg</label>
						<input type="text" name="longhitavg" class="form-control" value="${teamRecordVO.longhitavg }" readonly="readonly">
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">onbaseavg</label>
						<input type="text" name="onbaseavg" class="form-control" value="${teamRecordVO.onbaseavg }" readonly="readonly">
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">saveavg</label>
						<input type="text" name="saveavg" class="form-control" value="${teamRecordVO.saveavg }" readonly="readonly">
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">hitbypitch</label>
						<input type="text" name="hitbypitch" class="form-control" value="${teamRecordVO.hitbypitch }" readonly="readonly">
					</div>
					
					

				</div>
				<!-- /.box-body -->
				
				<ul class="mailbox-attachments clearfix uploadedList"></ul>
				
			  <div class="box-footer">
				    <button type="submit" class="btn btn-danger" id="removeBtn">REMOVE</button>
				    <button type="submit" class="btn btn-warning" id="modifyBtn">modify</button>
			    <button type="submit" class="btn btn-primary" id="goListBtn">GO LIST </button>
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

<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script>
$(document).ready(function(){
	
	var formObj = $("form[role='form']");
	
	console.log(formObj);
	
	$("#modifyBtn").on("click", function(){
		formObj.attr("action", "../team/RcordModifyPage");
		formObj.attr("method", "get");		
		formObj.submit();
	});
	
	$("#removeBtn").on("click", function(){
		// 등록된 게시글 삭제 처리
		formObj.attr("action", "../team/removeRecord");
		formObj.submit();
	});
	
	$("#goListBtn").on("click", function(){
		location.href="../team/listRecord?year=2017";
	});
});
	
</script>

<%@include file="../include/footer.jsp"%>
