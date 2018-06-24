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
					<h3 class="box-writetitle">MODIFY BOARD</h3>
				</div>
				<!-- /.box-header -->

<form role="form" action="pitcherModifyPage" method="post">
	<input type='hidden' name='page' value="${cri.page}"> 
	<input type='hidden' name='perPageNum' value="${cri.perPageNum}">
	<input type='hidden' name='searchType' value="${cri.searchType}">
	<input type='hidden' name='keyword' value="${cri.keyword}">

					<div class="box-body">
						<c:forEach items="${list }" begin="0" end="0" var="pitcherVO">
						<div class="form-group">
						
							<label for="exampleInputEmail1">backnum</label> <input type="text"
								name='backnum' class="form-control" value="${pitcherVO.backnum}"
								readonly="readonly">
						</div>
						<div class="form-group">
						
							<label for="exampleInputEmail1">name</label> <input type="text"
								name='name' class="form-control" value="${pitcherVO.name}"
								readonly="readonly">
						</div>
						<div class="form-group">
						
							<label for="exampleInputEmail1">gamecnt</label> <input type="text"
								name='gamecnt' class="form-control" value="${pitcherVO.gamecnt}"
								>
						</div>
						<div class="form-group">
						
							<label for="exampleInputEmail1">saveavg</label> <input type="text"
								name='saveavg' class="form-control" value="${pitcherVO.saveavg}"
								>
						</div>
						<div class="form-group">
						
							<label for="exampleInputEmail1">win</label> <input type="text"
								name='win' class="form-control" value="${pitcherVO.win}"
								>
						</div>
						<div class="form-group">
						
							<label for="exampleInputEmail1">lose</label> <input type="text"
								name='lose' class="form-control" value="${pitcherVO.lose}"
								>
						</div>
						<div class="form-group">
						
							<label for="exampleInputEmail1">save</label> <input type="text"
								name='save' class="form-control" value="${pitcherVO.save}"
								>
						</div>
						<div class="form-group">
						
							<label for="exampleInputEmail1">hold</label> <input type="text"
								name='hold' class="form-control" value="${pitcherVO.hold}"
								>
						</div>
						<div class="form-group">
						
							<label for="exampleInputEmail1">inning</label> <input type="text"
								name='inning' class="form-control" value="${pitcherVO.inning}"
								>
						</div>
						<div class="form-group">
						
							<label for="exampleInputEmail1">strikeout</label> <input type="text"
								name='strikeout' class="form-control" value="${pitcherVO.strikeout}"
								>
						</div>
						<div class="form-group">
						
							<label for="exampleInputEmail1">hitbypitch</label> <input type="text"
								name='hitbypitch' class="form-control" value="${pitcherVO.hitbypitch}"
								>
						</div>
						<div class="form-group">
						
							<label for="exampleInputEmail1">myhit</label> <input type="text"
								name='myhit' class="form-control" value="${pitcherVO.myhit}"
								>
						</div>
						<div class="form-group">
						
							<label for="exampleInputEmail1">myhomerun</label> <input type="text"
								name='myhomerun' class="form-control" value="${pitcherVO.myhomerun}"
								>
						</div>
						<div class="form-group">
						
							<label for="exampleInputEmail1">mylosescore</label> <input type="text"
								name='mylosescore' class="form-control" value="${pitcherVO.mylosescore}"
								>
						</div>
						<div class="form-group">
						
							<label for="exampleInputEmail1">losescore</label> <input type="text"
								name='losescore' class="form-control" value="${pitcherVO.losescore}"
								>
						</div>
						<div class="form-group">
						
							<label for="exampleInputEmail1">seasonyear</label> <input type="text"
								name='seasonyear' class="form-control" value="${pitcherVO.seasonyear}"
								>
						</div>
						
						
						</c:forEach>
					
						
					</div>
					<!-- /.box-body -->

	<div class="box-footer">
		<div>
			<hr>
		</div>

		<ul class="mailbox-attachments clearfix uploadedList">
		</ul>

    <button type="submit" class="btn btn-primary">SAVE</button> 
    <button type="submit" class="btn btn-warning">CANCEL</button>

	</div>
</form>

<script type="text/javascript" src="/resources/js/upload.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.0.10/handlebars.min.js"></script>

<script>
	$(function(){
		
	$(".btn-warning").on("click", function(){
	  self.location = "../player/mainPlayer?page=${cri.page}&perPageNum=${cri.perPageNum}"+
			  "&searchType=${cri.searchType}&keyword=${cri.keyword}";
	});
	
});




</script>





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

<%@include file="../include/footer.jsp"%>
