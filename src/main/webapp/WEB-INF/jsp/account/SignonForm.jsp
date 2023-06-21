<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>�α�����</title>
	<style type="text/css">
		.layout{margin:0px auto;width:1180px;padding:10px;font-size:18px}
		table, td{border:none;}
		.inp{width:500px;height:35px}
		table{margin:150px auto 0px auto}
		td{height:40px}
		.btn{text-align:center;font-size:20px;border-radius:10px;background-color:black;
		border:1px solid black;width:510px;height:35px;color:white;margin-top:10px}
		form .error-message {
		    font-size: 14px;
		    color: red;
		}
	</style>
</head>
<body>
	<!-- �޴��� -->
	<jsp:include page = "../menu.jsp"/>
	<hr>
	
	<div class = "layout">
		<!-- �α��� �� -->
		<form name="form" method="POST" action="<c:url value='/account/signon.do' />">
			<c:if test="${!empty signonForwardAction}">
      			<input type="hidden" name="forwardAction"
        			value='<c:url value="${signonForwardAction}"/>' />
    		</c:if>
			<table>
				<tr>
					<td style="text-align:center;font-size:24px">�α���</td>
				</tr>
				<tr>
					<td>
						<br><br>
						<input type="text" name="userId" placeholder = "���̵� �Է�" size = "40"
							class = "inp">
					</td>
				</tr>
				<tr>
					<td>
						<input type="password" name="password" placeholder = "��й�ȣ �Է�"
							class = "inp">
					</td>
				</tr>
				<tr>
					<td>
						<input type = "submit" class = "btn" value = "�α���">
						<form:errors path="message" cssClass="error-message"/>
					</td>
				</tr>
				<%-- ���� �޽����� ���� ��� ��� --%>
                <c:if test="${not empty message}">
                    <tr>
                        <td>
                            <div class="error-message">${message}</div>
                        </td>
                    </tr>
                </c:if>
			</table><br>
			<!-- <div class = "btnBox">
				<input type="submit" value="�α���" onClick="login()" class = "btn"> &nbsp;
			</div>-->
		</form>
	</div>
</body>
</html>