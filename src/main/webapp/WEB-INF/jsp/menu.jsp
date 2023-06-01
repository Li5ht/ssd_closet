<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>�޴���</title>
	<style type = "text/css">
		.layout{margin:0px auto;width:1180px;height:58px;padding:10px}
		.logo{font-weight:bold;width:240px;height48px;font-size:40px;float:left;margin:5px 0px 4px 0px}
		.navitool{float:left;width:600px;height:40px;padding:0px;margin:10px 0px 10px 20px}
		.navi{float:left;width:90px;padding:10px;height:20px;font-size:18px;text-align:center;margin:5px 0px 10px 0px;}
		.login{float:right;width:200px;padding:10px;height:20px;font-size:18px;text-align:center;margin:15px 0px 10px 0px;}
		a{display:block}
	 	a:link{text-decoration:none;color:black}
		a:visited{text-decoration:none;color:black}
		a:active{text-decoration:none;color:black}
		a:hover{text-decoration:none;color:black}
		.aLogin{margin-left:30px;margin-right:30px;float:left;}
	
	</style>
</head>
<body>
	<div class = "layout">
		<div class = "logo">&amp;closet</div>
		<div class = "navitool">
			<div class = "navi"><a href="<c:url value="/closet/auction.do" />">���</a></div>
			<div class = "navi"><a href="<c:url value='/index/groupby' />">��������</a></div>
			<div class = "navi"><a href="<c:url value='/index/best' />">BEST</a></div>
			<div class = "navi"><a href="<c:url value='/index/search' />">�˻�</a></div>
		</div>
		<div class = "login">
			<c:choose>
				<c:when test = "${empty userSession.account}">
					<a href="<c:url value='/account/login' />" class = "aLogin">�α���</a>
					<a href="<c:url value='/account/registerForm' />">ȸ������</a>
				</c:when>
				<c:otherwise>
				    <a href="<c:url value='/index/mypage' />">
				    	<img border="0" src="../images/mypage.png" />
				    </a>
				    <a href="<c:url value='' />">
				    	<img border="0" src="../images/like.png" />
				    </a>
					<a href="<c:url value='/account/logout' />">�α׾ƿ�</a>
				</c:otherwise>
			</c:choose>
		</div>
	</div>
</body>
</html>