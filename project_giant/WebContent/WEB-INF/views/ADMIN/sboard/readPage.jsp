<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>   
<%@include file="../include/header.jsp"%>
<script type="text/javascript" src="/resources/js/upload.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.0.10/handlebars.min.js"></script>
<style type="text/css">
    .popup {position: absolute;}
    .back { background-color: gray; opacity:0.5; width: 100%; height: 300%; overflow:hidden;  z-index:1101;}
    .front { 
       z-index:1110; opacity:1; boarder:1px; margin: auto; 
      }
     .show{
       position:relative;
       max-width: 1200px; 
       max-height: 800px; 
       overflow: auto;       
     } 
  	
</style>

<div class='popup back' style="display:none;"></div>
<div id="popup_front" class='popup front' style="display:none;">
<img id="popup_img">
</div>
    
<!-- Main content -->
<section class="content">
	<div class="row">
		<!-- left column -->
		<div class="col-md-12">
			<!-- general form elements -->
			<div class="box box-primary">
				<div class="box-header">
					<h3 class="box-writetitle">READ BOARD</h3>
				</div>
				<!-- /.box-header -->

				<form role="form" action="modifyPage" method="post">

					<input type='hidden' name='writenum' value="${boardVO.writenum}"> <input
						type='hidden' name='page' value="${cri.page}"> <input
						type='hidden' name='perPageNum' value="${cri.perPageNum}">
					<input type='hidden' name='searchType' value="${cri.searchType}">
					<input type='hidden' name='keyword' value="${cri.keyword}">

				</form>

				<div class="box-body">
					<div class="form-group">
						<label for="exampleInputEmail1">writetitle</label>
						<input type="text" name='writetitle' class="form-control" value="${boardVO.writetitle}" readonly="readonly">
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">Content</label>
						<textarea class="form-control" name="writecontent" rows="3" readonly="readonly">${boardVO.writecontent}</textarea>
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">Writer</label>
						<input type="text" name="writepeople" class="form-control" value="${boardVO.writepeople}" readonly="readonly">
					</div>
				</div>
				<!-- /.box-body -->
				
				<ul class="mailbox-attachments clearfix uploadedList"></ul>
				
			  <div class="box-footer">
				    <button type="submit" class="btn btn-danger" id="removeBtn">REMOVE</button>
			    <button type="submit" class="btn btn-primary" id="goListBtn">GO LIST </button>
			  </div>



			</div>
			<!-- /.box -->
		</div>
		<!--/.col (left) -->

	</div>
	<!-- /.row -->



	<div class="row">
		<div class="col-md-12">

			<div class="box box-success">
				<div class="box-header">
					<h3 class="box-writetitle">ADD NEW REPLY</h3>
				</div>
				  	<div class="box-body">
				    <label for="exampleInputEmail1">Writer</label>
				    <input class="form-control" type="text" placeholder="USER ID" 
				    	id="newReplyWriter" value="${login.id }" readonly="readonly">     
				    <label for="exampleInputEmail1">Reply Text</label> 
				    <input class="form-control" type="text" placeholder="REPLY TEXT" id="newReplyText">
				    </div>
				  
						<div class="box-footer">
						  <button type="submit" class="btn btn-primary" id="replyAddBtn">ADD REPLY</button>
						</div>
			  
			  
			</div>


			<!-- The time line -->
			<ul class="timeline">
				<!-- timeline time label -->
				<li class="time-label" id="repliesDiv"><span class="bg-green">
						Replies List <small id='replycntSmall'>[ ${boardVO.comment_cnt} ]</small></span></li>
			</ul>

			

		</div>
		<!-- /.col -->
	</div>
	<!-- /.row -->


          
<!-- Modal -->
<div id="modifyModal" class="modal modal-primary fade" role="dialog">
  <div class="modal-dialog">
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-writetitle"></h4>
      </div>
      <div class="modal-body" data-rno>
        <p><input type="text" id="replytext" class="form-control"></p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-info" id="replyModBtn">Modify</button>
        <button type="button" class="btn btn-danger" id="replyDelBtn">DELETE</button>
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>      
	
	
</section>
<!-- /.content -->
<script id="templateAttach" type="text/x-handlebars-template">
<li data-src='{{fullName}}'>
  <span class="mailbox-attachment-icon has-img"><img src="{{imgsrc}}" alt="Attachment"></span>
  <div class="mailbox-attachment-info">
	<a href="{{getLink}}" class="mailbox-attachment-name">{{fileName}}</a>
	</span>
  </div>
