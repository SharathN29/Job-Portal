<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<!DOCTYPE html>
<html>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <title>Find Jobs</title>
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
          <a class="p-2 text-dark" href="CandidateHome.jsp">Home</a>
          <a class="p-2 text-dark" href="CandFindJobs.jsp">Find Job</a>
          <a class="p-2 text-dark" href="CandAppliedJobs.jsp">Applied Jobs</a>
        </nav>
        <form action="LogOut">
          <input type="submit" class="btn btn-outline-dark" value="Log Out">
         <!--  <a class="btn btn-outline-primary" href="#">Log Out</a> -->
        </form>
      </div>

      
  <div class="pricing-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
    <h3 class="display-4">Current Open Positions</h3>
    <br>
    <table class="table">
      <thead class="thead-dark">
        <tr>
          <th scope="col">Job ID</th>
          <th scope="col">Role</th>
          <th scope="col">Company</th>
          <th scope="col">Location</th>
          <th scope="col">Visa Sponsorship</th>
          <th scope="col">Compensation</th>
          <th scope="col">Job description</th>
          <th scope="col">Apply</th>
        </tr>
      </thead>

		<sql:setDataSource var="db" driver="com.mysql.cj.jdbc.Driver" url="jdbc:mysql://localhost:3306/jobportal?useTimeZone=true&serverTimezone=UTC" user="root" password="Typewriter"/>
		
		<sql:query var="rs" dataSource="${db}">select jobid, role, compname, location, visa, comp, jd from jobs where jobid not in(select jobid from candidatejob where uid=${uid})</sql:query>
		
		
      <tbody>
        
          <c:forEach items="${rs.rows}" var="job"> 
          <tr>
	          <td><c:out value="${job.jobid}"></c:out></td>
	          <td><c:out value="${job.role}"></c:out></td>
	          <td><c:out value="${job.compname}"></c:out></td>
	          <td><c:out value="${job.location}"></c:out></td>
	          <td><c:out value="${job.visa}"></c:out></td>
	          <td><c:out value="${job.comp}"></c:out></td>
	          <td><c:out value="${job.jd}"></c:out></td>
	          <td><a href="CandApplyJob.jsp?${job.jobid}"><em>Apply</em></a></td>

	       </tr>
          </c:forEach>
      </tbody>
    </table>
  </div>
      
  
  <div class="container">
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