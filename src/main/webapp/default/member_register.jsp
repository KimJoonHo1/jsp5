<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="<%=request.getContextPath() %>"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:import url="header.jsp"/>
	<div class="wrap">
		<form action="${contextPath }/default/register.jsp" method="post">
			<input type="text" name="id" placeholder="input id"><br/>
			<input type="password" name="pwd" placeholder="input password"><br/>
			<input type="text" name="name" placeholder="input name"/><br/>
			<input type="text" name="addr" placeholder="input address"><br/>
			<input type="submit" value="register">
		</form>
	</div>
	<c:import url="footer.jsp"/>

</body>
</html>