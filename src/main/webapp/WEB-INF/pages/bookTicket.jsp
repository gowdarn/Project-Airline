<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form"
	prefix="springForm"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="includes/head.jsp">
	<jsp:param value="Book Ticket | Airline" name="title" />
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
						<li class="active">Book ticket</li>
					</ul>
				</div>
			</div>
		</div>
		</section>
		<section id="content">
		<div class="container">
			<div class="col-sm-12 col-md-8">
				<div class="row">
					<div class="col-sm-12 col-md-10 col-md-offset-1">
						<form role="form" class="register-form" method="post"
							action="detail" onsubmit="return onClickSubmitNextPay()">
							<h2>
								Buyer <small>Infomation.</small>
							</h2>
							<hr class="colorgraph">
							
							<div hidden class="alert alert-info" id="view-error">
								  
							</div>
							
							<div class="form-group">
								<input type="text" name="name" id="name"
									class="form-control input-lg" placeholder="Full name (*)"
									tabindex="3">
							</div>

							<div class="form-group">
								<input type="number" name="phone_number" id="phone_number"
									class="form-control input-lg" placeholder="Phone number (*)"
									tabindex="3">
							</div>

							<div class="form-group">
								<p hidden id="notify-email"></p>
								<input type="email" name="email" id="email"
									class="form-control input-lg" placeholder="Email Address (*)"
									tabindex="4">
							</div>

							<div class="form-group">
								<p hidden id="notify-address"></p>
								<input type="text" name="address" id="address"
									class="form-control input-lg" placeholder="Address (*)"
									tabindex="4">
							</div>

							<div class="form-group">
								<p hidden id="notify-birthday"></p>
								<input type="date" name="birthday" id="birthday"
									class="form-control input-lg" placeholder="Birthday (*)"
									tabindex="4">
							</div>


							<hr class="colorgraph">
							<div class="row text-right">
								<div class="col-xs-12 col-md-6">
									<input type="submit" value="Next"
										class="btn btn-theme btn-block btn-lg " tabindex="7">
								</div>
							</div>
						</form>
					</div>
				</div>

			</div>

			<div class="col-sm-12 col-md-4">
				<div class="col-sm-12 col-md-10 col-md-offset-1">
					<h3>Detail flight</h3>

					<div style="margin-left: 20px;">
						<h6>Trip:</h6>
						<p>
							From <strong>${flightGo.journey.locationFrom }</strong> To <strong>${flightGo.journey.locationTo }</strong>
						</p>
						<p>
							Date: <strong>${flightGo.startTime }</strong>
						</p>
						<c:set var="typeFrom" value="${typeTicketGo }"></c:set>
						<c:choose>
							<c:when test="${typeFrom == 'vip' }">
								<p>
									Price: <strong>${flightGo.priceVip }</strong> VND
								</p>
								<p>
									Type: <strong>VIP</strong>
								</p>
								<c:set var="priceGo" value="${flightGo.priceVip*people }" />
							</c:when>
							<c:otherwise>
								<p>
									Price: <strong>${flightGo.priceEco }</strong> VND
								</p>
								<p>
									Type: <strong>Economic</strong>
								</p>
								<c:set var="priceGo" value="${flightGo.priceEco*people }" />
							</c:otherwise>
						</c:choose>
						<p>
							People: <strong>${people }</strong> . Children: <strong>${children }</strong>
						</p>

					</div>

					<div <c:if test="${goOn==1 }">hidden</c:if>
						style="margin-left: 20px; margin-top: 30px;">
						<h6>Come back:</h6>
						<p>
							From <strong>${flightOn.journey.locationFrom }</strong> To <strong>${flightOn.journey.locationTo }</strong>
						</p>
						<p>
							Date: <strong>${flightOn.startTime }</strong>
						</p>
						<c:set var="typeTo" value="${typeTicketOn }"></c:set>
						<c:choose>
							<c:when test="${typeTo == 'vip' }">
								<c:set var="priceOn" value="${flightOn.priceVip*people }" />
								<p>
									Price: <strong>${priceOn }</strong> VND
								</p>
								<p>
									Type: <strong>VIP</strong>
								</p>
							</c:when>
							<c:otherwise>
								<c:set var="priceOn" value="${flightOn.priceEco*people }" />
								<p>
									Price: <strong>${priceOn }</strong> VND
								</p>
								<p>
									Type: <strong>Economic</strong>
								</p>
							</c:otherwise>
						</c:choose>
						<p>
							People: <strong>${people }</strong> . Children: <strong>${children }</strong>
						</p>
					</div>

					<div style="margin-left: 20px; margin-top: 30px;">
						<h6>-------------</h6>
						<h5>Total</h5>
						<p>
							Price: <strong>${priceOn + priceGo}</strong> VND
						</p>

					</div>



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
		function onClickSubmitNextPay() {
			
			var name =$("#name"); 
			if (name.val()==''){
				setTextError('Name can not be empty!');
				name.focus();
				name.addClass("hova");
				return false;
			}
			name.removeClass("hova");
			
			var phone = $("#phone_number"); 
			if (phone.val()==''){
				setTextError('Phone number can not be empty!');
				phone.addClass("hova");
				phone.focus();
				return false;
			}
			phone.removeClass("hova");
			
			var email = $("#email"); 
			if (email.val()==''){
				setTextError('Email can not be empty!');
				email.addClass("hova");
				email.focus();
				return false;
			}
			email.removeClass("hova");
			
			var address = $("#address");
			if (address.val()==''){
				setTextError('Address can not be empty!');
				address.addClass("hova");
				address.focus();
				return false;
			}
			address.removeClass("hova");
			
			var birthday = $("#birthday"); 
			console.log(birthday.val());
			if (birthday.val()==''){
				setTextError('Birthday can not be empty!');
				birthday.addClass("hova");
				birthday.focus();
				return false;
			}
			birthday.removeClass("hova");
			
		}
		
		function setTextError(text) {
			var viewError = $("#view-error");
			viewError.empty();
			viewError.append('<strong>(*)</strong> ' +text);
			viewError.show();
		}
	</script>



</body>
</html>