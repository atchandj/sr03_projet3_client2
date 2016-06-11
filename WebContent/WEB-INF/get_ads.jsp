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
					<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
						<%@ include file="/WEB-INF/search_by_address.jsp" %>
						<%@ include file="/WEB-INF/search_by_name.jsp" %>
					</div>
				</div>
			</div>
			</form>
		</div>
		
		 <%@ include file="/WEB-INF/footer.jsp" %>
	</body>
</html>