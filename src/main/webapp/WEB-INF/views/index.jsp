<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<!-- nav bar 파일-->
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Nav bar</title>
<link rel="stylesheet" href="style.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600;700&display=swap"
	rel="stylesheet">
<script src="https://kit.fontawesome.com/b17d4fa9e7.js"
	crossorigin="anonymous"></script>
<script src="main.js" defer></script>
<!-- nav bar end -->

<!-- 제품 리스트 파일-->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Aroma Shop - Home</title>
<link rel="icon" href="img/Fevicon.png" type="image/png">
<link rel="stylesheet" href="vendors/bootstrap/bootstrap.min2.css">
<link rel="stylesheet" href="vendors/fontawesome/css/all.min.css">
<link rel="stylesheet" href="vendors/themify-icons/themify-icons.css">
<link rel="stylesheet" href="vendors/nice-select/nice-select.css">
<link rel="stylesheet"
	href="vendors/owl-carousel/owl.theme.default.min.css">
<link rel="stylesheet" href="vendors/owl-carousel/owl.carousel.min.css">
<!-- 제품 리스트 끝 -->

<!-- 페이지 footer 파일 -->
<!-- Google Font -->
<link
	href='http://fonts.googleapis.com/css?family=Dosis:300,400,500,600,700,800'
	rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Montserrat:400,700'
	rel='stylesheet' type='text/css'>

<!-- Font Awesome -->
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<!-- Preloader -->
<link rel="stylesheet" href="css/preloader.css" type="text/css"
	media="screen, print" />
<!-- Icon Font-->
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="css/owl.carousel.css">
<link rel="stylesheet" href="css/owl.theme.default.css">
<!-- Animate CSS-->
<link rel="stylesheet" href="css/animate.css">
<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<!-- Style -->
<link href="css/style.css" rel="stylesheet">
<link rel="stylesheet" href="css/shopstyle.css">
<!-- Responsive CSS -->
<link href="css/responsive.css" rel="stylesheet">
<!-- 페이지 footer 끝-->
</head>


