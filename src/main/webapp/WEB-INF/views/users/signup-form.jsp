<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8"/>
	<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
	<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
	<title>signin-form.html</title>
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
			<div class="row">
				<div class="col-lg-12">
					<h3>기본 form스타일</h3>
					<form action="users/signin.do" method="post">
						<div class="form-group">
							<label for="id">아이디</label>
							<input class="form-control" type="text" name="id" id="id"/>
						</div>
						<div class="form-group">
							<label for="pwd">비밀번호</label>
							<input class="form-control" type="text" name="pwd" id="pwd"/>
						</div>
						<div class="form-group">
							<label for="pwd2">비밀번호 확인</label>
							<input class="form-control" type="text" name="pwd2" id="pwd2"/>
						</div>
						<div class="form-group">
							<label for="email">비밀번호</label>
							<input class="form-control" type="text" name="email" id="email"/>
						</div>
						<button class="btn btn-primary" type="submit">로그인</button>
						<button class="btn btn-warning" type="reset">취소</button>
					</form>
				</div>
			</div>
		</div>
	</section>
</body>
</html>