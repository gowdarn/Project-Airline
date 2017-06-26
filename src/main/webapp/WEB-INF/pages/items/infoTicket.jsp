<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>


<div style="margin-top: 50px;">
	<div class="col-sm-12 col-md-8 col-md-offset-2">

	<article>
		<div class="post-image">
			<div class="post-heading">
				<h4>
					Code ticket: <strong>${ticket.code }</strong>
				</h4>
			</div>
		</div>

		<div style="margin-left: 50px;">

			<p>
				Buyer: <strong>${ticket.user.name }</strong>
			</p>
			<p>
				Journey: from <strong>${ticket.flight.journey.locationFrom }</strong> to <strong>${ticket.flight.journey.locationTo }</strong>
			</p>
			<p>
				Date: <strong>${ticket.flight.startTime }</strong>
			</p>
			<p>Seat: <strong>${ticket.seat }</strong></p>
			
			<c:set var="type" value="${ticket.type }" />
			<c:choose>
				<c:when test="${type==1 }">
					<p>Type: <strong>VIP</strong></p>
					<p>Price: <strong>${ticket.flight.priceVip }</strong> VND</p>		
				</c:when>
				<c:otherwise>
					<p>Type: <strong>Economic</strong></p>
					<p>Price: <strong>${ticket.flight.priceEco }</strong> VND</p>
				</c:otherwise>
			</c:choose>
			
			<c:set var="status" value="${ticket.state }"></c:set>
			<c:choose>
				<c:when test="${status==0 }">
					<p>Status payment: <strong>Unpaid</strong></p>		
				</c:when>
				<c:otherwise>
					<p>Status payment: <strong>Paid</strong></p>
				</c:otherwise>
			</c:choose>
			
			
		</div>

		<div class="bottom-article">
			<a href="#" class="readmore pull-right">Continue reading <i
				class="fa fa-angle-right"></i></a>
		</div>
	</article>
	
	</div>


</div>
