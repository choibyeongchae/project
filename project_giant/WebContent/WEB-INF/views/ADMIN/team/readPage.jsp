<%@page import="kr.ync.project.domain.TeamVO"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>   
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
    <%
    	TeamVO vo = (TeamVO) request.getAttribute("teamVO");
    	SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
    	String day = format.format(vo.getFoundyear());
    %>
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

					<input type='hidden' name='teamcode' value="${teamVO.teamcode}"> 
				</form>

				<div class="box-body">
					<div class="form-group">
						<label for="exampleInputEmail1">teamname</label>
						<input type="text" name='teamname' class="form-control" value="${teamVO.teamname}" readonly="readonly">
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">place</label>
						<input type="text" class="form-control" name="place"  readonly="readonly" value="${teamVO.place}">
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">foundyear</label>
						<input type="text" name="foundyear" class="form-control" value="<%=day %>" readonly="readonly">
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
		formObj.attr("action", "../team/modifyPage");
		formObj.attr("method", "get");		
		formObj.submit();
	});
	
	$("#removeBtn").on("click", function(){
		// 등록된 게시글 삭제 처리
		formObj.attr("action", "../team/removePage");
		formObj.submit();
	});
	
	$("#goListBtn").on("click", function(){
		formObj.attr("method", "get");
		formObj.attr("action", "../team/list");
		formObj.submit();
	});
});
	
</script>

<%@include file="../include/footer.jsp"%>
