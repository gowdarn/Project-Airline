<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="container-fluid">
	<div class="row bg-title">
		<div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
			<h4 class="page-title">Dashboard</h4>
		</div>
		<div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
			<a href="https://wrappixel.com/templates/ampleadmin/" target="_blank"
				class="btn btn-danger pull-right m-l-20 hidden-xs hidden-sm waves-effect waves-light">Upgrade
				to Pro</a>
			<ol class="breadcrumb">
				<li><a href="#">Dashboard</a></li>
			</ol>
		</div>
		<!-- /.col-lg-12 -->
	</div>
	<!-- /.row -->
	<!-- ============================================================== -->
	<!-- Different data widgets -->
	<!-- ============================================================== -->
	<!-- .row -->
	<div class="row">
		<div class="col-lg-4 col-sm-6 col-xs-12">
			<div class="white-box analytics-info">
				<h3 class="box-title">Total Airline</h3>
				<ul class="list-inline two-part">
					<li>
						<div id="sparklinedash"></div>
					</li>
					<li class="text-right"><i class="ti-arrow-up text-success"></i>
						<span class="counter text-success">${countAirline }</span></li>
				</ul>
			</div>
		</div>
		<div class="col-lg-4 col-sm-6 col-xs-12">
			<div class="white-box analytics-info">
				<h3 class="box-title">Total User Active</h3>
				<ul class="list-inline two-part">
					<li>
						<div id="sparklinedash2"></div>
					</li>
					<li class="text-right"><i class="ti-arrow-up text-purple"></i>
						<span class="counter text-purple">${countUserActive }</span></li>
				</ul>
			</div>
		</div>
		<div class="col-lg-4 col-sm-6 col-xs-12">
			<div class="white-box analytics-info">
				<h3 class="box-title">Total Journey</h3>
				<ul class="list-inline two-part">
					<li>
						<div id="sparklinedash3"></div>
					</li>
					<li class="text-right"><i class="ti-arrow-up text-info"></i> <span
						class="counter text-info">${countJourney }</span></li>
				</ul>
			</div>
		</div>
	</div>
	<!--/.row -->
	<!--row -->
	<!-- /.row -->

	<div class="row hidden">
		<div class="col-md-12 col-lg-12 col-sm-12 col-xs-12">
			<div class="white-box">
				<h3 class="box-title">Products Yearly Sales</h3>
				<ul class="list-inline text-right">
					<li>
						<h5>
							<i class="fa fa-circle m-r-5 text-info"></i>Mac
						</h5>
					</li>
					<li>
						<h5>
							<i class="fa fa-circle m-r-5 text-inverse"></i>Windows
						</h5>
					</li>
				</ul>
				<div id="ct-visits" style="height: 405px;"></div>
			</div>
		</div>
	</div>

	<!-- ============================================================== -->
	<!-- table -->
	<!-- ============================================================== -->
	<div class="row">
		<div class="col-md-12 col-lg-12 col-sm-12">
			<div class="white-box">

				<div class="row">
					<div class="col-sm-8">
						<h3 class="box-title">Flight</h3>
					</div>

					<div class="col-sm-4 text-right">
						<a href="/admin/flight" class="btn btn-primary btn-sm">Add
							flight</a>
					</div>
				</div>



				<div class="box-body">
					<table id="example5" class="table table-bordered table-striped">
						<thead>
							<tr>
								<th>#</th>
								<th>From</th>
								<th>To</th>
								<th>Date</th>
								<th>Seat remaining VIP</th>
								<th>Seat remaining ECO</th>
								<th></th>
							</tr>
						</thead>
						<tbody>

							<c:forEach var="flight" items="${flightWait }" varStatus="stt">
								<tr>
									<td>${stt.index+1 }</td>
									<td>${flight.journey.locationFrom }</td>
									<td>${flight.journey.locationTo }</td>
									<td>${flight.startTime }</td>
									<td>${flight.airline.numVip-flight.bookedVip }</td>
									<td>${flight.airline.numEco-flight.bookedEco }</td>
									<td><a href="/admin/flight?flight=${flight.id }"><span
											class="glyphicon glyphicon-cog"></span></a></td>
								</tr>
							</c:forEach>


						</tbody>
						<tfoot>
							<tr>
								<th>#</th>
								<th>From</th>
								<th>To</th>
								<th>Date</th>
								<th>Seat remaining VIP</th>
								<th>Seat remaining ECO</th>
								<th></th>
							</tr>
						</tfoot>
					</table>
				</div>



				<!--  -->
			</div>
		</div>
	</div>
	<!-- ============================================================== -->
	<!-- chat-listing & recent comments -->
	<!-- ============================================================== -->
	<div class="row">
		<!-- .col -->
		<div class="col-lg-6 col-md-6 col-sm-12">
			<div class="panel">
				<div class="sk-chat-widgets">
					<div class="panel panel-default">
						<div class="white-box">

							<div class="row">
								<div class="col-sm-8">
									<h3 class="box-title">AIRLINE</h3>
								</div>

								<div class="col-sm-4 text-right">
									<a href="/admin/airline" class="btn btn-primary btn-sm">Add
										airline</a>
								</div>
							</div>


							<div class="panel-body">

								<table id="example3" class="table table-bordered table-striped">
									<thead>
										<tr>
											<th>#</th>
											<th>Name</th>
											<th>#</th>
										</tr>
									</thead>
									<tbody>

										<c:forEach var="airline" items="${listAirline }"
											varStatus="stt">
											<tr>
												<td>${stt.index+1 }</td>
												<td>${airline.name }</td>
												<td><a href="/admin/airline?airline=${airline.id }"><span
														class="glyphicon glyphicon-cog"></span></a></td>

											</tr>
										</c:forEach>

									</tbody>
									<tfoot>
										<tr>
											<th>#</th>
											<th>Name</th>
											<th>#</th>
										</tr>
									</tfoot>
								</table>


							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-lg-6 col-md-6 col-sm-12">
			<div class="panel">
				<div class="sk-chat-widgets">
					<div class="panel panel-default">
						<div class="panel-body">


							<div class="row">
								<div class="col-sm-8">
									<h3 class="box-title">JOURNEY</h3>
								</div>

								<div class="col-sm-4 text-right">
									<a href="/admin/journey" class="btn btn-primary btn-sm">Add
										journey</a>
								</div>
							</div>

							<table id="example4" class="table table-bordered table-striped">
								<thead>
									<tr>
										<th>#</th>
										<th>From</th>
										<th>To</th>
										<th>#</th>
									</tr>
								</thead>
								<tbody>

									<c:forEach var="journey" items="${listJourney }"
										varStatus="stt">
										<tr>
											<td>${stt.index+1 }</td>
											<td>${journey.locationFrom }</td>
											<td>${journey.locationTo }</td>
											<td><a href="/admin/journey?journey=${journey.id }"><span
														class="glyphicon glyphicon-cog"></span></a></td>
										</tr>
									</c:forEach>

								</tbody>
								<tfoot>
									<tr>
										<th>#</th>
										<th>From</th>
										<th>To</th>
										<th>#</th>
									</tr>
								</tfoot>
							</table>

						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- /.col -->
	</div>
</div>
<!-- /.container-fluid -->