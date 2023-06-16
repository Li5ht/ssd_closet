<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>ȸ��������</title>
	<style type = "text/css">
		body{margin:0}
		.layout{margin:0px auto;width:1180px;padding:10px}
		table, td{border:1px solid black;border-collapse:collapse;}
		table{margin:50px auto 0px auto}
		td{height:40px;}
		td{height:40px}
		input{border:none;}
	</style>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
	    //�� ���������� ���θ� �ּ� ǥ�� ��Ŀ� ���� ���ɿ� ����, �������� �����͸� �����Ͽ� �ùٸ� �ּҸ� �����ϴ� ����� �����մϴ�.
	    function sample4_execDaumPostcode() {
	        new daum.Postcode({
	            oncomplete: function(data) {
	                // �˾����� �˻���� �׸��� Ŭ�������� ������ �ڵ带 �ۼ��ϴ� �κ�.
	
	                // ���θ� �ּ��� ���� ��Ģ�� ���� �ּҸ� ǥ���Ѵ�.
	                // �������� ������ ���� ���� ��쿣 ����('')���� �����Ƿ�, �̸� �����Ͽ� �б� �Ѵ�.
	                var roadAddr = data.roadAddress; // ���θ� �ּ� ����
	                var extraRoadAddr = ''; // ���� �׸� ����
	
	                // ���������� ���� ��� �߰��Ѵ�. (�������� ����)
	                // �������� ��� ������ ���ڰ� "��/��/��"�� ������.
	                if(data.bname !== '' && /[��|��|��]$/g.test(data.bname)){
	                    extraRoadAddr += data.bname;
	                }
	                // �ǹ����� �ְ�, ���������� ��� �߰��Ѵ�.
	                if(data.buildingName !== '' && data.apartment === 'Y'){
	                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                }
	                // ǥ���� �����׸��� ���� ���, ��ȣ���� �߰��� ���� ���ڿ��� �����.
	                if(extraRoadAddr !== ''){
	                    extraRoadAddr = ' (' + extraRoadAddr + ')';
	                }
	
	                // �����ȣ�� �ּ� ������ �ش� �ʵ忡 �ִ´�.
	                document.getElementById('sample4_postcode').value = data.zonecode;
	                document.getElementById("sample4_roadAddress").value = roadAddr;
	                document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
	                
	                // �����׸� ���ڿ��� ���� ��� �ش� �ʵ忡 �ִ´�.
	                if(roadAddr !== ''){
	                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
	                } else {
	                    document.getElementById("sample4_extraAddress").value = '';
	                }
	
	                var guideTextBox = document.getElementById("guide");
	                // ����ڰ� '���� ����'�� Ŭ���� ���, ���� �ּҶ�� ǥ�ø� ���ش�.
	                if(data.autoRoadAddress) {
	                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
	                    guideTextBox.innerHTML = '(���� ���θ� �ּ� : ' + expRoadAddr + ')';
	                    guideTextBox.style.display = 'block';
	
	                } else if(data.autoJibunAddress) {
	                    var expJibunAddr = data.autoJibunAddress;
	                    guideTextBox.innerHTML = '(���� ���� �ּ� : ' + expJibunAddr + ')';
	                    guideTextBox.style.display = 'block';
	                } else {
	                    guideTextBox.innerHTML = '';
	                    guideTextBox.style.display = 'none';
	                }
	            }
	        }).open();
	    }
	</script>
</head>
<body>
	<!-- �޴��� -->
	<jsp:include page = "../menu.jsp"/>
	<hr>
	
	<div class = "layout">
		<form:form modelAttribute = "accountForm" action = "POST" >
		<table>
			<tr>
				<td style="text-align:center;font-size:24px" colspan = "2">ȸ������<br><br></td>
			</tr>
			<tr>
				<td>�̸�</td>
				<td><form:input path = "account.name"/></td>
			</tr>
			<tr>
				<td>���̵�</td>
				<td>
					<form:input path = "account.userId"/>
				</td>
			</tr>
			<tr>
				<td>��й�ȣ</td>
				<td>
					<form:input path = "account.password" showPassword = "false"/>
				</td>
			</tr>
			<tr>
				<td>�ּ�</td>
				<td>
					<input type="text" id="sample4_postcode" placeholder="�����ȣ">
					<input type = "button" onclick = "sample4_execDaumPostcode()"
						value = "�����ȣ ã��"/><br>
					<input type = "text" id = "sample4_roadAddress" placeholder = "���θ��ּ�" name = "address1"/>
					<input type = "text" id = "sample4_jibunAddress" placeholder = "�����ּ�"/><br>
					<span id = "guide" style = "color:#999;display:none"></span>
					<input type = "text" id = "sample4_detailAddress" placeholder = "���ּ�" name = "address2"/>
					<input type = "text" id = "sample4_extraAddress" placeholder = "�����׸�"/>
				</td>
				
			</tr>
			<tr>
				<td>��ȭ��ȣ</td>
				<td>
					<form:input path = "account.phone"/>
				</td>
			</tr>
			<tr>
				<td>�̸���</td>
				<td>
					<form:input path = "account.email"/>
				</td>
			</tr>
			<tr>
				<td colspan = "2">
					<input type="submit" value="�����ϱ�"class="btn">
				</td>
			</tr>
		</table>
		</form:form>
	</div>
</body>
</html>