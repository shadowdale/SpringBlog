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
					<form action="signup.do" method="post" id="signupForm">
						<div class="form-group has-feedback">
							<label class="control-label" for="id">아이디</label>
							<input class="form-control" type="text" name="user_id" id="id"/>
							<p class="help-block">사용할 수 없는 아이디 입니다.</p>
							<span class="glyphicon form-control-feedback"></span>
						</div>
						<div class="form-group">
							<label for="pwd">비밀번호</label>
							<input class="form-control" type="password" name="user_pwd" id="pwd"/>
						</div>
						<div class="form-group">
							<label for="pwd2">비밀번호 확인</label>
							<input class="form-control" type="password" id="pwd2"/>
						</div>
						<div class="form-group">
							<label for="email">이메일</label>
							<input class="form-control" type="text" name="user_email" id="email"/>
						</div>
						<button class="btn btn-primary" type="submit">가입</button>
						<button class="btn btn-warning" type="reset">취소</button>
					</form>
				</div>
			</div>
		</div>
	</section>
	<script src="${pageContext.request.contextPath }/resources/js/jquery-3.1.1.js"></script>
	<script>
		// 아이디 입력 이벤트가 발생했을때 실행할 함수
		$("#id").on("keyup", function() {
			var inputId = $("#id").val();
			$.ajax({
				url: "checkid.do",
				method: "get",
				data: {inputId:inputId},
				success: function(data) {
					$("#id").parent()
					.removeClass("has-success has-error");
					if(data.canUse){
						$("#id")
						.parent()
						.addClass("has-success")
						.find(".help-block")
						.hide()
						.parent()
						.find(".glyphicon")
						.removeClass("glyphicon-remove")
						.addClass("glyphicon-ok");
					}else{
						$("#id")
						.parent()
						.addClass("has-error")
						.find(".help-block")
						.show()
						.parent()
						.find(".glyphicon")
						.removeClass("glyphicon-ok")
						.addClass("glyphicon-remove");
					}
				}
			});
		});
		
		// 입력 받은 비밀번호 확인
		$("#signupForm").on("submit", function(event){
			var inputId = $("#id").val();
			var inputPwd = $("#pwd").val();
			var inputPwd2 = $("#pwd2").val();
			if(inputId.length <= 0) { // 아이디를 입력받지 않았다면
				alert("아이디를 입력하세요");
				return false;//폼전송 막기 
			} else if(inputPwd.length < 8) { // 비밀번호 길이 검증
				alert("비밀번호는 8자리 이상 입력하세요");
				return false;//폼전송 막기 
			} else if(inputPwd != inputPwd2){ // 비밀번호가 같지 않다면
				alert("비밀번호를 확인 하세요");
				return false;//폼전송 막기 
			} else {
				var email = $("#email").val();
				var regex=/^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/;   
				  
				if(regex.test(email) === false) {  // 이메일이 형식에 맞지 않는다면
				    alert("잘못된 이메일 형식입니다.");  
				    return false;  
				}
			}
		});
	</script>
</body>
</html>