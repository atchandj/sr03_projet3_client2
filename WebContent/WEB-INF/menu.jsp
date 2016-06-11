<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<nav class="navbar navbar-default">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>                        
			</button>
			<a class="navbar-brand" href="<c:url value="#"/>">Client 1 projet 3 SR03</a>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">			
			<ul class="nav navbar-nav">
				<li <c:if test="${ !empty param.getAds }">class="active"</c:if> ><a href="<c:url value="/get_ads"/>" title="Recherche d'annonce par addresse">Recherche d'annonce</a></li>
			</ul>
		</div>
	</div>
</nav>