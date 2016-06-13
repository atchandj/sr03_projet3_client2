<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<div class="panel panel-default">
	<div class="panel-heading" role="tab" id="headingThree">
		<h4 class="panel-title">
			<a class="collapsed" role="button" data-toggle="collapse"
				data-parent="#accordion" href="#collapseCategory" aria-expanded="false"
				aria-controls="collapseCategory"> Recherche par catégorie </a>
		</h4>
	</div>
	<div id="collapseCategory" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
		<div class="panel-body">
			<form method="get" action='<c:url value="/get_ads"/>'>
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
				<input type="hidden" name="paction" value='getByCategory' />
				<input type="hidden" name="year_book" value='<c:out value="${ yearBook }"/>' />
				<input type="submit" class="btn btn-default" value="Rechercher"/>
			</form>
		</div>
	</div>
</div>
<div></div>