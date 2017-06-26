<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form"
	prefix="springForm"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="includes/head.jsp">
	<jsp:param value="Register | Airline" name="title" />
</jsp:include>
</head>
<body>
	<div id="wrapper">
		<!-- start header -->
		<jsp:include page="includes/menu.jsp"></jsp:include>
		<!-- end header -->
		<section id="inner-headline">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<ul class="breadcrumb">
						<li><a href="#"><i class="fa fa-home"></i></a><i
							class="icon-angle-right"></i></li>
						<li><a href="#">Features</a><i class="icon-angle-right"></i></li>
						<li class="active">Register</li>
					</ul>
				</div>
			</div>
		</div>
		</section>
		<section id="content">
		<div class="container">

			<div class="row">
				<div
					class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
					<div hidden class="alert alert-info" id="view-error">
						<strong>Info!</strong>Indicates a neutral informative change or
						action.
					</div>

					<springForm:form role="form" class="register-form" method="post"
						action="register" modelAttribute="userForm"
						onsubmit="return onCLickSubmitRegister()">
						<h2>
							Please Sign Up <small>It's free and always will be.</small>
						</h2>
						<hr class="colorgraph">
						<div class="form-group">
							<p hidden id="notify-name"></p>
							<springForm:errors path="name" />
							<springForm:input path="name" id="name"
								class="form-control input-lg" placeholder="Full name"
								tabindex="1" />
						</div>

						<div class="form-group">
							<p hidden id="notify-phone"></p>
							<springForm:errors path="phone"></springForm:errors>
							<springForm:input path="phone" id="phone_number"
								class="form-control input-lg" placeholder="Phone number"
								tabindex="2" />
						</div>

						<div class="form-group">
							<p hidden id="notify-email"></p>
							<springForm:errors path="email"></springForm:errors>
							<springForm:input path="email" id="email"
								class="form-control input-lg" placeholder="Email" tabindex="3" />
						</div>


						<div class="row">
							<div class="col-xs-12 col-sm-6 col-md-6">
								<p hidden id="notify-password"></p>
							</div>

							<div class="col-xs-12 col-sm-6 col-md-6">
								<p hidden id="notify-re-password"></p>
							</div>
						</div>

						<div class="row">

							<div class="col-xs-12 col-sm-6 col-md-6">
								<div class="form-group">
									<springForm:errors path="password"></springForm:errors>
									<springForm:password path="password" id="password"
										class="form-control input-lg" placeholder="Password"
										tabindex="4" />

								</div>
							</div>
							<div class="col-xs-12 col-sm-6 col-md-6">
								<div class="form-group">
									<springForm:errors path="confirmPassword"></springForm:errors>
									<springForm:password path="confirmPassword"
										id="password_confirmation" class="form-control input-lg"
										placeholder="Confirm Password" tabindex="5" />
								</div>
							</div>

						</div>
						<div class="row">
							<div class="col-xs-4 col-sm-3 col-md-3">
								<span class="button-checkbox">
									<button type="button" class="btn" data-color="info"
										tabindex="6">I Agree</button> <input type="checkbox"
									name="t_and_c" id="t_and_c" class="hidden" value="1">
								</span>
							</div>
							<div class="col-xs-8 col-sm-9 col-md-9">
								By clicking <strong class="label label-primary">Register</strong>,
								you agree to the <a href="#" data-toggle="modal"
									data-target="#t_and_c_m">Terms and Conditions</a> set out by
								this site, including our Cookie Use.
							</div>
						</div>

						<hr class="colorgraph">
						<div class="row">
							<div class="col-xs-12 col-md-6">
								<input type="submit" value="Register"
									class="btn btn-theme btn-block btn-lg" tabindex="7">
							</div>
							<div class="col-xs-12 col-md-6">
								Already have an account? <a href="login.html">Sign In</a>
							</div>
						</div>
					</springForm:form>
				</div>
			</div>
			<!-- Modal -->
			<div class="modal fade" id="t_and_c_m" tabindex="-1" role="dialog"
				aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog modal-lg">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">×</button>
							<h4 class="modal-title" id="myModalLabel">Terms & Conditions</h4>
						</div>
						<div class="modal-body">
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
								Similique, itaque, modi, aliquam nostrum at sapiente
								consequuntur natus odio reiciendis perferendis rem nisi tempore
								possimus ipsa porro delectus quidem dolorem ad.</p>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
								Similique, itaque, modi, aliquam nostrum at sapiente
								consequuntur natus odio reiciendis perferendis rem nisi tempore
								possimus ipsa porro delectus quidem dolorem ad.</p>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-primary"
								data-dismiss="modal">I Agree</button>
						</div>
					</div>
					<!-- /.modal-content -->
				</div>
				<!-- /.modal-dialog -->
			</div>
			<!-- /.modal -->
		</div>
		</section>

		<jsp:include page="includes/footer.jsp"></jsp:include>

	</div>
	<a href="#" class="scrollup"><i class="fa fa-angle-up active"></i></a>


	<jsp:include page="includes/import_js.jsp"></jsp:include>


	<script type="text/javascript">
		$("#email")
				.change(
						function(event) {
							var data = {}
							data["email"] = $("#email").val();
							$
									.ajax({
										type : "POST",
										contentType : "application/x-www-form-urlencoded; charset=UTF-8",
										url : "/ajax/checkEmail",
										data : data,
										dataType : 'text',
										timeout : 600000,
										success : function(data) {
											console.log(data);
											var label = $("#notify-email");
											label.show();
											if (data == "success") {
												label.text("Valid email!");
												label.css("color", "blue");

											} else {
												label.text("Email isxists!");
												label.css("color", "red");

											}

										},
										error : function(e) {

										}
									});
						});

		$("#password")
				.change(
						function(event) {
							var value = $("#password").val();
							var elementErr = $("#notify-password");
							console.log("--------");
							if (value.length < 6) {
								elementErr.show();
								elementErr
										.text("Passwords must be greater than 6 characters!");
								elementErr.css("color", "red");
							} else {
								elementErr.hide();
							}
						});

		$("#password_confirmation").change(function(event) {
			var password = $("#password").val();
			var value = $("#password_confirmation").val();
			var elementErr = $("#notify-re-password");
			if (password == value) {
				elementErr.hide();
			} else {
				elementErr.show();
				elementErr.text("Passwords incorrect!");
				elementErr.css("color", "red");
			}
		});

		$("#name").change(function(event) {
			var name = $("#name").val();
			var err_name = $("#notify-name");
			if (nam == '') {
				err_name.text("Name is not empty!")
				err_name.show();
			} else {
				err_name.hide();
			}
		});

		$("#phone").change(function(event) {
			var phone = $("#phone").val();
			var err_phone = $("#notify-phone");
			if (nam == '') {
				err_phone.text("Phone is not empty!")
				err_phone.show();
			} else {
				err_phone.hide();
			}
		});

		function onCLickSubmitRegister() {
			var name = $("#name");
			if (name.val()==''){
				name.addClass('hova');
				setTextError("Name is not empty!");
				name.focus();
			}
			name.removeClass('hova');
			
			var phone = $("#phone");
			if (phone.val()==''){
				phone.addClass('hova');
				setTextError("Phone is not empty!");
				phone.focus();
			}
			phone.removeClass('hova');
			
			var email = $("#email");
			if (email.val()==''){
				email.addClass('hova');
				setTextError("Email is not empty!");
				email.focus();
			}
			email.removeClass('hova');
			
			var password = $("#password");
			if (password.val()==''){
				password.addClass('hova');
				setTextError("Email is not empty!");
				password.focus();
			} else if (password.val().length < 6){
				password.addClass('hova');
				setTextError("Passwords must be greater than 6 characters!");
				password.focus();
			}
			password.removeClass('hova');
			
			
		}
		
		function setTextError(text) {
			var view = $("#view-error");
			view.empty();
			view.append('<strong>Info!</strong> ' +text);
			view.show();
		}
	</script>



</body>
</html>