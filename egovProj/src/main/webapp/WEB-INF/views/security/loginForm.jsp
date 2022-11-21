<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
 <style>
	 input::placeholder {
		font-family: Cookierun;
	}
 </style>
<div style="display: flex ; text-align:center; justify-content: center;">
<div class="login-box">
	<div class="card card-outline card-warning">
		<div class="card-header text-center">
			<a href="../../index2.html" class="h1"  style="font-family: 메이플스토리;">민정이 게시판</a>
		</div>
		<div class="card-body">
			<p class="login-box-msg" style="font-family: Cookierun;">Sign in to start your session</p>
			<form action="/login" method="post">
				<div class="input-group mb-3">
					<input type="text"  name="username" class="form-control" placeholder="아이디를 입력해주세요">
					<div class="input-group-append">
						<div class="input-group-text">
							<span class="fas fa-envelope"></span>
						</div>
					</div>
				</div>
				<div class="input-group mb-3">
					<input type="password" name="password" class="form-control" placeholder="비밀번호를 입력해주세요">
					<div class="input-group-append">
						<div class="input-group-text">
							<span class="fas fa-lock"></span>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-8">
						<div class="icheck-warning">
							<input type="checkbox" name="remember-me" id="remember"> 
							<label for="remember" style="font-family: 메이플스토리;"> Remember Me </label>
						</div>
					</div>

					<div class="col-4">
						<button type="submit" class="btn btn-success btn-block">Sign In</button>
					</div>

				</div>
				<sec:csrfInput/>
			</form>
		</div>

	</div>

</div>
</div>


