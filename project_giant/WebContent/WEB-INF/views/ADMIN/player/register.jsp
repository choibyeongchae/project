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
			<label for="exampleInputEmail1">backnum</label> <input type="text"
				name='backnum' class="form-control" placeholder="Enter writetitle">
		</div>
		<div class="form-group">
			<label for="exampleInputPassword1">enteryear</label>
			<input type="text" class="form-control" name="enteryear" 
				placeholder="Enter ..."></textarea>
		</div>
		<div class="form-group">
			<label for="exampleInputEmail1">Writer</label>
			<input type="text" name="id" class="form-control" value="${login.id }"  readonly >
		</div>
		<div class="form-group">
			<label for="exampleInputEmail1">name</label>
			<input type="text" name="name" class="form-control" >
		</div>
		<div class="form-group">
			<label for="exampleInputEmail1">birth</label>
			<input type="text" name="birth" class="form-control" >
		</div>
		<div class="form-group">
			<label for="exampleInputEmail1">pitcherhitting</label>
			<input type="text" name="pitcherhitting" class="form-control"  >
		</div>
		<div class="form-group">
			<label for="exampleInputEmail1">career</label>
			<input type="text" name="career" class="form-control"  >
		</div>
		<div class="form-group">
			<label for="exampleInputEmail1">position</label>
			<input type="text" name="position" class="form-control"  >
		</div>
		<div class="form-group">
			<label for="exampleInputEmail1">img url</label>
			<input type="text" name="img" class="form-control"  >
		</div>
		<div class="form-group">
			<label for="exampleInputEmail1">height</label>
			<input type="text" name="height" class="form-control"  >
		</div>
		<div class="form-group">
			<label for="exampleInputEmail1">weight</label>
			<input type="text" name="weight" class="form-control"  >
		</div>
		<div class="form-group">
			<label for="exampleInputEmail1">gubun</label>
			<input type="text" name="gubun" class="form-control" >
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
