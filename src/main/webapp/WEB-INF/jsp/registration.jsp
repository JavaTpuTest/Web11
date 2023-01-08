<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Регистрация</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
   <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

            <!-- Bootstrap CSS -->
            <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
</head>

<body>
<jsp:include page="navbar.jsp" />
<div >
  <form:form method="POST" modelAttribute="userForm">
    <h2 style="margin-left:650px;">Регистрация</h2>
    <div class="form-group row ">
    <div class="col-sm-4 mx-auto">
      <form:input type="text" class="form-control" path="username" placeholder="Username"
                  autofocus="true"></form:input>
      <form:errors path="username"></form:errors>
        ${usernameError}
    </div>
    </div>
    <div class="form-group row">
    <div class="col-sm-4 mx-auto">
      <form:input type="password" path="password" class="form-control" placeholder="Password"></form:input>
    </div>
    </div>
    <div class="form-group row">
    <div class="col-sm-4 mx-auto">
      <form:input type="password" path="passwordConfirm" class="form-control"
                  placeholder="Confirm your password"></form:input>
      <form:errors path="password"></form:errors>
        ${passwordError}
    </div>
    </div>
    <div class="col-sm-2 mx-auto">
    <button type="submit" class="btn btn-primary mx-auto btn-lg ">Зарегистрироваться</button>
    </div>
  </form:form>

</div>





</body>
</html>