<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix ="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>목록</title>
</head>
<body>
<sql:query var="rs" dataSource="jdbc/oracle">select * from usertable</sql:query>
<table border="1">
	<tr>
		<!--필드명  -->
		<c:forEach var="colName" items="${rs.columnNames}">
		<td width="100" align="center">${colName}</td>
		</c:forEach>
		<th width="100">비고</th>
	</tr>
	
		<!--행  -->
	<c:forEach var="row" items="${rs.rowsByIndex }">
		<tr>
			<c:forEach var="column" items="${row }">
				<td align="center">${column } </td>
			</c:forEach>
			<td align="center">
				<input type="button" value="수정" onclick="location.href='jstlModifyForm.jsp?id=${row[1]}'">
				<input type="button" value="삭제" onclick="location.href='jstlDelete.jsp?id=${row[1]}'">
			</td>
		</tr>
	</c:forEach>
</table>

</body>
</html>