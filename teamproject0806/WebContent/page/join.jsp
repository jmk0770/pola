<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 폼</title>
<style>

.joinForm{width:400px; height:600px; border:solid 1px grey; font-size:12px;}
#title{width:auto; height:8%; line-height:50px; border-bottom:solid 1px grey}
#inputForm{margin-left:10%; margin-top:30px;color:grey}
input{width:270px; height:40px; margin-bottom:15px;}
#faceJoin{width:auto;height:auto; border-top:solid 1px grey;}
#joinButton{margin-left:25%; width:100px;heiht:40px;}
#faceButton{margin-left:11%; margin-top:10px}
#default{margin-left:25%; margin-top:25px}
#findPasswd{float:left; border-right:solid 1px grey}
</style>

<script>
function fncAddUser() {
document.detailForm.action='../app/user/addUser.do';
document.detailForm.submit();
}
</script>

</head>
<body>

<form name="detailForm"  method="post" >
	<div class="joinForm"> 
		<div id="title">
		<b>&nbsp 회원가입</b>
		</div>
			<div id="inputForm">
			  <label for="email">이메일</label><br>
				<input type="text" name="email"><br>
				<label for="nickname">닉네임</label><br>
				<input type="text" name="nickname"><br>
				<label for="password">비밀번호</label><br>
				<input type="password" name="password"><br>
		    <label for="passwdConfirm">비밀번호 확인</label><br>
	      		<input type="password" name="passwdConfirm"><br><br>
	      		<a href="javascript:fncAddUser();">가입</a>
				<!-- <input src= id=joinButton type="submit" value="가입하기">  -->
			</div>
			<div id="faceJoin">
        <input id=faceButton type="button" value="페이스북으로 가입하기">    
      </div>
      <div id="default">
	      <div id="findPasswd">
	       비밀번호 찾기&nbsp
	      </div>
	      <div id="login">
	       &nbsp로그인
	      </div>
      </div>
	</div>
</form>

</body>
</html>