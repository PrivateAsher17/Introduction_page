<%-- 
    Document   : signup
    Created on : 01-Mar-2023, 11:23:57 AM
    Author     : ashwa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>

<!--//////////////////-->
<div class="d-flex aligns-items-center justify-content-center card text-center w-75 mx-auto">
    <div class="card-header">
      <ul class="nav nav-tabs card-header-tabs">
        <li class="nav-item">
          <a class="nav-link active" aria-current="true" href="#">Signup Form</a>
        </li>
      </ul>
    </div>
    <div class="card-body">
        <label for="signupInput">Username : </label>
      <input id="signupUsernameInput"/>
      <br>
      <label class="my-2" for="signupInput">Password : </label>
      <input id="signupPasswordInput"/>
      <p>First Time user must fill up this form & Register Before Signing In.</p>
      <a href="signupSuccess.jsp" class="btn btn-primary" onclick="insertData();">Signup/Register</a>
    </div>
  </div>
<!--//////////////////-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
  
    </body>
</html>
<script>
    function insertData(){
        debugger;
                    var vUserName = $("#signupUsernameInput").val();
                    var vPassword = $("#signupPasswordInput").val();
                    console.log(vUserName);
                    console.log(vPassword);
                    $.ajax({
                        url:"insert.java",
                        method:"post",
                        data: {
                            UserName:vUserName,
                            Password:vPassword
                        },
                        success: function(data){
                            alert("Successfully Inserted!!!")
                        }
                    });
                }
</script>
