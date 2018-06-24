<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <title>Document</title>
</head>
<body>
   
 	<script type="text/javascript">
 	var cnt = 0;
    	if(${result}==1){
    		alert("사용불가 아이디 입니다.");
    		cnt = 0;
    		window.close();
    	} else if(${result} == 0){
    	
    		alert("사용가능 아이디 입니다.");
    		cnt++;
    		console.log(cnt);
    		window.close();
    	}
    	
    	
   
 	</script>

</body>
</html>