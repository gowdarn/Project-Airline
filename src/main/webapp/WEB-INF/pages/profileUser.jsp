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
				<div class="col-md-7">
					<h4>History</h4>
					<ul class="nav nav-tabs">
						<li class="active"><a href="#one" data-toggle="tab"><i
								class="icon-briefcase"></i> Waiting</a></li>
						<li><a href="#two" data-toggle="tab">History</a></li>
					</ul>
					<div class="tab-content">
						<div class="tab-pane active" id="one">
							<table class="table">
								<thead>
									<tr>
										<th>#</th>
										<th>Code ticket</th>
										<th>Date</th>
										<th>From</th>
										<th>To</th>
										<th>#</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="ticketWait" items="${listWaiting }"
										varStatus="stt">
										<tr id="row${stt.index +1 }">
											<td>${stt.index +1 }</td>
											<td>${ticketWait.code }</td>
											<td>${ticketWait.flight.startTime }</td>
											<td>${ticketWait.flight.journey.locationFrom }</td>
											<td>${ticketWait.flight.journey.locationTo }</td>
											<td><a data-toggle="tooltip"
												title="Return ticket"
												onclick="onClickReturnTicket('${ticketWait.code }','row${stt.index +1 }')"><span
													class="glyphicon glyphicon-info-sign"></span></a></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
						<div class="tab-pane" id="two">
							<table class="table">
								<thead>
									<tr>
										<th>#</th>
										<th>Code ticket</th>
										<th>Date</th>
										<th>From</th>
										<th>To</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="ticketHistory" items="${listHistory }"
										varStatus="stt">
										<tr>
											<td>${stt.index +1 }</td>
											<td>${ticketHistory.code }</td>
											<td>${ticketHistory.flight.startTime }</td>
											<td>${ticketHistory.flight.journey.locationFrom }</td>
											<td>${ticketHistory.flight.journey.locationTo }</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>

					</div>
				</div>

				<div class="col-md-4 col-md-offset-1">
					<div class="row">
						<h3>Information</h3>

						<form class="form-horizontal" role="form">
							<div class="form-group">
								<label for="inputName" class="col-sm-4 control-label">Name</label>
								<div class="col-sm-8">
									<div id="view-name" class="control-label"
										style="text-align: left;">${user.name }</div>
									<input class="hidden" type="text" class="form-control"
										id="inputName" placeholder="Name" value="${user.name }">
								</div>
							</div>
							<div class="form-group">
								<label for="inputPassword3" class="col-sm-4 control-label">Password</label>
								<div class="col-sm-8">
									<div id="view-name" class="control-label"
										style="text-align: left;">********</div>
									<input class="hidden" type="password" class="form-control"
										id="inputPassword3" placeholder="Password">
								</div>
							</div>
							<div class="form-group">
								<label for="inputEmail" class="col-sm-4 control-label">Email</label>
								<div class="col-sm-8">
									<div id="view-name" class="control-label"
										style="text-align: left;">${user.email }</div>
								</div>
							</div>
							<div class="form-group">
								<label for="inputPhone" class="col-sm-4 control-label">Phone
									number</label>
								<div class="col-sm-8">
									<div id="view-name" class="control-label"
										style="text-align: left;">${user.phone }</div>
									<input class="hidden" type="text" class="form-control"
										id="inputPhone" placeholder="Phone number"
										value="${user.phone }">
								</div>
							</div>

							<div class="form-group">
								<label for="inputBirthday" class="col-sm-4 control-label">Birthday</label>
								<div class="col-sm-8">
									<div id="view-name" class="control-label"
										style="text-align: left;">${user.birthDay }</div>
									<input class="hidden" type="date" class="form-control"
										id="inputBirthday" placeholder="Birthday">
								</div>
							</div>

							<div class="form-group">
								<label for="inputAddress" class="col-sm-4 control-label">Address</label>
								<div class="col-sm-8">
									<div id="view-name" class="control-label"
										style="text-align: left;">${user.address }</div>
									<input class="hidden" type="text" class="form-control"
										id="inputAddress" placeholder="Address"
										value="${user.address }">
								</div>
							</div>

							<div class="form-group">
								<label for="inputPoint" class="col-sm-4 control-label">Point</label>
								<div class="col-sm-8">
									<div id="view-name" class="control-label"
										style="text-align: left;">${user.point }</div>
								</div>
							</div>

							<div class="form-group">
								<div class="col-sm-offset-4 col-sm-8">
									<button type="submit" class="btn btn-default">Sign in</button>
								</div>
							</div>
						</form>

					</div>


				</div>
			</div>

		</div>
		</section>


		<jsp:include page="includes/footer.jsp"></jsp:include>

	</div>
	<a href="#" class="scrollup"><i class="fa fa-angle-up active"></i></a>


	<jsp:include page="includes/import_js.jsp"></jsp:include>

	<script type="text/javascript">
	$(document).ready(function(){
	    $('[data-toggle="tooltip"]').tooltip();   
	});
	
	function onClickReturnTicket(tocketCode, rowId) {
		    
		    if (confirm("Are you sure you want to return the ticket?") == true) {
		        $.ajax({
					url : "/ajax/returnTicket/" + tocketCode,
					type : 'GET',
					success : function(res) {
						if (res=='success'){
							$("#"+ rowId).remove();
						}
						console.log(res);

					}
				});
		    }
	}
	
	
	</script>


</body>
</html>