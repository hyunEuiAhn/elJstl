<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix ="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>등록 결과</title>
</head>
<body>
<fmt:requestEncoding value="UTF-8"/>
<sql:update var="su" dataSource="jdbc/oracle">insert into usertable values('${param.name }','${param.id }','${param.pwd }')</sql:update>
<!--update와 insert까지 같이 수행  -->
<c:if test="${su==0 }">등록실패</c:if>
<c:if test="${su==1 }">등록성공</c:if>

</body>
</html>