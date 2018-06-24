<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8">
	<title>http://www.blueb.co.kr</title>
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600' rel='stylesheet' type='text/css'>
	<link href="http://netdna.bootstrapcdn.com/font-awesome/3.1.1/css/font-awesome.css" rel="stylesheet">
</head>
<style>
body, div, dl, dt, dd, ul, ol, li, h1, h2, h3, h4, h5, h6, 
pre, form, fieldset, input, textarea, p, blockquote, th, td { 
  padding:0;
  margin:0;}

fieldset, img {border:0}

ol, ul, li {list-style:none}

:focus {outline:none}

body,
input,
textarea,
select {
  font-family: 'Open Sans', sans-serif;
  font-size: 16px;
  color: #4c4c4c;
}

p {
  font-size: 12px;
  width: 150px;
  display: inline-block;
  margin-left: 18px;
}
h1 {
  font-size: 32px;
  font-weight: 300;
  color: #4c4c4c;
  text-align: center;
  padding-top: 10px;
  margin-bottom: 10px;
}

html{
  background-color: #ffffff;
}

.testbox {
  margin: 20px auto;
  width: 400px; 
  height: 464px; 
  -webkit-border-radius: 8px/7px; 
  -moz-border-radius: 8px/7px; 
  border-radius: 8px/7px; 
  background-color: #ebebeb; 
  -webkit-box-shadow: 1px 2px 5px rgba(0,0,0,.31); 
  -moz-box-shadow: 1px 2px 5px rgba(0,0,0,.31); 
  box-shadow: 1px 2px 5px rgba(0,0,0,.31); 
  border: solid 1px #cbc9c9;
}

input[type=radio] {
  visibility: hidden;
}

form{
  margin: 0 30px;
}

label.radio {
	cursor: pointer;
  text-indent: 35px;
  overflow: visible;
  display: inline-block;
  position: relative;
  margin-bottom: 15px;
}

label.radio:before {
  background: #3a57af;
  content:'';
  position: absolute;
  top:2px;
  left: 0;
  width: 20px;
  height: 20px;
  border-radius: 100%;
}

label.radio:after {
	opacity: 0;
	content: '';
	position: absolute;
	width: 0.5em;
	height: 0.25em;
	background: transparent;
	top: 7.5px;
	left: 4.5px;
	border: 3px solid #ffffff;
	border-top: none;
	border-right: none;

	-webkit-transform: rotate(-45deg);
	-moz-transform: rotate(-45deg);
	-o-transform: rotate(-45deg);
	-ms-transform: rotate(-45deg);
	transform: rotate(-45deg);
}

input[type=radio]:checked + label:after {
	opacity: 1;
}

hr{
  color: #a9a9a9;
  opacity: 0.3;
}

input[type=text],input[type=password]{
  width: 200px; 
  height: 39px; 
  -webkit-border-radius: 0px 4px 4px 0px/5px 5px 4px 4px; 
  -moz-border-radius: 0px 4px 4px 0px/0px 0px 4px 4px; 
  border-radius: 0px 4px 4px 0px/5px 5px 4px 4px; 
  background-color: #fff; 
  -webkit-box-shadow: 1px 2px 5px rgba(0,0,0,.09); 
  -moz-box-shadow: 1px 2px 5px rgba(0,0,0,.09); 
  box-shadow: 1px 2px 5px rgba(0,0,0,.09); 
  border: solid 1px #cbc9c9;
  margin-left: -5px;
  margin-top: 13px; 
  padding-left: 10px;
}

input[type=password]:last-child{
  margin-bottom: 25px;
}

#icon {
  display: inline-block;
  width: 30px;
  background-color: #3a57af;
  padding: 8px 0px 8px 15px;
  margin-left: 15px;
  -webkit-border-radius: 4px 0px 0px 4px; 
  -moz-border-radius: 4px 0px 0px 4px; 
  border-radius: 4px 0px 0px 4px;
  color: white;
  -webkit-box-shadow: 1px 2px 5px rgba(0,0,0,.09);
  -moz-box-shadow: 1px 2px 5px rgba(0,0,0,.09); 
  box-shadow: 1px 2px 5px rgba(0,0,0,.09); 
  border: solid 0px #cbc9c9;
}

.gender {
  margin-left: 30px;
  margin-bottom: 30px;
}

.accounttype{
  margin-left: 8px;
  margin-top: 20px;
}

.button {
  font-size: 12px;
  font-weight: 600;
  color: white;
  padding: 6px 25px 0px 20px;
  margin: 10px 8px 20px 0px;
  display: inline-block;
  float: right;
  text-decoration: none;
  width: 100px; height: 27px; 
  -webkit-border-radius: 5px; 
  -moz-border-radius: 5px; 
  border:none;
  background-color: #3a57af; 
  -webkit-box-shadow: 0 3px rgba(58,87,175,.75); 
  -moz-box-shadow: 0 3px rgba(58,87,175,.75); 
  box-shadow: 0 3px rgba(58,87,175,.75);
  transition: all 0.1s linear 0s; 
  top: 0px;
  position: relative;
}

.button:hover {
  top: 3px;
  background-color:#2e458b;
  -webkit-box-shadow: none; 
  -moz-box-shadow: none; 
  box-shadow: none;
  
}


</style>

<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.0.10/handlebars.min.js"></script>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>


<script>
var result = '${msg}';

if (result == 'false') {
	alert("회원가입 실패.");
}
var check_cnt = 0;


function checkValue(){
	
var form = document.insert_form;
var check = 1;
	if(!form.id.value){
		alert("아이디를 입력하세요");
		check = 0;
		form.id.focus();
		return false;
	}	
	else if(!form.email.value){
		alert("이메일을 입력하세요!");
		check = 0;
		form.email.focus();
		return false;
	}
	else if(!form.password.value){
		alert("비밀번호를 입력하세요!");
		check = 0;
		form.password.focus();
		return false;
	}
	else if(!form.repassword.value){
		alert("비밀번호를 입력하세요!");
		check = 0;
		form.repassword.focus();
		return false;
	}
	else if(form.password.value!=form.repassword.value){
		alert("비밀번호가 다릅니다.");
		check = 0;
		form.repassword.focus();
		return false;
	}
	
	else if(check_cnt == 0){
		alert("중복 체크를 해 주세요");
		check = 0;
		return false;
	}
	else {
		return true;
	}
}

function checkId(){
	check_cnt++;
	var id = document.insert_form.id.value;
	if(id=="") {
		alert("입력된 값이 없습니다.");
	}
	else {
		window.open("/user/member_insert_check?id="+id,"","width=400 height=150");
	}
	
	
}
</script>

</head>
<body>

<body>


<div class="testbox">
  <h1>Registration</h1>

  <form name="insert_form" method="post" action="memberJoinPost" onsubmit="return checkValue()">
  <hr>
    <label id="icon"><i class="icon-user"></i></label>
  <input type="text" name="id" id="name" />
  <input type="button" onclick="checkId()" value="check">
  <label id="icon" ><i class="icon-envelope "></i></label>
  <input type="text" name="email" id="name" /><br>
  <label id="icon" ><i class="icon-shield"></i></label>
  <input type="password" name="password" id="name" /><br>
  <label id="icon" ><i class="icon-shield"></i></label>
   <input type="password" name="repassword" id="name" /><br>
   <br>
   <p>By clicking Register, you agree on our <a href="#">terms and condition</a>.</p>
   <!--  
   <button class="button" onclick="checkValue()">Register</button>
   -->
   <input type="submit" class="button" value="Register"/>
  </form>
</div>

</body>
</html>

                    
</body>
</html>
