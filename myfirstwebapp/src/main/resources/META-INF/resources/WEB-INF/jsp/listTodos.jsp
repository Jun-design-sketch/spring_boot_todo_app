<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="webjars/bootstrap/5.3.2/css/bootstrap.min.css" rel="stylesheet">
<title>LIST TODO PAGE</title>
</head>
	<body>
		<div class="container">
			<div>Welcome ${name}</div>
			<hr>
			<h1>Your Todos</h1>
			<table class="table">
				<thead>
					<tr>
						<th>id</th>
						<th>Description</th>
						<th>Target Date</th>
						<th>Is Done?</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${todos}" var="todo">
						<tr>
							<td>${todo.id}</td>
							<td>${todo.description}</td>
							<td>${todo.targetDate}</td>
							<td>${todo.done}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<a href="add-todo" class="btn btn-success">Add Todo</a>
			<script src="webjars/bootstrap/5.3.2/js/bootstrap.min.js"></script>
			<script src="webjars/jquery/3.7.1/jquery.min.js"></script>
		</div>	
	</body>
</html>