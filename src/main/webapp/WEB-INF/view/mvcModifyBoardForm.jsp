<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ page import = "service.*" %>
<%@ page import = "vo.*" %>
<%
    Board board = (Board)request.getAttribute("board");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>addBoardForm.jsp</title>
</head>
<body>
	<h1>Add Board</h1>
	<form action="<%=request.getContextPath()%>/ModifyBoardActionController">
		<table border="1">
			<tr>
				<th>no</th>
				<th>title</th>
				<th>content</th>
			</tr>
			<tr>
				<td>
					<input type="text" name="title" value="<%=board.getTitle()%>">
				</td>
				<td>
					<textarea rows="5" cols="50" name="content"><%=board.getContent()%></textarea>
				</td>
			</tr>
		</table>
		<button type="submit">수정</button>
	</form>
</body>
</html>