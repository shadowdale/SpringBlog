<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<header>
	<div class="navbar navbar-default">
	<c:choose>
		<c:when test="${empty id }">
			<a href="${pageContext.request.contextPath }/user/signup-form.do" class="btn btn-default navbar-btn pull-right">회원가입</a>
			<a href="${pageContext.request.contextPath }/user/signin-form.do" class="btn btn-default navbar-btn pull-right">로그인</a>
		</c:when>
		<c:otherwise>
			<a href="#" class="btn btn-default navbar-btn pull-right">${id }</a>
		</c:otherwise>
	</c:choose>
	</div>
</header>
