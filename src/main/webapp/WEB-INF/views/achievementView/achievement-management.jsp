<%@ page pageEncoding="utf-8"%>
<%@ page language="java"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- Tell the browser to be responsive to screen width -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<!-- Favicon icon -->
<link rel="icon" type="image/png" sizes="16x16"
	href="resources/assets/images/favicon.png">
<title>Thông tin nhân viên</title>
<!-- Bootstrap Core CSS -->
<link href="resources/assets/plugins/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Custom CSS -->
<link href="resources/css/style_staff.css" rel="stylesheet">
<!-- Form -->
<link rel="stylesheet" href="resources//css/form.css">
<!-- You can change the theme colors from here -->
<link href="resources/css/colors/blue.css" id="theme" rel="stylesheet">
<%@ page isELIgnored="false"%>
</head>

<body class="fix-header card-no-border" onload="myFunction()">
	<div class="preloader">
		<svg class="circular" viewBox="25 25 50 50">
            <circle class="path" cx="50" cy="50" r="20" fill="none"
				stroke-width="2" stroke-miterlimit="10" /> </svg>
	</div>
	<!-- ============================================================== -->
	<!-- Main wrapper - style you can find in pages.scss -->
	<!-- ============================================================== -->
	<div id="main-wrapper">
		<!-- ============================================================== -->
		<!-- Topbar header - style you can find in pages.scss -->
		<!-- ============================================================== -->
		<header class="topbar">
			<nav class="navbar top-navbar navbar-toggleable-sm navbar-light">
				<!-- ============================================================== -->
				<!-- Logo -->
				<!-- ============================================================== -->
				<div class="navbar-header">
					<a class="navbar-brand" href="index-admin"> <!-- Logo icon -->
						<b> <!--You can put here icon as well // <i class="wi wi-sunset"></i> //-->
							<!-- Dark Logo icon --> <!-- <img src="../assets/images/logo-icon.png" alt="homepage" class="dark-logo" /> -->
					</b> <!--End Logo icon --> <!-- Logo text --> <span> <!-- dark Logo text -->
							<b> <span>EMPTY SYSTEM</span>
						</b> <img style="width: 20%; padding-bottom: 10px"
							src="resources/assets/images/download.png" alt="homepage"
							class="dark-logo" />
					</span>
					</a>
				</div>
				<!-- ============================================================== -->
				<!-- End Logo -->
				<!-- ============================================================== -->
				<div class="navbar-collapse">
					<!-- ============================================================== -->
					<!-- toggle and nav items -->
					<!-- ============================================================== -->
					<ul class="navbar-nav mr-auto mt-md-0 ">
						<!-- This is  -->
						<li class="nav-item"><a
							class="nav-link nav-toggler hidden-md-up text-muted waves-effect waves-dark"
							href="javascript:void(0)"><i class="ti-menu"></i></a></li>
						<li class="nav-item hidden-sm-down">
							<form class="app-search p-l-20">
								<input type="text" class="form-control"
									placeholder="Tìm kiếm..."> <a class="srh-btn"><i
									class="ti-search"></i></a>
							</form>
						</li>
					</ul>
					<!-- ============================================================== -->
					<!-- User profile and search -->
					<!-- ============================================================== -->
					<ul class="navbar-nav my-lg-0">
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle text-muted waves-effect waves-dark"
							href="" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"><img
								src="resources/assets/images/users/1.jpg" alt="user"
								class="profile-pic m-r-5" />Markarn Doe</a></li>
					</ul>
				</div>
			</nav>
		</header>

		<aside class="left-sidebar">
			<!-- Sidebar scroll-->
			<div class="scroll-sidebar">
				<!-- Sidebar navigation-->
				<nav class="sidebar-nav">
					<ul id="sidebarnav">
						<li class="active"><a href="index-admin"
							class="waves-effect active"><i class="fa fa-user m-r-10"
								aria-hidden="true"></i>Thông tin cá nhân</a></li>
						<li><a href="staff" class="waves-effect"><i
								class="fa fa-vcard-o m-r-10" aria-hidden="true"></i>Quản lý nhân
								viên</a></li>
						<li><a href="department" class="waves-effect"><i
								class="fa fa-group m-r-10" aria-hidden="true"></i>Quản lý phòng
								ban</a></li>
						<li><a href="achievement" class="waves-effect"><i
								class="fa fa-gift m-r-10" aria-hidden="true"></i>Thành tích và
								Kỉ luật</a></li>
						<li><a href="index" class="waves-effect"><i
								class="fa fa-home m-r-10" aria-hidden="true"></i>Trang chủ</a></li>

						<li><a href="logout" class="waves-effect"><i
								class=" fa fa-sign-out m-r-10" aria-hidden="true"></i>Đăng xuất</a>
						</li>
					</ul>
				</nav>
				<!-- End Sidebar navigation -->
			</div>
			<!-- End Sidebar scroll-->
		</aside>
		<!-- ============================================================== -->
		<!-- End Left Sidebar - style you can find in sidebar.scss  -->
		<!-- ============================================================== -->
		<!-- ============================================================== -->
		<!-- Page wrapper  -->
		<!-- ============================================================== -->
		<div class="page-wrapper">
			<!-- ============================================================== -->
			<!-- Container fluid  -->
			<!-- ============================================================== -->
			<div class="container-fluid">
				<!-- ============================================================== -->
				<!-- Bread crumb and right sidebar toggle -->
				<!-- ============================================================== -->
				<div class="row page-titles">
					<div class="col-md-6 col-8 align-self-center">
						<h3 class="text-themecolor m-b-0 m-t-0">Kỉ luật</h3>
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="javascript:void(0)">Trang
									chủ</a></li>
							<li class="breadcrumb-item active">Kỉ luật</li>
						</ol>
					</div>
					<c:url var="updateLink" value="/update-department">
						<c:param name="departsId" value="${p.departsId}" />
					</c:url>
					<div class="col-md-6 col-4 align-self-center">
						<a href="send-email"
							class="btn pull-right hidden-sm-down btn-success">Gửi email</a>
					</div>

				</div>
				<!-- ============================================================== -->
				<!-- End Bread crumb and right sidebar toggle -->
				<!-- ============================================================== -->
				<!-- ============================================================== -->
				<!-- Start Page Content -->
				<!-- ============================================================== -->

				<!-- Thêm kỉ luật hoặc thành tích -->
				<div class="row">
					<!-- column -->
					<div class="col-sm-12">
						<div class="card">
							<div class="card-block">
								<h2 class="card-title">Chỉnh sửa thông tin</h2>
								<hr>

								<form:form modelAttribute="addDiscipline" action="add-record"
									method="POST" class="form">
									<div class="row-1">
				
										<label>Mã nhân viên:</label><br>
										<form:input path="staffs.IdStaff" type="text" value="${staffTemp.idStaff}" class="form-controler" />
										<br> <label>Loại thành tích:</label><br>
										<form:radiobutton path="Type" value="thuong" /> <span style="padding-right: 30px" >Thưởng</span>
										<form:radiobutton path="Type" value="phat" /> Phạt
									</div>

									<div class="row-2">
										<label>Lý do:</label><br>
										<form:input path="Reason" type="text" placeholder="Lý do"
											name="Reason" class="form-controler" />
										<br> <label>Ngày ghi nhận</label> <br>
										<form:input path="Date" type="text" name="date" id="birthday"
											class="form-controler" />
										<br>
									</div>


									<div class="row-3">
										<input type="submit" value="Thêm" class="btn-them"><br>
									</div>

								</form:form>

								<div class="table-responsive"></div>
							</div>
						</div>
					</div>
				</div>
				<!-- hết -->

				<div class="row">
					<!-- column -->
					<div class="col-sm-12">
						<div class="card">
							<div class="card-block">
								<h4 class="card-title">Danh sách thành tích và kỉ luật nhân
									viên</h4>
								<!-- <h6 class="card-subtitle">Add class <code>.table</code></h6> -->
								<div class="table-responsive">
									<hr />
									<h5 style="font-weight: 420;">
										Mã nhân viên: <span style="padding-left: 35px">${staffTemp.idStaff}</span>
									</h5>
									<br>
									<h5 style="font-weight: 420;">
										Họ và tên: <span style="padding-left: 60px">${staffTemp.fullname}</span>
									</h5>
									<br>
									<h5 style="font-weight: 420;">
										Phòng ban: <span style="padding-left: 50px">${staffTemp.department.departsName}</span>
									</h5>
									<br>
									<table class="table">
										<thead>
											<tr>
												<th>#</th>
												<th>Thao tác</th>
												<th>Loại thành tích</th>
												<th>Nội dung</th>
												<th>Ngày ghi nhận</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="p" items="${disciplineTemp}" varStatus="loop">
												<tr>
													<td>${loop.index+1}</td>
													<!-- construct an "update" link with customer id -->
													<c:url var="updateLink" value="/update-chievement">
														<c:param name="chievementId" value="${p.id}" />
													</c:url>

													<!-- construct an "delete" link with customer id -->
													<c:url var="deleteLink" value="/delete-chievement">
														<c:param name="chievementId" value="${p.id}" />
													</c:url>


													<td><a style="font-size: 14px; margin-right: 7px;"
														href="${updateLink}">Cập nhật</a>| <a
														style="font-size: 14px; color: red; margin-left: 7px;"
														href="${deleteLink}"
														onclick="if (!(confirm('BẠM CHẮC CHỨ?'))) return false">Xóa</a>
													</td>
													<td><c:if test="${p.type.equals('thuong')}">
															<c:out value="Thưởng" />
														</c:if> <c:if test="${p.type.equals('phat')}">
															<c:out value="Phạt" />
														</c:if></td>
													<td>${p.reason}</td>
													<td>${p.date}</td>
												</tr>

											</c:forEach>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- ============================================================== -->
				<!-- End PAge Content -->
				<!-- ============================================================== -->
			</div>
			<!-- ============================================================== -->
			<!-- End Container fluid  -->
			<!-- ============================================================== -->
			<!-- ============================================================== -->
			<!-- footer -->
			<!-- ============================================================== -->
			<footer class="footer text-center"> © 2017 Monster Admin by
				wrappixel.com </footer>
			<!-- ============================================================== -->
			<!-- End footer -->
			<!-- ============================================================== -->
		</div>
		<!-- ============================================================== -->
		<!-- End Page wrapper  -->
		<!-- ============================================================== -->
	</div>
	<!-- ============================================================== -->
	<!-- End Wrapper -->
	<!-- ============================================================== -->
	<!-- ============================================================== -->
	<!-- All Jquery -->
	<!-- ============================================================== -->
	<script src="resources/assets/plugins/jquery/jquery.min.js"></script>
	<!-- Bootstrap tether Core JavaScript -->
	<script src="resources/assets/plugins/bootstrap/js/tether.min.js"></script>
	<script src="resources/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
	<!-- slimscrollbar scrollbar JavaScript -->
	<script src="resources/js/jquery.slimscroll.js"></script>
	<!--Wave Effects -->
	<script src="resources/js/waves.js"></script>
	<!--Menu sidebar -->
	<script src="resources/js/sidebarmenu.js"></script>
	<!--stickey kit -->
	<script
		src="resources/assets/plugins/sticky-kit-master/dist/sticky-kit.min.js"></script>
	<!--Custom JavaScript -->
	<script src="resources/js/custom.min.js"></script>
	<!-- ============================================================== -->
	<!-- Style switcher -->
	<!-- ============================================================== -->
	<script
		src="resources/assets/plugins/styleswitcher/jQuery.style.switcher.js"></script>
	<script>
		function myFunction() {
			document.getElementsByName("achievements").disabled = true;
		}
	</script>
</body>

</html>