<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form"
	prefix="springForm"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="includes/head.jsp">
	<jsp:param value="Detail ticket | Airline" name="title" />
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
						<li class="active">Detail ticket</li>
					</ul>
				</div>
			</div>
		</div>
		</section>
		<section id="content">
		<div class="container">
			<div class="col-sm-12 col-md-8 col-md-offset-2">
				<div class="row">
					<h2>Payment</h2>

					<div style="margin-left: 50px; margin-top: 50px">
						<p>
							Name: <strong>${user.name }</strong>
						</p>
						<p>
							Email: <strong>${user.email }</strong>
						</p>
						<p>
							Address: <strong>${user.address }</strong>
						</p>
						<p>
							Phone: <strong>${user.phone }</strong>
						</p>

						<hr>

						<h4>Trip</h4>
						<div style="margin-left: 40px;">
							<p>
								From <strong>${flightGo.journey.locationFrom }</strong> to <strong>${flightGo.journey.locationTo }</strong>
							</p>
							<div class="row" style="margin-bottom: 0px;">
								<div class="col-xs-6">
									<p>Date</p>
								</div>

								<div class="col-xs-6 text-right">
									<p>${flightGo.startTime }</p>
								</div>
							</div>

							<div class="row" style="margin-bottom: 0px;">
								<div class="col-xs-6">
									<p>Type</p>
								</div>
								<div class="col-xs-6 text-right">
									<p>${typeGo }</p>
								</div>
							</div>

							<h5>Ticket</h5>
							<div style="margin-left: 20px;">
								<c:forEach var="ticketGo" items="${listTicketGo }">
									<div class="row" style="margin-bottom: 0px;">
										<div class="col-xs-6">
											<p>
												Code: <strong>${ticketGo.code }</strong>
											</p>
										</div>
										<div class="col-xs-6 text-right">
											<c:choose>
												<c:when test="${typeGo == 'VIP' }">
													<p>${flightGo.priceVip }VND</p>
													<c:set var="priceGo" value="${flightGo.priceVip }" />
												</c:when>
												<c:otherwise>
													<p>${flightGo.priceEco }VND</p>
													<c:set var="priceGo" value="${flightGo.priceEco }" />
												</c:otherwise>

											</c:choose>
										</div>
									</div>

								</c:forEach>

							</div>
						</div>

						<hr>

						<div <c:if test="${goOn==1 }">hidden</c:if>>
							<h4>Come back</h4>
							<div style="margin-left: 40px;">
								<p>
									From <strong>${flightOn.journey.locationFrom }</strong> to <strong>${flightOn.journey.locationTo }</strong>
								</p>
								<div class="row" style="margin-bottom: 0px;">
									<div class="col-xs-6">
										<p>Date</p>
									</div>

									<div class="col-xs-6 text-right">
										<p>${flightOn.startTime }</p>
									</div>
								</div>

								<div class="row" style="margin-bottom: 0px;">
									<div class="col-xs-6">
										<p>Type</p>
									</div>
									<div class="col-xs-6 text-right">
										<p>${typeOn }</p>
									</div>
								</div>

								<h5>Ticket</h5>
								<div style="margin-left: 20px;">
									<c:forEach var="ticketOn" items="${listTicketOn }">
										<div class="row" style="margin-bottom: 0px;">
											<div class="col-xs-6">
												<p>
													Code: <strong>${ticketOn.code }</strong>
												</p>
											</div>
											<div class="col-xs-6 text-right">
												<c:choose>
													<c:when test="${typeOn == 'VIP' }">
														<p>${flightOn.priceVip }VND</p>
														<c:set var="priceOn" value="${flightOn.priceVip }" />
													</c:when>
													<c:otherwise>
														<p>${flightOn.priceEco }VND</p>
														<c:set var="priceOn" value="${flightOn.priceEco }" />
													</c:otherwise>

												</c:choose>
											</div>
										</div>

									</c:forEach>

								</div>
							</div>
						</div>

						<hr>

						<div style="margin-left: 20px;">
							<div class="row" style="margin-bottom: 0px;">
								<div class="col-xs-6">
									<h4>Total</h4>
								</div>
								<div class="col-xs-6 text-right">
									<p>${priceOn + priceGo }VND</p>
								</div>
							</div>

						</div>
					</div>
				</div>

				<div class="row">
					<form action="payment" method="post">
						<input type="submit" value="Solve"
							class="btn btn-theme btn-block btn-lg " tabindex="7">
					</form>
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
		
	</script>



</body>
</html>