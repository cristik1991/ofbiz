<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Bootshop online Shopping cart</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

	<!--css-->
    <link href="<@ofbizContentUrl>/qlstyle/shop/themes/bootshop/bootstrap.min.css</@ofbizContentUrl>" id="callCss" rel="stylesheet" media="screen"/>
    <link href="<@ofbizContentUrl>/qlstyle/shop/themes/css/base.css</@ofbizContentUrl>" rel="stylesheet" media="screen"/>
	<link href="<@ofbizContentUrl>/qlstyle/shop/themes/css/bootstrap-responsive.min.css</@ofbizContentUrl>" rel="stylesheet"/>
	<link href="<@ofbizContentUrl>/qlstyle/shop/themes/css/font-awesome.css" rel="stylesheet</@ofbizContentUrl>" type="text/css">
	<link href="<@ofbizContentUrl>/qlstyle/shop/themes/js/google-code-prettify/prettify.css</@ofbizContentUrl>" rel="stylesheet"/>
	<!--images-->
    <link href="<@ofbizContentUrl>/qlstyle/shopthemes/images/ico/favicon.ico</@ofbizContentUrl>" rel="shortcut icon" >
    <link href="<@ofbizContentUrl>/qlstyle/shop/themes/images/ico/apple-touch-icon-144-precomposed.png</@ofbizContentUrl>" rel="apple-touch-icon-precomposed" sizes="144x144" >
    <link href="<@ofbizContentUrl>/qlstyle/shop/themes/images/ico/apple-touch-icon-114-precomposed.png</@ofbizContentUrl>" rel="apple-touch-icon-precomposed" sizes="114x114" >
    <link href="<@ofbizContentUrl>/qlstyle/shop/themes/images/ico/apple-touch-icon-72-precomposed.png</@ofbizContentUrl>" rel="apple-touch-icon-precomposed" sizes="72x72">
    <link href="<@ofbizContentUrl>/qlstyle/shop/themes/images/ico/apple-touch-icon-57-precomposed.png</@ofbizContentUrl>" rel="apple-touch-icon-precomposed" >
  </head>
  <body>
	<div id="header">
		<div class="container">
			<div id="welcomeLine" class="row">
				<div class="span6">Welcome!<strong> User</strong></div>
				<div class="span6">
					<div class="pull-right">
						<a href="product_summary.html"><span class="">Fr</span></a>
						<a href="product_summary.html"><span class="">Es</span></a>
						<span class="btn btn-mini">En</span>
						<a href="product_summary.html"><span>&pound;</span></a>
						<span class="btn btn-mini">$155.00</span>
						<a href="product_summary.html"><span class="">$</span></a>
						<a href="product_summary.html"><span class="btn btn-mini btn-primary"><i class="icon-shopping-cart icon-white"></i> [ 3 ] Itemes in your cart </span> </a> 
					</div>
				</div>
			</div>
			<div id="logoArea" class="navbar">
				<a id="smallScreen" data-target="#topMenu" data-toggle="collapse" class="btn btn-navbar">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</a>
	  			<div class="navbar-inner">
	    			<a class="brand" href="index.html"><img src="<@ofbizContentUrl>/qlstyle/shop/themes/images/logo.png</@ofbizContentUrl>" alt="Bootsshop"/></a>
					<form class="form-inline navbar-search" method="post" action="products.html" >
						<input id="srchFld" class="srchTxt" type="text" />
					  	<select class="srchTxt">
							<option>All</option>
							<option>CLOTHES </option>
							<option>FOOD AND BEVERAGES </option>
							<option>HEALTH & BEAUTY </option>
							<option>SPORTS & LEISURE </option>
							<option>BOOKS & ENTERTAINMENTS </option>
						</select> 
			  			<button type="submit" id="submitButton" class="btn btn-primary">Go</button>
	    			</form>
	    			<ul id="topMenu" class="nav pull-right">
						<li class=""><a href="special_offer.html">Specials Offer</a></li>
						<li class=""><a href="normal.html">Delivery</a></li>
						<li class=""><a href="contact.html">Contact</a></li>
						<li class="">
							<a href="#login" role="button" data-toggle="modal" style="padding-right:0">
							<span class="btn btn-large btn-success">Login</span></a>
							<div id="login" class="modal hide fade in" tabindex="-1" role="dialog" aria-labelledby="login" aria-hidden="false" >
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
									<h3>Login Block</h3>
								</div>
							  	<div class="modal-body">
									<form class="form-horizontal loginFrm">
								  		<div class="control-group">								
											<input type="text" id="inputEmail" placeholder="Email">
								  		</div>
								  		<div class="control-group">
											<input type="password" id="inputPassword" placeholder="Password">
								 		 </div>
										 <div class="control-group">
										 	<label class="checkbox">
											<input type="checkbox"> Remember me
											</label>
										 </div>
									</form>		
									<button type="submit" class="btn btn-success">Sign in</button>
									<button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
							    </div>
							</div>
					  	</li>
	    			</ul>
	  			</div>
			</div>
		</div>
	</div>
