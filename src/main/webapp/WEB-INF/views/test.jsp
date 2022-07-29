<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bootstrap FAQ example with tabs and accordions</title>


<link rel='stylesheet prefetch'
	href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css'>
<link rel='stylesheet prefetch'
	href='https://files.krve.io/f/eyespot.css'>
<link rel='stylesheet prefetch'
	href='https://cdn.cloudcache.dk/materialdesignicons/1.6.50/css/materialdesignicons.min.css'>

<link rel="stylesheet" href="css/style3.css">


</head>

<body>
	<div class="container">
		<div class="col-md-4">
			<ul class="list-group help-group">
				<div class="faq-list list-group nav nav-tabs">
					<a href="#tab1" class="list-group-item active" role="tab"
						data-toggle="tab">Frequently Asked Questions</a> <a href="#tab2"
						class="list-group-item" role="tab" data-toggle="tab"><i
						class="mdi mdi-account"></i> My profile</a> <a href="#tab3"
						class="list-group-item" role="tab" data-toggle="tab"><i
						class="mdi mdi-account-settings"></i> My account</a> <a href="#tab4"
						class="list-group-item" role="tab" data-toggle="tab"><i
						class="mdi mdi-star"></i> My favorites</a> <a href="#tab5"
						class="list-group-item" role="tab" data-toggle="tab"><i
						class="mdi mdi-cart"></i> Checkout</a> <a href="#tab6"
						class="list-group-item" role="tab" data-toggle="tab"><i
						class="mdi mdi-heart"></i> Lorem ipsum</a> <a href="#tab7"
						class="list-group-item" role="tab" data-toggle="tab"><i
						class="mdi mdi-check"></i> Dolor sit amet</a>
				</div>
			</ul>
		</div>
		<div class="col-md-8">
			<div class="tab-content panels-faq">
				<div class="tab-pane active" id="tab1">
					<div class="panel-group" id="help-accordion-1">
						<div class="panel panel-default panel-help">
							<a href="#opret-produkt" data-toggle="collapse"
								data-parent="#help-accordion-1">
								<div class="panel-heading">
									<h2>How do I edit my profile?</h2>
								</div>
							</a>
							<div id="opret-produkt" class="collapse in">
								<div class="panel-body">
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing
										elit. Doloribus nesciunt ut officiis accusantium quisquam
										minima praesentium, beatae fugit illo nobis fugiat adipisci
										quia distinctio repellat culpa saepe, optio aperiam est!</p>
									<p>
										<strong>Example: </strong>Facere, id excepturi iusto aliquid
										beatae delectus nemo enim, ad saepe nam et.
									</p>
								</div>
							</div>
						</div>
						<div class="panel panel-default panel-help">
							<a href="#rediger-produkt" data-toggle="collapse"
								data-parent="#help-accordion-1">
								<div class="panel-heading">
									<h2>How do I upload a new profile picture?</h2>
								</div>
							</a>
							<div id="rediger-produkt" class="collapse">
								<div class="panel-body">
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing
										elit. Doloribus nesciunt ut officiis accusantium quisquam
										minima praesentium, beatae fugit illo nobis fugiat adipisci
										quia distinctio repellat culpa saepe, optio aperiam est!</p>
									<p>
										<strong>Example: </strong>Facere, id excepturi iusto aliquid
										beatae delectus nemo enim, ad saepe nam et.
									</p>
								</div>
							</div>
						</div>
						<div class="panel panel-default panel-help">
							<a href="#ret-pris" data-toggle="collapse"
								data-parent="#help-accordion-1">
								<div class="panel-heading">
									<h2>Can I change my phone number?</h2>
								</div>
							</a>
							<div id="ret-pris" class="collapse">
								<div class="panel-body">
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing
										elit. Doloribus nesciunt ut officiis accusantium quisquam
										minima praesentium, beatae fugit illo nobis fugiat adipisci
										quia distinctio repellat culpa saepe, optio aperiam est!</p>
									<p>
										<strong>Example: </strong>Facere, id excepturi iusto aliquid
										beatae delectus nemo enim, ad saepe nam et.
									</p>
								</div>
							</div>
						</div>
						<div class="panel panel-default panel-help">
							<a href="#slet-produkt" data-toggle="collapse"
								data-parent="#help-accordion-1">
								<div class="panel-heading">
									<h2>Where do I change my privacy settings?</h2>
								</div>
							</a>
							<div id="slet-produkt" class="collapse">
								<div class="panel-body">
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing
										elit. Doloribus nesciunt ut officiis accusantium quisquam
										minima praesentium, beatae fugit illo nobis fugiat adipisci
										quia distinctio repellat culpa saepe, optio aperiam est!</p>
									<p>
										<strong>Example: </strong>Facere, id excepturi iusto aliquid
										beatae delectus nemo enim, ad saepe nam et.
									</p>
								</div>
							</div>
						</div>
						<div class="panel panel-default panel-help">
							<a href="#opret-kampagne" data-toggle="collapse"
								data-parent="#help-accordion-1">
								<div class="panel-heading">
									<h2>What is this?</h2>
								</div>
							</a>
							<div id="opret-kampagne" class="collapse">
								<div class="panel-body">
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing
										elit. Doloribus nesciunt ut officiis accusantium quisquam
										minima praesentium, beatae fugit illo nobis fugiat adipisci
										quia distinctio repellat culpa saepe, optio aperiam est!</p>
									<p>
										<strong>Example: </strong>Facere, id excepturi iusto aliquid
										beatae delectus nemo enim, ad saepe nam et.
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="tab-pane" id="tab2">
					<div class="panel-group" id="help-accordion-2">
						<div class="panel panel-default panel-help">
							<a href="#help-three" data-toggle="collapse"
								data-parent="#help-accordion-2">
								<div class="panel-heading">
									<h2>Lorem ipsum?</h2>
								</div>
							</a>
							<div id="help-three" class="collapse in">
								<div class="panel-body">
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing
										elit. Doloribus nesciunt ut officiis accusantium quisquam
										minima praesentium, beatae fugit illo nobis fugiat adipisci
										quia distinctio repellat culpa saepe, optio aperiam est!</p>
									<p>
										<strong>Example: </strong>Facere, id excepturi iusto aliquid
										beatae delectus nemo enim, ad saepe nam et.
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src='https://code.jquery.com/jquery-2.2.4.min.js'></script>
	<script
		src='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js'></script>

	<script src="js/index3.js"></script>

</body>
</html>
