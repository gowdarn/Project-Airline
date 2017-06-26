<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>


<option data-tokens="0">To</option>
<c:forEach var="data" items="${listTo }">
	<option data-tokens="${data }">${data }</option>
</c:forEach>
