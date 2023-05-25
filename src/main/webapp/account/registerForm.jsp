<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>ȸ��������</title>
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
		<h3>ȸ������</h3>
		<form:form modelAttribute = "account">
		<table>
			<tr>
				<td>�̸�</td>
				<td><form:input path = "name"/></td>
			</tr>
			<tr>
				<td>���̵�</td>
				<td>
					<form:input path = "userId"/>
					<form:errors path = "userId"/>
				</td>
			</tr>
			<tr>
				<td>��й�ȣ</td>
				<td>
					<form:input path = "password" showPassword = "false"/>
					<form:errors path = "password"/>
				</td>
			</tr>
			<tr>
				<td>�ּ�</td>
				<td>
					<form:input path = "address"/>
					<form:errors path = "address"/>
				</td>
			</tr>
			<tr>
				<td>��ȭ��ȣ</td>
				<td>
					<form:input path = "phone"/>
					<form:errors path = "phone"/>
				</td>
			</tr>
			<tr>
				<td>�̸���</td>
				<td>
					<form:input path = "email"/>
					<form:errors path = "email"/>
				</td>
			</tr>
		</table>
		<br>
		<div class="btnBox">
        	<input type="submit" value="�����ϱ�"class="btn">
        </div>
		</form:form>
	</div>
</body>
</html>