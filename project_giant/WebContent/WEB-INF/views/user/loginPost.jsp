<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--  
<c:if test="${not empty login }">
  <script type="text/javascript">
	  self.location = "/";
	  
  </script>
  </c:if> -->
  <c:if test="${empty login }">
  <script>
  	location.href="../user/member";
  	alert("정보가 일치하지 않습니다.");
  </script>
  </c:if>
  <c:if test="${login.memberlevel == 100 }">
  	<script>
  		location.href="../ADMIN/home"
  	</script>
  </c:if>
</body>
</html>

