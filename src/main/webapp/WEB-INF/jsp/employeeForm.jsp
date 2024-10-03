<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Form</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background-color: #0093E9;background-image: linear-gradient(160deg, #0093E9 0%, #80D0C7 100%);
 
        }
        .container {
            background-color: #ffffff; 
            padding: 40px; 
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1); 
            max-width: 600px; 
            margin: auto; 
        }
        h1 {
            color: #343a40; 
            text-align: center; 
            margin-bottom: 20px; 
        }
        .btn-success {
            background-color: #28a745; 
            border: none; 
                }
        .btn-success:hover {
            background-color: #218838; 
        }
    </style>
</head>
<body>
<div class="container mt-5">
    <h1>
        <c:choose>
            <c:when test="${employee.id != null}">Edit Employee</c:when>
            <c:otherwise>Add Employee</c:otherwise>
        </c:choose>
    </h1>
    
    <form:form method="post" 
               modelAttribute="employee" 
               action="${employee.id != null ? '/employees/edit/' + employee.id : '/employees/add'}"
               class="mt-4">
        
        <div class="form-group">
            <label for="name">Name:</label>
            <form:input path="name" id="name" class="form-control" placeholder="Enter employee name" />
            <form:errors path="name" cssClass="text-danger" />
        </div>
        
        <div class="form-group">
            <label for="email">Email:</label>
            <form:input path="email" id="email" class="form-control" placeholder="Enter employee email" />
            <form:errors path="email" cssClass="text-danger" />
        </div>
        
        <div class="form-group">
            <label for="dob">Date of Birth:</label>
            <form:input path="dob" id="dob" type="date" class="form-control" />
            <form:errors path="dob" cssClass="text-danger" />
        </div>
        
        <div class="form-group">
            <label for="salary">Salary:</label>
            <form:input path="salary" id="salary" type="number" step="0.01" class="form-control" placeholder="Enter salary" />
            <form:errors path="salary" cssClass="text-danger" />
        </div>
        
        <div class="form-group">
            <label for="status">Status:</label>
            <form:checkbox path="status" id="status" />
            <label for="status">Active</label>
            <form:errors path="status" cssClass="text-danger" />
        </div>
        
        <button type="submit" class="btn btn-success btn-block">Submit</button>
        <a href="${pageContext.request.contextPath}/employees" class="btn btn-secondary btn-block mt-2">Cancel</a>
    </form:form>
</div>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
