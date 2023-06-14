<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�������� ��ǰ �����</title>
	<style type = "text/css">
		body{margin:0}
		.layout{margin:0px auto;width:1180px;padding:10px;font-size:18px}
		table, td{border:none;border-collapse:collapse;}
		.inp{width:500px;height:35px}
		.inpText{width:500px;height:80px}
		table{margin:50px auto 0px auto}
		td{height:40px}
		input{border:none;}
	</style>
</head>
<body>
<!-- �޴��� -->
	<jsp:include page = "../menu.jsp"/>
	<hr>
	
	<div class = "layout">
		<form:form modelAttribute = "groupbuyForm" method="POST" action="<c:url value='/groupbuy/registerForm' />">
		<table>
			<tr>
				<td style="text-align:center;font-size:24px">�������� ��ǰ ���</td>
			</tr>
			<tr>
				<td>
					<br><br>
					<form:input path = "groupbuy.name" placeholder = "��ǰ��" class = "inp"/>
					<hr>
				</td>
			</tr>
			<tr>
				<td>
					<form:input path = "groupbuy.size" placeholder = "������" class = "inp"/>
					<hr>
				</td>
			</tr>
			<tr>
				<td>
					<form:input path = "groupbuy.color" placeholder = "����" class = "inp"/>
					<hr>
				</td>
			</tr>
			<tr>
				<td><!-- ���ڲ� 0�� �⺻������ ������ �𸣰��� -->
					<form:input path = "groupbuy.price" placeholder = "����"  class = "inp"/>
					<hr>
				</td>
			</tr>
			<tr>
				<td>
					<!-- ���ڲ� 0�� �⺻������ ������ �𸣰��� -->
					<form:input path = "groupbuy.peopleNum" placeholder = "�������� ������ ��" class = "inp"/>
					<hr>
				</td>
			</tr>
			<tr>
				<td><!-- �̻ڰ� ���� -->
					��ǰ�� ī�װ��� ������.
					<form:select path = "groupbuy.categoryId" items = "${categories}"/>
					<hr>
				</td>
			</tr>
			<tr>
				<td>
					<form:textarea path = "groupbuy.description" class = "inpText"
						 placeholder = "�ø� ��ǰ�� ���� ������ �ۼ����ּ���."/>
					<hr>
				</td>
			</tr>
			<tr>
				<td><!-- form:form�±׿� file url���ε� ��� ����. requestParam���� ���������� -->
					�ּ� 1�� �ִ� 4���� ������ ���ε����ּ���
					<input type = "file" name = "picture1" id = "picture1" multiple>
					<hr>
				</td>
			</tr>
			<tr>
				<td>
					<input type="submit" value="����ϱ�">
				</td>
			</tr>
		</table>
		</form:form>
	</div>
</body>
</html>