<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Log in with your account</title>
  <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/style.css">
</head>

<body>

<jsp:include page="navbar.jsp" />


<div>
  <table class="table table-striped ">
    <thead class="thead-dark">
    <th scope="col">ID</th>
    <th scope="col">Наименование груза</th>
    <th scope="col">Колличество</th>
    <th scope="col">Пользователь</th>
    <th scope="col">Дата прибытия</th>
    <th scope="col">Вывезти</th>
    </thead>
    <c:forEach items="${allCargo}" var="cargo">
      <tr>
        <th scope="row" ><font size="5" face="Georgia">${cargo.id}</font></td>
        <td><font size="5" face="Georgia">${cargo.cargoName}</font></td>
        <td><font size="5" face="Georgia">${cargo.cargoQuan}</font></td>
        <td><font size="5" face="Georgia">${cargo.userName}</font></td>
        <td><font size="5" face="Times">${cargo.dataTime}</font></td>

        <td>
          <form action="${pageContext.request.contextPath}/cargoList" method="post">
            <input type="hidden" name="cargoId" value="${cargo.id}"/>
            <input type="hidden" name="action" value="delete"/>
            <button type="submit" class=" btn btn-secondary mx-auto btn-lg btn-block" >Удалить</button>
          </form>

        </td>

      </tr>
    </c:forEach>
  </table>








  </div>
</body>
</html>