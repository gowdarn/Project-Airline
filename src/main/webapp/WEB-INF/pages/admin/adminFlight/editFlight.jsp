<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="container-fluid">
	<div class="row bg-title">
		<div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
			<h4 class="page-title">Basic Table</h4>
		</div>
		<div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
			<a href="https://wrappixel.com/templates/ampleadmin/" target="_blank"
				class="btn btn-danger pull-right m-l-20 hidden-xs hidden-sm waves-effect waves-light">Upgrade
				to Pro </a>
			<ol class="breadcrumb">
				<li><a href="#">Dashboard</a></li>
				<li class="active">Basic Table</li>
			</ol>
		</div>
		<!-- /.col-lg-12 -->
	</div>
	<!-- /row -->
	<div class="row">
		<div class="hidden">
			<jsp:include page="../tabAdminHome.jsp"></jsp:include>
		</div>

		<div class="col-sm-12">
			<div class="white-box" style="height: 600px;">
				<h3 class="box-title">Basic Table</h3>
				<p class="text-muted">
					Add class
					<code>.table</code>
				</p>

				<!-- code here -->

				<div class="col-md-8 col-md-offset-2">
					<form role="form"  method="post" action="/admin/flight">
						<div class="form-group">
							<label for="from">From</label>
							<select class="form-control" name="journeyId">
								<option data-tokens="${flight.journey.id }" value="${flight.journey.id}">${flight.journey.locationFrom }
													- ${flight.journey.locationTo }</option>
								<c:forEach var="journey" items="${journeys }">
									<option data-tokens="${journey.id }" value="${journey.id}">${journey.locationFrom }
													- ${journey.locationTo }</option>
								</c:forEach>

							</select>
						</div>


						<div class="form-group">
							<label for="airline ">Airline</label>
							<select class="form-control" name="airlineId"
								id="airline">
									<option data-tokens="${flight.airline.id }" value="${flight.airline.id }">${flight.airline.name }</option>
								<c:forEach var="airline" items="${airlines }">
									<option data-tokens="${airline.id }" value="${airline.id }">${airline.name }</option>
								</c:forEach>

							</select>
						</div>

						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label for="timeStart">Date trip</label>
									<input type="date" class="form-control"
										name="startTime" id="timeStart" value="${flight.startTime }" />
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label for="endTime">Date on</label>
									<input type="date" class="form-control"
										name="endTime" id="endTime" value="${flight.endTime }" />
								</div>
							</div>
						</div>


						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label for="priceVip">Price VIP</label>
									<input type="number" class="form-control"
										name="priceVip" id="priceVip" value="${flight.priceVip }" />
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label for="priceEco">Price Eco</label>
									<input type="number" class="form-control"
										name="priceEco" id="priceEco" value="${flight.priceEco }" />
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="code">Code</label>
							<input type="text" class="form-control"
								placeholder="Enter code.." name="code" id="code" value="${flight.code }" />
						</div>


						<button type="submit" class="btn btn-default">Submit</button>
					</form>
				</div>


			</div>
		</div>
	</div>
	<!-- /.row -->
</div>


