<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>

<%@include file="../include/header.jsp"%>

<!-- Main content -->
<section class="content">
	<div class="row">
		<!-- left column -->
		<div class="col-md-12">
			<!-- general form elements -->

			<div class="box">
				<div class="box-header with-border">
					<h3 class="box-writetitle">LIST ALL PAGE</h3>
				</div>
				
				<div class='box-body'>

					
					<button id='newBtn'>New team</button>

				</div>
				
				<div class="box-body">
					
					<table class="table table-bordered">
						<tr>
							<th>teamname</th>
							<th>place</th>
							<th>championcnt</th>
							<th>foundyear</th>
						</tr>
					
					
					<c:forEach items="${list}" var="teamVO">
					
						<tr>
							<td><a href='../team/readPage?teamcode=${teamVO.teamcode}'>
							${teamVO.teamname }</a>
							</td>
							<td>
							<!--  
							<a href='/board/read?writenum=${boardVO.writenum}'>${boardVO.writetitle}</a> -->
							${teamVO.place}
							</td>
							<td>${teamVO.championcnt}</td>
							<td><fmt:formatDate pattern="yyyy-MM-dd"
									value="${teamVO.foundyear}" /></td>
						</tr>
					
					</c:forEach>
					
					</table>

				</div>
				<!-- /.box-body -->
				
				<!-- /.box-footer-->
			</div>
		</div>
		<!--/.col (left) -->

	</div>
	<!-- /.row -->
</section>
<!-- /.content -->
</div>
<!-- /.content-wrapper -->
<form id="jobForm">
  <input type='hidden' name="page" value=${pageMaker.cri.perPageNum}>
  <input type='hidden' name="perPageNum" value=${pageMaker.cri.perPageNum}>
</form>
<script>
	var result = '${msg}';

	if (result == 'SUCCESS') {
		alert("처리가 완료되었습니다.");
	}
	
	/*
	$(".pagination li a").on("click", function(event){
		
		event.preventDefault(); 
		
		var targetPage = $(this).attr("href");
		
		var jobForm = $("#jobForm");
		jobForm.find("[name='page']").val(targetPage);
		jobForm.attr("action","/board/listPage").attr("method", "get");
		jobForm.submit();
	});
	*/
	
	$(document).ready(function() {
		$('#searchBtn').on("click",function(event) {
			self.location = "list"
							+ '${pageMaker.makeQuery(1)}'
							+ "&searchType="
							+ $("select option:selected").val()
							+ "&keyword=" + $('#keywordInput').val();

		});

		$('#newBtn').on("click", function(evt) {
			self.location = "register";
		});
	});
</script>
<%@include file="../include/footer.jsp"%>