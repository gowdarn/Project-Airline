<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="includes/head.jsp">
	<jsp:param value="Login | Airline" name="title" />
</jsp:include>
</head>
<body>
	<div id="wrapper">
		<!-- start header -->
		<jsp:include page="includes/menu.jsp"></jsp:include>
		<!-- end header -->

		<section id="content">
		<div class="container">



			<div class="row">
				<div
					class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
					<c:if test="${param.error == 'true'}">
						<div class="alert alert-info" id="view-error">
							<strong>Login Failed!!!</strong> ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}
						</div>
					</c:if>

					<form role="form" class="register-form" method="post"
						action="j_spring_security_check">
						<h2>
							Sign in <small>manage your account</small>
						</h2>
						<hr class="colorgraph">

						<div class="form-group">
							<input type="email" name="email" id="email"
								class="form-control input-lg" placeholder="Email Address"
								tabindex="1">
						</div>
						<div class="form-group">
							<input type="password" name="password"
								class="form-control input-lg" id="exampleInputPassword1"
								placeholder="Password" tabindex="2">
						</div>

						<div class="row">
							<div class="col-xs-4 col-sm-3 col-md-3">
								<span class="button-checkbox">
									<button type="button" class="btn" data-color="info"
										tabindex="3">Remember me</button> <input type="checkbox"
									name="t_and_c" id="t_and_c" class="hidden" value="1">
								</span>
							</div>
						</div>

						<hr class="colorgraph">
						<div class="row">
							<div class="col-xs-12 col-md-6">
								<input type="submit" value="Sign in"
									class="btn btn-primary btn-block btn-lg" tabindex="4">
							</div>
							<div class="col-xs-12 col-md-6">
								Don't have an account? <a href="register">Register</a>
							</div>
						</div>
					</form>
				</div>
			</div>

		</div>
		</section>


		<jsp:include page="includes/footer.jsp"></jsp:include>

	</div>
	<a href="#" class="scrollup"><i class="fa fa-angle-up active"></i></a>


	<jsp:include page="includes/import_js.jsp"></jsp:include>


</body>
</html>