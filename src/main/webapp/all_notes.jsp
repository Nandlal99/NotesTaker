<%@page import="com.entities.Note"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>All Notes: Notes Taker</title>
		<%@ include file="all_js_css.jsp" %>
	</head>
	<body>
		<div>
			<%@ include file="navbar.jsp" %>
    		<br>
    		<div class="container px-5">
	    		<h1 class="text-uppercase">All Notes:</h1>
	    		
	    		<div class="row">
	    			<div class="col-12">
	    				
	    			<%
		    			Session s=FactoryProvider.getFactory().openSession();
		    			Query q=s.createQuery("from Note");
		    			List<Note> list=q.list();
		    			for(Note a:list){
		    		%>
		    		
		    		<div class="card mt-3">
					  <img style="max-width: 70px" src="img/pencil.png" class="card-img-top m-2" alt="...">
					  <div class="card-body px-5">
					    <h5 class="card-title"><%= a.getTitle() %></h5>
					    <p class="card-text">
					    <%= a.getContent() %>
					    </p>
					    <p><b class="text-primary"><%= a.getAddedDate() %></b></p>
					    <a href="edit.jsp?note_id=<%= a.getId() %>" class="btn btn-primary">Update</a>
					    <a href="DeleteServlet?note_id=<%= a.getId() %>" class="btn btn-danger">Delete</a>
					  </div>
					</div>
		    		
		    		<%
		    			}
		    			
		    		s.close();
	    			%>
	    			
	    			</div>
	    		
	    		</div>
    		</div>
    		
		</div>
	</body>
</html>