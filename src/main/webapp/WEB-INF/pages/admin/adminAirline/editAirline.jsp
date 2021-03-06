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
				<h3 class="box-title">Edit Airline</h3>
				<p class="text-muted">
					Add class
					<code>.table</code>
				</p>

				<!-- code here -->

				<div class="col-md-8 col-md-offset-2">
					<form role="form" method="post" action="/admin/airline">
						<input hidden type="text"  value="${airline.id }" name="airlineId">
					
						<div class="form-group">
							<label for="from">From</label> <input type="text"
								class="form-control" name="name" value="${airline.name }">
						</div>


						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label for="timeStart">Seat Vip</label> <input type="number"
										class="form-control" name="seatVip" value="${airline.numVip }"/>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label for="endTime">Seat Economic</label> <input type="number"
										class="form-control" name="seatEco" value="${airline.numEco }" />
								</div>
							</div>
						</div>

						<button type="submit" class="btn btn-default">Submit</button>
					</form>
				</div>


			</div>
		</div>
	</div>
	<!-- /.row -->
</div>


