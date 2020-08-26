<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container py-5">
    <div class="row">
        <div class="col-10 mx-auto">
            <h1>File Upload Status</h1>
            <!--display error if any-->
            <div class="alert alert-danger" role="alert" th:if="${!status}">
                <strong>Error:</strong>
                <span th:text="${message}"></span>
            </div>

            <!--display users list-->
            <table class="table table-striped" th:if="${status}">
                <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">ID</th>
                    <th scope="col">Name</th>
                    <th scope="col">Email</th>
                    <th scope="col">Country</th>
                    <th scope="col">Age</th>
                </tr>
                </thead>
                <tbody>
                <tr th:each="user, i : ${users}">
                    <th scope="row" th:text="${i.index + 1}"></th>
                    <td th:text="${user.id}"></td>
                    <td th:text="${user.name}"></td>
                    <td th:text="${user.email}"></td>
                    <td th:text="${user.countryCode}"></td>
                    <td th:text="${user.age}"></td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>
</body>
</html>