<body>

	<!----------------------------- 로딩중 ------------------------>
	<div id="preloader">
		<div id="status">&nbsp;</div>
	</div>
	<!----------------------------- 로딩끝 ------------------------>

	<!---------------------------- nav bar 시작 ------------------>
	<nav class="navbar">
		<div class="navbar__logo">
			<a href="main.do"><img src="images/foruslogo2.png" width="75px" height="70px">EARTH BOX</a>
		</div>

		<ul class="navbar__menu">
			<strong><li><a href="login.do">로그인</a></li></strong>
			<strong><li><a href="buy.do">장바구니</a></li></strong>
			<strong><li><a href="manual.do">이용방법</a></li></strong>
			<strong><li><a href="">마이페이지</a></li></strong>
		</ul>


		<a href="#" class="navbar__toogleBtn"> <i class="fas fa-bars"></i>
		</a>
	</nav>
	<!---------------------------- nav bar 끝 ------------------>
	

	<!---------------------------- 제품 리스트 시작 ---------------->
	<section class="section-margin calc-60px">
		<div class="container">
			<div class="section-intro pb-60px">
				<h4>
					<b>Earth Box(송암아파트)</b>
				</h4>
				<h3>
					제품 <span class="section-intro__style">목록</span>
				</h3>
			</div>
			<div class="row">
				<div class="col-md-6 col-lg-4 col-xl-3">
					<div class="card text-center card-product">
						<div class="card-product__img">
							<img class="card-img" src="img/product/product1.png" alt="" >
							<ul class="card-product__imgOverlay">
								<li><button type="button"
										onclick="location.href='detail.do'">
										<i class="ti-search"></i>
									</button></li>
								<li><button>
										<i class="ti-shopping-cart"></i>
									</button></li>
								<li><button>
										<i class="ti-heart"></i>
									</button></li>
							</ul>
						</div>
						<div class="card-body">
							<p>No.1</p>
							<h4 class="card-product__title">
								<a href="single-product.html"><b>손목 시계</b></a>
							</h4>
							<p class="card-product__price">￦1억</p>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-lg-4 col-xl-3">
					<div class="card text-center card-product">
						<div class="card-product__img">
							<img class="card-img" src="img/product/product2.png" alt="">
							<ul class="card-product__imgOverlay">
								<li><button type="button"
										onclick="location.href='detail.do'">
										<i class="ti-search"></i>
									</button></li>
								<li><button>
										<i class="ti-shopping-cart"></i>
									</button></li>
								<li><button>
										<i class="ti-heart"></i>
									</button></li>
							</ul>
						</div>
						<div class="card-body">
							<p>No.2</p>
							<h4 class="card-product__title">
								<a href="single-product.html"><b>핸드크림</b></a>
							</h4>
							<p class="card-product__price">￦10억</p>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-lg-4 col-xl-3">
					<div class="card text-center card-product">
						<div class="card-product__img">
							<img class="card-img" src="img/product/product3.png" alt="">
							<ul class="card-product__imgOverlay">
								<li><button type="button"
										onclick="location.href='detail.do'">
										<i class="ti-search"></i>
									</button></li>
								<li><button>
										<i class="ti-shopping-cart"></i>
									</button></li>
								<li><button>
										<i class="ti-heart"></i>
									</button></li>
							</ul>
						</div>
						<div class="card-body">
							<p>No.3</p>
							<h4 class="card-product__title">
								<a href="single-product.html"><b>조명</b></a>
							</h4>
							<p class="card-product__price">￦4억</p>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-lg-4 col-xl-3">
					<div class="card text-center card-product">
						<div class="card-product__img">
							<img class="card-img" src="img/product/product4.png" alt="">
							<ul class="card-product__imgOverlay">
								<li><button type="button"
										onclick="location.href='detail.do'">
										<i class="ti-search"></i>
									</button></li>
								<li><button>
										<i class="ti-shopping-cart"></i>
									</button></li>
								<li><button>
										<i class="ti-heart"></i>
									</button></li>
							</ul>
						</div>
						<div class="card-body">
							<p>No.4</p>
							<h4 class="card-product__title">
								<a href="single-product.html"><b>향수</b></a>
							</h4>
							<p class="card-product__price">￦764억</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		</div>
	</section>
	<!---------------------------- 제품 리스트 끝 ---------------->


	<!-- ------------------------- footer 시작 ------------------>
	<footer>
		<div class="container">
			<div class="container">
				<div class="row">
					<div class="col-md-12 text-center">
						<div class="footer_logo   wow fadeInUp animated">
							<img src="images/foruslogo.png" width="90px" height="90px">EARTH BOX
						</div>
					</div>
				</div>
			</div>
			<div class="container">
				<div class="row">
					<div class="col-md-12 text-center   wow fadeInUp animated">
						<div class="social">
							<h2>Follow Me on Here</h2>
							<ul class="icon_list">
								<li><a href="http://www.facebook.com/abdullah.noman99"
									target="_blank"><i class="fa fa-facebook"></i></a></li>
								<li><a href="http://www.twitter.com/absconderm"
									target="_blank"><i class="fa fa-twitter"></i></a></li>
								<li><a href=""><i class="fa fa-google-plus"></i></a></li>
								<li><a href=""><i class="fa fa-linkedin"></i></a></li>
								<li><a href="http://www.dribbble.com/abdullahnoman"
									target="_blank"><i class="fa fa-dribbble"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="container">
				<div class="row">
					<div class="col-md-12 text-center">
						<div class="copyright_text   wow fadeInUp animated">
							<p>
								문의 전화 <i class="fa fa-love"></i><a
									href="https://bootstrapthemes.co">010-1234-5678</a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- ------------------------- footer 끝 ------------------>




	<!-- ========================= SCRIPTS  ============================== -->


	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.nicescroll.js"></script>
	<script src="js/owl.carousel.js"></script>
	<script src="js/wow.js"></script>
	<script src="js/script.js"></script>
	<script src="js/shopmain.js"></script
</body>

</html>