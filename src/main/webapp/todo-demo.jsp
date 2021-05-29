<%@page import="java.util.*" %>
<html>
<body>

<!--  Step 1: Create HTML form -->
<form action="todo-demo.jsp">
	Add new item <input type = "text" name = "theItem">
	<input type = "submit" value = "submit">
</form>

<!-- Step 2: Add new item to "TOdo" list -->
<%
	//get the To Do list item from the session
	List<String> item = (List<String>) session.getAttribute("myToDoList");

	//if the To Do item doesn't exist, then create an new one
	if(item == null){
		item = new ArrayList<String>();
		session.setAttribute("myToDoList", item);
	}
	
	//see if there is form data to add
	String theItem = request.getParameter("theItem");
	if((theItem!=null)&&(!theItem.isEmpty())&&(!item.contains(theItem)))
		item.add(theItem);
%>

<!-- Step 3: Display all to do item from session -->
<hr>
<b>To Do List Items:</b>
<ol>
	<%
		for(String temp:item)
			out.println("<li>" + temp + "</li>");
	%>
</ol>

</body>
</html>