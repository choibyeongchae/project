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
					<h3 class="box-writetitle">REGISTER BOARD</h3>
				</div>
				<!-- /.box-header -->

<form id='registerForm' role="form" method="post">
	<div class="box-body">
		<div class="form-group">
			<label for="exampleInputEmail1">teamname</label> <input type="text"
				name='teamname' class="form-control" placeholder="Enter writetitle">
		</div>
		<div class="form-group">
			<label for="exampleInputPassword1">place</label>
			<input type="text" class="form-control" name="place">
		</div>
		<div class="form-group">
			<label for="exampleInputEmail1">championcnt</label>
			<input type="text" name="championcnt" class="form-control">
		</div>

		<div class="form-group">
			<label for="exampleInputEmail1">foundyear</label>
			<input type="text" name="foundyear" class="form-control">
		</div>
		<div class="form-group">
			<label for="exampleInputEmail1">teamcode</label>
			<input type="text" name="teamcode" class="form-control">
		</div>
		<div class="form-group">
			<label for="exampleInputEmail1">id</label>
			<input type="text" name="id" class="form-control" value="${login.id }" readonly="readonly">
		</div>
	</div>

	<!-- /.box-body -->

	<div class="box-footer">
		<div>
			<hr>
		</div>

		<ul class="mailbox-attachments clearfix uploadedList">
		</ul>

		<button type="submit" class="btn btn-primary">Submit</button>

	</div>
</form>


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
  



 

<%@include file="../include/footer.jsp"%>
