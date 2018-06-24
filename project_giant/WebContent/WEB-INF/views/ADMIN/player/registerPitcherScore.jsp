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
			<label for="exampleInputPassword1">gamecnt</label>
			<input type="text" class="form-control" name="gamecnt" 
				placeholder="Enter ...">
		</div>
		<div class="form-group">
			<label for="exampleInputEmail1">saveavg</label>
			<input type="text" name="saveavg" class="form-control"  >
		</div>
		<div class="form-group">
			<label for="exampleInputEmail1">win</label>
			<input type="text" name="win" class="form-control" >
		</div>
		<div class="form-group">
			<label for="exampleInputEmail1">lose</label>
			<input type="text" name="lose" class="form-control" >
		</div>
		<div class="form-group">
			<label for="exampleInputEmail1">save</label>
			<input type="text" name="save" class="form-control"  >
		</div>
		<div class="form-group">
			<label for="exampleInputEmail1">hold</label>
			<input type="text" name="hold" class="form-control"  >
		</div>
		<div class="form-group">
			<label for="exampleInputEmail1">inning</label>
			<input type="text" name="inning" class="form-control"  >
		</div>
		<div class="form-group">
			<label for="exampleInputEmail1">strike out</label>
			<input type="text" name="strikeout" class="form-control"  >
		</div>
		<div class="form-group">
			<label for="exampleInputEmail1">hitbypitch</label>
			<input type="text" name="hitbypitch" class="form-control"  >
		</div>
		<div class="form-group">
			<label for="exampleInputEmail1">myhit</label>
			<input type="text" name="myhit" class="form-control"  >
		</div>
		<div class="form-group">
			<label for="exampleInputEmail1">myhomerun</label>
			<input type="text" name="myhomerun" class="form-control" >
		</div>
		<div class="form-group">
			<label for="exampleInputEmail1">losescore</label>
			<input type="text" name="losescore" class="form-control" >
		</div>
		<div class="form-group">
			<label for="exampleInputEmail1">mylosescore</label>
			<input type="text" name="mylosescore" class="form-control" >
		</div>
		<div class="form-group">
			<label for="exampleInputEmail1">seasonyear</label>
			<input type="text" name="seasonyear" class="form-control" >
		</div>
		<div class="form-group">
			<label for="exampleInputEmail1">team</label>
			<input type="text" name="team" class="form-control" >
		</div>
		<div class="form-group">
			<label for="exampleInputEmail1">id</label>
			<input type="text" name="id" class="form-control" value="${login.id }" readonly >
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
