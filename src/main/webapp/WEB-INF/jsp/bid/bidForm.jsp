<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>���� ������</title>
	<style type = "text/css">
		body{margin:0}
		.layout{margin:0px auto;width:1180px;padding:10px}
	</style>
</head>
<body>
	<!-- �޴��� -->
	<jsp:include page = "../menu.jsp"/>
	<hr>
	
	<div class = "layout">
		<h3>�����ϱ�</h3>
		<div>
			<div class = "prodInfo">
				<!--  �̹��� �����Ǹ� ���<img src="<c:url value='${product.picture1}'/>">-->
				<b>${product.name}</b><br>
				${product.color}<br>
				${product.size}<br><br>
			</div>
			<hr>
			<div>
			���� �����
			<form method="POST" action="<c:url value='/groupbuy/registerForm' />">
				<input type = "text" placeholder = "������Է�" name = "bidPrice">
				<input type = "submit" value = "�����ϱ�">
			</form>
			</div>
		</div>
	</div>
</body>
</html>