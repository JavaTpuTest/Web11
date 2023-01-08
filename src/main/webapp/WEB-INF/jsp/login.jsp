<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Log in with your account</title>
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

          <!-- Bootstrap CSS -->
          <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
</head>

<body>
<jsp:include page="navbar.jsp" />
<sec:authorize access="isAuthenticated()">
  <% response.sendRedirect("/"); %>
</sec:authorize>
<div >
  <form method="POST" action="/login">
    <h2 style="margin-left:650px;">Вход в систему</h2>
    <div >
    <div class="form-group row">

    <div class="col-sm-4 mx-auto">
      <input name="username" type="text" class="form-control" placeholder="Username"
             autofocus="true"/>
             </div>
             </div>
       <div class="form-group row">

       <div class="col-sm-4 mx-auto">
      <input name="password" type="password" class="form-control" placeholder="Password"/>
      </div>
      </div>
<div class="col-sm-4 mx-auto">
      <button type="submit" class="btn btn-primary mx-auto" >Войти</button>
      <a href="/registration" class="btn btn-outline-secondary btn-md mx-auto">Зарегистрироваться</a>
</div>
    </div>
  </form>
</div>







</body>
</html>
