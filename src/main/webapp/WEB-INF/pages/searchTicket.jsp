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
				<div class="col-lg-8">
					<div class="searchtitle">
						<h2>Check flight information</h2>
					</div>

					<div class="form-group multiple-form-group input-group">
						<input type="text" name="ticketCode" id="input-code" class="form-control"
							placeholder="Enter code ticket..." /> <span
							class="input-group-btn">
							<button type="button" class="btn btn-theme btn-add" onclick="onClickSearchInfo()">Search</button>
						</span>
					</div>
					<div id="content-search">






					</div>



				</div>

				<div class="col-lg-4">
					<aside class="right-sidebar">
					<div class="widget">
						<h5 class="widgetheading">Categories</h5>
						<ul class="cat">
							<li><i class="fa fa-angle-right"></i><a href="#">Web
									design</a><span> (20)</span></li>
							<li><i class="fa fa-angle-right"></i><a href="#">Online
									business</a><span> (11)</span></li>
							<li><i class="fa fa-angle-right"></i><a href="#">Marketing
									strategy</a><span> (9)</span></li>
							<li><i class="fa fa-angle-right"></i><a href="#">Technology</a><span>
									(12)</span></li>
							<li><i class="fa fa-angle-right"></i><a href="#">About
									finance</a><span> (18)</span></li>
						</ul>
					</div>
					<div class="widget">
						<h5 class="widgetheading">Latest posts</h5>
						<ul class="recent">
							<li><img src="styles/img/dummies/blog/65x65/thumb1.jpg"
								class="pull-left" alt="">
								<h6>
									<a href="#">Lorem ipsum dolor sit</a>
								</h6>
								<p>Mazim alienum appellantur eu cu ullum officiis pro pri</p></li>
							<li><a href="#"><img
									src="styles/img/dummies/blog/65x65/thumb2.jpg"
									class="pull-left" alt=""></a>
								<h6>
									<a href="#">Maiorum ponderum eum</a>
								</h6>
								<p>Mazim alienum appellantur eu cu ullum officiis pro pri</p></li>
							<li><a href="#"><img
									src="styles/img/dummies/blog/65x65/thumb3.jpg"
									class="pull-left" alt=""></a>
								<h6>
									<a href="#">Et mei iusto dolorum</a>
								</h6>
								<p>Mazim alienum appellantur eu cu ullum officiis pro pri</p></li>
						</ul>
					</div>
					<div class="widget">
						<h5 class="widgetheading">Popular tags</h5>
						<ul class="tags">
							<li><a href="#">Web design</a></li>
							<li><a href="#">Trends</a></li>
							<li><a href="#">Technology</a></li>
							<li><a href="#">Internet</a></li>
							<li><a href="#">Tutorial</a></li>
							<li><a href="#">Development</a></li>
						</ul>
					</div>
					</aside>
				</div>

			</div>


		</div>
		</section>


		<jsp:include page="includes/footer.jsp"></jsp:include>

	</div>
	<a href="#" class="scrollup"><i class="fa fa-angle-up active"></i></a>


	<jsp:include page="includes/import_js.jsp"></jsp:include>
	
	
	<script type="text/javascript">
		function onClickSearchInfo() {
			var inputCode = $("#input-code").val();
			
			console.log(inputCode);
			
			$.ajax({
				url : "/ajax/info-ticket/" + inputCode,
				type : 'GET',
				success : function(res) {
					$("#content-search").empty();
					$("#content-search").append(res);

				}
			});
		}	
	
	
	</script>


</body>
</html>