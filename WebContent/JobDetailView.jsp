<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <title>View All Jobs</title>
  </head>
  <body>
  
      	<%
		
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1
		response.setHeader("Pragma", "no-cache"); // HTTP 1.0
		response.setHeader("Expires", "0"); // Proxy Servers
		
		if(session.getAttribute("username") == null) {
			
			response.sendRedirect("index.html");
		}
	%>
	
  <div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 border-bottom shadow-sm" style="background-color:#f64b3c">
    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="d-block" role="img" viewBox="0 0 24 24" focusable="false"><title>Product</title><circle cx="12" cy="12" r="10"/><path d="M14.31 8l5.74 9.94M9.69 8h11.48M7.38 12l5.74-9.94M9.69 16L3.95 6.06M14.31 16H2.83m13.79-4l-5.74 9.94"/></svg>
    <h5 class="my-0 mr-md-auto font-weight-normal" style="padding-left:20px">Job Portal</h5>

        <nav class="my-2 my-md-0 mr-md-3">
          <a class="p-2 text-dark" href="RecruiterHome.jsp">Home</a>
          <a class="p-2 text-dark" href="RecViewJobs.jsp">View Jobs</a>
          <a class="p-2 text-dark" href="RecPostJob.jsp">Post Job</a>
        </nav>
    <form action="LogOut">
      <input type="submit" class="btn btn-outline-dark" value="Log Out">
     <!--  <a class="btn btn-outline-primary" href="#">Log Out</a> -->
    </form>

  </div>
  
    <div class="pricing-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
    	<h3 class="display-4">Detailed Job View</h3>
    	<%
    		int jobid = Integer.parseInt(request.getQueryString());
    	%>
    	
    	<sql:setDataSource var="db" driver="com.mysql.cj.jdbc.Driver" url="jdbc:mysql://localhost:3306/jobportal?useTimeZone=true&serverTimezone=UTC" user="root" password="Typewriter"/>
		
		<sql:query var="rs" dataSource="${db}">select jobid, role, compname, location, visa, comp, jd from jobs where jobid=<%=jobid%></sql:query>
    	
    	<c:forEach items="${rs.rows}" var="job"> 
    	
    		<ul class="list-group list-group-flush">
			  <li class="list-group-item">Job Id : <c:out value="${job.jobid}"></c:out></li>
			  <li class="list-group-item">Role : <c:out value="${job.role}"></c:out></li>
			  <li class="list-group-item">Company : <c:out value="${job.compname}"></c:out></li>
			  <li class="list-group-item">Location : <c:out value="${job.location}"></c:out></li>
			  <li class="list-group-item">Visa Sponsorship : <c:out value="${job.visa}"></c:out></li>
			  <li class="list-group-item">Compensation : <c:out value="${job.comp}"></c:out></li>
			  <li class="list-group-item">Job Description : <c:out value="${job.jd}"></c:out></li>			  
			</ul>

    	</c:forEach>	
    </div>
    
    <div class="pricing-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
    	<h5 class="display-5">Candidates applied for this position</h5>
    	
	    <table class="table">
	      <thead class="thead-dark">
	        <tr>
	          <th scope="col">User ID</th>
	          <th scope="col">Name</th>
	          <th scope="col">E-Mail</th>
	          <th scope="col">Phone</th>
	        </tr>
	      </thead>
	      <tbody>
	    	<sql:setDataSource var="db" driver="com.mysql.cj.jdbc.Driver" url="jdbc:mysql://localhost:3306/jobportal?useTimeZone=true&serverTimezone=UTC" user="root" password="Typewriter"/>
			
			<sql:query var="rs" dataSource="${db}">select uid, name, email, phone from candidates where uid in(select uid from candidatejob where jobid=<%=jobid%>)</sql:query>
	    	
	    	<c:forEach items="${rs.rows}" var="cid">

	    				<tr>
	    					<td><c:out value="${cid.uid}"></c:out></td>
	    					<td><c:out value="${cid.name}"></c:out></td>
	    					<td><c:out value="${cid.email}"></c:out></td>
	    					<td><c:out value="${cid.phone}"></c:out></td>
	    				</tr>
	    				
	    			</c:forEach>
	    	</tbody>
	    </table>
    </div>
    
    
    

    <footer class="pt-4 my-md-5 pt-md-5 border-top">
      <div class="row">
        <div class="col-12 col-md">
          <img class="mb-2" src="{{ site.baseurl }}/docs/{{ site.docs_version }}/assets/brand/bootstrap-solid.svg" alt="" width="24" height="24">
          <small class="d-block mb-3 text-muted text-center">&copy; 2020-www.jobportal.com</small>
        </div>
      </div>
    </footer>
  </div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
  </body>
</html>