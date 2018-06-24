<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
  <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%@include file="../include/header.jsp" %>

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

					<select name="searchType">
						<option value="n"
							<c:out value="${cri.searchType == null?'selected':''}"/>>
							---</option>
						<option value="t"
							<c:out value="${cri.searchType eq 't'?'selected':''}"/>>
							backnum</option>
						<option value="c"
							<c:out value="${cri.searchType eq 'c'?'selected':''}"/>>
							name</option>
						<option value="tc"
							<c:out value="${cri.searchType eq 'tc'?'selected':''}"/>>
							backnum OR name</option>
					</select> <input type="text" name='keyword' id="keywordInput"
						value='${cri.keyword }'>
					<button id='searchBtn'>Search</button>
					<button id='newBtn'>New player</button>
					<button id="newPitcherRecord">new player(pitcher)</button>
					<button id="newBatterRecord">new player(batter)</button>
				</div>
				
				<div class="box-body">
					
					<table class="table table-bordered">
						<tr>
							<th>등번호</th>
							<th>이름</th>
							<th>생년월일</th>
						</tr>
					
					
					<c:forEach items="${list}" var="playerVO">
						
						<tr>
							<td>${playerVO.backnum }</td>
							<td><a href='../player/readPage${pageMaker.makeSearch(pageMaker.cri.page) }&backnum=${playerVO.backnum}'>
							${playerVO.name }	</a></td>
							<td>${fn:substring(playerVO.birth,0,10) }</td>
						</tr>
					
					</c:forEach>
					
					</table>

				</div>
				<!-- /.box-body -->
				<div class="box-footer">
				
					<div class="text-center">
							<ul class="pagination">
								 
								 <c:if test="${pageMaker.prev}">
								<li><a
									href="mainPlayer${pageMaker.makeSearch(pageMaker.startPage - 1) }">&laquo;</a></li>
								</c:if>
	
								<c:forEach begin="${pageMaker.startPage }"
									end="${pageMaker.endPage }" var="idx">
									<li
										<c:out value="${pageMaker.cri.page == idx?'class =active':''}"/>>
										<a href="mainPlayer${pageMaker.makeSearch(idx)}">${idx}</a>
									</li>
								</c:forEach>
	
								<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
									<li><a
										href="mainPlayer${pageMaker.makeSearch(pageMaker.endPage +1) }">&raquo;</a></li>
								</c:if>
								
							</ul>
						</div>
				
				</div>
				<!-- /.box-footer-->
			</div>
		</div>
		<!--/.col (left) -->

	</div>
	<!-- /.row -->
</section>
<script>
$('#newBtn').on("click", function(evt) {
	self.location = "register";
});
$("#newPitcherRecord").on("click",function(){
	self.location = "registerPitcherScore";
});

$("#newBatterRecord").on("click",function(){
	self.location = "registerBatterScore";
});
$("#searchBtn").click(function(){
	self.location = "mainPlayer"
	+ "${pageMaker.makeQuery(1)}"
	+ "&searchType="
	+ $("select option:selected").val()
	+ "&keyword="+encodeURIComponent($("#keywordInput").val());
});
</script>
    
<%@include file="../include/footer.jsp" %>
 
 
  