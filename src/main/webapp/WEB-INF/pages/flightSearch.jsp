<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="includes/head.jsp">
	<jsp:param value="Search | Airline" name="title" />
</jsp:include>
</head>
<body>
	<div id="wrapper">
		<!-- start header -->
		<jsp:include page="includes/menu.jsp"></jsp:include>
		<!-- end header -->

		<section id="content">
		<div class="container">

			<!-- Code here... -->

			<div class="row">
				<div class="col-sm-12 col-md-8 col-md-offset-2">
					<h4 class="heading">Date of department</h4>
					<p>
						From <strong>${locationGo }</strong> to <strong>${locationOn }</strong>
					</p>

					<div class="panel panel-default">
						<div class="panel-body">
							<div class="table-container">
								<table class="table table-filter">
									<thead>
										<tr>
											<th></th>
											<th></th>
											<th>Date</th>
											<th>Price VIP</th>
											<th>Price Economical</th>
										</tr>
									</thead>

									<tbody>
										<c:forEach items="${listDateGo }" var="itemGo" varStatus="stt">
											<input type="text" class="hidden" value="${itemGo.id }"
												id="flight-id" />
											<tr data-status="pagado"
												class='<c:if test="${itemGo.priceEco ==0}">hidden</c:if>'>

												<td>
													<div class="ckbox">
														<input type="checkbox" id="checkbox${stt.index+1 }">
														<label for="checkbox${stt.index+1 }"></label>
													</div>
												</td>
												<td><a href="javascript:;" class="star"> <i
														class="glyphicon glyphicon-star"></i>
												</a></td>
												<td>
													<div class="media">
														<div class="media-body">
															<h4 class="title">${itemGo.startTime }</h4>
														</div>
													</div>
												</td>

												<td>
													<p class="summary">
														<c:set var="sizeGoVip" value="${itemGo.airline.numVip }"></c:set>
														<c:set var="bookedGoVip" value="${itemGo.bookedVip }"></c:set>
														<c:choose>
															<c:when test="${bookedGoVip<sizeGoVip}">
																<div class="div-rbd-price">
																	<p>
																		<input type="radio" name="radio"
																			onchange="onClickChangeRdbGo(${itemGo.id },'vip')">
																	</p>
																	<p>${itemGo.priceVip }VND</p>
																</div>
															</c:when>

															<c:otherwise>
																<p class="summary text-center">Sold out</p>
															</c:otherwise>

														</c:choose>


													</p>
												</td>

												<td>
													<p class="summary">
														<c:set var="sizeGoEco" value="${itemGo.airline.numEco }"></c:set>
														<c:set var="bookedGoEco" value="${itemGo.bookedEco }"></c:set>
														<c:choose>
															<c:when test="${bookedGoEco<sizeGoEco}">
																<div class="div-rbd-price">
																	<p>
																		<input type="radio" name="radio"
																			onchange="onClickChangeRdbGo(${itemGo.id },'eco')">
																	</p>
																	<p>${itemGo.priceEco }VND</p>
																</div>
															</c:when>

															<c:otherwise>
																<p class="summary text-center">Sold out</p>
															</c:otherwise>

														</c:choose>
													</p>
												</td>

											</tr>

										</c:forEach>

									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>


			</div>


			<div class="row" <c:if test="${goOn==1 }">hidden</c:if>>

				<div class="col-sm-12 col-md-8 col-md-offset-2">
					<h4 class="heading">Day on</h4>
					<p>
						From <strong>${locationOn }</strong> to <strong>${locationGo }</strong>
					</p>

					<div class="panel panel-default">
						<div class="panel-body">
							<div class="table-container">
								<table class="table table-filter">
									<thead>
										<tr>
											<th></th>
											<th></th>
											<th>Date</th>
											<th>Price VIP</th>
											<th>Price Economical</th>
										</tr>
									</thead>
									<tbody>

										<c:forEach items="${listDateOn }" var="itemOn" varStatus="stt">
											<tr data-status="pagado"
												class='<c:if test="${itemOn.priceEco ==0}">hidden</c:if>'>
												<td>
													<div class="ckbox">
														<input type="checkbox" id="checkboxOn${stt.index+1 }">
														<label for="checkboxOn${stt.index+1 }"></label>
													</div>
												</td>
												<td><a href="javascript:;" class="star"> <i
														class="glyphicon glyphicon-star"></i>
												</a></td>
												<td>
													<div class="media">
														<div class="media-body">
															<h4 class="title">${itemOn.startTime }</h4>
														</div>
													</div>
												</td>

												<td>
													<p class="summary">
														<c:set var="sizeOnVip" value="${itemOn.airline.numVip }"></c:set>
														<c:set var="bookedOnVip" value="${itemOn.bookedVip }"></c:set>
														<c:choose>
															<c:when test="${bookedOnVip<sizeOnVip}">
																<div class="div-rbd-price">
																	<p>
																		<input type="radio" name="radioOn"
																			onchange="onClickChangeRdOn(${itemOn.id },'vip')">
																	</p>
																	<p>${itemOn.priceVip }VND</p>
																</div>
															</c:when>

															<c:otherwise>
																	<p class="summary text-center">Sold out</p>
															</c:otherwise>

														</c:choose>
													</p>
												</td>

												<td>
													<p class="summary">
														<c:set var="sizeOnEco" value="${itemOn.airline.numEco }"></c:set>
														<c:set var="bookedOnEco" value="${itemOn.bookedEco }"></c:set>
														<c:choose>
															<c:when test="${bookedOnEco<sizeOnEco}">
																<div class="div-rbd-price">
																	<p>
																		<input type="radio" name="radioOn"
																			onchange="onClickChangeRdOn(${itemOn.id },'eco')">
																	</p>
																	<p>${itemOn.priceEco }VND</p>
																</div>

															</c:when>

															<c:otherwise>
																<p class="summary text-center">Sold out</p>
															</c:otherwise>
														</c:choose>
													</p>
												</td>

											</tr>

										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>



			</div>



			<div class="row">
				<div class="col-sm-12 col-md-8 col-md-offset-2">
					<form action="book" method="post" onsubmit="return onSubmitNext()">
						<input class="hidden" type="text" name="flightFromId"
							id="form-flight-from" /> <input class="hidden" type="text"
							name="flightToId" id="form-flight-to" /> <input class="hidden"
							type="text" name="typeTicketFrom" id="form-type-ticket-from" />
						<input class="hidden" type="text" name="typeTicketTo"
							id="form-type-ticket-to" /> <input type="submit" value="Next"
							class="btn btn-theme btn-block btn-lg" tabindex="7">
					</form>


				</div>
			</div>






			<!-- Code here... -->
		</div>
		</section>


		<jsp:include page="includes/footer.jsp"></jsp:include>

	</div>
	<a href="#" class="scrollup"><i class="fa fa-angle-up active"></i></a>


	<jsp:include page="includes/import_js.jsp"></jsp:include>



	<script type="text/javascript">
	
	function onClickChangeRdbGo(flightId, type){
		console.log(flightId);
		$("#form-flight-from").val(flightId);
		$("#form-type-ticket-from").val(type);
	}
	
	function onClickChangeRdOn(flightId, type){
		console.log(flightId);
		$("#form-flight-to").val(flightId);
		$("#form-type-ticket-to").val(type);
	}
	
	function onSubmitNext() {
		if ($("#form-flight-from").val()==''){
			alert("Please select a date!");
			return false;
		}
	}
	
	
</script>


</body>
</html>