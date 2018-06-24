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

<form role="form" action="batterModifyPage" method="post">
	<input type='hidden' name='page' value="${cri.page}"> 
	<input type='hidden' name='perPageNum' value="${cri.perPageNum}">
	<input type='hidden' name='searchType' value="${cri.searchType}">
	<input type='hidden' name='keyword' value="${cri.keyword}">

					<div class="box-body">
						<c:forEach items="${list }" begin="0" end="0" var="batterVO">
						<div class="form-group">
						
							<label for="exampleInputEmail1">backnum</label> <input type="text"
								name='backnum' class="form-control" value="${batterVO.backnum}"
								readonly="readonly">
						</div>
						<div class="form-group">
						
							<label for="exampleInputEmail1">name</label> <input type="text"
								name='name' class="form-control" value="${batterVO.name}"
								readonly="readonly">
						</div>
						<div class="form-group">
						
							<label for="exampleInputEmail1">gamecnt</label> <input type="text"
								name='gamecnt' class="form-control" value="${batterVO.gamecnt}"
								>
						</div>
						<div class="form-group">
						
							<label for="exampleInputEmail1">hit</label> <input type="text"
								name='hit' class="form-control" value="${batterVO.hit}"
								>
						</div>
						<div class="form-group">
						
							<label for="exampleInputEmail1">battingavg</label> <input type="text"
								name='battingavg' class="form-control" value="${batterVO.battingavg}"
								>
						</div>
						<div class="form-group">
						
							<label for="exampleInputEmail1">twohit</label> <input type="text"
								name='twohit' class="form-control" value="${batterVO.twohit}"
								>
						</div>
						<div class="form-group">
						
							<label for="exampleInputEmail1">threehit</label> <input type="text"
								name='threehit' class="form-control" value="${batterVO.threehit}"
								>
						</div>
						<div class="form-group">
						
							<label for="exampleInputEmail1">homerun</label> <input type="text"
								name='homerun' class="form-control" value="${batterVO.homerun}"
								>
						</div>
						<div class="form-group">
						
							<label for="exampleInputEmail1">hittingscore</label> <input type="text"
								name='hittingscore' class="form-control" value="${batterVO.hittingscore}"
								>
						</div>
						<div class="form-group">
						
							<label for="exampleInputEmail1">fourball</label> <input type="text"
								name='fourball' class="form-control" value="${batterVO.fourball}"
								>
						</div>
						<div class="form-group">
						
							<label for="exampleInputEmail1">addscore</label> <input type="text"
								name='addscore' class="form-control" value="${batterVO.addscore}"
								>
						</div>
						<div class="form-group">
						
							<label for="exampleInputEmail1">seasonyear</label> <input type="text"
								name='seasonyear' class="form-control" value="${batterVO.seasonyear}"
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
