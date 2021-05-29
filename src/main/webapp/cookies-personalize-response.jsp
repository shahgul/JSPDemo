<html>
<head><title>Confirmation</title></head>


<%
	//read the form data
	String favLang = request.getParameter("favouriteLanguage");
		
	//create cookie
	Cookie theCookie = new Cookie("myApp.favouriteLanguage", favLang);
	
	//set lifespan of cookie
	theCookie.setMaxAge(60*60*24*365);
	
	//send cookie to the browser
	response.addCookie(theCookie);

%>
<body>
	Thanks I'll set your favourite language to: ${param.favouriteLanguage};
	
	<br></br>
	
	<a href="cookie-homepage.jsp" >Return to home-page</a>

</body>
</html>