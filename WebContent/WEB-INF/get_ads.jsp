<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Recherche d'annonce par addresse</title>
		<script src="<c:url value="/js/jquery-2.2.2.min.js"/>"></script>
		<link href="<c:url value="/bootstrap/css/bootstrap.min.css"/>" rel="stylesheet">
		<script src="<c:url value="/bootstrap/js/bootstrap.min.js"/>"></script>
		<link href="<c:url value="/css/styles.css"/>" rel="stylesheet">
	</head>
	<body>
		<%@ include file="/WEB-INF/header.jsp" %>   
		<jsp:include page="/WEB-INF/menu.jsp" >
			<jsp:param name="getAds" value="getAds" />
		</jsp:include>
		<div class="container-fluid">
			<h3> Recherche d'une annonce : </h3>
			<div class="row">
				<div class="col-md-4 col-lg-offset-4 " >
					<c:if test="${ !empty errorMessage }">
				  	    <div class="alert alert-danger" role="alert"> 
							<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
							<span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
							<span class="sr-only">Error: </span><c:out value="${ errorMessage }" />
						</div>
					</c:if>
					
					<c:if test="${ !empty successMessage }">
				  	    <div class="alert alert-success" role="alert"> 
							<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
							<span class="glyphicon glyphicon-ok" aria-hidden="true"></span>
							<span class="sr-only">Success: </span><c:out value="${ successMessage }" />
						</div>
					</c:if>	
					<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
						<%@ include file="/WEB-INF/search_by_address.jsp" %>
						<%@ include file="/WEB-INF/search_by_name.jsp" %>
						<%@ include file="/WEB-INF/search_by_category.jsp" %>
					</div>
				</div>
			</div>
			</form>
		</div>
		
		 <%@ include file="/WEB-INF/footer.jsp" %>
	</body>
</html>