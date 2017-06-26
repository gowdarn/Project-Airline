<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="container-fluid">
	<div class="row bg-title">
		<div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
			<h4 class="page-title">Profile page</h4>
		</div>
		<div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
			<a href="https://wrappixel.com/templates/ampleadmin/" target="_blank"
				class="btn btn-danger pull-right m-l-20 hidden-xs hidden-sm waves-effect waves-light">Upgrade
				to Pro</a>
			<ol class="breadcrumb">
				<li><a href="#">Dashboard</a></li>
				<li class="active">Profile Page</li>
			</ol>
		</div>
	</div>
	<!-- /.row -->
	<!-- .row -->
	<div class="row">
		<div class="col-md-4 col-xs-12">
			<div class="white-box">
				<div class="user-bg">
					<img width="100%" alt="user" src="/styles/admin/plugins/images/large/img1.jpg">
					<div class="overlay-box">
						<div class="user-content">
							<a href="javascript:void(0)"><img
								src="/styles/admin/plugins/images/users/genu.jpg"
								class="thumb-lg img-circle" alt="img"></a>
							<h4 class="text-white">${user.name }</h4>
							<h5 class="text-white">${user.email }</h5>
						</div>
					</div>
				</div>
				<div class="user-btm-box">
					<div class="col-md-4 col-sm-4 text-center">
						<p class="text-purple">
							<i class="ti-facebook"></i>
						</p>
						<h1>258</h1>
					</div>
					<div class="col-md-4 col-sm-4 text-center">
						<p class="text-blue">
							<i class="ti-twitter"></i>
						</p>
						<h1>125</h1>
					</div>
					<div class="col-md-4 col-sm-4 text-center">
						<p class="text-danger">
							<i class="ti-dribbble"></i>
						</p>
						<h1>556</h1>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-8 col-xs-12">
			<div class="white-box">
				<form class="form-horizontal form-material" method="post" action="user-info">
					<input hidden type="text" value="${user.id }" name="userId">
					<div class="form-group">
						<label class="col-md-12">Full Name</label>
						<div class="col-md-12">
							<input type="text" value="${user.name }"
								class="form-control form-control-line" name="name">
						</div>
					</div>
					<div class="form-group">
						<label for="example-email" class="col-md-12">Email</label>
						<div class="col-md-12">
							<input type="email" value="${user.email }"
								class="form-control form-control-line"
								id="example-email" name="email" >
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-12">Password</label>
						<div class="col-md-12">
							<input type="password" value="password"
								class="form-control form-control-line" name="password">
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-12">Phone No</label>
						<div class="col-md-12">
							<input type="text" value="${user.phone }"
								class="form-control form-control-line" name="phone">
						</div>
					</div>
					
					<div class="form-group">
						<label class="col-md-12">Address</label>
						<div class="col-md-12">
							<input type="text" value="${user.address }"
								class="form-control form-control-line" name="address">
						</div>
					</div>
					
				
					<div class="form-group">
						<div class="col-sm-12">
							<input type="submit" value="Update Profile"
									class="btn btn-success" tabindex="7">
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- /.row -->
</div>