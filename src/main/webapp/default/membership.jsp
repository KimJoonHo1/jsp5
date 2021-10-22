<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:import url="header.jsp"/>
	<jsp:useBean id="dao" class="com.care.root.member.dao.MemberDAO"/>
	
	<c:set var="contextPath" value="<%=request.getContextPath() %>"/>
	<c:set var="list" value="${dao.getMemberList() }"/>
	<div class="wrap">
		<table border="1">
			<tr>
				<th>아이디</th>
				<th>비밀번호</th>
				<th>이름</th>
				<th>주소</th>
			</tr>
			<c:forEach var="member" items="${list }">
				<tr>
					<td>${member.getId() }</td>
					<td>${member.getPwd() }</td>
					<td>${member.getName() }</td>
					<td>${member.getAddr() }</td>
				</tr>
			</c:forEach>
			<tr>
				<td colspan="4">
					<button type="button" onclick="location.href='${contextPath}/default/member_register.jsp'">등록</button>
				</td>
			</tr>
		</table>
	</div>
	
	<c:import url="footer.jsp"></c:import>
</body>
</html>