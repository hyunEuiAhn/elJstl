<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <form name = "writeForm" method="post" action="jstlWrite.jsp">
 <h3>회원가입</h3>
 <table border="1" cellpadding="5" cellspacing = "0">
  <tr>
   <td align ="center" width="80">* 이름</td>
   <td><input type = "text" size ="7" name = "name" placeholder="이름입력">
   </td>
  </tr>
  
  <tr>
   <td align ="center">* 아이디</td>
   <td><input type ="text" size ="10" name ="id">   
   </td>
  </tr>
  
  <tr>
   <td align ="center">* 비밀번호</td>
   <td><input type ="password" size ="13" name ="pwd">
   </td>
  </tr>
  

  <tr>
   <td colspan ="2" align="center">
    <input type="submit" value = "저장" >
    <input type="button" value = "목록" onclick="location.href='jstlList.jsp'xx">
   </td>
  </tr>

 </table>
 </form>
</body>
</html>