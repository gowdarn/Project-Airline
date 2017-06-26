
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
		<div class="col-sm-12">
			<div class="white-box">
				<h3 class="box-title">Basic Table</h3>
				<p class="text-muted">
					Add class
					<code>.table</code>
				</p>
					<table id="example1" class="table table-bordered table-striped">
						<thead>
							<tr>
								<th>#</th>
								<th>Name</th>
								<th>Email</th>
								<th>Phone</th>
								<th>Address</th>
								<th>Birthday</th>
								<th>Point</th>
								<th></th>
							</tr>
						</thead>
						<tbody>

							<c:forEach var="user" items="${listUser }" varStatus="stt">
								<tr>
									<td>${stt.index+1 }</td>
									<td>${user.name }</td>
									<td>${user.email }</td>
									<td>${user.phone }</td>
									<td>${user.address }</td>
									<td>${user.birthDay }</td>
									<td>${user.point }</td>
									<td></td>
								</tr>
							</c:forEach>

						</tbody>
						<tfoot>
							<tr>
								<th>#</th>
								<th>Name</th>
								<th>Email</th>
								<th>Phone</th>
								<th>Address</th>
								<th>Birthday</th>
								<th>Point</th>
								<th></th>
							</tr>
						</tfoot>
					</table>
			</div>
		</div>
	</div>
	<!-- /.row -->
</div>