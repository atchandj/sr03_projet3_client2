$(document).ready(function() {
	for(var i = 0, max = $('table').length ; i < max; i++){
		if($('table').eq(i).hasClass("dataTable"))
		$('table').eq(i).DataTable();
	}
});