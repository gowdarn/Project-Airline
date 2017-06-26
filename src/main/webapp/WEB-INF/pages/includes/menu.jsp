<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<header>
	<div class="top">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<ul class="topleft-info">
						<li><i class="fa fa-phone"></i> +62 088 999 123</li>
					</ul>
				</div>
				<div class="col-md-6 text-right">
					<div id="sb-search" class="sb-search hidden">
						<form>
							<input class="sb-search-input"
								placeholder="Enter your search term..." type="text" value=""
								name="search" id="search"> <input
								class="sb-search-submit" type="submit" value=""> <span
								class="sb-icon-search" title="Click to start searching"></span>
						</form>
					</div>

					<sec:authentication property="principal" var="user" />



					<div id="login">
						<sec:authorize access="hasRole('ROLE_2') and isAuthenticated()">
							<ul style="list-style-type: none; margin: 0; padding: 0">
								<li style="display: inline;"><a href="user-info">
										${user.username } </a></li>
								<li style="display: inline;">|</li>
								<li style="display: inline;"><a href="logout">Logout</a></li>
							</ul>
						</sec:authorize>
						<sec:authorize access="!isAuthenticated()">
							<a href="login">Login</a>
						</sec:authorize>

					</div>










				</div>
			</div>
		</div>
	</div>

	<div class="navbar navbar-default navbar-static-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="/home"><img
					src="/styles/img/logo.png" alt="" width="199" height="52" /></a>
			</div>
			<div class="navbar-collapse collapse ">
				<ul class="nav navbar-nav">
					<li class="dropdown active"><a href="home"
						class="dropdown-toggle " data-hover="dropdown" data-delay="0"
						data-close-others="false">Home</a></li>
					<li><a href="info-ticket">Flight search</a></li>

					<li><a href="contact">Contact</a></li>
				</ul>
			</div>
		</div>
	</div>
</header>