<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<html>
<body>
	<c:set var = "data" value = "luv2code"/>
	
	Length of String <b>${data}</b>: ${fn:length(data)}
	
	<br/><br/>
	
	UpperCase: ${fn:toUpperCase(data) }
</body>
</html>
