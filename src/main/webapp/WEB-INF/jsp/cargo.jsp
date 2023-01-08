<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html>
<head>

  <title>Прибывшие грузы</title>
  <meta charset="utf-8">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
     <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

              <!-- Bootstrap CSS -->
              <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
</head>

<body>

<jsp:include page="navbar.jsp" />

<div>
 <div>
  <form method="POST">
    <h2 style="margin-left:650px;">Данные груза </h2>
        <div class="form-group row col-sm-4 mx-auto" >
      <input type="text" class="form-control" name="cargoName" placeholder="Груз">
      <input type="number" class="form-control" name="cargoQuan" placeholder="Количество">
      <input type="hidden" name="userName" value="${pageContext.request.userPrincipal.name}"/>
         <button type="submit" class="btn btn-secondary btn-lg btn-block"  style="margin-top:35px;" >Добавить</button>

</div>
  </form>
  </div>

</div>
</body>
</html>