<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>��� �����</title>
	<style type = "text/css">
		body{margin:0}
		.layout{margin:0px auto;width:1180px;padding:10px}
		table, td{border:2px solid black;border-collapse:collapse;}
	</style>
</head>
<body>
	<!-- �޴��� -->
	<jsp:include page = "../menu.jsp"/>
	<hr>
	
	<div class = "layout">
		<form:form modelAttribute = "auction">
		<table>
			<tr>
				<td>
					<form:input path = "name" placeholder = "��ǰ��"/>
				</td>
			</tr>
			<tr>
				<td>
					<form:input path = "startPrice" placeholder = "�ּҰ���"/>
				</td>
			</tr>
			<tr>
				<td>
					<form:input path = "startPrice" placeholder = "�ּҰ���"/>
				</td>
			</tr>
			<tr>
				<td>
					<form:input path = "size" placeholder = "������"/>
				</td>
			</tr>
			<tr>
				<td>
					<form:input path = "color" placeholder = "����"/>
				</td>
			</tr>
			<tr>
				<td>
					
				</td>
			</tr>
		</table>
		</form:form>
	</div>
</body>
</html>