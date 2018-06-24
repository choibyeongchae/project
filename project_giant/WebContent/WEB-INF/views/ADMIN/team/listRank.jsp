<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%@include file="../include/header.jsp"%>

<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
		<script>
            $(function(){
            	
            
                $(".select_year").on("change",function(){
                    var select = $(".select_year option:selected").val(); 
                    $("#table tr").next().remove();
                    console.log(select);
                    $("#table").append("<c:forEach items='${list}' var='teamVO'><tr><td>${teamVO.seasonrank}</td><td>${fn:substring(teamVO.seasonyear,4,6) }</td><td>${teamVO.win }</td><td>${teamVO.lose }</td><td>${teamVO.draw }</td><td>${teamVO.winavg }</td><td>${teamVO.gameminus }</td></tr></c:forEach>");
                    document.frm.submit(); 
                });
                //$("#year_submit").submit();
            });

        </script>

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

					
					<button id='newBtn'>New Rank</button>

				</div>
					<form id="aaa" method="get" action="listRank"name="frm">
                             <select name="year" class="select_year" style="border:1px solid black;">
                             	<option value="2018" selected>2018</option>
                             	<option value="2017">2017</option>
                             	<option value="2016">2016</option>
                             	<option value="2015">2015</option>
                             	<option value="2014">2014</option>
                             	<option value="2013">2013</option>
                             </select>
                     </form>
				<div class="box-body">
					
					<table class="table table-bordered">
						<tr>
							<th>seasonrank</th>
							<th>team</th>
							<th>gamecount</th>
							<th>win</th>
							<th>draw</th>
							<th>lose</th>
							<th>winavg</th>
							<th>gameminus</th>
							
						</tr>
						<c:forEach items='${list}' var='teamVO'>
                                  <tr>
                                  <td>${teamVO.seasonrank}</td>
                                  <td>
                                  <a href='../team/listRankreadPage?seasonyear=${teamVO.seasonyear}'>
							${fn:substring(teamVO.seasonyear,4,6) }</a></td>
                                  <td>${teamVO.gamecount }</td>
                                  <td>${teamVO.win }</td>
                                  <td>${teamVO.draw }</td>
                                  <td>${teamVO.lose }</td>
                                  <td>${teamVO.winavg }</td>
                                  <td>${teamVO.gameminus }</td>
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
			self.location = "registerRank";
		});
	});
</script>
<%@include file="../include/footer.jsp"%>