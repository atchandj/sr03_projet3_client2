<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>Liste des questionnaires</title>
		<script src="<c:url value="/js/jquery-2.2.2.min.js"/>"></script>
		<link href="<c:url value="/bootstrap/css/bootstrap.min.css"/>" rel="stylesheet">
		<script src="<c:url value="/bootstrap/js/bootstrap.min.js"/>"></script>
		<link rel="stylesheet" type="text/css" href="<c:url value="/datatables/datatables.min.css"/>"/>
		<script type="text/javascript" src="<c:url value="/datatables/datatables.min.js"/>"></script>
		<script src="<c:url value="/js/script.js"/>"></script>
		<link href="<c:url value="/css/styles.css"/>" rel="stylesheet">
	</head>
	<body>
		<%@ include file="/WEB-INF/header.jsp" %>   
		<jsp:include page="/WEB-INF/menu.jsp" >
			<jsp:param name="getAds" value="getAds" />
		</jsp:include>
		
		<div class="container-fluid">
			<h3> Résultat de la recherche </h3>
			<section>
				<c:if test="${ !empty errorMessage }">
			  	    <div id="subErrorMsg" class="alert alert-danger" role="alert"> 
						<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
						<span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
						<span class="sr-only">Error:</span><c:out value="${ errorMessage }" />
					</div>
				</c:if>
				<div class="row">
					<div class="col-md-8 col-lg-offset-2" > 
						<table class="table table-hover table-bordered dataTable">
							<thead>
					            <tr>
					                <th>#</th>
					                <th>Nom</th>
					                <th>Numéro de téléphone</th>
					            </tr>
					        </thead>
					        <tbody>
						        <c:forEach var="ad" items="${ yearbook.ads }" varStatus="status">
									<tr>
										<td><c:out value="${ status.count }"/></td>
										<td><c:out value="${ ad.name }"/></td>
										<td><c:out value="${ ad.phone }"/></td>
									</tr>
								</c:forEach>
					        </tbody>	
						</table>
					</div>
				</div>
    	</section>
		</div>
		
	    <%@ include file="/WEB-INF/footer.jsp" %>
	</body>
</html>