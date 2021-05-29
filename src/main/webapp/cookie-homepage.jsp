<html>
<body>
	<h3>Training Portal</h3>
	
	<!-- Read the favourite programming cookie -->
	
	<%
		//the default if there is no cookie
		String favLang = "Java";
	
	//get cookie from browser request
	Cookie[] theCookie = request.getCookies();
	
	//find our favourite cookie
	if(theCookie != null){
		for(Cookie tempCookie:theCookie){
			if("myApp.favouriteLanguage".equals(tempCookie.getName())){
				favLang = tempCookie.getValue();
				break;
			}
		}
	}
	%>
	
	<!-- now show a personalized page... use the favlang variable -->
	<h4>New Books for <%= favLang %></h4>
	<ul>
		<li>Blah Blah Blah</li>
		<li>Blah Blah Blah</li>
		<li>Blah Blah Blah</li>
		<li>Blah Blah Blah</li>
	</ul>
	
	<h4>Latest news report for <%= favLang %></h4>
	<ul>
		<li>Blah Blah Blah</li>
		<li>Blah Blah Blah</li>
		<li>Blah Blah Blah</li>
		<li>Blah Blah Blah</li>
	</ul>
	
	<h4>Hot Job for <%= favLang %></h4>
	<ul>
		<li>Blah Blah Blah</li>
		<li>Blah Blah Blah</li>
		<li>Blah Blah Blah</li>
		<li>Blah Blah Blah</li>
	</ul>
	
	<hr>
	<a href="cookies-personalize-form.html"> Personalize this page </a>
	
	
</body>

</html>