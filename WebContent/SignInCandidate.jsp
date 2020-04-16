<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <title>Candidate Sign-In</title>
  </head>
  <body>
      <div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 border-bottom shadow-sm" style="background-color:#f64b3c">
    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="d-block" role="img" viewBox="0 0 24 24" focusable="false"><title>Product</title><circle cx="12" cy="12" r="10"/><path d="M14.31 8l5.74 9.94M9.69 8h11.48M7.38 12l5.74-9.94M9.69 16L3.95 6.06M14.31 16H2.83m13.79-4l-5.74 9.94"/></svg>
    <h5 class="my-0 mr-md-auto font-weight-normal" style="padding-left:20px">Job Portal</h5>
    <nav class="my-2 my-md-0 mr-md-3">
      <a class="p-2 text-dark" href="index.html">Home</a>
      <div class="btn-group">
          <button type="button" class="btn btn-outline-dark dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            Sign-In
          </button>
          <div class="dropdown-menu">
            <a class="dropdown-item" href="signInAdmin.jsp">Admin</a>
            <a class="dropdown-item" href="signInRecruiter.jsp">Recruiter</a>
            <a class="dropdown-item" href="SignInCandidate.jsp">Candidate</a>
          </div>
        </div>

        <div class="btn-group">
            <button type="button" class="btn btn-outline-dark dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              Sign-Up
            </button>
            <div class="dropdown-menu">
              <a class="dropdown-item" href="SignUpRecruiter.jsp">Recruiter</a>
              <a class="dropdown-item" href="SignUpCandidate.jsp">Candidate</a>
            </div>
          </div>
  </div>

  <form action="SignInCandidate" method="post">
  		<p class="h5 font-weight-normal text-center text-danger">${message}</p>
      <h1 class="h3 mb-3 font-weight-normal text-center">Candidate Sign In</h1>
    <div class="mx-auto px-5 md-2 text-center">
      <label for="exampleDropdownFormEmail2">User Name : <input type="text" class="form-control" id="exampleDropdownFormEmail2" name="username"></label>
    </div>
    <div class="pt-3 px-5 form-group md-2 text-center">
      <label for="exampleDropdownFormPassword2">Password : <input type="password" class="form-control" id="exampleDropdownFormPassword2"name="pass"></label>
    </div>
    <div class="text-center">
            <button type="submit" class="btn btn-primary mx-auto">Sign In</button>
    </div>

  </form>


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
