<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>   

<%@include file="../include/header.jsp" %>

    <!-- Main content -->
    <section class="content">
      <div class="row">
      <!-- left column -->
      <div class="col-md-12">
        <!-- general form elements -->

					<div class="box">
            <div class="box-header with-border">
              <h3 class="box-title">회원관리</h3>
            </div>
          </div>
          <div class="box-body">
					
					<table class="table table-bordered">
						<tr>
							<th style="width: 10px">ID</th>
							<th>Password</th>
							<th>name</th>
							<th>mem_level</th>
							<th>joinday</th>
						</tr>
					
					
					<c:forEach items="${list}" var="userVO">
						<tr>
							<td><a href='../user/readPage?id=${userVO.id }'>${userVO.id }</a></td>
							<td>${userVO.password }
							<!--  
							<a href='/board/read?bno=${boardVO.bno}'>${boardVO.title}</a> 
							<a href='readPage${pageMaker.makeSearch(pageMaker.cri.page) }&bno=${boardVO.bno}'>
							-->
							
							</a>
							</td>
							<td>${userVO.email } </td>
							<td>${userVO.memberlevel }</td>
							<td>${userVO.joinday }</td>
						</tr>
					
					</c:forEach>
					</table>

				</div>
				<!-- /.box-body -->
				<div class="box-footer">
				
					
				
				</div>
      </div><!--/.col (left) -->
      </div>   <!-- /.row -->
    </section><!-- /.content -->

    
<%@include file="../include/footer.jsp" %>