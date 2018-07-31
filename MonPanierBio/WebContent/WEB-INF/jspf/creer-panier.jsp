<%@ page language="java" contentType="text/html; charset= UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="fr">
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
<!-- autres fichiers -->
<script src="js/scripts.js"></script>
<link rel="stylesheet" href="css/style.css">
<title>monpanierbio.com - Créer panier</title>
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
		<h1>Créer un panier</h1>

		<c:if test="${null != toutOK}">
			<div class="alert alert-success">
				<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
				Félicitation ! Vous avez correctement rempli le formulaire.
			</div>
		</c:if>

		<form id="formulaire" action="submitForm" method="POST">
			<div class="form-group">
				<label for="code">Code du panier</label> <span id="obligatoireMsg">
					<c:if test="${null != obligatoireCode}">
						<c:out value="${obligatoireCode}" />
					</c:if>
				</span> <input type="text" name="code" id="code"
					placeholder="Entrer votre nom" class="form-control"
					value="${param.code}">
			</div>

			<div class="form-group">
				<label for="categorie">Catégorie de panier</label><span
					id="obligatoireMsg"> <c:if
						test="${null != obligatoireCategorie}">
						<c:out value="${obligatoireCategorie}" />
					</c:if></span> <select name="categorie" class="form-control">
					<option value="0"
						<c:if
						test="${null == categorie0 || categorie0 == selected}">
						<c:out value="${categorie0}" />
					</c:if>>Choisir
						la catégorie</option>
					<option value="1"
						<c:if
						test="${null != categorie1}">
						<c:out value="${categorie1}" />
					</c:if>>Laitue</option>
					<option value="2"
						<c:if
						test="${null != categorie2}">
						<c:out value="${categorie2}" />
					</c:if>>Fruit</option>
					<option value="3"
						<c:if
						test="${null != categorie3}">
						<c:out value="${categorie3}" />
					</c:if>>Mélangé</option>
				</select>
			</div>

			<div class="form-group">
				<label for="nom">Nom du panier</label><span id="obligatoireMsg">
					<c:if test="${null != obligatoireNom}">
						<c:out value="${obligatoireNom}" />
					</c:if>
				</span> <input type="text" name="nom" id="nom"
					placeholder="Entrer le nom du panier" class="form-control"
					value="${param.nom}">
			</div>

			<div class="form-group">
				<label for="prix">Prix du panier</label><span id="obligatoireMsg">
					<c:if test="${null != obligatoirePrix}">
						<c:out value="${obligatoirePrix}" />
					</c:if>
				</span> <input type="text" name="prix" id="prix"
					placeholder="Entrer le prix du panier" class="form-control"
					value="${param.prix}"><span id="errorMsg"> <c:if
						test="${null != errorPrix}">
						<c:out value="${errorPrix}" />
					</c:if></span>
			</div>

			<div class="form-group">
				<label for="poids">Poids du panier</label><span id="obligatoireMsg">
					<c:if test="${null != obligatoirePoids}">
						<c:out value="${obligatoirePoids}" />
					</c:if>
				</span> <input type="text" name="poids" id="poids"
					placeholder="Entrer le poids du panier" class="form-control"
					value="${param.poids}"><span id="errorMsg"> <c:if
						test="${null != errorPoids}">
						<c:out value="${errorPoids}" />
					</c:if></span>
			</div>

			<div class="form-group">
				<label for="date">Date de mise en vente du panier </label><span
					id="obligatoireMsg"> <c:if test="${null != obligatoireDate}">
						<c:out value="${obligatoireDate}" />
					</c:if></span> <input type="text" name="date" id="date" placeholder="jj/mm/yyyy"
					class="form-control datepicker" value="${param.date}"><span
					id="errorMsg"> <c:if test="${null != errorDate}">
						<c:out value="${errorDate}" />
					</c:if></span>
			</div>


			<div class="form-group">
				<label for="description">Description</label><span
					id="obligatoireMsg"> <c:if
						test="${null != obligatoireDescription}">
						<c:out value="${obligatoireDescription}" />
					</c:if></span>
				<textarea name="description" rows="10" cols="30"
					class="form-control"><c:out value="${param.description}" /></textarea>
			</div>

			<button type="submit" id="soumettre" class="btn btn-default">Enregistrer</button>
		</form>
	</div>
</body>
</html>