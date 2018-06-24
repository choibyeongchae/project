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
			<label for="exampleInputEmail1">seasonyear</label> <input type="text"
				name='seasonyear' class="form-control" placeholder="Enter writetitle">
		</div>
		<div class="form-group">
			<label for="exampleInputPassword1">battingavg</label>
			<input type="text" class="form-control" name="battingavg">
		</div>
		<div class="form-group">
			<label for="exampleInputEmail1">gamecount</label>
			<input type="text" name="gamecount" class="form-control">
		</div>

		<div class="form-group">
			<label for="exampleInputEmail1">hit</label>
			<input type="text" name="hit" class="form-control">
		</div>
		<div class="form-group">
			<label for="exampleInputEmail1">twohit</label>
			<input type="text" name="twohit" class="form-control">
		</div>
		<div class="form-group">
			<label for="exampleInputEmail1">threehit</label>
			<input type="text" name="threehit" class="form-control" >
		</div>
		<div class="form-group">
			<label for="exampleInputEmail1">homerun</label>
			<input type="text" name="homerun" class="form-control" >
		</div>
		<div class="form-group">
			<label for="exampleInputEmail1">run</label>
			<input type="text" name="run" class="form-control" >
		</div>
		<div class="form-group">
			<label for="exampleInputEmail1">point</label>
			<input type="text" name="point" class="form-control" >
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
			<label for="exampleInputEmail1">miss</label>
			<input type="text" name="miss" class="form-control" >
		</div>
		<div class="form-group">
			<label for="exampleInputEmail1">longhitavg</label>
			<input type="text" name="longhitavg" class="form-control" >
		</div>
		<div class="form-group">
			<label for="exampleInputEmail1">onbaseavg</label>
			<input type="text" name="onbaseavg" class="form-control" >
		</div>
		<div class="form-group">
			<label for="exampleInputEmail1">saveavg</label>
			<input type="text" name="saveavg" class="form-control" >
		</div>
		<div class="form-group">
			<label for="exampleInputEmail1">hitbypitch</label>
			<input type="text" name="hitbypitch" class="form-control" >
		</div>
		<div class="form-group">
			<label for="exampleInputEmail1">teamcode</label>
			<input type="text" name="teamcode" class="form-control" >
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
