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
				<li <c:if test="${ !empty param.superUserHome }">class="active"</c:if> ><a href="<c:url value="#"/>" title="Vers 1"><span class="glyphicon glyphicon-home"></span> 1</a></li>
				<li <c:if test="${ !empty param.usersManagement }">class="active"</c:if> ><a href="<c:url value="#"/>" title="Vers 2"><span class="glyphicon glyphicon-user"></span> 2</a></li>
				<li <c:if test="${ !empty param.formsManagement }">class="active"</c:if> ><a href="<c:url value="#"/>" title="Vers 3"><span class="glyphicon glyphicon-file"></span> 3</a></li>
			</ul>
		</div>
	</div>
</nav>