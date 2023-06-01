<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>�������� ������</title>
	<style type = "text/css">
		body{margin:0}
		.layout{margin:0px auto;width:1180px;padding:10px}
		.sell{background-color:white;width:100px;height:40px;font-size:24px;text-align:center;
			padding:10px;float:left;}
		.category{background-color:white;height:60px;margin-left:250px}
		.category a{background-color:white;float:left;height:40px;font-size:18px;text-align:center;
			margin:10px 15px;text-decoration-color : gray;}
		.categories{background-color:white;margin-top:80px;font-size:15px;text-align:left;
		width:100px;padding:10px;float:left}
		.categories input{margin-bottom:15px}
		.list{background-color:white;height:60px;margin-left:250px;margin-top:80px;height:600px}
		a{display:block}
	 	a:link{text-decoration:none;color:black}
		a:visited{text-decoration:none;color:black}
		a:active{text-decoration:none;color:black}
		a:hover{text-decoration:none;color:black}
	</style>
</head>
<body>
	<!-- �޴��� -->
	<jsp:include page = "../menu.jsp"/>
	<hr>
	
	<div class = "layout">
		<div>
			<!-- ���� ��� ��� -->
			<div class = "sell">
				<a href="<c:url value='/auction/registerForm' />">����ϱ�</a>
			</div>
			<!-- ī�װ� -->
			<div class = "category">
				<a href="<c:url value='/auction/list?categoryId=��ü' />">��ü</a>
				<a href="<c:url value='/auction/list?categoryId=�Ź�' />">�Ź�</a>
				<a href="<c:url value='/auction/list?categoryId=�ƿ���' />">�ƿ���</a>
				<a href="<c:url value='/auction/list?categoryId=����' />">����</a>
				<a href="<c:url value='/auction/list?categoryId=����' />">����</a>
				<a href="<c:url value='/auction/list?categoryId=����' />">����</a>
				<a href="<c:url value='/auction/list?categoryId=����' />">����</a>
				<a href="<c:url value='/auction/list?categoryId=�ð�' />">�ð�</a>
				<a href="<c:url value='/auction/list?categoryId=�м���ȭ' />">�м���ȭ</a>
			</div>
		</div>
		<!-- �ߺ����ð��� -->
		<div class = "categories">
			<script>
				document.frm.submit();
			</script>
			<form class = "cFrom" method = "POST" action="<c:url value='/auction/list' />">
				<label>ī�װ�</label><br><br>
				<input type = "checkbox" name = "categoryId" value = "��ü">��ü<br>
				<input type = "checkbox" name = "categoryId" value = "�Ź�">�Ź�<br>
				<input type = "checkbox" name = "categoryId" value = "�ƿ���">�ƿ���<br>
				<input type = "checkbox" name = "categoryId" value = "����">����<br>
				<input type = "checkbox" name = "categoryId" value = "����">����<br>
				<input type = "checkbox" name = "categoryId" value = "����">����<br>
				<input type = "checkbox" name = "categoryId" value = "����">����<br>
				<input type = "checkbox" name = "categoryId" value = "�ð�">�ð�<br>
				<input type = "checkbox" name = "categoryId" value = "�м���ȭ">�м���ȭ<br>
			</form>
		</div>
		<!-- �ش� ��ǰ ����Ʈ -->
		<div class = "list">
			<jsp:include page = "../groupbuy/list.jsp"/>
		</div>
	</div>
</body>
</html>