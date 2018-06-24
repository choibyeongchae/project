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

<form role="form" action="listRankmodifyPage" method="post">


					<div class="box-body">
						
						<div class="form-group">
							<label for="exampleInputEmail1">seasonyear</label> <input type="hidden"
								name='seasonyear' class="form-control" value="${teamVO.seasonyear}"
								>
						</div>

						<div class="form-group">
							<label for="exampleInputEmail1">seasonrank</label> <input type="text"
								name='seasonrank' class="form-control" value="${teamVO.seasonrank}"
								>
						</div>

						<div class="form-group">
							<label for="exampleInputEmail1">gamecount</label> <input type="text"
								name='gamecount' class="form-control" value="${teamVO.gamecount}">
						</div>
						<div class="form-group">
							<label for="exampleInputPassword1">win</label>
							<input type="text" class="form-control" name="win" value="${teamVO.win}">
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">draw</label> <input type="text"
								name='draw' class="form-control" value="${teamVO.draw}">
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">lose</label> <input type="text"
								name='lose' class="form-control" value="${teamVO.lose}">
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">winavg</label> <input type="text"
								name='winavg' class="form-control" value="${teamVO.winavg}">
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">gameminus</label> <input type="text"
								name='gameminus' class="form-control" value="${teamVO.gameminus}">
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
