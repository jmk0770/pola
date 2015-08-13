<%@ page contentType="text/html; charset=euc-kr" %>

<html>
<head>
<title>로그인 화면</title>


</head>

<body>

<form name="loginForm"  method="post" action="/app/user/login">
이메일
<input type="text" name="email">
암호
<input type="password" name="password">
<button>전송</button>
</form>

</body>
</html>