<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Log in with your account</title>
  <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/style.css">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
</head>

<body>


<jsp:include page="navbar.jsp" />

<div>
  <table class="table table-striped ">
    <thead class="thead-dark">
    <th scope="col">ID</th>
    <th scope="col">UserName</th>
    <th scope="col" >Password</th>
    <th scope="col">Roles</th>
    <th scope="col">Управлять</th>
    </thead>
    <c:forEach items="${allUsers}" var="user">
      <tr>
        <th scope="row"><font size="5" face="Georgia">${user.id}</font></td>
        <td><font size="5" face="Georgia">${user.username}</font></td>
        <td><font size="5" face="Georgia">${user.password}</font></td>
        <td>
          <font size="5" face="Georgia"><c:forEach items="${user.roles}" var="role">${role.name}; </c:forEach></font>
        </td>
        <td>
          <form action="${pageContext.request.contextPath}/admin" method="post">
            <input type="hidden" name="userId" value="${user.id}"/>
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