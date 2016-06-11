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
			<form method="get" action='<c:url value="/get_ads"/>'>
				<div class="form-group <c:if test="${ !empty errorMessage }"><c:out value="has-error" /></c:if>">
					<label class="control-label" for="adName">Nom de l'annonce :</label>
					<input list="adsNames" name="adName" class="form-control" placeholder="Nom de l'annonce" autofocus required>
					<datalist id="adsNames">
						<c:if test="${ !empty yearBookBean }">
							<c:forEach var="ad" items="${ yearBookBean.ads }" varStatus="status">
								<option value="<c:out value="${ ad.name }"/>">
							</c:forEach>
						</c:if>
					</datalist>
				</div>
				<input type="hidden" name="paction" value='getByName' />
				<input type="hidden" name="year_book" value='<c:out value="${ yearBook }"/>' />
				<input type="submit" class="btn btn-default" value="Rechercher"/>
			</form>
		</div>
	</div>
</div>
<div></div>