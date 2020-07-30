<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>**변수설정**</h3>
<c:set var="name" value="홍길동"/>
<c:set var="age">25</c:set>

나의 이름은 <c:out value="${name }"/>입니다.<br>
내 나이는 ${age }살 입니다.<br>

<h3>**변수삭제**</h3>
<c:remove var="name"/>

나의 이름은 <c:out value="${name }"/>입니다.<br>
내 나이는 ${age }살 입니다.<br>

<h3>**forEach**</h3>
<c:forEach var="i" begin="1" end="10" step="1">
	${i }&nbsp;
	<c:set var="sum" value="${sum+i }"/>

</c:forEach>
<br>
1~10까지 합 ${sum }

<br><br>

<c:forEach var="j" begin="1" end="10" step="1">
${11-j }
</c:forEach>

<h3>**문자열 분리**</h3>
<c:forTokens var="car" items="소나타, 아우디, 링컨, 페라리, 벤츠" delims=",">
	${car }
</c:forTokens>
<h3>**jstlExam.jsp에서 넘어온 값 출력**</h3>
결과 = ${requestScope.list }

<h3>**인덱스 2 번 째 데이터 출력**</h3>
결과= ${list[2] }
결과 = ${requestScope.list2 } <!-- requestScope 빼도 상관 없다 -->

<h3>**list2의 모든 데이터 출력**</h3>

<c:forEach var="personDTO" items="${requestScope.list2}" varStatus="i"><!-- 확장형 for -->
<!-- type 형이 없다 -->
index = ${i.index }&emsp;
이름 : ${personDTO.getName() }&emsp;
나이 : ${personDTO.getAge() }
<br>
</c:forEach>

<br>
<c:forEach var="personDTO" items="${requestScope.list2}" varStatus="i"><!-- 확장형 for -->
<!-- method의 이름을 변수명처럼 사용 -->
count = ${i.count }&emsp;
이름 : ${personDTO.name }&emsp;
나이 : ${personDTO.age }
<br>
</c:forEach>
</body>
</html>


<!--
문자열 분리
1. String split()
2. StringTokenuzer
-->
