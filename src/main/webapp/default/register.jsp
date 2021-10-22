<%@page import="com.care.root.member.dao.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="contextPath" value="<%=request.getContextPath() %>"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<fmt:requestEncoding value="UTF-8"/>
	<c:import url="header.jsp"/>
	<div class="wrap">
		<jsp:useBean id="dto" class="com.care.root.member.dto.MemberDTO"/>
		<jsp:setProperty property="*" name="dto"/>
		<jsp:useBean id="dao" class="com.care.root.member.dao.MemberDAO"/>
		<c:set var="result" value="${dao.register(dto) }"/>
		
		<c:choose>
			<c:when test="${result == 1 }">
				<script>
					alert("회원가입을 축하합니다");
					location.href="${contextPath}/default/membership.jsp";
				</script>
			</c:when>
			<c:otherwise>
				<script>
					alert("문제발생");
					location.href="${contextPath}/default/member_register.jsp";
				</script>
			</c:otherwise>
		</c:choose>
		
		<%-- 
		<%
			MemberDAO dao = new MemberDAO();
			int result = dao.register(dto);
			System.out.println(result);
			if(result == 1) {
				out.print("<script>alert('회원가입을 축하합니다');location.href='membership.jsp';</script>");
			} else {
				out.print("<script>alert('문제발생. 가입못함');location.href='member_register.jsp';</script>");
			}
		%>--%>
	</div>
	<c:import url="footer.jsp"/>
</body>
</html>