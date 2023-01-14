<%@page import="com.entities.Note"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@ include file="all_js_css.jsp" %>
</head>
<body>
	<div class="container-fuild p-0 m-0">
    	
    	<%@ include file="navbar.jsp" %>
    	<br>
    	<div class="container px-5">
	    	<h1>Edit your note :</h1>
	    	<%
	    	int noteId=Integer.parseInt(request.getParameter("note_id").trim());
	    	Session s=FactoryProvider.getFactory().openSession();
	    	Note note=(Note)s.get(Note.class, noteId);
	    	s.close();
	    	%>
	    	
	    	<form action="UpdateServlet" method="post">
	    	
	    	<input value="<%= note.getId() %>" name="noteId" type="hidden" />	
	    			
			  <div class="mb-3">
			    <label for="title" >Note title</label>
			    <input 
				    name="title" 
				    required="required" 
				    type="text" 
				    class="form-control" 
				    id="title" 
				    aria-describedby="emailHelp"
				    placeholder="Enter note here" 
				    value="<%= note.getTitle() %>"
				    />
			  </div>
			  
			  <div class="mb-3">
			    <label for="content">Note Content</label>
			    <textarea 
			    name="content"
			    required="required" id="content"
			    placeholder="Enter content here"
			    class="form-control"
			    style="height:150px"
			    ><%= note.getContent() %></textarea>
			  </div>
			  
			  <div class="container text-center">
			  	 <button type="submit" class="btn btn-success">Save your note</button>
			  </div>
			 
			  
			</form>
		</div>
    	
    </div>
</body>
</html>