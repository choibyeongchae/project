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

<form role="form" action="RcordModifyPage" method="post">


					<div class="box-body">
				<div class="form-group">
						<label for="exampleInputEmail1">team</label>
						<input type="text" name='seasonyear' class="form-control" value="${teamRecordVO.seasonyear}" readonly="readonly">
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">battingavg</label>
						<input type="text" name='battingavg' class="form-control" value="${teamRecordVO.battingavg}" r>
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">gamecount</label>
						<input type="text" class="form-control" name="gamecount" value="${teamRecordVO.gamecount}" >
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">hit</label>
						<input type="text" name="hit" class="form-control"  value="${teamRecordVO.hit  }">
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">twohit</label>
						<input type="text" name="twohit" class="form-control" value="${teamRecordVO.twohit }" >
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">threehit</label>
						<input type="text" name="threehit" class="form-control" value="${teamRecordVO.threehit }" >
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">homerun</label>
						<input type="text" name="homerun" class="form-control" value="${teamRecordVO.homerun }" >
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">run</label>
						<input type="text" name="run" class="form-control" value="${teamRecordVO.run }" >
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">point</label>
						<input type="text" name="point" class="form-control" value="${teamRecordVO.point }" >
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">losescore</label>
						<input type="text" name="losescore" class="form-control" value="${teamRecordVO.losescore }" >
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">mylosescore</label>
						<input type="text" name="mylosescore" class="form-control" value="${teamRecordVO.mylosescore }" >
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">miss</label>
						<input type="text" name="miss" class="form-control" value="${teamRecordVO.miss }" >
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">longhitavg</label>
						<input type="text" name="longhitavg" class="form-control" value="${teamRecordVO.longhitavg }" >
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">onbaseavg</label>
						<input type="text" name="onbaseavg" class="form-control" value="${teamRecordVO.onbaseavg }" >
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">saveavg</label>
						<input type="text" name="saveavg" class="form-control" value="${teamRecordVO.saveavg }" >
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">hitbypitch</label>
						<input type="text" name="hitbypitch" class="form-control" value="${teamRecordVO.hitbypitch }" >
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
	  self.location = "/team/listRecord";
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
