<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix ="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<fmt:requestEncoding value="UTF-8"/>
<sql:query var="rs" dataSource="jdbc/oracle">select * from usertable where id='${param.id }'</sql:query>
 <form name = "writeForm" method="post" action="jstlModify.jsp">
 <h3>수정</h3>
 <table border="1" cellpadding="5" cellspacing = "0">
<%--   <c:forEach var="row" items="${rs.rowsByIndex }">--%>
 <c:forEach var="row" items="${rs.rows }">
  <tr>
   <td align ="center" width="80">* 이름</td>
   <td>
<%-- <input type = "text" size ="7" name = "name" value="${row[0] }">--%>
 	  <input type = "text" size ="7" name = "name" value="${row.name }">
  </td>
  </tr>
  
  <tr>
   <td align ="center">* 아이디</td>
   <td><input type ="text" size ="10" name ="id" value="${param.id }" readonly="readonly">   
   </td>
  </tr>
  
  <tr>
   <td align ="center">* 비밀번호</td>
   <td><input type ="password" size ="13" name ="pwd" value="${row.pwd}">
   </td>
  </tr>
</c:forEach>
  

  <tr>
   <td colspan ="2" align="center">
    <input type="submit" value = "수정">
    <input type="button" value = "목록" onclick="location.href='jstlList.jsp'">
   </td>
  </tr>

 </table>
 </form>
</body>
</html>