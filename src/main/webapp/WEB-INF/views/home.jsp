<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8"/>
	<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
	<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
	<title>home.html</title>
	<!-- <link rel="stylesheet" href="css/bootstrap.css"/> -->
	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
	<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css">
	<style>
		/* UI 의 크기를 결정할때 width 와 height 에 padding 과 border 가 포함되도록 하는 설정 */
		*{	
			/* chorme , safari, 대부분의 mobile web browser*/
			-webkit-box-sizing: border-box;  /* default : content-box*/
			/* firefox  */
			-moz-box-sizing: border-box;
			/* vendor prefix 를 안붙여도 되는 브라우져  */
			box-sizing: border-box;
			margin: 0;
			padding: 0; 
		}
		*{
			border: 1px solid red;
		}
		.service{
			height: 100%;
		}
		.service .image{
			height: 180px;
		}
		.service .content{
			height: 180px;
		}
		.service .content .blog-title{
			text-align: center;
			font-size: 35px;
		}
		.service .content .blog-content{
			text-align: center;
			font-size: 17px;
			height: 90px;
		}
	</style>
</head>
<body>
	<jsp:include page="/WEB-INF/views/header.jsp"/>
	<section>
		<div class="container">
			<div class="row service">
				<div class="col-lg-12">
					<div class="row">
						<div class="image col-lg-3">
								
						</div>
						<div class="content col-lg-9">
							<div class="row">
								<div class="blog-title">
									제목
								</div>
							</div>
							<div class="row">
								<div class="blog-content">
									여기는 소개글
									여러줄
								</div>
							</div>
							<div class="row">
								<div class="blog-admin">
									여기는 이름
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
</html>