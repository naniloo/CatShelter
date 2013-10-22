<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="">
		<meta name="author" content="">
		<title>Javascript Framework Examples</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.min.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'custom.css')}" type="text/css">
		<script type="text/javascript" src="${resource(dir: 'js/lib', file: 'jquery-1.10.2.min.js')}"></script>
		<script type="text/javascript" src="${resource(dir: 'js/lib', file: 'jquery-migrate-1.2.1.min.js')}"></script>
		<script type="text/javascript" src="${resource(dir: 'js/lib', file: 'bootstrap.min.js')}"></script>
		<g:layoutHead/>
		<r:layoutResources />
	</head>
	<body>
		<div class="container">
			<div class="header">
				<%--
					<ul class="nav nav-pills pull-right">
						<li class="active"><a href="#">Home</a></li>
						<li><a href="#">About</a></li>
						<li><a href="#">Contact</a></li>
					</ul>
				--%>
				<h3 class="text-muted"><img src="${resource(dir: 'images', file: 'Sigma_logo.jpg')}" alt="Grails"/></h3>
			</div>

			<g:layoutBody/>

			<div class="footer">
				<p>&copy; Company 2013</p>
			</div>
		</div>
		<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
		<r:layoutResources />
	</body>
</html>