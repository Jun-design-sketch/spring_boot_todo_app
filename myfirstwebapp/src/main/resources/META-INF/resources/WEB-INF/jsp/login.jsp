<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LOGIN</title>
</head>
<body>
HERE IS A LOGIN PAGE
	<pre>${errorMessage}</pre>
	<form method="post">
		NAME: <input type="text" name="name">
		PASSWORD: <input type="password" name="password">
		<input type="submit">
	</form>
</body>
</html>