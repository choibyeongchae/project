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
                    $("#table").append("<c:forEach items='${list}' var='teamRecordVO'><tr class='data'><td>${fn:substring(teamRecordVO.seasonyear,4,6) }</td><td>${teamRecordVO.battingavg }</td><td>${teamRecordVO.gamecount }</td><td>${teamRecordVO.hit }</td><td>${teamRecordVO.twohit }</td><td>${teamRecordVO.threehit }</td><td>${teamRecordVO.homerun }</td><td>${teamRecordVO.run }</td><td>${teamRecordVO.point }</td><td>${teamRecordVO.losescore }</td><td>${teamRecordVO.mylosescore }</td><td>${teamRecordVO.miss }</td><td>${teamRecordVO.longhitavg }</td><td>${teamRecordVO.onbaseavg }</td><td>${teamRecordVO.saveavg }</td><td>${teamRecordVO.hitbypitch }</td></tr></c:forEach>");
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
					<form id="aaa" method="get" action="listRecord"name="frm">
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

                                        <th>팀명</th>
                                        <th>타율</th>
                                        <th>경기수</th>
                                        <th>안타</th>
                                        <th>2루타</th>
                                        <th>3루타</th>
                                        <th>홈런</th>
                                        <th>도루</th>
                                        <th>득점</th>
                                        <th>실점</th>
                                        <th>자책점</th>
                                        <th>실책</th>
                                        <th>장타율</th>
                                        <th>출루율</th>
                                        <th>방어율</th>
                                        <th>사구</th>
							
						</tr>
						<c:forEach items='${list}' var='teamRecordVO'>
                                  <tr class="data">
                                        <td><a href="../team/listRecordreadPage?seasonyear=${teamRecordVO.seasonyear }">${fn:substring(teamRecordVO.seasonyear,4,6) }</a></td>
                                        <td>${teamRecordVO.battingavg }</td>
                                        <td>${teamRecordVO.gamecount }</td>
                                        <td>${teamRecordVO.hit }</td>
                                        <td>${teamRecordVO.twohit }</td>
                                        <td>${teamRecordVO.threehit }</td>
                                        <td>${teamRecordVO.homerun }</td>
                                        <td>${teamRecordVO.run }</td>
                                        <td>${teamRecordVO.point }</td>
                                        <td>${teamRecordVO.losescore }</td>
                                        <td>${teamRecordVO.mylosescore }</td>
                                        <td>${teamRecordVO.miss }</td>
                                        <td>${teamRecordVO.longhitavg }</td>
                                        <td>${teamRecordVO.onbaseavg }</td>
                                        <td>${teamRecordVO.saveavg }</td>
                                        <td>${teamRecordVO.hitbypitch }</td>
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
			self.location = "registerRecord";
		});
	});
</script>
<%@include file="../include/footer.jsp"%>