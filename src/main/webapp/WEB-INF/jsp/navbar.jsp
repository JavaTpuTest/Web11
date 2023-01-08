<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE HTML>
<html>
<head>

  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/style.css">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

      <!-- Bootstrap CSS -->
      <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand text-primary" href="/" >Storage</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">




            <li class="nav-item">
            <sec:authorize access="isAuthenticated()">
                <a class="nav-link" href="/news">Новости</a>

            </sec:authorize>
            </li>
            <li class="nav-item">
            <sec:authorize access="isAuthenticated()">
                <a class="nav-link" href="/cargo">Грузы</a>
            </sec:authorize>
            </li>
            <li class="nav-item">
                        <sec:authorize access="!isAuthenticated()">
                            <a class="nav-link" href="/login">Войти</a>
                        </sec:authorize>
                        </li>
            <li class="nav-item">
                                    <sec:authorize access="!isAuthenticated()">
                                        <a class="nav-link" href="/registration">Зарегистрироваться</a>
                                    </sec:authorize>
                                    </li>


             <li class="nav-item dropdown">
             <sec:authorize access="hasRole('ADMIN')">
                    <a class="nav-link dropdown-toggle" href="/admin" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      Управление
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                      <a class="dropdown-item" href="/admin">Пользователи</a>
                      <div class="dropdown-divider"></div>
                      <a class="dropdown-item" href="/cargoList">Список грузов</a>
                        </sec:authorize>
                    </div>
                  </li>

        </ul>
        <div class="nav-item"><sec:authorize access="isAuthenticated()"><a class="nav-link" href="/logout">Выйти</a></sec:authorize></div>
        <div class="navbar-text>" ><b> ${pageContext.request.userPrincipal.name}</b></div>
    </div>
</nav>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

</body>
</html>