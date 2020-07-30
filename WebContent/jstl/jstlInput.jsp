<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<body>
 <form method="post
 " action="jstlResult.jsp">
 <table border ="1" cellpadding="10" cellspacing="0">
  <tr>
   <td align="center" width="70" >이름</td>
   <td><input type = "text" size="15" name="name"></td>
  </tr>
  
  <tr>
   <td align="center">나이</td>
   <td><input type = "text" size="15" name="age"></td>
  </tr>
  
  <tr>
   <td width="60" align="center">색깔</td>
   <td><select name="color" style="width:70px"> 
   <!--style=CSS 태그안에 직접 넣어주는 거 inline(우선순위가 제일 높음)-->
        <option value="red" selected = "selected">빨강</option>
        <option value="green">초록</option>
        <option value="blue">파랑</option>
        <option value="magenta">보라</option>
        <option value="cyan">하늘</option>
        </select>
   </td>
  </tr>
  
  <tr>
   <td width="60" align="center">취미</td>
   <td><input type = "checkbox" name ="hobby" value = "독서" checked>독서
   		<input type = "checkbox" name ="hobby" value = "음악">음악
   		<input type = "checkbox" name ="hobby" value = "게임">게임
   		<input type = "checkbox" name ="hobby" value = "영화">영화
   		<input type = "checkbox" name ="hobby" value = "쇼핑">쇼핑
   </td>
  </tr>
  
  
  <tr>
   <td colspan = "2" align="center">
   		<input type ="submit" value="send">
   		<input type ="reset" value="cancel">
   </td>
  </tr>
  
 </table>
 </form>
</body>


</body>
</html>