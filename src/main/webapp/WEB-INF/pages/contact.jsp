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
		<div class="map">
			<div id="google-map" data-latitude="10.873316"
				data-longitude="106.791319"
				style="position: relative; overflow: hidden;">
				<div
					style="height: 100%; width: 100%; position: absolute; top: 0px; left: 0px; background-color: rgb(229, 227, 223);">
					<div class="gm-style"
						style="position: absolute; z-index: 0; left: 0px; top: 0px; height: 100%; width: 100%; padding: 0px; border-width: 0px; margin: 0px;">
						<div
							style="position: absolute; z-index: 0; left: 0px; top: 0px; height: 100%; width: 100%; padding: 0px; border-width: 0px; margin: 0px; cursor: url(&quot;https://maps.gstatic.com/mapfiles/openhand_8_8.cur&quot;) 8 8, default;">
							<div
								style="z-index: 1; position: absolute; top: 0px; left: 0px; width: 100%; transform-origin: 0px 0px 0px; transform: matrix(1, 0, 0, 1, 0, 0);">
								<div
									style="position: absolute; left: 0px; top: 0px; z-index: 100; width: 100%;">
									<div
										style="position: absolute; left: 0px; top: 0px; z-index: 0;">
										<div aria-hidden="true"
											style="position: absolute; left: 0px; top: 0px; z-index: 1; visibility: inherit;">
											<div
												style="width: 256px; height: 256px; position: absolute; left: 706px; top: -59px;"></div>
											<div
												style="width: 256px; height: 256px; position: absolute; left: 450px; top: -59px;"></div>
											<div
												style="width: 256px; height: 256px; position: absolute; left: 450px; top: 197px;"></div>
											<div
												style="width: 256px; height: 256px; position: absolute; left: 706px; top: 197px;"></div>
											<div
												style="width: 256px; height: 256px; position: absolute; left: 194px; top: -59px;"></div>
											<div
												style="width: 256px; height: 256px; position: absolute; left: 194px; top: 197px;"></div>
											<div
												style="width: 256px; height: 256px; position: absolute; left: -62px; top: 197px;"></div>
											<div
												style="width: 256px; height: 256px; position: absolute; left: -62px; top: -59px;"></div>
										</div>
									</div>
								</div>
								<div
									style="position: absolute; left: 0px; top: 0px; z-index: 101; width: 100%;"></div>
								<div
									style="position: absolute; left: 0px; top: 0px; z-index: 102; width: 100%;"></div>
								<div
									style="position: absolute; left: 0px; top: 0px; z-index: 103; width: 100%;">
									<div
										style="position: absolute; left: 0px; top: 0px; z-index: -1;">
										<div aria-hidden="true"
											style="position: absolute; left: 0px; top: 0px; z-index: 1; visibility: inherit;">
											<div
												style="width: 256px; height: 256px; overflow: hidden; position: absolute; left: 706px; top: -59px;"></div>
											<div
												style="width: 256px; height: 256px; overflow: hidden; position: absolute; left: 450px; top: -59px;">
												<canvas draggable="false" height="256" width="256"
													style="user-select: none; position: absolute; left: 0px; top: 0px; height: 256px; width: 256px;"></canvas>
											</div>
											<div
												style="width: 256px; height: 256px; overflow: hidden; position: absolute; left: 450px; top: 197px;">
												<canvas draggable="false" height="256" width="256"
													style="user-select: none; position: absolute; left: 0px; top: 0px; height: 256px; width: 256px;"></canvas>
											</div>
											<div
												style="width: 256px; height: 256px; overflow: hidden; position: absolute; left: 706px; top: 197px;"></div>
											<div
												style="width: 256px; height: 256px; overflow: hidden; position: absolute; left: 194px; top: -59px;"></div>
											<div
												style="width: 256px; height: 256px; overflow: hidden; position: absolute; left: 194px; top: 197px;"></div>
											<div
												style="width: 256px; height: 256px; overflow: hidden; position: absolute; left: -62px; top: 197px;"></div>
											<div
												style="width: 256px; height: 256px; overflow: hidden; position: absolute; left: -62px; top: -59px;"></div>
										</div>
									</div>
								</div>
								<div
									style="position: absolute; left: 0px; top: 0px; z-index: 0;">
									<div aria-hidden="true"
										style="position: absolute; left: 0px; top: 0px; z-index: 1; visibility: inherit;">
										<div
											style="position: absolute; left: 706px; top: -59px; transition: opacity 200ms ease-out;">
											<img
												src="https://maps.google.com/maps/vt?pb=!1m5!1m4!1i14!2i4824!3i6159!4i256!2m3!1e0!2sm!3i382074076!3m9!2svi!3sUS!5e18!12m1!1e68!12m3!1e37!2m1!1ssmartmaps!4e0&amp;token=113698"
												draggable="false" alt=""
												style="width: 256px; height: 256px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
										</div>
										<div
											style="position: absolute; left: 450px; top: -59px; transition: opacity 200ms ease-out;">
											<img
												src="https://maps.google.com/maps/vt?pb=!1m5!1m4!1i14!2i4823!3i6159!4i256!2m3!1e0!2sm!3i382074076!3m9!2svi!3sUS!5e18!12m1!1e68!12m3!1e37!2m1!1ssmartmaps!4e0&amp;token=93955"
												draggable="false" alt=""
												style="width: 256px; height: 256px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
										</div>
										<div
											style="position: absolute; left: 194px; top: 197px; transition: opacity 200ms ease-out;">
											<img
												src="https://maps.google.com/maps/vt?pb=!1m5!1m4!1i14!2i4822!3i6160!4i256!2m3!1e0!2sm!3i382074040!3m9!2svi!3sUS!5e18!12m1!1e68!12m3!1e37!2m1!1ssmartmaps!4e0&amp;token=94679"
												draggable="false" alt=""
												style="width: 256px; height: 256px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
										</div>
										<div
											style="position: absolute; left: 194px; top: -59px; transition: opacity 200ms ease-out;">
											<img
												src="https://maps.google.com/maps/vt?pb=!1m5!1m4!1i14!2i4822!3i6159!4i256!2m3!1e0!2sm!3i382074052!3m9!2svi!3sUS!5e18!12m1!1e68!12m3!1e37!2m1!1ssmartmaps!4e0&amp;token=74602"
												draggable="false" alt=""
												style="width: 256px; height: 256px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
										</div>
										<div
											style="position: absolute; left: 706px; top: 197px; transition: opacity 200ms ease-out;">
											<img
												src="https://maps.google.com/maps/vt?pb=!1m5!1m4!1i14!2i4824!3i6160!4i256!2m3!1e0!2sm!3i382074076!3m9!2svi!3sUS!5e18!12m1!1e68!12m3!1e37!2m1!1ssmartmaps!4e0&amp;token=2509"
												draggable="false" alt=""
												style="width: 256px; height: 256px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
										</div>
										<div
											style="position: absolute; left: 450px; top: 197px; transition: opacity 200ms ease-out;">
											<img
												src="https://maps.google.com/maps/vt?pb=!1m5!1m4!1i14!2i4823!3i6160!4i256!2m3!1e0!2sm!3i382074076!3m9!2svi!3sUS!5e18!12m1!1e68!12m3!1e37!2m1!1ssmartmaps!4e0&amp;token=113837"
												draggable="false" alt=""
												style="width: 256px; height: 256px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
										</div>
										<div
											style="position: absolute; left: -62px; top: 197px; transition: opacity 200ms ease-out;">
											<img
												src="https://maps.google.com/maps/vt?pb=!1m5!1m4!1i14!2i4821!3i6160!4i256!2m3!1e0!2sm!3i382074040!3m9!2svi!3sUS!5e18!12m1!1e68!12m3!1e37!2m1!1ssmartmaps!4e0&amp;token=74936"
												draggable="false" alt=""
												style="width: 256px; height: 256px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
										</div>
										<div
											style="position: absolute; left: -62px; top: -59px; transition: opacity 200ms ease-out;">
											<img
												src="https://maps.google.com/maps/vt?pb=!1m5!1m4!1i14!2i4821!3i6159!4i256!2m3!1e0!2sm!3i382074052!3m9!2svi!3sUS!5e18!12m1!1e68!12m3!1e37!2m1!1ssmartmaps!4e0&amp;token=54859"
												draggable="false" alt=""
												style="width: 256px; height: 256px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
										</div>
									</div>
								</div>
							</div>
							<div
								style="z-index: 2; position: absolute; height: 100%; width: 100%; padding: 0px; border-width: 0px; margin: 0px; left: 0px; top: 0px;"></div>
							<div
								style="z-index: 3; position: absolute; height: 100%; width: 100%; padding: 0px; border-width: 0px; margin: 0px; left: 0px; top: 0px;">
								<div
									style="z-index: 1; position: absolute; height: 100%; width: 100%; padding: 0px; border-width: 0px; margin: 0px; left: 0px; top: 0px;"></div>
							</div>
							<div
								style="z-index: 4; position: absolute; top: 0px; left: 0px; width: 100%; transform-origin: 0px 0px 0px; transform: matrix(1, 0, 0, 1, 0, 0);">
								<div
									style="position: absolute; left: 0px; top: 0px; z-index: 104; width: 100%;"></div>
								<div
									style="position: absolute; left: 0px; top: 0px; z-index: 105; width: 100%;"></div>
								<div
									style="position: absolute; left: 0px; top: 0px; z-index: 106; width: 100%;"></div>
								<div
									style="position: absolute; left: 0px; top: 0px; z-index: 107; width: 100%;"></div>
							</div>
						</div>
						<div
							style="margin-left: 5px; margin-right: 5px; z-index: 1000000; position: absolute; left: 0px; bottom: 0px;">
							<a target="_blank"
								href="https://maps.google.com/maps?ll=40.713732,-74.030084&amp;z=14&amp;t=m&amp;hl=vi&amp;gl=US&amp;mapclient=apiv3"
								title="Nhấp để xem khu vực này trên Google Maps"
								style="position: static; overflow: visible; float: none; display: inline;"><div
									style="width: 66px; height: 26px; cursor: pointer;">
									<img
										src="https://maps.gstatic.com/mapfiles/api-3/images/google4.png"
										draggable="false"
										style="position: absolute; left: 0px; top: 0px; width: 66px; height: 26px; user-select: none; border: 0px; padding: 0px; margin: 0px;">
								</div></a>
						</div>
						<div
							style="background-color: white; padding: 15px 21px; border: 1px solid rgb(171, 171, 171); font-family: Roboto, Arial, sans-serif; color: rgb(34, 34, 34); box-shadow: rgba(0, 0, 0, 0.2) 0px 4px 16px; z-index: 10000002; display: none; width: 256px; height: 148px; position: absolute; left: 251px; top: 110px;">
							<div style="padding: 0px 0px 10px; font-size: 16px;">Dữ
								liệu Bản đồ</div>
							<div style="font-size: 13px;">Dữ liệu bản đồ ©2017 Google</div>
							<div
								style="width: 13px; height: 13px; overflow: hidden; position: absolute; opacity: 0.7; right: 12px; top: 12px; z-index: 10000; cursor: pointer;">
								<img
									src="https://maps.gstatic.com/mapfiles/api-3/images/mapcnt6.png"
									draggable="false"
									style="position: absolute; left: -2px; top: -336px; width: 59px; height: 492px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
							</div>
						</div>
						<div class="gmnoprint"
							style="z-index: 1000001; position: absolute; right: 215px; bottom: 0px; width: 143px;">
							<div draggable="false" class="gm-style-cc"
								style="user-select: none; height: 14px; line-height: 14px;">
								<div
									style="opacity: 0.7; width: 100%; height: 100%; position: absolute;">
									<div style="width: 1px;"></div>
									<div
										style="background-color: rgb(245, 245, 245); width: auto; height: 100%; margin-left: 1px;"></div>
								</div>
								<div
									style="position: relative; padding-right: 6px; padding-left: 6px; font-family: Roboto, Arial, sans-serif; font-size: 10px; color: rgb(68, 68, 68); white-space: nowrap; direction: ltr; text-align: right; vertical-align: middle; display: inline-block;">
									<a
										style="color: rgb(68, 68, 68); text-decoration: none; cursor: pointer; display: none;">Dữ
										liệu Bản đồ</a><span>Dữ liệu bản đồ ©2017 Google</span>
								</div>
							</div>
						</div>
						<div class="gmnoscreen"
							style="position: absolute; right: 0px; bottom: 0px;">
							<div
								style="font-family: Roboto, Arial, sans-serif; font-size: 11px; color: rgb(68, 68, 68); direction: ltr; text-align: right; background-color: rgb(245, 245, 245);">Dữ
								liệu bản đồ ©2017 Google</div>
						</div>
						<div class="gmnoprint gm-style-cc" draggable="false"
							style="z-index: 1000001; user-select: none; height: 14px; line-height: 14px; position: absolute; right: 115px; bottom: 0px;">
							<div
								style="opacity: 0.7; width: 100%; height: 100%; position: absolute;">
								<div style="width: 1px;"></div>
								<div
									style="background-color: rgb(245, 245, 245); width: auto; height: 100%; margin-left: 1px;"></div>
							</div>
							<div
								style="position: relative; padding-right: 6px; padding-left: 6px; font-family: Roboto, Arial, sans-serif; font-size: 10px; color: rgb(68, 68, 68); white-space: nowrap; direction: ltr; text-align: right; vertical-align: middle; display: inline-block;">
								<a href="https://www.google.com/intl/vi_US/help/terms_maps.html"
									target="_blank"
									style="text-decoration: none; cursor: pointer; color: rgb(68, 68, 68);">Điều
									khoản sử dụng</a>
							</div>
						</div>
						<div
							style="cursor: pointer; width: 25px; height: 25px; overflow: hidden; display: none; margin: 10px 14px; position: absolute; top: 0px; right: 0px;">
							<img src="https://maps.gstatic.com/mapfiles/api-3/images/sv9.png"
								draggable="false" class="gm-fullscreen-control"
								style="position: absolute; left: -52px; top: -86px; width: 164px; height: 175px; user-select: none; border: 0px; padding: 0px; margin: 0px;">
						</div>
						<div draggable="false" class="gm-style-cc"
							style="user-select: none; height: 14px; line-height: 14px; position: absolute; right: 0px; bottom: 0px;">
							<div
								style="opacity: 0.7; width: 100%; height: 100%; position: absolute;">
								<div style="width: 1px;"></div>
								<div
									style="background-color: rgb(245, 245, 245); width: auto; height: 100%; margin-left: 1px;"></div>
							</div>
							<div
								style="position: relative; padding-right: 6px; padding-left: 6px; font-family: Roboto, Arial, sans-serif; font-size: 10px; color: rgb(68, 68, 68); white-space: nowrap; direction: ltr; text-align: right; vertical-align: middle; display: inline-block;">
								<a target="_new"
									title="Báo cáo lỗi trong bản đồ đường hoặc hình ảnh đến Google"
									href="https://www.google.com/maps/@40.713732,-74.0300843,14z/data=!10m1!1e1!12b1?source=apiv3&amp;rapsrc=apiv3"
									style="font-family: Roboto, Arial, sans-serif; font-size: 10px; color: rgb(68, 68, 68); text-decoration: none; position: relative;">Báo
									cáo một lỗi bản đồ</a>
							</div>
						</div>
						<div
							class="gmnoprint gm-bundled-control gm-bundled-control-on-bottom"
							draggable="false" controlwidth="28" controlheight="93"
							style="margin: 10px; user-select: none; position: absolute; bottom: 107px; right: 28px;">
							<div class="gmnoprint" controlwidth="28" controlheight="55"
								style="position: absolute; left: 0px; top: 38px;">
								<div draggable="false"
									style="user-select: none; box-shadow: rgba(0, 0, 0, 0.3) 0px 1px 4px -1px; border-radius: 2px; cursor: pointer; background-color: rgb(255, 255, 255); width: 28px; height: 55px;">
									<div title="Phóng to"
										style="position: relative; width: 28px; height: 27px; left: 0px; top: 0px;">
										<div
											style="overflow: hidden; position: absolute; width: 15px; height: 15px; left: 7px; top: 6px;">
											<img
												src="https://maps.gstatic.com/mapfiles/api-3/images/tmapctrl.png"
												draggable="false"
												style="position: absolute; left: 0px; top: 0px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none; width: 120px; height: 54px;">
										</div>
									</div>
									<div
										style="position: relative; overflow: hidden; width: 67%; height: 1px; left: 16%; background-color: rgb(230, 230, 230); top: 0px;"></div>
									<div title="Thu nhỏ"
										style="position: relative; width: 28px; height: 27px; left: 0px; top: 0px;">
										<div
											style="overflow: hidden; position: absolute; width: 15px; height: 15px; left: 7px; top: 6px;">
											<img
												src="https://maps.gstatic.com/mapfiles/api-3/images/tmapctrl.png"
												draggable="false"
												style="position: absolute; left: 0px; top: -15px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none; width: 120px; height: 54px;">
										</div>
									</div>
								</div>
							</div>
							<div class="gm-svpc" controlwidth="28" controlheight="28"
								style="background-color: rgb(255, 255, 255); box-shadow: rgba(0, 0, 0, 0.3) 0px 1px 4px -1px; border-radius: 2px; width: 28px; height: 28px; cursor: url(&quot;https://maps.gstatic.com/mapfiles/openhand_8_8.cur&quot;) 8 8, default; position: absolute; left: 0px; top: 0px;">
								<div style="position: absolute; left: 1px; top: 1px;"></div>
								<div style="position: absolute; left: 1px; top: 1px;">
									<div
										aria-label="Kiểm soát người hình mắc áo trong chế độ xem phố"
										style="width: 26px; height: 26px; overflow: hidden; position: absolute; left: 0px; top: 0px;">
										<img
											src="https://maps.gstatic.com/mapfiles/api-3/images/cb_scout5.png"
											draggable="false"
											style="position: absolute; left: -147px; top: -26px; width: 215px; height: 835px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
									</div>
									<div aria-label="Người hình mắc áo ở đầu Bản đồ"
										style="width: 26px; height: 26px; overflow: hidden; position: absolute; left: 0px; top: 0px; visibility: hidden;">
										<img
											src="https://maps.gstatic.com/mapfiles/api-3/images/cb_scout5.png"
											draggable="false"
											style="position: absolute; left: -147px; top: -52px; width: 215px; height: 835px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
									</div>
									<div
										aria-label="Kiểm soát người hình mắc áo trong chế độ xem phố"
										style="width: 26px; height: 26px; overflow: hidden; position: absolute; left: 0px; top: 0px; visibility: hidden;">
										<img
											src="https://maps.gstatic.com/mapfiles/api-3/images/cb_scout5.png"
											draggable="false"
											style="position: absolute; left: -147px; top: -78px; width: 215px; height: 835px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
									</div>
								</div>
							</div>
							<div class="gmnoprint" controlwidth="28" controlheight="0"
								style="display: none; position: absolute;">
								<div title="Xoay bản đồ 90 độ"
									style="width: 28px; height: 28px; overflow: hidden; position: absolute; border-radius: 2px; box-shadow: rgba(0, 0, 0, 0.3) 0px 1px 4px -1px; cursor: pointer; background-color: rgb(255, 255, 255); display: none;">
									<img
										src="https://maps.gstatic.com/mapfiles/api-3/images/tmapctrl4.png"
										draggable="false"
										style="position: absolute; left: -141px; top: 6px; width: 170px; height: 54px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
								</div>
								<div class="gm-tilt"
									style="width: 28px; height: 28px; overflow: hidden; position: absolute; border-radius: 2px; box-shadow: rgba(0, 0, 0, 0.3) 0px 1px 4px -1px; top: 0px; cursor: pointer; background-color: rgb(255, 255, 255);">
									<img
										src="https://maps.gstatic.com/mapfiles/api-3/images/tmapctrl4.png"
										draggable="false"
										style="position: absolute; left: -141px; top: -13px; width: 170px; height: 54px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
								</div>
							</div>
						</div>
						<div class="gmnoprint"
							style="margin: 10px; z-index: 0; position: absolute; cursor: pointer; left: 0px; top: 0px;">
							<div class="gm-style-mtc" style="float: left;">
								<div draggable="false" title="Hiển thị bản đồ phố"
									style="direction: ltr; overflow: hidden; text-align: center; position: relative; color: rgb(0, 0, 0); font-family: Roboto, Arial, sans-serif; user-select: none; font-size: 11px; background-color: rgb(255, 255, 255); padding: 8px; border-bottom-left-radius: 2px; border-top-left-radius: 2px; -webkit-background-clip: padding-box; background-clip: padding-box; box-shadow: rgba(0, 0, 0, 0.3) 0px 1px 4px -1px; min-width: 35px; font-weight: 500;">Bản
									đồ</div>
								<div
									style="background-color: white; z-index: -1; padding: 2px; border-bottom-left-radius: 2px; border-bottom-right-radius: 2px; box-shadow: rgba(0, 0, 0, 0.3) 0px 1px 4px -1px; position: absolute; left: 0px; top: 29px; text-align: left; display: none;">
									<div draggable="false" title="Hiển thị bản đồ phố với địa hình"
										style="color: rgb(0, 0, 0); font-family: Roboto, Arial, sans-serif; user-select: none; font-size: 11px; background-color: rgb(255, 255, 255); padding: 6px 8px 6px 6px; direction: ltr; text-align: left; white-space: nowrap;">
										<span role="checkbox"
											style="box-sizing: border-box; position: relative; line-height: 0; font-size: 0px; margin: 0px 5px 0px 0px; display: inline-block; background-color: rgb(255, 255, 255); border: 1px solid rgb(198, 198, 198); border-radius: 1px; width: 13px; height: 13px; vertical-align: middle;"><div
												style="position: absolute; left: 1px; top: -2px; width: 13px; height: 11px; overflow: hidden; display: none;">
												<img src="https://maps.gstatic.com/mapfiles/mv/imgs8.png"
													draggable="false"
													style="position: absolute; left: -52px; top: -44px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none; width: 68px; height: 67px;">
											</div></span><label style="vertical-align: middle; cursor: pointer;">Địa
											hình</label>
									</div>
								</div>
							</div>
							<div class="gm-style-mtc" style="float: left;">
								<div draggable="false" title="Hiển thị hình ảnh qua vệ tinh"
									style="direction: ltr; overflow: hidden; text-align: center; position: relative; color: rgb(86, 86, 86); font-family: Roboto, Arial, sans-serif; user-select: none; font-size: 11px; background-color: rgb(255, 255, 255); padding: 8px; border-bottom-right-radius: 2px; border-top-right-radius: 2px; -webkit-background-clip: padding-box; background-clip: padding-box; box-shadow: rgba(0, 0, 0, 0.3) 0px 1px 4px -1px; border-left: 0px; min-width: 34px;">Vệ
									tinh</div>
								<div
									style="background-color: white; z-index: -1; padding: 2px; border-bottom-left-radius: 2px; border-bottom-right-radius: 2px; box-shadow: rgba(0, 0, 0, 0.3) 0px 1px 4px -1px; position: absolute; right: 0px; top: 29px; text-align: left; display: none;">
									<div draggable="false" title="Hiển thị hình ảnh có tên phố"
										style="color: rgb(0, 0, 0); font-family: Roboto, Arial, sans-serif; user-select: none; font-size: 11px; background-color: rgb(255, 255, 255); padding: 6px 8px 6px 6px; direction: ltr; text-align: left; white-space: nowrap;">
										<span role="checkbox"
											style="box-sizing: border-box; position: relative; line-height: 0; font-size: 0px; margin: 0px 5px 0px 0px; display: inline-block; background-color: rgb(255, 255, 255); border: 1px solid rgb(198, 198, 198); border-radius: 1px; width: 13px; height: 13px; vertical-align: middle;"><div
												style="position: absolute; left: 1px; top: -2px; width: 13px; height: 11px; overflow: hidden;">
												<img src="https://maps.gstatic.com/mapfiles/mv/imgs8.png"
													draggable="false"
													style="position: absolute; left: -52px; top: -44px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none; width: 68px; height: 67px;">
											</div></span><label style="vertical-align: middle; cursor: pointer;">Nhãn</label>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-md-8 col-md-offset-2">
					<h2>
						Contact us <small>get in touch with us by filling form
							below</small>
					</h2>
					<hr class="colorgraph">
					<div id="sendmessage">Your message has been sent. Thank you!</div>
					<div id="errormessage"></div>
					<form action="" method="post" role="form" class="contactForm">
						<div class="form-group">
							<input type="text" name="name" class="form-control" id="name"
								placeholder="Your Name" data-rule="minlen:4"
								data-msg="Please enter at least 4 chars">
							<div class="validation"></div>
						</div>
						<div class="form-group">
							<input type="email" class="form-control" name="email" id="email"
								placeholder="Your Email" data-rule="email"
								data-msg="Please enter a valid email">
							<div class="validation"></div>
						</div>
						<div class="form-group">
							<input type="text" class="form-control" name="subject"
								id="subject" placeholder="Subject" data-rule="minlen:4"
								data-msg="Please enter at least 8 chars of subject">
							<div class="validation"></div>
						</div>
						<div class="form-group">
							<textarea class="form-control" name="message" rows="5"
								data-rule="required" data-msg="Please write something for us"
								placeholder="Message"></textarea>
							<div class="validation"></div>
						</div>

						<div class="text-center">
							<button type="submit" class="btn btn-theme btn-block btn-md">Send
								Message</button>
						</div>
					</form>
					<hr class="colorgraph">

				</div>
			</div>
		</div>
		</section>


		<jsp:include page="includes/footer.jsp"></jsp:include>

	</div>
	<a href="#" class="scrollup"><i class="fa fa-angle-up active"></i></a>


	<jsp:include page="includes/import_js.jsp"></jsp:include>
	
	<script src="https://maps.google.com/maps/api/js?sensor=true"></script>

<script>
jQuery(document).ready(function( $ ) {
    
    //Google Map
    var get_latitude = $('#google-map').data('latitude');
    var get_longitude = $('#google-map').data('longitude');

    function initialize_google_map() {
        var myLatlng = new google.maps.LatLng(get_latitude, get_longitude);
        var mapOptions = {
            zoom: 14,
            scrollwheel: false,
            center: myLatlng
        };
        var map = new google.maps.Map(document.getElementById('google-map'), mapOptions);
        var marker = new google.maps.Marker({
            position: myLatlng,
            map: map
        });
    }
    google.maps.event.addDomListener(window, 'load', initialize_google_map);
    
});
</script>

</body>
</html>