<%@ page language="java" contentType="text/html; charset= UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- import css : de bootstrap puis, de jquery-ui -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
<!-- import jquery, jqueryui, bootstrap -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>

<script src="js/scripts.js"></script>

<title>monpanierbio.com - Accueil</title>
</head>
<body>

	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
		<a class="navbar-brand" href="#">monpanierbio.com</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#collapsibleNavbar">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="collapsibleNavbar">
			<ul class="navbar-nav">
				<li class="nav-item"><a data-toggle="tooltip" class="nav-link"
					href="welcome" title="Aller à l'accueil">Accueil</a></li>
				<li class="nav-item"><a data-toggle="tooltip" class="nav-link"
					href="creer-panier" title="Créer un panier">Créer un panier</a></li>
			</ul>
		</div>
	</nav>

	<div class="container-fluid">
		<h1>Accueil</h1>

		<p>
			Bonjour, Nous sommes le
			<fmt:formatDate value="${today}" pattern="dd/MM/yyyy" />
		</p>


		<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin
			pharetra vestibulum ipsum, eget viverra metus semper nec. Mauris
			ullamcorper urna est, eget gravida ipsum viverra sit amet. Phasellus
			at ex vitae mauris vulputate ornare ut at quam. Sed vestibulum
			fringilla sem quis maximus. Ut malesuada orci orci, vitae commodo
			elit vestibulum ac. Nulla facilisi. Nullam ornare purus ac fringilla
			dapibus. Nullam ac quam finibus, suscipit magna in, accumsan libero.
			Donec imperdiet egestas vulputate. Ut nec varius mi, ac vestibulum
			arcu. Duis id tortor ut diam interdum mattis. Mauris fermentum mi
			purus, sed volutpat velit laoreet sit amet.</p>

		<img src="panierlegumes.jpg" class="mx-auto d-block img-fluid">

		<p>Nulla scelerisque at odio a convallis. Morbi nec urna
			fringilla, faucibus turpis sed, consectetur ex. Lorem ipsum dolor sit
			amet, consectetur adipiscing elit. Maecenas non molestie magna.
			Pellentesque id turpis ut est euismod elementum nec ut massa. Sed
			pellentesque accumsan porttitor. Pellentesque molestie finibus augue,
			vitae dictum dolor auctor nec. Etiam tempor scelerisque viverra.
			Donec sit amet euismod mauris. Ut ornare massa at ornare consectetur.
			Vestibulum ac aliquam nunc. Proin sit amet tincidunt enim. Aenean
			volutpat nulla risus. Nunc a enim velit. Donec rhoncus tempus sem non
			aliquet. Donec convallis massa dapibus posuere tincidunt. In viverra
			leo eget dui gravida blandit. Morbi at tincidunt metus. Proin aliquam
			quis neque at efficitur. Aenean pellentesque sapien nulla, sed
			vehicula dui dictum vel. Duis tristique, lacus vel iaculis
			vestibulum, massa odio lobortis magna, et laoreet odio massa sit amet
			enim. Sed vel ante sed ligula pulvinar suscipit ut sit amet nunc.
			Nunc ornare fermentum egestas. Etiam sit amet tellus sed ex porta
			ultrices. Ut rhoncus efficitur tincidunt. Nulla at tempus tellus, nec
			tempus leo. Sed scelerisque nisi pretium nulla gravida faucibus.
			Mauris varius libero vel nunc mattis, quis dignissim lectus viverra.
			Praesent ut arcu at dui vulputate convallis. Proin mattis magna vitae
			libero scelerisque, vitae convallis dolor efficitur. Vivamus
			suscipit, sapien quis consectetur commodo, nisl dolor imperdiet
			nulla, a condimentum elit tortor in nunc. Pellentesque sit amet erat
			in sapien porttitor ornare. Duis vulputate, est id porttitor maximus,
			mauris leo euismod ipsum, nec ornare est ex eget massa. Vivamus
			lobortis in mauris non dapibus. Nam mi magna, efficitur sit amet
			pretium a, tempor vitae dui. Maecenas non suscipit dui. Sed tincidunt
			venenatis neque tincidunt luctus. Donec sodales dictum dui et
			tincidunt. Praesent ut elementum tortor, sed tincidunt lorem. Etiam
			suscipit rhoncus sem in mollis. Phasellus placerat ornare nibh at
			tempor. Maecenas at venenatis nisi, non dictum dui. Ut vel odio eget
			sem egestas ultricies. Quisque et est dolor.</p>

	</div>
</body>
</html>