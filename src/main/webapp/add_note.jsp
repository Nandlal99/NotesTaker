<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Notes</title>
<%@ include file="all_js_css.jsp" %>

</head>
<body>
	<div class="container-fuild p-0 m-0">
    	
    	<%@ include file="navbar.jsp" %>
    	<br>
    	<div class="container px-5">
	    	<h1>Please fill your note detail</h1>
	    	<br>
	    	
	    	<!-- this is add form -->
	    	
	    	<form action="SaveNoteServlet" method="post">
	    	
			  <div class="mb-3">
			    <label for="title" >Note title</label>
			    <input 
				    name="title" 
				    required="required" 
				    type="text" 
				    class="form-control" 
				    id="title" 
				    aria-describedby="emailHelp"
				    placeholder="Enter note here" />
			  </div>
			  
			  <div class="mb-3">
			    <label for="content">Note Content</label>
			    <textarea 
			    name="content"
			    required="required" id="content"
			    placeholder="Enter content here"
			    class="form-control"
			    style="height:150px"
			    ></textarea>
			  </div>
			  
			  <div class="container text-center">
			  	 <button type="submit" class="btn btn-primary">Submit</button>
			  </div>
			 
			  
			</form>
		</div>
    	
    </div>
	
</body>
</html>