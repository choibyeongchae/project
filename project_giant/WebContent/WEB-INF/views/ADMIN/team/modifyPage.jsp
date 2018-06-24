<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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

<form role="form" action="modifyPage" method="post">

	<input type='hidden' name='page' value="${cri.page}"> 
	<input type='hidden' name='perPageNum' value="${cri.perPageNum}">
	<input type='hidden' name='searchType' value="${cri.searchType}">
	<input type='hidden' name='keyword' value="${cri.keyword}">

					<div class="box-body">
						
						<div class="form-group">
							<label for="exampleInputEmail1">teamcode</label> <input type="hidden"
								name='teamcode' class="form-control" value="${teamVO.teamcode}"
								>
						</div>

						<div class="form-group">
							<label for="exampleInputEmail1">teamname</label> <input type="text"
								name='teamname' class="form-control" value="${teamVO.teamname}"
								>
						</div>

						<div class="form-group">
							<label for="exampleInputEmail1">place</label> <input type="text"
								name='place' class="form-control" value="${teamVO.place}">
						</div>
						<div class="form-group">
							<label for="exampleInputPassword1">championcnt</label>
							<input type="text" class="form-control" name="championcnt" value="${teamVO.championcnt}">
						</div>
					
						
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
$(document).ready(function(){
		
	var formObj = $("form[role='form']");
	

	
	
	$(".btn-warning").on("click", function(){
	  self.location = "/team/list";
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
