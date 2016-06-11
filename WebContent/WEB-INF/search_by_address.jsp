<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div class="panel panel-default">
	<div class="panel-heading" role="tab" id="headingOne">
		<h4 class="panel-title">
			<a role="button" data-toggle="collapse" data-parent="#accordion"
				href="#collapseAddress" aria-expanded="true" aria-controls="collapseAddress">
				Recherche par Addresse
			</a>
		</h4>
	</div>
	<div id="collapseAddress" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
		<div class="panel-body">
			<form method="get" action='<c:url value="/get_ads"/>'>
				<div class='form-group <c:if test="${ !empty errorMessage }"><c:out value="has-error" /></c:if>'>
					<label class="control-label" for="street">Rue :</label>
					<input list="streetsNames" name="street" class="form-control" placeholder="Rue" autofocus >
					<datalist id="streetsNames">
						<c:if test="${ !empty streetsNames }">
							<c:forEach var="streetsName" items="${ streetsNames }" varStatus="status">
								<option value='<c:out value="${ streetsName }"/>'>
							</option></c:forEach>
						</c:if>
					</datalist>
				</div>
				<div class='form-group <c:if test="${ !empty errorMessage }"><c:out value="has-error" /></c:if>'>
					<label class="control-label" for="town">Ville :</label>
					<input list="townsNames" name="town" class="form-control" placeholder="Ville" autofocus >
					<datalist id="townsNames">
						<c:if test="${ !empty townsNames }">
							<c:forEach var="townsName" items="${ townsNames }" varStatus="status">
								<option value='<c:out value="${ townsName }"/>'>
							</option></c:forEach>
						</c:if>
					</datalist>
				</div>
				<div class='form-group <c:if test="${ !empty errorMessage }"><c:out value="has-error" /></c:if>'>
					<label class="control-label" for="postCode">Code postal :</label>
					<input list="postCodes" name="postCode" class="form-control" placeholder="Code postal (XXXXX)" pattern="[0-9]{5}" autofocus >
					<datalist id="postCodes">
						<c:if test="${ !empty postCodes }">
							<c:forEach var="postCode" items="${ postCodes }" varStatus="status">
								<option value='<c:out value="${ postCode }"/>'>
							</option></c:forEach>
						</c:if>
					</datalist>
				</div>
				<input type="hidden" name="paction" value='getByAddress' />
				<input type="hidden" name="year_book" value='<c:out value="${ yearBook }"/>' />
				<input type="submit" class="btn btn-default" value="Rechercher"/>
			</form>
		</div>
	</div>
</div>