</li>                
</script>  

<script id="template" type="text/x-handlebars-template">
	{{#each .}}
		<li class="replyLi" data-rno={{rno}}>
			<i class="fa fa-comments bg-blue"></i>
			<div class="timeline-item" >
                <span class="time">
                  <i class="fa fa-clock-o"></i>{{prettifyDate regdate}}
                </span>
                <h3 class="timeline-header"><strong>{{rno}}</strong> -{{replyer}}</h3>
                <div class="timeline-body">{{replytext}} </div>
								<div class="timeline-footer">
								
                  <a class="btn btn-primary btn-xs" 
									data-toggle="modal" data-target="#modifyModal">Modify</a>
								
				</div>
	    	</div>			
    	</li>
	{{/each}}
</script>

<script>
	Handlebars.registerHelper("eqReplyer", function(replyer, block) {
		var accum = '';
		if (replyer == '${login.id}') {
			accum += block.fn();
		}
		return accum;
	});

	Handlebars.registerHelper("prettifyDate", function(timeValue) {
		var dateObj = new Date(timeValue);
		var year = dateObj.getFullYear();
		var month = dateObj.getMonth() + 1;
		var date = dateObj.getDate();
		return year + "/" + month + "/" + date;
	});

	var printData = function(replyArr, target, templateObject) {

		var template = Handlebars.compile(templateObject.html());

		var html = template(replyArr);
		// 기존 댓글 리스트 목록을 제거 한 뒤 새로 엘리먼트들을 추가해준다.
		// 기존 댓글 리스트를 제거하지 않으면 글등록, 수정 등 이벤트처리 후 목록을 출력하면
		// 기존 리스트에 추가되어서 계속 리스트들이 쌓이게된다.
		$(".replyLi").remove(); 
		target.after(html);

	}

	var writenum = ${boardVO.writenum};
	var replyPage = 1;

	function getPage(pageInfo) {
		$.getJSON(pageInfo, function(data) {
			printData(data.list, $("#repliesDiv"), $('#template'));
			printPaging(data.pageMaker, $(".pagination"));

			$("#modifyModal").modal('hide'); // 수정 레이어 화면을 안보이게 한다.
			$("#replycntSmall").html("[ " + data.pageMaker.totalCount +" ]");

		});
	}

	var printPaging = function(pageMaker, target) {

		var str = "";

		if (pageMaker.prev) {
			str += "<li><a href='" + (pageMaker.startPage - 1)
					+ "'> << </a></li>";
		}

		for (var i = pageMaker.startPage, len = pageMaker.endPage; i <= len; i++) {
			var strClass = pageMaker.cri.page == i ? 'class=active' : '';
			str += "<li "+strClass+"><a href='"+i+"'>" + i + "</a></li>";
		}

		if (pageMaker.next) {
			str += "<li><a href='" + (pageMaker.endPage + 1)
					+ "'> >> </a></li>";
		}

		target.html(str);
	};

	$("#repliesDiv").on("click", function() {
		// 댓글 보기 버튼을 계속 클릭하면 server로 부터 계속 댓글 리스트를 호출한다.
		// 따라서 1회만 호출하기위해 넣은 코드
		// 댓글 보기를 클릭 하면 댓글 리스트가 li 태그로 출력된 뒤라 li가 2개이상이 되므로
		// 더 이상 댓글 보기 버튼을 눌러도 작동하지 않는다.
		if ($(".timeline li").size() > 1) {
			return;
		}
		getPage("/replies/" + writenum + "/1");

	});
	

	$(".pagination").on("click", "li a", function(event){
		event.preventDefault();
		replyPage = $(this).attr("href");
		getPage("/replies/"+writenum+"/"+replyPage);
	});
	
	$("#replyAddBtn").on("click",function(){
		 
		var replyerObj = $("#newReplyWriter");
		var replytextObj = $("#newReplyText");
		var replyer = replyerObj.val();
		var replytext = replytextObj.val();
		
		 $.ajax({
			type:'post',
			url:'/replies/',
			headers: { 
			      "Content-Type": "application/json",
			      "X-HTTP-Method-Override": "POST" },
			dataType:'text',
			data: JSON.stringify({writenum:writenum, replyer:replyer, replytext:replytext}),
			success:function(result){
				console.log("result: " + result);
				if(result == 'SUCCESS'){
					alert("등록 되었습니다.");
					replyPage = 1; // 댓글 등록 후 댓글 1 페이지부터 호출한다.
					getPage("/replies/"+writenum+"/"+replyPage );
					replyerObj.val("");  // 댓글 쓰기 입력 text box의 글들을 제거
					replytextObj.val("");
				}
		}});
	});

	// 댓글 리스트에서 수정 버튼(model 창이 토글된다)을 클릭하면 model창에
	// 댓글 내용과 댓글 번호를 보여지게 한다.
	$(".timeline").on("click", ".replyLi", function(event){
		var reply = $(this);
		$("#replytext").val(reply.find('.timeline-body').text());
		$(".modal-writetitle").html(reply.attr("data-rno"));
		
	});
	
	$("#replyModBtn").on("click",function(){
		  
		 var rno = $(".modal-writetitle").html();
		 var replytext = $("#replytext").val();
		 
		 $.ajax({
			type:'put',
			url:'/replies/'+rno,
			headers: { 
			      "Content-Type": "application/json",
			      "X-HTTP-Method-Override": "PUT" },
			data:JSON.stringify({replytext:replytext}), 
			dataType:'text', 
			success:function(result){
				console.log("result: " + result);
				if(result == 'SUCCESS'){
					alert("수정 되었습니다.");
					getPage("/replies/"+writenum+"/"+replyPage );
				}
		}});
	});

	$("#replyDelBtn").on("click",function(){
		  
	var rno = $(".modal-writetitle").html();
	var replytext = $("#replytext").val();
	 
	$.ajax({
		type:'delete',
		url:'/replies/'+rno,
		headers: { 
		      "Content-Type": "application/json",
		      "X-HTTP-Method-Override": "DELETE" },
		dataType:'text', 
		success:function(result){
			console.log("result: " + result);
			if(result == 'SUCCESS'){
				alert("삭제 되었습니다.");
				getPage("/replies/"+writenum+"/"+replyPage );
			}
	}});
});
	
</script>


<script>
$(document).ready(function(){
	
	var formObj = $("form[role='form']");
	
	console.log(formObj);
	
	$("#modifyBtn").on("click", function(){
		formObj.attr("action", "modifyPage");
		formObj.attr("method", "get");		
		formObj.submit();
	});
	
	$("#removeBtn").on("click", function(){
		var replyCnt =  $("#replycntSmall").html().replace(/[^0-9]/g,"");
		
		
		
		var arr = [];
		$(".uploadedList li").each(function(index){
			 arr.push($(this).attr("data-src"));
		});
		// upload된 file 삭제 처리
		if(arr.length > 0){
			$.post("/deleteAllFiles",{files:arr}, function(){
				
			});
		}
		// 등록된 게시글 삭제 처리
		formObj.attr("action", "removePage");
		formObj.submit();
	});
	
	$("#goListBtn ").on("click", function(){
		formObj.attr("method", "get");
		formObj.attr("action", "list");
		formObj.submit();
	});
	
	// 첨부파일 보여주는 부분
	var writenum = ${boardVO.writenum};
	var template = Handlebars.compile($("#templateAttach").html());
	
	$.getJSON("/sboard/getAttach/"+writenum,function(list){
		$(list).each(function(){
			var fileInfo = getFileInfo(this);
			var html = template(fileInfo);
			$(".uploadedList").append(html);
		});
	});

	$(".uploadedList").on("click", ".mailbox-attachment-info a", function(event){
		var fileLink = $(this).attr("href");
		
		if(checkImageType(fileLink)){
			event.preventDefault();
			
			var imgTag = $("#popup_img");
			
			imgTag.attr("src", fileLink);
			console.log(imgTag.attr("src"));
			
			$(".popup").show('slow');
			imgTag.addClass("show");		
		}	
	});
	
	$("#popup_img").on("click", function(){
		$(".popup").hide('slow');
	});	
	
});
</script>

<%@include file="../include/footer.jsp"%>
