<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Posts</title>
</head>
<body>
	<div style="width: 1200px; margin-left: auto; margin-right: auto;">
		<table cellpadding="10">
			<tr>
			<th>Id</th>
			<th>Title</th>
			<th>Description</th>
			<th>Detail</th>
			<th>Category</th>
			<th>Date</th>
			<th>Image</th>
			<th></th>
			</tr>	
			<c:forEach items="${AllPost}" var="p">
				<tr>
				<td>${p.id}</td>
				<td>${p.title}</td>
				<td>${p.description}</td>
				<td>${p.detail}</td>
				<td>${p.category}</td>
				<td>${p.date}</td>
				<td>${p.image}</td>
				<td>
					<a href="edit?id=${p.id}">Edit</a>
					<a href="delete?id=${p.id}">Delete</a>
				</td>
				 
				</tr>
			</c:forEach>
			
		</table>
	</div>
</body>
</html>