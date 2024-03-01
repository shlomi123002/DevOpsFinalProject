<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Your Profile</title>
</head>
<body>
    <%
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String id = request.getParameter("id");
        String phoneNumber = request.getParameter("phoneNumber");
        String age = request.getParameter("age");
        
        if (firstName != null && lastName != null && id != null && phoneNumber != null && age != null) {
    %>
            <h2>Your Profile</h2>
            <ul>
                <li><strong>First Name:</strong> <%= firstName %></li>
                <li><strong>Last Name:</strong> <%= lastName %></li>
                <li><strong>ID:</strong> <%= id %></li>
                <li><strong>Phone Number:</strong> <%= phoneNumber %></li>
                <li><strong>Age:</strong> <%= age %></li>
            </ul>
    <%
        } else {
    %>
            <h2>Enter Your Details</h2>
            <form action="SubmitDetailsServlet" method="post">
                <label for="firstName">First Name:</label>
                <input type="text" id="firstName" name="firstName" required><br><br>
                
                <label for="lastName">Last Name:</label>
                <input type="text" id="lastName" name="lastName" required><br><br>
                
                <label for="id">ID:</label>
                <input type="text" id="id" name="id" required><br><br>
                
                <label for="phoneNumber">Phone Number:</label>
                <input type="text" id="phoneNumber" name="phoneNumber" required><br><br>
                
                <label for="age">Age:</label>
                <input type="number" id="age" name="age" required><br><br>
                
                <input type="submit" value="Submit">
            </form>
    <%
        }
    %>
</body>
</html>
