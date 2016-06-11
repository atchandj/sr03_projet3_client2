<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<div class="panel panel-default">
	<div class="panel-heading" role="tab" id="headingTwo">
		<h4 class="panel-title">
			<a class="collapsed" role="button" data-toggle="collapse"
				data-parent="#accordion" href="#collapseName" aria-expanded="false"
				aria-controls="collapseName"> Recherche par nom </a>
		</h4>
	</div>
	<div id="collapseName" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
		<div class="panel-body">
			<form method="post" action='<c:url value="/get_ads"/>' accept-charset="ISO-8859-1">
				<div class="form-group <c:if test="${ !empty errorMessage }"><c:out value="has-error" /></c:if>">
					<label class="control-label" for="category">Catégorie :</label>
					<input list=categoriesNames name="category" class="form-control" placeholder="Catégorie" autofocus required>
					<datalist id="categoriesNames">
						<c:if test="${ !empty categoriesNames }">
							<c:forEach var="categoriesName" items="${ categoriesNames }" varStatus="status">
								<option value="<c:out value="${ categoriesName }"/>">
							</c:forEach>
						</c:if>
					</datalist>
				</div>
				<input type="hidden" name="paction" value='getByName' />
				<input type="hidden" name="year_book" value='<c:out value="${ yearBook }"/>' />
				<input type="submit" class="btn btn-default" value="Rechercher"/>
			
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
			</form>
		</div>
	</div>
</div>
<div></div>