<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee List</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
    body {
            background-color: #0093E9;
            background-image: linear-gradient(160deg, #0093E9 0%, #80D0C7 100%);
        }
        .container {
            background-color: #ffffff; 
            padding: 30px; 
            border-radius: 8px; 
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); 
            margin-top: 50px; 
        }
        h1 {
            color: #343a40; 
            margin-bottom: 20px; 
        }
        .btn-primary {
            background-color: #007bff; 
            border: none; 
        }
        .btn-primary:hover {
            background-color: #0056b3; 
        }
        .btn-secondary {
            margin-left: 10px;
        }
</style>
</head>
<body>
<div class="container mt-5">
    <h1 class="text-center mb-4">Employee List</h1>
    <a href="${pageContext.request.contextPath}/employees/add" class="btn btn-primary mb-3">Add New Employee</a>
    <table class="table table-bordered table-striped">
        <thead class="thead-dark">
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>DOB</th>
                <th>Salary</th>
                <th>Status</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="employee" items="${employees}">
                <tr>
                    <td>${employee.id}</td>
                    <td>${employee.name}</td>
                    <td>${employee.email}</td>
                    <td>${employee.dob}</td>
                    <td>${employee.salary}</td>
                    <td>
                        <c:choose>
                            <c:when test="${employee.status}">
                                <span class="badge badge-success">Active</span>
                            </c:when>
                            <c:otherwise>
                                <span class="badge badge-danger">Inactive</span>
                            </c:otherwise>
                        </c:choose>
                    </td>
                    <td>
                        <a href="${pageContext.request.contextPath}/employees/edit/${employee.id}" class="btn btn-warning btn-sm">Edit</a>
                        <a href="${pageContext.request.contextPath}/employees/delete/${employee.id}" class="btn btn-danger btn-sm">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
