<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>�α�����</title>
	<style type="text/css">
		.layout{margin:0px auto;width:1180px;padding:10px;font-size:18px}
		table, td{border:none;}
		input{width:500px;height:30px}
		table{margin:250px auto 0px auto}
		td{height:40px}
		.btn{text-align:center;font-size:18px;border-radius:10px;background-color:gray;
		border:1px solid black;width:100px;height:30px}
		.btnBox{width:350px;height:30px;margin:auto;background-color:white;text-align:center}
	</style>
</head>
<body>
	<!-- �޴��� -->
	<jsp:include page = "../menu.jsp"/>
	<hr>
	
	<div class = "layout">
		<!-- �α��� �� -->
		<form name="form" method="POST" action="<c:url value='/account/login' />">
			<table>
				<tr>
					<td>�α���</td>
				</tr>
				<tr>
					<td>
						<input type="text" style="width:230px" name="userId" placeholder = "���̵� �Է�" size = "40">
					</td>
				</tr>
				<tr>
					<td>
						<input type="password" style="width:230px" name="password" placeholder = "��й�ȣ �Է�">
					</td>
				</tr>
				<tr>
					<td>
						<input type = "submit" class = "btn" value = "�α���">
					</td>
				</tr>
			</table><br>
			<!-- <div class = "btnBox">
				<input type="submit" value="�α���" onClick="login()" class = "btn"> &nbsp;
			</div>-->
		</form>
	</div>
</body>
</html>